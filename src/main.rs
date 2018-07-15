use std::collections::HashMap;  //Can be used with bucket to create sublog histograms
use std::hash::{Hash, Hasher};  //Used for custom bucket hashing

struct Bucket (usize, usize);  //Custom bucket struct to index reuse time (takes in value, sublog bits)

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

fn convert_value_to_index(value: usize, sublog_bits: usize) -> usize    //Taken from histo.h
{
    if value < (1 << sublog_bits)   //Ignores values too small to be bucketized
    {
        return value;
    }

    let most_significant_bit = 63 - ((value as u64).leading_zeros() as usize);  //Find's value's most significant bit
    let shift = most_significant_bit - sublog_bits; //Defines shift as difference between most significant bit and sublog bits
    let mut index = value >> shift; //Sets index as value shifted by shift
    index = index & ((1 << sublog_bits) - 1);   //Does a bitwise and with sublog bits number of 1's

    index + ((shift + 1) << sublog_bits)    //Adds the shift + 1 shfted by the number of sublogg bits and to the index
}

// fn convert_index_to_value(index: usize, sublog_bits: usize) -> usize     //Not working yet
// {
//     let shift = index >> sublog_bits;
//     let temp = index & ((1 << sublog_bits) - 1);
    
//     if shift == 0
//     {
//         return index;
//     }
    
//     ((1 << sublog_bits) + temp) << (shift - 1)
// }

fn main()
{
    
}

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