*** Settings ***
Resource        ../resources/keywords.robot
Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Test Cases ***
CT1.2.1 - Validação de cadastro login com sucesso (Botão Salvar Novo)
    [Documentation]    CN02: Fluxo realizado como esperado
    [Tags]    Positivo 

    Acessar a pagina de login
    Digitar um e-mail válido
    Digitar senha válida
    Clicar no botão entrar
    Clicar no botão Cadastros
    Clicar no botão Usuários
    Clicar no botão Novo Cadastro
    Dígitar Nome Completo válido  
    Dígitar Email válido
    Dígitar Perfil de Acesso válido
    Dígitar CPF válido
    Dígitar Senha válida
    Dígitar Confirmação de senha válida
    Clicar no botão Salvar Novo

CT1.2.2 - Validação de cadastro login com sucesso (Botão Cancelar) 
    [Documentation]    CN02: Fluxo realizado como esperado
    [Tags]    Positivo

    Acessar a pagina de login
    Digitar um e-mail válido
    Digitar senha válida
    Clicar no botão entrar
    Clicar no botão Cadastros
    Clicar no botão Usuários
    Clicar no botão Novo Cadastro
    Dígitar Nome Completo válido  
    Dígitar Email válido
    Dígitar Perfil de Acesso válido
    Dígitar CPF válido
    Dígitar Senha válida
    Dígitar Confirmação de senha válida
    Clicar no botão cancelar   

CT1.3.1 - Campos do formulário vazios
    [Documentation]    CN3: Verificação de campos vazios
    [Tags]    Negativo

    Acessar a pagina de login
    Digitar um e-mail válido
    Digitar senha válida
    Clicar no botão entrar
    Clicar no botão Cadastros
    Clicar no botão Usuários
    Clicar no botão Novo Cadastro
    Deixar todos os campos vazios 
    Clicar no botão Salvar Novo   

CT1.4.1 - Verificar o limite máximo de 100 caracteres no campo Nome
    [Documentation]    CN4: Validação do Campo "Nome completo"
    [Tags]    Negativo

    Acessar a pagina de login
    Digitar um e-mail válido
    Digitar senha válida
    Clicar no botão entrar
    Clicar no botão Cadastros
    Clicar no botão Usuários
    Clicar no botão Novo Cadastro
    Dígitar Nome Completo c/ 101 carac  
    Dígitar Email válido
    Dígitar Perfil de Acesso válido
    Dígitar CPF válido 
    Dígitar Senha válida
    Dígitar Confirmação de senha válida
    Clicar no botão Salvar Novo 
          
CT1.4.2 - Verificar se o campo Nome completo aceita apenas letras  
    [Documentation]    CN4: Validação do Campo "Nome completo"
    [Tags]    Negativo

    Acessar a pagina de login
    Digitar um e-mail válido
    Digitar senha válida
    Clicar no botão entrar
    Clicar no botão Cadastros
    Clicar no botão Usuários
    Clicar no botão Novo Cadastro
    Dígitar Nome Completo c/ números  
    Dígitar Email válido
    Dígitar Perfil de Acesso válido
    Dígitar CPF válido
    Dígitar Senha válida
    Dígitar Confirmação de senha válida
    Clicar no botão Salvar Novo
    Dígitar Nome Completo c/ caracteres especiais
    Clicar no botão Salvar Novo

CT1.4.3 - Verificar se o campo possui no mínimo duas palavras
    [Documentation]    CN4: Validação do Campo "Nome completo"
    [Tags]    Negativo

    Acessar a pagina de login
    Digitar um e-mail válido
    Digitar senha válida
    Clicar no botão entrar
    Clicar no botão Cadastros
    Clicar no botão Usuários
    Clicar no botão Novo Cadastro
    Dígitar Nome Completo c/ uma palavra 
    Dígitar Email válido
    Dígitar Perfil de Acesso válido
    Dígitar CPF válido
    Dígitar Senha válida
    Dígitar Confirmação de senha válida
    Clicar no botão Salvar Novo
    
CT1.5.1 - Verificar formato inválido no campo E-mail (ex.: diferente de nome@dominio.com ou com espaços)
    [Documentation]   CN5: Validação do Campo "E-mail" 
    [Tags]    Negativo

    Acessar a pagina de login
    Digitar um e-mail válido
    Digitar senha válida
    Clicar no botão entrar
    Clicar no botão Cadastros
    Clicar no botão Usuários
    Clicar no botão Novo Cadastro
    Dígitar Nome Completo válido  
    Dígitar Email diferente do formato 'nome@dominio.com' (1)
    Dígitar Perfil de Acesso válido
    Dígitar CPF válido
    Dígitar Senha válida
    Dígitar Confirmação de senha válida
    Clicar no botão Salvar Novo
    Dígitar Email diferente do formato 'nome@dominio.com' (2)
    Clicar no botão Salvar Novo
    Dígitar Email diferente do formato 'nome@dominio.com' (3)
    Clicar no botão Salvar Novo
    Dígitar Email com espaço no corpo
    Clicar no botão Salvar Novo

CT1.6.1 - Verificar a regra de no mínimo 8 e no máximo 12 caracteres no campo Senha
    [Documentation]    CN6: Validação do Campo "Senha"
    [Tags]    Negativo

    Acessar a pagina de login
    Digitar um e-mail válido
    Digitar senha válida
    Clicar no botão entrar
    Clicar no botão Cadastros
    Clicar no botão Usuários
    Clicar no botão Novo Cadastro
    Dígitar Nome Completo válido  
    Dígitar Email válido
    Dígitar Perfil de Acesso válido
    Dígitar CPF válido
    Dígitar Senha com 7 caracteres
    Dígitar Confirmação com 7 caracteres
    Clicar no botão Salvar Novo
    Dígitar Senha com 13 caracteres
    Dígitar Confirmação com 13 caracteres
    Clicar no botão Salvar Novo

CT1.6.2 - Campo senha sem usar letras maiúsculas
    [Documentation]    CN6: Validação do Campo "Senha"
    [Tags]    Negativo

    Acessar a pagina de login
    Digitar um e-mail válido
    Digitar senha válida
    Clicar no botão entrar
    Clicar no botão Cadastros
    Clicar no botão Usuários
    Clicar no botão Novo Cadastro
    Dígitar Nome Completo válido  
    Dígitar Email válido
    Dígitar Perfil de Acesso válido
    Dígitar CPF válido
    Dígitar Senha sem letra maiúscula
    Dígitar Confirmação de senha inválida - sem maiúscula
    Clicar no botão Salvar Novo
CT1.6.3 - Campo senha sem usar letras minúsculas
    [Documentation]    CN6: Validação do Campo "Senha"
    [Tags]    Negativo

    Acessar a pagina de login
    Digitar um e-mail válido
    Digitar senha válida
    Clicar no botão entrar
    Clicar no botão Cadastros
    Clicar no botão Usuários
    Clicar no botão Novo Cadastro
    Dígitar Nome Completo válido  
    Dígitar Email válido
    Dígitar Perfil de Acesso válido
    Dígitar CPF válido
    Dígitar Senha sem letra minúscula
    Dígitar Confirmação de senha inválida - sem minúscula
    Clicar no botão Salvar Novo
CT1.6.4 - Campo senha sem usar números
    [Documentation]    CN6: Validação do Campo "Senha"
    [Tags]    Negativo

    Acessar a pagina de login
    Digitar um e-mail válido
    Digitar senha válida
    Clicar no botão entrar
    Clicar no botão Cadastros
    Clicar no botão Usuários
    Clicar no botão Novo Cadastro
    Dígitar Nome Completo válido  
    Dígitar Email válido
    Dígitar Perfil de Acesso válido
    Dígitar CPF válido
    Dígitar Senha sem número
    Dígitar Confirmação de senha inválida - sem número
    Clicar no botão Salvar Novo
CT1.6.5 - Campo senha sem usar caracteres especiais
    [Documentation]    CN6: Validação do Campo "Senha"
    [Tags]    Negativo

    Acessar a pagina de login
    Digitar um e-mail válido
    Digitar senha válida
    Clicar no botão entrar
    Clicar no botão Cadastros
    Clicar no botão Usuários
    Clicar no botão Novo Cadastro
    Dígitar Nome Completo válido  
    Dígitar Email válido
    Dígitar Perfil de Acesso válido
    Dígitar CPF válido
    Dígitar senha sem usar caracteres especiais
    Dígitar Confirmação de senha inválida - caracteres especiais
    Clicar no botão Salvar Novo

CT1.7.1 - Verificar se Confirmar senha corresponde à senha original
    [Documentation]    Validação do Campo "Confirmar Senha"   
    [Tags]    Negativo

    Acessar a pagina de login
    Digitar um e-mail válido
    Digitar senha válida
    Clicar no botão entrar
    Clicar no botão Cadastros
    Clicar no botão Usuários
    Clicar no botão Novo Cadastro
    Dígitar Nome Completo válido  
    Dígitar Email válido
    Dígitar Perfil de Acesso válido
    Dígitar CPF válido
    Dígitar Senha válida
    Dígitar Confirmação de senha inválida
    Clicar no botão Salvar Novo

CT1.8.1 - Verificar se CPF contém 11 dígitos 
    [Documentation]    CN8: Validação do campo CPF
    [Tags]    Negativo

    Acessar a pagina de login
    Digitar um e-mail válido
    Digitar senha válida
    Clicar no botão entrar
    Clicar no botão Cadastros
    Clicar no botão Usuários
    Clicar no botão Novo Cadastro
    Dígitar Nome Completo válido  
    Dígitar Email válido
    Dígitar Perfil de Acesso válido
    Dígitar CPF com 11 dígitos
    Dígitar Senha válida
    Dígitar Confirmação de senha válida
    Clicar no botão Salvar Novo

CT1.8.2: Verificar se CPF contém letras
    [Documentation]    CN8: Validação do campo CPF
    [Tags]    Negativo

    Acessar a pagina de login
    Digitar um e-mail válido
    Digitar senha válida
    Clicar no botão entrar
    Clicar no botão Cadastros
    Clicar no botão Usuários
    Clicar no botão Novo Cadastro
    Dígitar Nome Completo válido  
    Dígitar Email válido
    Dígitar Perfil de Acesso válido
    Dígitar CPF com letras
    Dígitar Senha válida
    Dígitar Confirmação de senha válida
    Clicar no botão Salvar Novo

CT1.8.2 - Verificar se CPF contém caracteres especiais
    [Documentation]    CN8: Validação do campo CPF
    [Tags]    Negativo

    Acessar a pagina de login
    Digitar um e-mail válido
    Digitar senha válida
    Clicar no botão entrar
    Clicar no botão Cadastros
    Clicar no botão Usuários
    Clicar no botão Novo Cadastro
    Dígitar Nome Completo válido  
    Dígitar Email válido
    Dígitar Perfil de Acesso válido
    Dígitar CPF com caracteres especiais
    Dígitar Senha válida
    Dígitar Confirmação de senha válida
    Clicar no botão Salvar Novo

