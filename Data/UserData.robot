*** Variables ***
#User data
&{FIRST_USER}  Gender=M  FName=Mazen  lName=Ahmed  Email=mazen1@gmail.com  Company=Cegedim  Password=12345678  Day=18  Month=December  Year=1992
&{SECOND_USER}  Gender=M  FName=Esraa  lName=Mustafa  Email=Esraa@gmail.com  Company=Blocks  Password=87654321  Day=18  Month=October  Year=1998
&{THIRD_USER}  Gender=F  FName=Julie  lName=Adams  Email=juliee@gmail.com  Company=Cegedim  Password=12345678  Day=1  Month=January  Year=1988
&{FOURTH_USER}  Gender=F  FName=Mary  lName=Cole  Email=Mary@gmail.com  Company=IBM  Password=12345678  Day=20  Month=March  Year=2001
&{FIFTH_USER}  Gender=M  FName=John  lName=Paul  Email=John@gmail.com  Company=Vodafone  Password=12345678  Day=15  Month=April  Year=1995
&{SIXTH_USER}  Gender=F  FName=Sarah  lName=Mustafa  Email=Sarah@gmail.com  Company=IBM  Password=12345678  Day=23  Month=June  Year=1991
&{SEVENTH_USER}  Gender=M  FName=Mahmoud  lName=Essam  Email=Mahmoud@gmail.com  Company=EPAM  Password=12345678  Day=2  Month=May  Year=1970
# Invalid user data
&{WRONG_FORMAT_CREDENTIALS}  Email=wrongFormatTest.com     password=12345678    Expected_Error=Wrong email
&{EMPTY_CREDENTIALS}         Email=                        password=            Expected_Error=Please enter your email
&{INCORRECT_CREDENTAILS}     Email=incorrect@test.com      password=12345678    Expected_Error=No customer account found