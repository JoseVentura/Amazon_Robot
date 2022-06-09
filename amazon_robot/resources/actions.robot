*Settings*

Documentation           Acoes customizadadas do Yodapp

*Keywords*

# Realizo a busca de um produto
Found New Product
    [Arguments]     ${user} 
    #campos de texto preenchimento (objeto e item_massa)
    Fill Text       id=twotabsearchtextbox      ${user}[produto]

    Click       id=nav-search-submit-button

# Valida o produto pesquisado
Validation New Product Exibition 
    [Arguments]     ${user} 
    # Checkpoint validar o produto 
    Wait For Elements State     
    ...     xpath=//*[@id="search"]/span[3]/div[2]/div[5]/div/div/div/div[1]/span/a/div
    ...     visible     10

#Selecionamos o produto
Select the Product
    #clique de botão
    Click       xpath=//*[@id="search"]/span[3]/div[2]/div[5]/div/div/div/div[1]/span/a/div

