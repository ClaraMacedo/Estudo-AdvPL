#Include 'Totvs.ch'
#include 'TopConn.ch'

User Function tstTexto 
Local cQuery := ""

RpcSetEnv('99','01')

cQuery := "SELECT B1_COD, B1_DESC, B1_PRV1 "
cQuery += "FROM SB1 "
cQuery += "WHERE D_E_L_E_T_E =''"

TcQuery cQuery Alias TPROD New

While !TPROD->(EOF())
    MsgAlert('Codigo ' + TPROD->B1_COD +' Descricao '+ TPROD->B1_DESC +' Preco ' + Str(TPROD->B1_PRV1), "a")
    TPROD->(DBSKIP())
End
Return
