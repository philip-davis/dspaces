#!/bin/bash
if [ $1 -eq 1 ]; then
	./dspaces_server sm >&server.addr &
	sleep 2
	A=$(cat server.addr)
	./test_writer $A 1 3 1 1 1 1 4 4 4 8
elif [ $1 -eq 2 ]; then
	./dspaces_server sm >&server.addr &
	sleep 2
	A=$(cat server.addr)
	./test_writer $A 1 3 1 1 1 1 4 4 4 8
	./test_reader $A 1 3 1 1 1 1 4 4 4 8
elif [ $1 -eq 3 ]; then
	./dspaces_server sm >&server.addr &
	sleep 2
	A=$(cat server.addr)
	./test_writer $A 1 3 1 1 1 1 4 4 4 8
	./test_reader $A 1 3 1 1 1 1 4 2 4 8
elif [ $1 -eq 4 ]; then
	./dspaces_server sm >&server.addr &
	sleep 2
	A=$(cat server.addr)
	./test_writer $A 1 3 1 1 1 1 4 4 4 8
	./test_reader $A 1 3 1 1 1 1 4 4 2 8
fi
kill $!