*** Settings ***
Documentation  A resource file containing the application specific keywords
Library		Selenium2Library
Library		Robot.Robot_Art.Test

*** Variables ***
${inputfield email}    xpath=(.//*[@name='fields[first_name]'])[1]

*** Test Cases ***
Check out joe colantonio dot com
	browser Setup
	Open Browser  https://www.joecolantonio.com  chrome
    Input Text    xpath=(.//*[@name='fields[first_name]'])[1]    Haaalloooo Welt
    Input Text    xpath=(.//*[@name='fields[email]'])[1]    test@gmail.com
    Submit Form