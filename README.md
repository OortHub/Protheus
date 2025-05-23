# Manual de Integração Protheus

## Preparação do Ambiente Protheus

### Fontes utilizados:

| Fonte                | Descrição                                                                                                                                                                         |
| -------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| OHUBRest.prw         | Fonte responsável por liberar o endpoint de webhook no Protheus.                                                                                                                  |
| WSRESTFULHelper.tlpp | Fonte responsável por criar um helper para os retornos REST utilizado pelo fonte OHUBRest.prw                                                                                     |
| OortHubClient.tlpp   | Fonte responsável por centralizar todas as regras de comunicação com a API da OortHub através de métodos.                                                                         |
| OHUB0001.tlpp        | Fonte responsável por gerenciar a notificação de pedido e realizar a integração de cliente e integração de pedido, finalizando com uma chamada ao hub para alimentar o externalId |
| OHUB0010.tlpp        | Fonte responsável por realizar o envio do xml do Protheus para o OortHub.                                                                                                         |
| SPDNFDANF.prw        | PE antes do monitoramento da NF-e responsável por executar a função OHUB0010                                                                                                      |
| OHUB0020.tlpp        | Fonte responsável por solicitar as etiquetas para o OortHub Client e realizar o download para o disco local do usuário                                                            |
| MA410MNU.prw         | PE possível para realizar a impressão das etiquetas                                                                                                                               |
