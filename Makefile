build-generate-table: *.cpp *.h
	clang++ generate_table.cpp mtrand.cpp pokerlib.cpp -o ./generate-table

build-test: *.cpp *.h
	clang++ test.cpp -o ./test

generate-table: build-generate-table
	./generate-table

test: build-test
	./test