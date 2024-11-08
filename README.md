# Robot Tests Web com GitHub Actions

Este repositório contém um workflow do GitHub Actions configurado para executar testes automatizados usando o Robot Framework para testes web.

## Passo a Passo para Configuração e Execução do Workflow

### 1. Checkout do Repositório
O primeiro passo do workflow realiza o checkout do repositório atual utilizando a ação `actions/checkout@v4`.

### 2. Configuração da Versão do Python
Em seguida, o workflow configura a versão do Python necessária para os testes. A versão configurada é **3.12**.

### 3. Instalação de Dependências
Após configurar a versão do Python, o workflow instala as dependências necessárias para o Robot Framework e suas bibliotecas associadas, como:
- `robotframework`
- `robotframework-requests`
- `robotframework-seleniumlibrary`

### 4. Execução dos Testes do Robot Framework
Depois de instalar as dependências, o workflow executa os testes do Robot Framework utilizando o comando:

```bash
robot --name "TestesFront" --outputdir FRONT/ testes/
