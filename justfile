default:
	@just --list

download year day:
	./bin/download -year {{year}} -day {{day}}
	
create year day:
	mkdir -p {{year}}/day{{day}}
	cp 0000/day00/main.go {{year}}/day{{day}}/
	cp 0000/day00/main_test.go {{year}}/day{{day}}/

	
test year day +FLAGS='-v':
	cd {{year}}/day{{day}} && go test {{FLAGS}}
	
run year day:
	cd {{year}}/day{{day}} && go run main.go
	
