*Settings*

Documentation       Suite de teste para verificar se o app esta online

#encapsulando uma classe
Resource        ${EXECDIR}/resources/base.robot

Test Setup      Start Session
Test Teardown   End Session

*Test Cases*
Yodapp deve estar online
    #validar o titulo (validar igual e valor_massa)
    Get Title       equal       Amazon.com.br | Tudo pra você, de A a Z.

    Sleep       8
    
Deve exibir a mensagem de boas vidas 
    #esperar o pagina (objeto+tipo item_massa, visibilidae e tempo) 
    Wait For Elements State     
    ...     id=nav-logo-sprites >> text=Amazon.com.br
    ...     visible     6



