#Include 'Totvs.ch'

User Function dialog001
Local cTitulo := 'Teste Dialog'
Local cTexto := 'Informe o CNPJ'
Local cCGC := space(14)

    Define MsDialog oDlg TITLE cTitulo FROM 000,000 TO 080,300 PIXEL
    @001,001 TO 040,150 OF oDlg PIXEL
    @010,010 SAY cTexto SIZE 55,07 OF oDlg PIXEL
    @010,050 MSGET cCGC SIZE 55,11 OF oDlg PIXEL;
        PICTURE "@R 99.999.999/9999-99" VALID !Vazio()

    Define SBUTTON FROM 010,120 TYPE 1 ACTION (nOpca := 1, oDlg:End()) ENABLE OF oDlg
    Define SBUTTON FROM 020,120 TYPE 2 ACTION (nOpca := 2, oDlg:End()) ENABLE OF oDlg

    ACTIVATE MsDialog oDlg CENTERED
Return
