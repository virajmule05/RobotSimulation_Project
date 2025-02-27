*** Settings ***
Documentation        A Generic file with reusable keywords and varaibles.
...
...                  The system specifice keywords created here  form our own domin
...                  specific language.They utilize keywords provided by the imported SeleniumLibrary

Library        SeleniumLibrary


*** Variables ***
${user_name}            virajmule2159
${invalid_password}     3544844
${valid_username}       rahulshettyacademy
${valid_password}       learning
${url}                  https://webapp.simulationhub.com/simulation-gallery
${Invalid_emilId}       viraj.mule@cctech.co.in
${browser_name}         chrome
${url_result}    https://autonomous-hvac-cfd.simulationhub.com/public/ZxEDNqP/4PuQyQn:dGfME4i:VVqOzcy/results





*** Keywords ***
Open browser for simulation gallary website

    Open Browser    ${url}    ${browser_name}
    Maximize Browser Window
    Set Browser Implicit Wait    7s
    
#Open HVAC simulation Result browser
#    Open Browser    ${url_result}      ${browser_name}
#    Maximize Browser Window
#    Set Browser Implicit Wait    20s


#Open the browser with URL       # for executing with diffrenet browser
#
#    #Create Webdriver    ${browser_name}    executable_path=resources/${browser_name}
#    Open Browser    ${url}    ${browser_name}
#
#





Open Autonomous HVAC CFD Simulation Result Page

    Click Element    (//i[@class='fa fa-angle-right'])[1]
    Sleep    20s


#Scroll Page

    Execute JavaScript    window.scrollBy(0, 2000)
    Sleep    10s

#Open CCTech office pune Page Viewable
    Click Element    (//span[@class='MuiButton-label'])[12]
    Sleep    7s

#wait until elements located in CCtech office Page
     Wait Until Element Is Visible      xpath://span[text()='Need Help ']
     Sleep    20s

#verify and click square plaque design,cooling,conference node elements view Object on ACC
    Sleep    5s
    Click Element     xpath://div[text()='Square Plaque Design']
    Sleep    7s
    Click Element     xpath://div[text()='Cooling']
    Sleep    7s
    Click Element    xpath://div[text()='Conference Room']
    Sleep    20s


close browser session
    Close Browser

#
#Wait until element pass in the located page
#    [Arguments]        ${page_loactor}
#    Wait Until Element Is Visible     ${page_loactor}