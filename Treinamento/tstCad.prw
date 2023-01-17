#Include 'Totvs.ch'

User Function TesteCad()
	Local aRotAdic :={}
	Local bPre := {||MsgAlert('Chamada antes da função','Alerta')}
	Local bOK  := {||MsgAlert('Chamada ao clicar em OK','Alerta'), .T.}
	Local bTTS  := {||MsgAlert('Chamada durante transacao','Alerta')}
	Local bNoTTS  := {||MsgAlert('Chamada após transacao','Alerta')}
	Local aButtons := {}//adiciona botões na tela de inclusão, alteração, visualização e exclusao

	aadd(aButtons,{ "PRODUTO", {|| MsgAlert("Teste",'Alerta')}, "Teste", "Botão Teste" }  ) //adiciona chamada no aRotina
	aadd(aRotAdic,{ "Adicional","U_Adic", 0 , 6 })
	
    AxCadastro("SA1", "Clientes", "U_DelOk()", "U_COK()", aRotAdic, bPre, bOK, bTTS, bNoTTS, , , aButtons, , )

Return(.T.)

User Function DelOk()
	MsgAlert("Chamada antes do delete",'Alerta')
Return

User Function COK()
	MsgAlert("Clicou botao OK",'Alerta')
Return .t.

User Function Adic()
	MsgAlert("Rotina adicional",'Alerta')
Return
