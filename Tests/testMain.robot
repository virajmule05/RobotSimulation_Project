*** Settings ***
Documentation    To Automate simulation gallary website by using POM
Library          SeleniumLibrary 
Library          Collections
Library          String
Test Setup        Open browser for simulation gallary website
Resource         ../PO/Generic.robot
Resource         ../PO/SigninPage.robot
#Resource         ../PO/HomePage.robot
Resource         ../PO/HVACGallaryPage.robot
Resource         ../PO/ThermalComfortPage.robot
Resource         ../PO/SurfacePlotsPage.robot
Test Teardown    close browser session





*** Variables ***


*** Test Cases ***
validate unsucessfully login     # Here we write business scenerio
     SigninPage.Open SignIn Page
     SigninPage.Fill the SignIn Details     ${Invalid_emilId}
     SigninPage.wait until the element is located in the page
     SigninPage.verify error message is correct



Validate Autonomous HVAC CFD simulation gallary page
    Open Autonomous HVAC CFD
    Scroll Page           # Scroll down by 500 pixels
    Open CCTech office pune Page Viewable
    wait until elements located in CCtech office Page
    verify and click square plaque design,cooling,conference node elements view Object on ACC

Validate Thermal comfort Page
    ThermalComfortPage.Open Simulation for Thermal comfort
    ThermalComfortPage.validate thermal comfort page
    ThermalComfortPage.wait until thermal comfort element is visible on page
    ThermalComfortPage.disible the comfort option check image is disible or not


#Validate Surface plots page
#    SurfacePlotsPage.Open simulation in Surface Plots
#    SurfacePlotsPage.Click on the surface plots elements
#    SurfacePlotsPage.wait until selected manikin text visible
#    SurfacePlotsPage.click on the color by Dropdown











#*** Keywords ***

#Back to the prevoius Page of view simulation gallary
#
#     Go Back
#     Sleep    20s
#












    
    
    







