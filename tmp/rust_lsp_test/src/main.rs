fn main() {
    let greetings_string = greetings();
    println!("{}", greetings_string);
}

fn greetings() -> String {
    String::from("Hello, World!")
}
