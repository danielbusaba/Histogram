use std::collections::HashMap;  //Can be used with bucket to create sublog histograms
use std::hash::{Hash, Hasher};  //Used for custom bucket hashing

pub struct Histogram    //Stores a Histogram
{
    sublog_bits: u64,   //Stores sublog bits
    max_reuse_time: u64,    //Stores largest reuse time for histogram
    values: Vec <u64>,  //Stores frequency values for histogram
}

impl Histogram  //Implements methods for the histogram
{
    pub fn new(sb: u64, mrt: u64) -> Histogram  //Constructor that takes in the sublog bits and the maximum reuse time
    {
        Histogram {sublog_bits: sb, max_reuse_time: mrt, values: vec!(0; (convert_value_to_index(mrt, sb) + 1) as usize)}   //Creates a histogram with a vector of an appropriate fixed length
    }

    pub fn insert(&mut self, reuse_time: u64, frequency: u64)   //Inserts a value into the histogram at a given reuse time
    {
        if reuse_time <= self.max_reuse_time    //Makes sure the reuse time is in range
        {
            self.values[convert_value_to_index(reuse_time, self.sublog_bits) as usize] = frequency; //Sets bucket value to frequency
        }
    }

    pub fn get(&self, reuse_time: u64) -> u64   //Retreives the frequency value at a given reuse time
    {
        if reuse_time > self.max_reuse_time //Makes sure reuse time is in range
        {
            return 0;
        }
        self.values[convert_value_to_index(reuse_time, self.sublog_bits) as usize]  //Returns the frequency in the reuse time's bucket
    }

    pub fn get_values(&self) -> &Vec <u64>
    {
        &self.values
    }
}

pub struct Bucket (u64, u64);  //Custom bucket struct to index reuse time (takes in value, sublog bits)

impl Hash for Bucket    //Turns raw indexes into bucket indexes
{
    fn hash<H: Hasher>(&self, state: &mut H)
    {
        convert_value_to_index(self.0, self.1).hash(state);
    }
}

impl PartialEq for Bucket   //Defines equality for Bucket
{
    fn eq(&self, other: &Bucket) -> bool  //Checks for equality of bucket indexes
    {
        convert_value_to_index(self.0, self.1) == convert_value_to_index(other.0, other.1)
    }
}

impl Eq for Bucket
{

}

impl Clone for Bucket //Defines copying for custom bucket
{
    fn clone(&self) -> Bucket //Returns a copy of the custom bucket
    {
        Bucket(self.0, self.1)
    }
}

pub fn convert_value_to_index(value: u64, sublog_bits: u64) -> u64    //Taken from histo.h
{
    if value < (1 << sublog_bits)   //Ignores values too small to be bucketized
    {
        return value;
    }

    let most_significant_bit = (63 - value.leading_zeros()) as u64;  //Find's value's most significant bit
    let shift = most_significant_bit - sublog_bits; //Defines shift as difference between most significant bit and sublog bits
    let mut index = value >> shift; //Sets index as value shifted by shift
    index = index & ((1 << sublog_bits) - 1);   //Does a bitwise and with sublog bits number of 1's

    index + ((shift + 1) << sublog_bits)    //Adds the shift + 1 shfted by the number of sublogg bits and to the index
}

// pub fn convert_index_to_value(index: u64, sublog_bits: u64) -> u64     //Not working yet
// {
//     let shift = index >> sublog_bits;
//     let temp = index & ((1 << sublog_bits) - 1);
    
//     if shift == 0
//     {
//         return index;
//     }
    
//     ((1 << sublog_bits) + temp) << (shift - 1)
// }

#[test]
fn test_clone() //Tests clone equality
{
    let b1 = Bucket(0, 0);
    let b2 = b1.clone();
    assert_eq!(b1.0, b2.0);
    assert_eq!(b1.1, b2.1);
}

#[test]
fn test_value_to_index()    //Demonstrates how the two adjacent values index the same bucket
{
    let b1 = Bucket(512, 8);
    let b2 = Bucket(513, 8);
    assert_eq!(convert_value_to_index(b1.0, b1.1), convert_value_to_index(b2.0, b2.1));
}

// #[test]  //Fails
// fn test_index_to_value()
// {
//     assert_eq!(convert_index_to_value(514, 8), 514);
// }

#[test]
fn test_hash()  //Demonstrates bucket usage in HashMap
{
    let b1 = Bucket(512, 8);
    let b2 = Bucket(513, 8);

    let mut histogram: HashMap<Bucket, usize> = HashMap::new();
    histogram.insert(b1.clone(), 1);

    if histogram.contains_key(&b2)  //Finds ame bucket as b1
    {
        let temp = histogram.get(&b2).unwrap().clone();
        histogram.insert(b2, temp + 1); //Overwrites b1
    }

    assert_eq!(*histogram.get(&b1).unwrap(), 2);
}

#[test]
fn test_histogram_insertion() //Tests histogram buckets
{
    let mut h1 = Histogram::new(8, 513); //Creates a new histogram for given sublog bits and maximum reuse time
    h1.insert(512, 2);   //Inserts a value into the same bucket
    assert_eq!(h1.get(513), 2); //Checks the bucket value

    let mut h2 = Histogram::new(8, 512); //Creates a new histogram for given sublog bits and maximum reuse time
    h2.insert(512, 1);  //Inserts a value into the same bucket
    h2.insert(513, 2);  //Although not out of bounds, should be rejected
    assert_eq!(h2.get(512), 1);
    assert_eq!(h2.get(513), 0);
}

#[test]
fn test_histogram_values()  //Tests iterating through histogram
{
    let sublog_bits = 1;
    let mut h1 = Histogram::new(sublog_bits, 8); //Creates a new histogram for given sublog bits and maximum reuse time
    for i in 1 ..= 7    //Fills each bucket with its bucket size
    {
        let temp = h1.get(i);
        h1.insert(i, temp + 1);
    }

    let values = h1.get_values();   //Retrieves histogram values
    for i in 1 ..= 7    //Iterates through histogram
    {
        let mut exponent = (63 - (i as u64).leading_zeros()) as i64 - sublog_bits as i64; //Defines exponent in 2^(bits - sublog_bits) formula
        if exponent < 0 //Sets exponent to 0 if less than 0
        {
            exponent = 0;
        }
        assert_eq!(values [convert_value_to_index(i, sublog_bits) as usize], u64::pow(2, exponent as u32));   //Checks if bucket size matches theory
    }
}