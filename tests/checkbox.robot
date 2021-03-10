***Settings***

Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Variables***
${CHECKBOX}         xpath=//android.widget.CheckBox[contains(@text, 'Robot Framework')]
${RV_CONTAINER}     id=io.qaninja.android.twp:id/rvContainer

***Test Cases***
Deve selecionar a opção Robot Framework
    Go To Checkbox    
    Click Element                       ${CHECKBOX}
    Wait Until Element is Visible       ${RV_CONTAINER}
    Element Attribute Should Match      ${CHECKBOX}      checked     true