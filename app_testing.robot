*** Settings ***
Documentation               Robot Framework Example
...
Metadata                    VERSION     1.0
Library                     Selenium2Library
Library                     SeleniumLibrary


*** Variables ***
${URL}                      http://ec2-44-193-40-120.compute-1.amazonaws.com:8080/webapp/
${BROWSER}                  firefox
${ALIAS}                    None
${REMOTE_URL}               http://ec2-44-194-142-96.compute-1.amazonaws.com:4444



*** Test Cases ***
Start Firefox Browser
    Open Browser            ${URL}  ${BROWSER}  ${ALIAS}  ${REMOTE_URL}
    Maximize Browser Window
    Click Element  xpath=//*[@id="myButton"]
    Sleep  5s
    Close All Browsers
