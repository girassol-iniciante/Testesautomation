*** Settings ***
Resource        FormulárioPage.robot
Resource        FormulárioTests.robot


*** Keywords ***  

Quando preencho os dados do Formulário
    Input Text       ${INPUT_NOME}     Leticia
    Input Text       ${INPUT_ULTIMO-NOME}     Ferreira
    Input Text       ${INPUT_EMAIL}     Leticia22@teste.com.br
    Input Text       ${INPUT_ENDEREÇO}     Rua Brasil
    Input Text       ${INPUT_UNIVERSIDADE}     Anhembi Morumbi
    Input Text       ${INPUT_PROFISSAO}     Analista Administrativo
    Input Text       ${INPUT_GENERO}    Feminino
    Input Text       ${INPUT_IDADE}      31
    

E altero Endereço 
    Wait Until Element Is Visible    ${INPUT_ENDEREÇO} 
    Clear Element Text      ${INPUT_ENDEREÇO} 
    Input Text       ${INPUT_ENDEREÇO}     Avenida Brasil             
             
    
Então Excluo o primeiro usuário com sucesso
    Click Element    xpath=/html/body/div[3]/div/table/tbody/tr[1]/td[11]/a
    Handle Alert 
    Wait Until Page Contains      Seu Usuário foi removido com sucesso! 


Quando Escolho o link Erro 400 - Bad Request 
    Click Element    xpath=/html/body/div[2]/div[2]/div[4]/div[1]/a                                                 

Então Verifico o que aperece no link com sucesso
    Click Element    css=a.btn.waves-light.red