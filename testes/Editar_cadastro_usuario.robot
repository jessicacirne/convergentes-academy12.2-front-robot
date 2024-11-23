*** Settings ***
Resource    ../resources/Editar_cadastro_usuario.robot
Test Setup      Abrir Navegador     
Test Teardown       Fechar Navegador

*** Test Cases ***
Ct001 - Editar usuario com nome completo em branco
    [Documentation]    CN02: Fluxo incorreto
    [Tags]    Validação Negativa 

    Acessar pagina de usuarios
    Selecionar um usuario clicando em editar
    Preencher somente email
    Clicar em salvar as alteraçoes 
    Verificar mensagem informando campo nome obrigatorio

Ct002 - Editar usuario com email em branco
    [Documentation]    CN02: Fluxo incorreto
    [Tags]    Validação Negativa 

    Acessar pagina de usuarios
    Selecionar um usuario clicando em editar
    Preencher somente nome
    Clicar em salvar as alteraçoes 
    Verificar mensagem informando campo email obrigatorio

Ct003 - Editar usuario com formato de Email Invalido
    [Documentation]    CN02: Fluxo incorreto
    [Tags]    Validação Negativa 

    Acessar pagina de usuarios
    Selecionar um usuario clicando em editar
    Preencher email com formato invalido
    Clicar em salvar as alteraçoes 
    Verificar mensagem informando campo email invalido
