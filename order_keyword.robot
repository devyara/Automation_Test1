*** Settings ***
Library                         SeleniumLibrary
Variables                       ../Resources/Homepage_locator.yaml

*** Keywords ***
#Start Chrome
    #${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    #Call Method    ${chrome_options}    add_argument    --no-sandbox
    #Create Webdriver    Chrome      chrome_options=${chrome_options}

Open Browser Firefox
    Open Browser                browser=Firefox 

Open Homepage My Store
    Go To                       http://automationpractice.com/index.php

I validate Logo
    Element Should Be Visible   ${Logo}

I validate Login
    Element Should Be Visible   ${Login}

I validate Contact Us
    Element Should Be Visible   ${Contact_Us}

I click Sign In
    Click Element               ${Login}

I validate Sign In page
    Element Should Be Visible   ${Validate_Login_Form}

I type email registered
    Input Text                  ${Email}                rahmandaarya@gmail.com

I type valid password registered
    Input Text                  ${Pass}                 B4BNpUpk3.@!vQx

I click sign in button
    Click Button                ${Button_Sign}

I validate Sign In
    Element Should Be Visible   ${Validate_Login}

I click icon/button Home
    Click Element               ${Home}

I validate homepage
    Element Should Be Visible   ${Validate_homepage}

I choose the product
    Mouse Over                  ${Options1}

I click More button          
    Click Element               ${MoreButton}

I validate product page         
    Element Should Be Visible   ${ValidateProductPage }


