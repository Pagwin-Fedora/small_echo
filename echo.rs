use std::io::{Read, Write,stdin,stdout};
fn main(){
    for c in stdin().lock().bytes(){
        let buf:&[u8] = &[c.unwrap()];
        let _ = stdout().lock().write(buf);
    }
}
