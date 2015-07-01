run_all_in_parallel:
	make -j test_XP_chrome_43 test_Windows7_firefox_33 test_OSX10.10_safari_8

test_XP_chrome_43:
	platform=XP browserName=chrome version=43 name=test_XP_chrome_43 \
		make parallel_rspec

test_OSX10.10_safari_8:
	platform="OS X 10.10" browserName=safari version=8 name=test_OSX10.10_safari_8 \
		make parallel_rspec

test_Windows7_firefox_33:
	platform="Windows 7" browserName=firefox version=33 name=test_Windows7_firefox_33 \
		make parallel_rspec

parallel_rspec:
	parallel_rspec spec