#Include 'Totvs.ch'

/*/{Protheus.doc} calcFat
Estrutura de RepetiÁ„o
@type function
@version  1
@author Ana Clara Macùdo
@since 16/01/2023
@return variant, return desc
/*/
User Function Repete
Local nCont 
Local nSoma := 0

For nCont:= 1 to 5
    If nCont = 2
        Loop
    EndIf
    nSoma += nCont
Next

//Alert(CValToChar((nSoma)))

nCont := 0
while nCont<5
    Alert(CValToChar(nCont))
    nCont++
end

SA1->(dbGoTop())

While !SA1->(EOF())
    If SA1->A1_EST = "RJ"
        Alert(SA1->A1_NOME)
    EndIf
    SA1->(dbSkip())
End

do Case
    Case A1_EST ="RJ"
    Case A1_EST ="RJ" .AND. A1_MUN ="OSASCO"
EndCase

Return
