***Settings***

Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Variables***
${DRAG_HANDLE}     io.qaninja.android.twp:id/drag_handle

***Test Cases***
Deve mover o Iron Man para o topo da lista
    Go To Avenger List
    Drag_and_Drop       ${DRAG_HANDLE}     2   0