function test() {

 while true; do
 dd if=/dev/zero of=50M.file bs=1M count=50
 sleep 1
 done

}

test
