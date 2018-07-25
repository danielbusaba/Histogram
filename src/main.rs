mod histogram;  //Imports histogram file data
use histogram::Histogram;   //Imports Histogram struct
use histogram::convert_value_to_index;  //Imports conversion function

fn main()
{
    
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