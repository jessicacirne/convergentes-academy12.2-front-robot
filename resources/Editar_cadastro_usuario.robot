*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${urlBase}              https://automacao.qacoders.dev.br/login
${emailInput}           id=email
${emailValido}          sysadmin@qacoders.com
${senhaInput}           id=password
${senhaValida}          1234@Test
${btnInput}             id=login

${btnCadastros}         id=Cadastros
${btnUsuarios}          id=Usuários

${btnEditar}        xpath=/html/body/div/div/div[2]/div[2]/div/ul/li[1]//*[@id="edit"]

${novoNome}             //*[@id="fullName"]    
${novoEmail}            //*[@id="mail"]

${msgCampoNomeObrigatorio}          //*[text()='O campo nome completo é obrigatório']

${msgLimiteCaractere}      //*[text()='O nome completo deve ter no máximo 100 caracteres.']

${msgCampoEmailObrigatorio}         //*[text()='O campo email é obrigatório']
${msgEmailInvalido}         //*[text()='Email inválido']


${btnSalvar}            id=save

*** Keywords ***
Abrir Navegador
    Open Browser    browser=chrome
    Maximize Browser Window 

Fechar Navegador
    Close Browser

Logar
    Go To                               url=${urlBase}
    Wait Until Element Is Visible       locator=${emailInput}
    Input Text                          locator=${emailInput}     text=${emailValido}
    Input Password                      locator=${senhaInput}     password=${senhaValida} 
    Click Button                        locator=${btnInput}

Cadastrar
    Wait Until Element Is Visible       locator=${btnNovoCadastro}
    Click Button                        locator=${btnNovoCadastro}
    Input Text                          locator=${nomeCompleto}      text=Carlos Silva
    Input Text                          locator=${emailCadastro}     text=Carllos.S1lva@qacoders.com
    Input Text                          locator=${perfilAcesso}      text=ADMIN
    Input Text                          locator=${cpf}               text=16686252700
    Input Text                          locator=${senha}     text=1234@Test
    Input Text                          locator=${confirmarSenha}     text=1234@Test 
    Click Button                        locator=${btnSalvar}


Acessar pagina de usuarios
    Logar
    Wait Until Page Contains    text=Cadastros
    Click Element      ${btnCadastros}
    Click Element      ${btnUsuarios}

Selecionar um usuario clicando em editar
     Wait Until Element Is Visible       locator=${btnEditar}
     Click Button      locator=${btnEditar}
     Sleep  5

Preencher os campos com os novos dados
     Wait Until Element Is Visible       locator=${novoNome}
     Input Text         ${novoNome}         text=Josivaldo Cruz
     Input Text         ${novoEmail}        text=Josilvaldo_cruz@qacoders.com

Clicar em salvar as alteraçoes 
     Wait Until Element Is Visible       locator=${btnSalvar}
     Click Button       ${btnSalvar}

Verificar atualização
    ${nomeAtualizado}=    Get Text    ${novoNome}
    Should Be Equal     ${nomeAtualizado}    Josivaldo Cruz

Preencher somente email
    Wait Until Element Is Visible       locator=${novoNome}
    Click Element    ${novoNome}
    Press Keys       ${novoNome}    CTRL+A        BACKSPACE    # Selecionar todo o texto        
    Input Text         ${novoEmail}        text=Josilvaldo_cruz@qacoders.com

Preencher somente nome
    Wait Until Element Is Visible       locator=${novoNome}
    Input Text         ${novoNome}        text=Josilvaldo_cruz@qacoders.com
    Click Element    ${novoEmail}
    Press Keys       ${novoEmail}    CTRL+A        BACKSPACE    # Selecionar todo o texto   

Verificar mensagem informando campo nome obrigatorio
    ${msg}=    Get Text    ${msgCampoNomeObrigatorio}
    Should Be Equal     ${msg}    O campo nome completo é obrigatório

Verificar mensagem informando campo email obrigatorio
    ${msg}=    Get Text    ${msgCampoEmailObrigatorio}
    Should Be Equal     ${msg}    O campo email é obrigatório

Preencher email com formato invalido
     Wait Until Element Is Visible       locator=${novoNome}
     Input Text         ${novoEmail}        text=Josilvaldo_cruzqacoders.com

Verificar mensagem informando campo email invalido
    ${msg}=    Get Text    ${msgEmailInvalido}
    Should Be Equal     ${msg}    Email inválido