#Include 'Totvs.ch'

/*/{Protheus.doc} calcFat
Variavies
@type function
@version  1
@author Ana Clara Macùdo
@since 16/01/2023
@return variant, return desc
/*/
User Function varTeste ()
Local nDesc1 := 0, nDesc2 := 0, nDesc3 := 0
Local aVetNum := {10,20,30}
Local nCont := 0
Local cDataBco := "20230116"
Local cDataTxt := "06/01/23"
Local cValNf := "4335.98"

set date to british 

nDesc1 := 10
nDesc1++

nDesc2 += nDesc1
nDesc3 += nDesc2

For nCont := 1 to len(aVetNum)
    //MsgInfo(CValToChar(aVetNum[nCont]))
Next

MsgInfo("Hoje È " + DtoC(Date()) +" e s„o " + Time(), "Data")
Alert("Data banco " + DtoC(SToD(cDataBco)))
Alert("Data texto " + DtoC(CToD(cDataTxt)))

cValNf := Val(cValNf) - 100

Alert("O valor da nota com desconto È de  "+ Transform(cValNf, "@e 999,999.99"))

Return 
