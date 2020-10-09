use std::io::{Read, Write,Stdin,stdin,Stdout,stdout};
fn main(){
    for c in stdin().lock().bytes(){
        let buf:&[u8] = &[c.unwrap()];
        stdout().lock().write(buf);
    }
}
