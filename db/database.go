package db

import(
	"fmt"
	"github.com/syndtr/goleveldb/leveldb"
)

func FuncA () {
	fmt.Println("this is funcA in package db")
}

func FuncB() {
	db, err := leveldb.OpenFile("/home/",nil)
	fmt.Println(db, err)
}



