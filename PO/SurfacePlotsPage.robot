*** Settings ***
Documentation        All the page objects and keywords of Home Page
Library             SeleniumLibrary
Resource            Generic.robot





*** Variables ***


*** Keywords ***
Open simulation in Surface Plots
    Open Autonomous HVAC CFD Simulation Result Page

Click on the surface plots elements
    Click Element    //span[text()='Surface Plots']
    Sleep    5s

wait until selected manikin text visible
    Wait Until Element Is Visible    //th[text()='Selected Manikin']
    Sleep    5s
#    Click Button        (//th[@class='MuiTableCell-root MuiTableCell-head jss330'])[2]
     Click Element    (//div[@class='MuiGrid-root MuiGrid-container'])[3]
     Sleep    3s
    
    

Click on the color by dropdown
    Click Element    xpath://div[@class='MuiInputBase-root jss335 MuiInputBase-formControl']
    Wait Until Element Is Visible    xpath://option[text()='Thermal PMV']
    Sleep    5s
    Click Element     xpath://option[text()='Thermal PMV']

#Validate color by Dropdown

