*** Settings ***
Documentation       Suíte Exemplo mentoria
Resource            ../../resources/commons.robot
Resource             FormulárioSteps.robot

Suite Setup  
Suite Teardown        
Test Setup           Dado que quero acessar a página home do site de teste
Test Teardown        Fecho a pagina



*** Test Cases ***
Cenário 1: Iniciar os testes no Formulário e editar Formulário
    E clico no link Formulário
    E clico no link Criar Usuários
    Quando preencho os dados do Formulário
    E Crio o cadastro 
    E edito formulário
    E altero Endereço 
    Então Crio o cadastro com sucesso 

Cenário 2: Excluir uma Lista de Usuários
    E clico no link Formulário
    E clico no link de Usuários
    Então Excluo o primeiro usuário com sucesso
        
Cenário 3: 
    E clico no link Busca de elementos
    E clico no link
    Quando Escolho o link Erro 400 - Bad Request
    Então Verifico o que aperece no link com sucesso

