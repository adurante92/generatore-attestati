# Generatore Attestati

Crea in un colpo solo un attestato Word (.docx) per ogni persona di un elenco Excel, a partire da un modello con segnaposto.

Funziona in **Chrome o Edge**, **senza installare nulla**, offline: nessun dato viene inviato su internet.

Se non vuoi scaricarla **[apri l'applicazione](https://adurante92.github.io/generatore-attestati/)** (Nota: una volta aperta, anche la pagina pubblicata funziona offline)

## Come si usa

1. Scarica il progetto (**Code → Download ZIP**) e scompattalo.
2. Doppio click su `Genera Attestati.html`.
3. Trascina il modello Word (.docx) nel riquadro 1.
4. Trascina il file Excel nel riquadro 2. I segnaposto verdi hanno la loro colonna, quelli rossi no.
5. Scegli la cartella dove salvare gli attestati (consigliato: quella del file Excel).
6. Scrivi come chiamare i file, ad esempio `Azienda-attestato-{NOME} {COGNOME}` (clicca sui campi per inserirli).
7. Premi **Genera**.

## Come preparare i file

- **Modello Word**: scrivi i segnaposto tra graffe, es. `{NOME}`, `{COGNOME}`, `{CODICE_FISCALE}`. La formattazione (grassetto, font, ecc.) è libera. Funzionano anche in intestazioni e piè di pagina.
- **Excel**: la prima riga contiene le intestazioni, uguali ai segnaposto senza graffe (maiuscole/minuscole e spazi extra non contano). Una persona per riga. Nome e numero delle colonne possono cambiare da modello a modello.
- Le date vengono scritte come `gg/mm/aaaa`.

## Note

- Un file già esistente non viene sovrascritto: se ne crea uno con "(2)".
- Il modello deve essere `.docx` (un vecchio `.doc` va salvato come `.docx` da Word).
- Se il browser non permette di scegliere la cartella, gli attestati vengono scaricati in un unico `Attestati.zip`.
- La cartella `esempio` contiene un modello e un Excel di prova.

## Bug e richieste

Se trovi un problema o hai un'idea per migliorare il programma, apri una **Issue** da questo repository (scheda *Issues* → *New issue*). Se lo usi e ti è utile, fammelo sapere!

## Licenza

Rilasciato con licenza [MIT](LICENSE) © 2026 Alberto Durante. Le librerie incluse in `lib` mantengono le rispettive licenze.

## Sviluppo

- Sorgente: `src/app.html`. Dopo ogni modifica esegui `build.ps1` per rigenerare `Genera Attestati.html` (unisce app e librerie in un unico file).
- Librerie (cartella `lib`): [docxtemplater](https://docxtemplater.com/), [PizZip](https://github.com/open-xml-templating/pizzip), [SheetJS](https://sheetjs.com/).
