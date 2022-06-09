*Settings*

Documentation       Este não é uma suite de teste, é a minha base

Library     Browser
Library     String

#encapsulando uma classe mesma pasta
Resource    actions.robot

*Keywords*
Start Session
    #acessar o browser (browser, tipo abertura X não exibe e tempo)
    New Browser     chromium        headless=False      slowMo=00:00:05
    New Page        https://www.amazon.com.br/
    #antiga - New Page        https://yodapp.vercel.app

End Session
    Take Screenshot