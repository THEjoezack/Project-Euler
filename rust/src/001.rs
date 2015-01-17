use std::iter::AdditiveIterator;

fn main() {
    let sum = range(1, 1000)
      .filter(|&i| i % 3 == 0 || i % 5 == 0)
      .sum();
    
    println!("{}", sum);
}