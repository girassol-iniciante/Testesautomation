*** Settings ***
Resource        FormulárioPage.robot
Resource        FormulárioTests.robot


*** Keywords ***  
Dado que quero acessar a página home do site de teste
    Open Browser    url=${URL}      browser=${BROWSER} 

E clico em Formulário 
    click Element       ${LINK_FORMULARIO} 

E Criar Usuários 
    Wait Until Element Is Visible    ${LINK_CRIAR_USUARIO}   
    click Element       ${LINK_CRIAR_USUARIO} 

Quando preencho os dados do Formulário
    Input Text       ${INPUT_NOME}     Leticia
    Input Text       ${INPUT_ULTIMO-NOME}     Ferreira
    Input Text       ${INPUT_EMAIL}     Leticia22@teste.com.br
    Input Text       ${INPUT_ENDEREÇO}     Rua Brasil
    Input Text       ${INPUT_UNIVERSIDADE}     Anhembi Morumbi
    Input Text       ${INPUT_PROFISSAO}     Analista Administrativo
    Input Text       ${INPUT_GENERO}    Feminino
    Input Text       ${INPUT_IDADE}      31
    
Então Crio o cadastro com sucesso
    Click Element    ${BTN_CRIAR}

Dado que quero editar o formulário    
    Click Element    ${BTN_EDITAR}   

E altero Endereço com sucesso
    Wait Until Element Is Visible    ${INPUT_ENDEREÇO} 
    Clear Element Text      ${INPUT_ENDEREÇO} 
    Input Text       ${INPUT_ENDEREÇO}     Avenida Brasil             
             
         
               
              
                                        