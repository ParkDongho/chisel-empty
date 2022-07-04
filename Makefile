CURR_DIR:=$(shell pwd)
# Generate Verilog code
doit:
	sbt run

# Run the test
test:
	sbt test

wave:
	open ./test_run_dir/Add_should_pass/*.vcd

clean:
	rm -rf generated

diagram:
	cd ~/Library/diagrammer && ./diagram.sh -i ${CURR_DIR}/generated/*.fir
	cd -

help:
	echo ""
	echo ""
	echo " 사용 방법:"
	echo ""
	echo "	make 실행명령"
	echo ""
	echo " 실행 명령:"
	echo ""
	echo ""
