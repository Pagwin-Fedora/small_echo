echo :: IO()
echo = do{ getChar>>=putChar; echo}
main = echo
