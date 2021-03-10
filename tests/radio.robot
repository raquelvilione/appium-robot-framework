***Settings***

Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Variables***
${RADIO_BUTTON}    xpath=//android.widget.RadioButton[contains(@text, 'Python')]

***Test Cases***
Deve selecionar a opção Python
    Go To Radio Buttons
    Click Element                       ${RADIO_BUTTON}
    Wait Until Element is Visible       ${RADIO_BUTTON}
    Element Attribute Should Match      ${RADIO_BUTTON}     checked     true