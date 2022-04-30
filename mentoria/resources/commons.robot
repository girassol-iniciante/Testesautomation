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