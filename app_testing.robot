*** Settings ***
Documentation               Robot Framework Example
...
Metadata                    VERSION     1.0
Library                     Selenium2Library
Library                     SeleniumLibrary


*** Variables ***
${URL}                      http://ec2-3-92-223-17.compute-1.amazonaws.com:8080/webapp/
${BROWSER}                  firefox
${ALIAS}                    None
${REMOTE_URL}               http://ec2-34-224-90-210.compute-1.amazonaws.com:4444



*** Test Cases ***
Start Firefox Browser
    Open Browser            ${URL}  ${BROWSER}  ${ALIAS}  ${REMOTE_URL}
    Maximize Browser Window
    Click Element  xpath=//*[@id="myButton"]
    Sleep  5s
    Close All Browsers
