#Include "protheus.ch"

/*/{Protheus.doc} MA410MNU
Ponto de entrada disparado antes da abertura do Browse
Este ponto de entrada pode ser utilizado para inserir novas opções no array aRotina.
/*/
User Function MA410MNU()
	AAdd(aRotina, {'Etq. OortHub PDF', 'U_HubEtqP', 0, 2, 0, NIL })
	AAdd(aRotina, {'Etq. OortHub ZPL', 'U_HubEtqZ', 0, 2, 0, NIL })
Return Nil

User Function HubEtqP()
	cFile := U_OHUB0020(SC5->C5_OORTID)
	If !Empty(cFile)
		OpenChrome(cFile)
	EndIf
Return Nil

User Function HubEtqZ()
	cFile := U_OHUB0020(SC5->C5_OORTID, .T.)
	If !Empty(cFile)
		OpenChrome(cFile)
	EndIf
Return Nil

Static Function OpenChrome(cFile)
	If GetRemoteType() == 2 //LINUX|MAC
		WaitRun("google-chrome " + cFile, 1)
	Else //WINDOWS
		ShellExecute("Open", "file:///" + cFile,"", "", 1)
	EndIf
Return
