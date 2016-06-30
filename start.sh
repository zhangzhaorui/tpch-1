function test() {

 while true; do
 dd if=/dev/zero  of=/tpch/test-aaa bs=1M count=50
 sleep 1
 done

}

test
