#Include 'Totvs.ch'

User Function brow001
Local cAlias := "SA3"

Private cCadastro := 'Cadastro de Vendedores'
Private aRotina := {}

aadd(aRotina, {'Pesquisar', 'AxPesqui', 0, 1})
aadd(aRotina, {'Visualiar', 'AxVisual', 0, 2})
aadd(aRotina, {'Incluir',  'u_bInclui', 0, 3})
aadd(aRotina, {'Alterar',  'u_bAltera', 0, 4})
aadd(aRotina, {'Excluir',  'u_bExclui', 0, 5})

mBrowse(6,1,22,75, cAlias)

Return

User Function bInclui(_cAlias, _nReg, _nOpc)
Local cTudoOK := "u_fTudoOK()"

AxInclui(_cAlias, _nReg, _nOpc,,,,cTudoOK)

Return

User Function bAltera(_cAlias, _nReg, _nOpc)
Local cTudoOK := "u_fTudoOK()"

AxAltera(_cAlias, _nReg, _nOpc,,,,cTudoOK)
Return

User Function bExclui(_cAlias, _nReg, _nOpc)
//Local cTudoOK := "u_fTudoOK()"

AxDELETA(_cAlias, _nReg, _nOpc,,,,,)
Return

User Function fTudoOK
Local lRet := .T.

If Empty(M->A3_CGC)
    Alert('CPF não pode ficar em branco. Favor ajustar')
    lRet := .F.
Else
    Alert('Todos os dados OK')
EndIf

If Empty(M->A3_Nome)
    Alert('Nome não pode ficar em branco. Favor ajustar')
    lRet := .F.
Else
    Alert('Todos os dados OK')
EndIf

Return lRet



// Local cTitulo := "Cadastro de Fornecedores"
// Local cVldExc := ".T."
// Local cVldAlt := ".T."

//DbSelectArea(cAlias)
//DbSetOrder(1)
//AxCadastro(cAlias, cTitulo,)

// cVldExc, cVlsAlt
