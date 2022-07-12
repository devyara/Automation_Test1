*** Settings ***
Resource                    ../Resources/order_keyword.robot
#Suite Setup                Start Chrome
Suite Setup                 Open Browser Firefox
#Suite Teardown             I'm Close Browser

*** Test Case ***
I verify homepage of My Store
    #Start Chrome
    Open Homepage My Store
    I validate Logo
    I validate Login
    I validate Contact Us

I click Sign In button
    I click Sign In
    I validate Sign In page

#I input valid email and password
    #I type email registered
    #I type valid password registered
    #I click sign in button
    #I validate Sign In

#I go back to homepage
    #I click icon/button Home
    #I validate homepage

#I order select one 
    #I choose the product
    #I click More button
    #I validate product page