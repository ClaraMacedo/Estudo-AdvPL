#Include 'Totvs.ch'

/*/{Protheus.doc} calcFat
Estrutura de Bloco
@type function
@version  1
@author Ana Clara Macùdo
@since 16/01/2023
@return variant, return desc
/*/
User Function tstBloco 
bBloco := { |N| x:=10, y:=x*n, z:=y/(x*n)}
nInt := 10
nValor := EVAL(bBloco, nInt)
Return 
