#Include 'Totvs.ch'

/*/{Protheus.doc} calcFat
Cálculo do Fatorial
@type function
@version  1
@author Ana Clara Macêdo
@since 16/01/2023
@return variant, return_description
/*/
User Function calcFat
Local nCnt
Local nResultado := 1
Local nFator := 9

For nCnt := nFator To 1 Step -1
    nResultado *= nCnt
Next nCnt

//Exibe o resultado na tela
MsgAlert("O Fatorial de " + cValToChar(nFator) + " é " + CValToChar(nResultado), "Fatorial")

return
