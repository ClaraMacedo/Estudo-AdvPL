#Include 'Totvs.ch'

/*/{Protheus.doc} calcFat
Teste de Array's
@type function
@version  1
@author Ana Clara Mac�do
@since 16/01/2023
@return variant, return desc
/*/
User Function tstArray
aVetor := Array(3)
aMatriz := Array(3,2)

Aadd(aMatriz, {'T�tulo', 123})

aArray := aClone(aMatriz);

Return


#Include 'Totvs.ch'

User Function tstArray1
aVetor := Array(3)
aMatriz := Array(3,2)

Aadd(aMatriz, {'T�tulo', 123})

aArray := aClone(aMatriz);

aVetor[1] :="Protheus"
aVetor[2] :="rotheus"
aVetor[3] :="otheus"

aSort(aVetor)


aVetor[1] :="Protheus"
aVetor[2] :="rotheus"

Return
