*** Settings ***
Library   SeleniumLibrary
Library   geraDados.py

*** Variables ***
${urlBase}              https://automacao.qacoders.dev.br/login
${emailInput}           id=email
${emailValido}          sysadmin@qacoders.com
${senhaInput}           id=password
${senhaValida}          1234@Test
${botaoInput}           id=login
${cadastrosInput}       //div[@class='MuiButtonBase-root MuiListItemButton-root MuiListItemButton-gutters MuiListItemButton-root MuiListItemButton-gutters css-1uwabd6']
${usuariosInput}        //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Usuários')]
${novoCadastroInput}    id=Novo Cadastro
${nomeCompletoInput}    id=fullName 
${emailUserInput}           //input[@id='mail']
${perfilAcessoInput}    //input[@id='accessProfile']
${perfilAcesso}         Admin
${cpfInput}             //input[@id='cpf']
${senhaAcessoInput}     //input[@id='password']
${salvarNovoInput}      //button[@id='save']
${confirmaSenhaInput}   id=confirmPassword
${cancelarInput}        //button[@id='cancel']
${esqueci_minha_senha_input}    //a[contains(@class,'css-rpkgv3')]

*** Keywords ***
Abrir navegador
    Open Browser    browser=chrome
    Maximize Browser Window
Fechar navegador
    Close Browser
Acessar a pagina de login
    Go To           url=${urlBase}
Digitar um e-mail válido
    Wait Until Element Is Visible   ${emailInput}     
    Input Text      ${emailInput}       ${emailValido}
    Sleep   3
Digitar senha válida
    Wait Until Element Is Visible   ${senhaInput}     
    Input Password      ${senhaInput}       ${senhaValida}
    Sleep   3

Deixar o e-mail em branco
    Wait Until Element Is Visible   ${emailInput}     
    Input Text      ${emailInput}       ${EMPTY}
    Sleep   3

Deixar o senha em branco
    Wait Until Element Is Visible   ${senhaInput}     
    Input Password      ${senhaInput}       ${EMPTY}
    Sleep   3

Dígitar E-mail de login inválido    
    Wait Until Element Is Visible   ${emailInput}     
    Input Text      ${emailInput}       testeteste.com
    Sleep   3
Digitar senha de login inválida
    Wait Until Element Is Visible   ${senhaInput}     
    Input Password      ${senhaInput}       1234
    Sleep   3
Clicar no botão entrar    
    Wait Until Element Is Visible   ${botaoInput}     
    Click Button 	 ${botaoInput}       
    Sleep   3
Clicar no botão Cadastros
    Wait Until Element Is Visible   ${cadastrosInput}      
    Click Element 	 ${cadastrosInput}        
    Sleep   3
Clicar no botão Usuários
    Wait Until Element Is Visible   ${usuariosInput}       
    Click Element 	 ${usuariosInput}        
    Sleep   3
Clicar no botão Novo Cadastro
    Wait Until Element Is Visible   ${novoCadastroInput}       
    Click Button 	 ${novoCadastroInput}        
    Sleep   3
Dígitar Nome Completo válido
    ${fullName}      Generate fullName
    Wait Until Element Is Visible       ${nomeCompletoInput}       
    Input Text 	 ${nomeCompletoInput}       ${fullName}       
    Sleep   3     
Dígitar Email válido
    ${email}      Generate email
    Wait Until Element Is Visible       ${emailUserInput}       
    Input Text 	 ${emailUserInput}       ${email}       
    Sleep   3       
Dígitar Perfil de Acesso válido  
    Wait Until Element Is Visible       ${perfilAcessoInput}       
    Input Text 	 ${perfilAcessoInput}       ${perfilAcesso} 
    Sleep   3  
Dígitar CPF válido
    ${cpf}      Generate cpf
    Wait Until Element Is Visible       ${cpfInput}       
    Input Text 	 ${cpfInput}     ${cpf}       
    Sleep   3    
Dígitar Senha válida    
    Wait Until Element Is Visible       ${senhaAcessoInput}       
    Input Text 	 ${senhaAcessoInput}       ${senhaValida} 
    Sleep   3
Dígitar Confirmação de senha válida
    Wait Until Element Is Visible       ${confirmaSenhaInput}       
    Input Text 	 ${confirmaSenhaInput}       ${senhaValida} 
    Sleep   3    
Clicar no botão Salvar Novo
    Wait Until Element Is Visible   ${salvarNovoInput}       
    Click Button 	 ${salvarNovoInput}        
    Sleep   5                                                                                                                                                                                  Existe outra pasta na raiz de nome tests, que contem o arquivo: 1_novo_cadastro_de_login.robot, que possui o seguinte código: *** Settings ***
Deixar todos os campos vazios 
    Wait Until Element Is Visible       ${nomeCompletoInput}       
    Input Text 	 ${nomeCompletoInput}   ${EMPTY}              
    Sleep   5    
Dígitar Nome Completo c/ 101 carac
    Wait Until Element Is Visible       ${nomeCompletoInput}       
    Input Text 	 ${nomeCompletoInput}   Ana Beatriz de Oliveira Silva e Santos Pereira do Nascimento e Souza dos Reis de Almeida e Costa Ferreira       
    Sleep   5
Clicar no botão cancelar
    Wait Until Element Is Visible   ${cancelarInput}       
    Click Button 	 ${cancelarInput}        
    Sleep   5
Dígitar Nome Completo c/ números    
    Wait Until Element Is Visible       ${nomeCompletoInput}       
    Input Text 	 ${nomeCompletoInput}       M4ria 7Reis       
    Sleep   3
Dígitar Nome Completo c/ caracteres especiais
    Wait Until Element Is Visible       ${nomeCompletoInput}       
    Input Text 	 ${nomeCompletoInput}       M@r,i& @R&!s       
    Sleep   3
Dígitar Nome Completo c/ uma palavra  
    Wait Until Element Is Visible       ${nomeCompletoInput}       
    Input Text 	 ${nomeCompletoInput}       Maria        
    Sleep   3  
Dígitar Email diferente do formato 'nome@dominio.com' (1)
    ${email}      Generate email
    Wait Until Element Is Visible       ${emailUserInput}       
    Input Text 	 ${emailUserInput}       mariareis.com       
    Sleep   3
Dígitar Email diferente do formato 'nome@dominio.com' (2)
    ${email}      Generate email
    Wait Until Element Is Visible       ${emailUserInput}       
    Input Text 	 ${emailUserInput}       mariareis@gmail       
    Sleep   3    
Dígitar Email diferente do formato 'nome@dominio.com' (3)
    ${email}      Generate email
    Wait Until Element Is Visible       ${emailUserInput}       
    Input Text 	 ${emailUserInput}       mariareis@.com       
    Sleep   3        
Dígitar Email com espaço no corpo
    ${email}      Generate email
    Wait Until Element Is Visible       ${emailUserInput}       
    Input Text 	 ${emailUserInput}       mariareis @gmail.com       
    Sleep   3
Dígitar Senha com 7 caracteres    
    Wait Until Element Is Visible       ${senhaAcessoInput}       
    Input Text 	 ${senhaAcessoInput}       123@Tes 
    Sleep   3
Dígitar Confirmação com 7 caracteres
    Wait Until Element Is Visible       ${confirmaSenhaInput}       
    Input Text 	 ${confirmaSenhaInput}       123@Tes 
    Sleep   3
Dígitar Senha com 13 caracteres    
    Wait Until Element Is Visible       ${senhaAcessoInput}       
    Input Text 	 ${senhaAcessoInput}       1234@Testando 
    Sleep   3
Dígitar Confirmação com 13 caracteres
    Wait Until Element Is Visible       ${confirmaSenhaInput}       
    Input Text 	 ${confirmaSenhaInput}       1234@Testando 
    Sleep   3
Dígitar Senha sem letra maiúscula  
    Wait Until Element Is Visible       ${senhaAcessoInput}       
    Input Text 	 ${senhaAcessoInput}       123@test 
    Sleep   3  
Dígitar Confirmação de senha inválida - sem maiúscula    
    Wait Until Element Is Visible       ${confirmaSenhaInput}       
    Input Text 	 ${confirmaSenhaInput}       123@test 
    Sleep   3
Dígitar Senha sem letra minúscula  
    Wait Until Element Is Visible       ${senhaAcessoInput}       
    Input Text 	 ${senhaAcessoInput}       123@TEST 
    Sleep   3  
Dígitar Confirmação de senha inválida - sem minúscula
    Wait Until Element Is Visible       ${confirmaSenhaInput}       
    Input Text 	 ${confirmaSenhaInput}       123@TEST
    Sleep   3
Dígitar Senha sem número 
    Wait Until Element Is Visible       ${senhaAcessoInput}       
    Input Text 	 ${senhaAcessoInput}       test@Test 
    Sleep   3   
Dígitar Confirmação de senha inválida - sem número    
    Wait Until Element Is Visible       ${confirmaSenhaInput}       
    Input Text 	 ${confirmaSenhaInput}       test@Test 
    Sleep   3    
Dígitar senha sem usar caracteres especiais 
    Wait Until Element Is Visible       ${senhaAcessoInput}       
    Input Text 	 ${senhaAcessoInput}       test@Test 
    Sleep   3   
Dígitar Confirmação de senha inválida - caracteres especiais    
    Wait Until Element Is Visible       ${confirmaSenhaInput}       
    Input Text 	 ${confirmaSenhaInput}       test@Test 
    Sleep   3        
Dígitar Confirmação de senha inválida 
    Wait Until Element Is Visible       ${confirmaSenhaInput}       
    Input Text 	 ${confirmaSenhaInput}       test@Test 
    Sleep   3 
Dígitar CPF com 11 dígitos 
    ${cpf}      Generate cpf
    Wait Until Element Is Visible       ${cpfInput}       
    Input Text 	 ${cpfInput}     8583608154       
    Sleep   3      
Dígitar CPF com letras
    ${cpf}      Generate cpf
    Wait Until Element Is Visible       ${cpfInput}       
    Input Text 	 ${cpfInput}     8583b08154a       
    Sleep   3
Dígitar CPF com caracteres especiais
    ${cpf}      Generate cpf
    Wait Until Element Is Visible       ${cpfInput}       
    Input Text 	 ${cpfInput}     8583708154@       
    Sleep   3    

