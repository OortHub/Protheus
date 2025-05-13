#Include "protheus.ch"

/*/{Protheus.doc} SPDNFDANF
Ponto foi criado para atender a necessidade de impressão da DANFE automático após monitoramento e caso a NFe esteja autorizada.
 
@since 26/08/2020
/*/
User Function SPDNFDANF()
	Local cNota      := ParamIXB[1]
	Local cSerie     := ParamIXB[2]
	Local cChaveNfe  := ParamIXB[3]
	Local cIdEnt     := ParamIXB[4]
	Local cClieFor   := ParamIXB[5]
	Local cLoja      := ParamIXB[6]

	U_OHUB0010(cNota, cSerie, cChaveNfe, cIdEnt, cClieFor, cLoja)

Return Nil
