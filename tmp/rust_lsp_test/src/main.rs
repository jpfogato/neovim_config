fn main() {
    let greetings_string = greetings();
    println!("{}", greetings_string);

    let name = String::from("Name");
    let number = 10;

    let bool = dummy(&name, &number);
}

fn greetings() -> String {
    String::from("Hello, World!")
}

fn dummy(name: &String, number: &i32) -> bool {
    println!("{name} {number}");
    true
}
