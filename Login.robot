*** Settings ***
Resource                ../Resources/login_keyword.robot
Suite Setup             Open Browser Using Chrome
#Suite Teardown          I'm Close Browser

*** Test Case ***
I verify homepage of My Store
    Open Homepage My Store
    I validate Logo
    I validate Login
    I validate Contact Us

I click Sign In button
    I click Sign In
    I validate Sign In page

I input valid email and password
    I type email registered
    I type valid password registered
    I click sign in button
    I validate Sign In

