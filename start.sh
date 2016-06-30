function test() {

 while true; do
 dd if=/dev/zero  of=/tpch/test-aaa bs=50K count=1000
 sleep 5
 done

}

test
