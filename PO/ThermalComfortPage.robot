*** Settings ***
Documentation        All the page objects and keywords of Home Page
Library             SeleniumLibrary
Resource            Generic.robot





*** Variables ***


*** Keywords ***
Open Simulation for Thermal comfort
    Open Autonomous HVAC CFD Simulation Result Page
    Sleep    10s

validate thermal comfort page
    Click Element    //span[text()='Thermal Comfort']
    Sleep    10s

wait until thermal comfort element is visible on page
    Wait Until Element Is Visible    //p[text()='Occupant Thermal Comfort']
    Sleep    10s


disible the comfort option check image is disible or not
    Click Button        (//button[@type='button'])[13]
    Sleep    10s
    Click Button        (//button[@type='button'])[13]
    Sleep    5s
    Go Back
    Sleep    10s
