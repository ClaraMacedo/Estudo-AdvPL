#Include 'Totvs.ch'

/*/{Protheus.doc} calcFat
Cálculando Média
@type function
@version  1
@author Ana Clara Macdo
@since 16/01/2023
@return variant, return desc
/*/

User Function Media
Local aVetMed := {}
Local cMatric := "000123"
Local nCont, nCont2
Local nMedia:=0, nSoma:=0

aVetMed := RetNotas(cMatric)

For nCont := 1 to Len(aVetMed)
    For nCont2 := 2 to 5
        nSoma += aVetMed[nCont, nCont2]
    Next
    nMedia := nSoma / 4
    Alert ("Média " + aVetMed[nCont,1] + " / " + TRANSFORM(nMedia, "@e 99.99") + " - " + RetCon(nMedia))
    //Alert(aVetMed[nCont,1] + " / " + TRANSFORM(aVetMed[nCont,2], "@e 99.99"))
    nMedia := 0 
    nSoma := 0
Next

Return

Static Function RetCon(nMedia)
Local cDescCon
    Do Case
        Case nMedia>=9
            cDescCon := "A"
        Case nMedia>=7 .and. nMedia<9
            cDescCon := "B"
        Case nMedia>=5 .and. nMedia<7
            cDescCon := "C"
        Case nMedia>=3 .and. nMedia<5
            cDescCon := "D"
        Case nMedia>=1 .and. nMedia<3
            cDescCon := "E"
        Case nMedia<1
            cDescCon := "F"
    EndCase
Return cDescCon

Static Function RetNotas(cMatric)
Local aNotas := {}

Aadd(aNotas, {"Matematica", 10, 9, 9, 9})
Aadd(aNotas, {"Historia", 1, 2, 4, 3})
Aadd(aNotas, {"Geografia", 2, 5, 9, 3})
Aadd(aNotas, {"Física", 7.5, 6, 9, 3})
Aadd(aNotas, {"Portugues", 2, 7, 4, 3})

Return aNotas
