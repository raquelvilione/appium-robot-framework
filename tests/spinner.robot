***Settings***

Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Variables***
${SPINNER}          id=android:id/text1
${LIST_OPTIONS}     class=android.widget.ListView

***Test Cases***
Deve selecionar o perfil QA no formulário de cadastro
    Go To SingUp form
    Choice Job  QA

Deve selecionar o perfil DevOps no formulário de cadastro
    Go To SingUp form
    Choice Job  DevOps

***Keywords***
Choice Job
    [Arguments]     ${target}
    Click Element                   ${SPINNER}
    Wait Until Element is Visible   ${LIST_OPTIONS}
    Click Text                      ${target}