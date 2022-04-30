*** Settings ***
Documentation       Suíte Exemplo mentoria
Resource            ../../resources/commons.robot
Resource             FormulárioSteps.robot

Suite Setup 
Test Setup
Test Teardown        #Capture Page Screenshot
Suite Teardown       #Fecho a pagina


*** Test Cases ***
Cenário: Iniciar os testes no Formulário
    Dado que quero acessar a página home do site de teste
    E clico em Formulário
    E Criar Usuários
    Quando preencho os dados do Formulário
    Então Crio o cadastro com sucesso

Cenário: Editar Formulário    
    Dado que quero editar o formulário
    E altero Endereço com sucesso
    Então Crio o cadastro com sucesso 

Cenário: Lista de Usuário

