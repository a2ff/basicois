# Basicois le BASIC français publié en 1979 par l'Ordinateur Individuel

La cassette a été chargée en RAM sur un Apple IIe puis les versions Integer BASIC et AppleSoft BASIC ont été `BSAVE` sur une [disquette DOS 3.3](Apple%20DOS%203.3%20January%201983%20%2B%20Basicois.dsk) et [extraites avec AppleCommander 1.5.0](Apple%20DOS%203.3%20January%201983%20%2B%20Basicois) :
- Cassette Basicois vendue par le journal L'Ordinateur Individuel [face 2](k7_dump/basicois_apple.wav)
- "BASICOIS V4.0 INTEGER BASIC APPLE II" [binaire](k7_dump/BASICOIS%20INT), [hex dump](k7_dump/BASICOIS%20INT.txt), [doc page 18](k7_photos/basicois_k7_doc_p18_19_Apple_Integer.jpg)
- "BASICOIS V3.0 APPLESOFT DISK APPLE II DOS 3.2 48K" [binaire](k7_dump/BASICOIS%20APPLESOFT), [hex dump](k7_dump/BASICOIS%20APPLESOFT.txt), [doc page 24](k7_photos/basicois_k7_doc_p24_25_AppleSoft.jpg)
- [Scans de la jaquette et la documentation](k7_photos/)
- Articles parus dans [L'Ordinateur Individuel](l_ordinateur_individuel/)

La cassette contient des prologues étranges, en ce qu'ils ne correspondent pas vraiment à la synchro de 10s au début d'un enregistrement généré par les routines cassette de Woz.
Il a donc fallu caler la bande à l'oreille puis faire plusieurs prises à divers réglages du volume, et malgré tout il n'est pas évident que nos captures soient exemptes d'erreurs (les fichiers binaires traités par les commandes `R` et `W` du moniteur ne semblent pas dotés de somme de contrôle, contrairement aux fichiers BASIC).

La version Integer BASIC fonctionne partiellement depuis l'Integer BASIC de la d7 DOS 3.3 (on perd les commandes DOS, le parser ne comprend pas tous les mots-clés dans les 2 langues):
```
               APPLE II

    DOS VERSION 3.3  SYSTEM MASTER

           JANUARY 1, 1983

COPYRIGHT APPLE COMPUTER,INC. 1980,1982

      BE SURE CAPS LOCK IS DOWN

]INT
>BRUN BASICOIS INT
```

```
LE BASICOIS DE L'ORDINATEUR INDIVIDUEL
V4.0 INTEGER BASIC APPLE II

>10 PRINT "Basicois"
>20 GOTO 10
>LIST
   10 ECRIS "Basicois"
   20 VATEN 10

>RUN
Basicois
Basicois
Basicois
Basicois
Basicois
STOPPED AT 20
>
```

La version AppleSoft se charge sans planter, mais ne produit aucun effet - elle ne patche probablement pas les bonnes adresses sur la machine utilisée : il est possible qu'elle soit hardcodée uniquement pour un DOS 3.2 sur Apple II 48k.

## A faire
- dumper la face 1 (PET, TRS80)
- faire complètement fonctionner Basicois sur Apple IIe et IIc sous DOS 3.3 sans perdre les commandes DOS et en s'adaptant à la mappe mémoire selon la quantité de RAM de la machine.

## Format cassette Apple II
- Exemple d'enregistrement par Virtual ][ [10 PRINT "BASICOIS".wav](Apple%20BASIC%20tape%20recording%20example%20from%20Virtual%20%5D%5B/10%20PRINT%20%22BASICOIS%22.wav)
- routine de décodage k7 dans CiderPress [CassetteDialog.cpp](k7%20decoder%20from%20fadden%20ciderpress/CassetteDialog.cpp), github complet https://github.com/fadden/ciderpress/blob/master/app/CassetteDialog.cpp
- [disquettes DOS 3.2 et 3.3](Apple%20DOS%203.x%20masters%20from%20A2DOSKIT) fournies par [A2DOSKIT](https://cmosher01.github.io/Apple-II-Source/)

## Références
- *Cassette Article* page 59 du [Woz Wonderbook](https://digibarn.com/collections/books/woz-wonderbook/index.html) aussi sur [archive.org](https://archive.org/details/TheWozWonderbook)
- Chapitre 9 *The Speaker and the Cassette Port* page 313 de [Inside the Apple IIe](https://mirrors.apple2.org.za/Apple%20II%20Documentation%20Project/Books/Gary%20B.%20Little%20-%20Inside%20the%20IIe.pdf) par Gary Little, aussi sur [archive.org](https://archive.org/details/InsideTheAppleIIe)
- Chapitre 7 *On-Board I/O* page 93 *Cassette Tape* de [The Apple II Circuit Description](https://mirrors.apple2.org.za/Apple%20II%20Documentation%20Project/Books/W.%20Gayler%20-%20The%20Apple%20II%20Circuit%20Description.pdf) par Winston Gayler, aussi sur [archive.org](https://archive.org/details/apple-ii-circuit-description)
- Chapitre 7 *Address Decoding and Input/Output* page 7-11 de [Understanding the Apple II](https://mirrors.apple2.org.za/Apple%20II%20Documentation%20Project/Books/Jim%20Sather%20-%20Understanding%20the%20Apple%20II.pdf) par Jim Sather, aussi sur [archive.org](https://archive.org/details/understanding_the_apple_ii)
- un résumé sur StackExchange https://retrocomputing.stackexchange.com/questions/143/what-format-is-used-for-apple-ii-cassette-tapes
