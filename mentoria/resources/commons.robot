*** Settings ***
Documentation     Exemplo de uso da Library Faker
Library     SeleniumLibrary
Library     FakerLibrary

*** Variable ***
${BROWSER}                         chrome
${HEADLESS}                        false  
${URL}                             https://automacaocombatista.herokuapp.com/treinamento/home
${TIME_TO_WAIT}                    5
${LINK_FORMULARIO}                 xpath=/html/body/div[2]/div[1]/ul/li[1]/a  
${LINK_CRIAR_USUARIO}              xpath=/html/body/div[2]/div[1]/ul/li[1]/div/ul/li[1]/a
${LINK_LISTA_DE_USUARIOS}          xpath=/html/body/div[2]/div[1]/ul/li[1]/div/ul/li[2]/a
${LINK_LINK}                       xpath=/html/body/div[2]/div[1]/ul/li[2]/div/ul/li[1]/a
${LINK_BUSCA_DE_ELEMENTO}          xpath=/html/body/div[2]/div[1]/ul/li[2]/a
${INPUT_NOME}                      css=input#user_name 
${INPUT_ULTIMO-NOME}               css=input#user_lastname
${INPUT_EMAIL}                     css=input#user_email
${INPUT_ENDEREÇO}                  css=input#user_address
${INPUT_UNIVERSIDADE}              css=input#user_university
${INPUT_PROFISSAO}                 css=input#user_profile
${INPUT_GENERO}                    css=input#user_gender  
${INPUT_IDADE}                     css=input#user_age
${BTN_CRIAR}                       name=commit
${BTN_EDITAR}                      css=a.btn.waves-light.blue   

*** Keywords ***

Dado que quero acessar a página home do site de teste
    Open Browser    url=${URL}      browser=${BROWSER} 
    Maximize Browser Window

E clico no link Formulário 
    click Element       ${LINK_FORMULARIO} 

E clico no link Criar Usuários 
    Wait Until Element Is Visible    ${LINK_CRIAR_USUARIO}   
    click Element       ${LINK_CRIAR_USUARIO} 

E Crio o cadastro 
    Click Element    ${BTN_CRIAR}

E edito formulário  
    Click Element    ${BTN_EDITAR} 

E clico no link de Usuários
    Wait Until Element Is Visible    ${LINK_LISTA_DE_USUARIOS} 
    Click Element     ${LINK_LISTA_DE_USUARIOS}  
    
Então Crio o cadastro com sucesso
    Click Element    ${BTN_CRIAR}

E clico no link Busca de elementos
    Click Element     ${LINK_BUSCA_DE_ELEMENTO}

E clico no link
    Click Element     ${LINK_LINK}  
Fecho a pagina
    Close Browser

