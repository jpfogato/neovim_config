// Test rust file for testing various plugin settings on neovim

fn main () {
    println!("Hello, World!");
}

fn function (param1: str, param2: bool, param3: i32) {
    // this is my test function
    param1.to_string()

}

struct MyStruct {
    // use this struct to test leader  to swap arguments
    name: str,
    surname: str,
    age: u8,
}
