***Settings***

Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Variables***
${SHORT_CLICK}    id=io.qaninja.android.twp:id/short_click
${LONG_CLICK}     id=io.qaninja.android.twp:id/long_click

***Test Cases***
Deve realizar um clique simples
    Go To Short Click
    Click Element               ${SHORT_CLICK}
    Wait Until Page Contains    Isso é um clique simples 
    
Deve realizar um clique longo
    [tags]      long_click
    Go To Long Click
    long Press                  ${LONG_CLICK}   1000
    Wait Until Page Contains    CLIQUE LONGO OK