atf_test_case search
version_head() {
	atf_set "descr" "testing pkg search"
}

version_body() {
	atf_check -o inline:"New generation package manager" -s exit:0 \
	    pkg search -e -Q comment -S name pkg 
}

atf_init_test_cases() {
	atf_add_test_case search
}
