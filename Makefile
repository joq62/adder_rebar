all:
	rm -rf ebin/*.beam src/*.beam test/*.beam *.beam;
	rm -rf  *~ */*~  erl_cra*;
	erlc -o ebin src/*.erl;
	erlc -o ebin test/*.erl
	echo Done
doc_gen:
	echo glurk not implemented
eunit:
	rm -rf ebin/*.beam src/*.beam test/*.beam *.beam;
	rm -rf  *~ */*~  erl_cra*;
	erlc -o ebin src/*.erl;
	erlc -o ebin test/*.erl
	erl -pa ebin -s adder_unit_tests start -sname adder_test -setcookie test
