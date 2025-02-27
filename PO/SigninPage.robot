*** Settings ***
Documentation        All the page objects and keywords of SignIn Page
Library             SeleniumLibrary





*** Variables ***


*** Keywords ***
Open SignIn Page
        Click Element    xpath://button[@class='btn-material btn-material-accent btn-material-raised waves-effect waves-light']
Fill the SignIn Details
    [Arguments]    ${email_id}
    Input Text    id:l_email    ${email_id}
    Click Element    btn_get_user

wait until the element is located in the page

    Wait Until Element Is Visible      //span[text()='Invalid email']

verify error message is correct

    ${result}=  Get Text   //span[text()='Invalid email']
    Should Be Equal As Strings    ${result}    Invalid email


