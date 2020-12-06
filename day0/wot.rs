

#[derive(Debug)]
struct Person<'a> {
    name: &'a str,
    age: u8
}

impl<'a> Person<'a> {
    fn hello(&self) {
        println!("hi me name {:?}", self.name);
    }
}

fn main() {
    let name = "Peter";
    let age = 27;
    let peter = Person { name, age };

    // Pretty print
    println!("{:#?}", peter);
    peter.hello();

    //tuples can be destructured to create bindings
    let tuple = (1, "hello", 4.5, true);

    let (a, b, c, d) = tuple;
    println!("{:?}, {:?}, {:?}, {:?}", a, b, c, d);

}