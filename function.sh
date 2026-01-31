function my_func(){
	for arg in $*; do
		echo "This is the $arg"
	done	

}

function check(){
	echo "Done"
}

my_func Rukayat  CSC
