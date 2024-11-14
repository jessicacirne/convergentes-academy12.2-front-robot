*** Settings ***
Resource        ../resources/keywords.robot
Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Test Cases ***
# CN2: Novo cadastro de Login com sucesso
CT1.1.1 - Validação de E-mail e senha válidos
    [Documentation]    CN01: Novo cadastro de Login com sucesso
    [Tags]    Validação Positiva   

    Acessar a pagina de login
    Digitar um e-mail válido
    Digitar senha válida
    Clicar no botão entrar

CT1.2.1 - Validação de campos obrigatórios em branco
    [Documentation]    CN02: Fluxo incorreto
    [Tags]    Validação Negativa  

    Acessar a pagina de login
    Deixar o e-mail em branco    
    Deixar o senha em branco
    Clicar no botão entrar

CT1.2.2 - Validação de E-mail inválido + Senha válida
    [Documentation]    CN02: Fluxo incorreto
    [Tags]    Validação Negativa  

    Acessar a pagina de login
    Dígitar E-mail de login inválido 
    Digitar senha válida
    Clicar no botão entrar    

CT1.2.3 - Validação de E-mail válido + Senha inválida
    [Documentation]    CN02: Fluxo incorreto
    [Tags]    Validação Negativa  

    Acessar a pagina de login
    Digitar um e-mail válido
    Digitar senha de login inválida    
    Clicar no botão entrar
