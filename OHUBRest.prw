#Include 'protheus.ch'
#Include 'Totvs.ch''
#Include 'Restful.ch'

WSRESTFUL OORTHUB DESCRIPTION "OortHub"
	WSMETHOD POST DESCRIPTION "Webhook OortHub" WSSYNTAX "/oorthub/webhook"
END WSRESTFUL

WSMETHOD POST WSSERVICE OORTHUB

	Local cBodyRequest := ::GetContent()
	Local oBodyRequest
	Local oWSHelper := WSRESTFULHelper():New(self)
	Local oError := Nil
	Local oErrorBlock := ErrorBlock({ |e| oError := e, Break(e)})
	Local oResponse := JsonObject():New()
	Local cResource

	Begin Sequence
		oBodyRequest := JsonObject():New()
		cBodyRequest := NoAcento(DecodeUtf8(cBodyRequest))
		oBodyRequest:fromJson(cBodyRequest)

		cResource := oBodyRequest['resource']
		If cResource == 'order'
			U_OHUB0001(oBodyRequest)
		EndIf

		oWSHelper:Ok('OK')
		ErrorBlock(oErrorBlock)
	End Sequence

	If !Empty(oError)
		Return oWSHelper:ServerError(oError)
	EndIf

Return .T.
