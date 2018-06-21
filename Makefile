all:
	build/env.sh  go get && go build *.go 


clean:
	rm ./main
