*Settings*

Documentation       Suite de teste para buscar novo produto

#encapsulando uma classe pastas diferentes
Resource        ${EXECDIR}/resources/base.robot

Test Setup      Start Session
Test Teardown   End Session

*Test Cases*
Deve buscar um novo Produto 
    [Tags]      happy
 #Massa de dados e sua chamada &{user} name-ex. vem de actions
    &{user}     Create Dictionary
    ...         produto=Macbook Pro Retina Apple 13,3", 16gb, Cinza Espacial, Ssd 512gb, Intel Core i5, 2.0 Ghz, Touch Bar e Touch Id
    ...         valor=R$26.399,00
  # Dado que acesso a pagina e busque um novo produto
    Found New Product  ${user} 

  # Quando obtenho o retorno do novo produto
    Validation New Product Exibition   ${user}
  # E submeto o novo produto ao compra
    Select the Product
  # Então deve ser exibido o produto na cesta de compras com sucesso

