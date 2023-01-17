#Include 'Totvs.ch'

/*/{Protheus.doc} dialog001
teste de dialog
@type function
@version  1
@author aluno
@since 17/01/2023
@return variant, sem retorno
/*/

User Function dialog001
Local cTitulo   := "Cadastro de Vendedor"
Local cCGC      := Space(TamSX3("A3_CGC")[1])
Local cCodVen   := Space(TamSX3("A3_COD")[1])
Local cNomeVen  := Space(TamSX3("A3_NOME")[1])
Local nInc      := 15

Private oDlg

    Define MsDialog oDlg Title cTitulo From 0,0 to 180,300 PIXEL

    @1,1 to 90,150 of oDlg Pixel
    
    nLin := 10
    @nLin,10 Say 'Código' Size 55,07 of oDlg Pixel
    @nLin-3,50 MsGet cCodVen Size 30,11 of oDlg Pixel Picture "@9" Valid ExistChav("SA3", cCodVen, 1)
    nLin += nInc

    @nLin,10 Say 'Nome' Size 55,07 Of oDlg Pixel
    @nLin-3,50 MsGet cNomeVen Size 55,11 of oDlg Pixel Picture "@!" Valid !Empty(cNomeVen)
    nLin += nInc
    
    @nLin,10 say 'CPF/CNPJ' Size 55,07 of oDlg Pixel
    @nLin-3,50 MsGet cCGC Size 55,11 of oDlg Pixel Picture "@R 99.999.999/9999-99" Valid !Empty(cCGC) .and. CGC(cCGC)
    nLin += nInc

    Define SButton From 10,120 Type 1 Action Grava(cCodVen, cNomeVen, cCGC) Enable of oDlg
    Define SButton From 25,120 Type 2 Action (nOpca:=2,oDlg:End()) Enable of oDlg
    
    Activate MsDialog oDlg Centered

Return

Static Function Grava(cCodVen, cNomeVen, cCGC)

If Empty(cCodVen)
    MsgStop("Código do vendedor vazio. Favor ajustar.", "CAMPO VAZIO")
ElseIf Empty(cNomeVen)
    MsgStop("Nome do vendedor vazio. Favor ajustar.", "CAMPO VAZIO")
ElseIf Empty(cCGC)
    MsgStop("CNPJ/CPF do vendedor vazio. Favor ajustar.", "CAMPO VAZIO")
Else
    oDlg:End()
EndIf

RecLock("SA3", .T.)
SA3->A3_COD := cCodVen
SA3->A3_NOME := cNomeVen
SA3->A3_CGC := cCGC
SA3->(MsUnlock())

Return


