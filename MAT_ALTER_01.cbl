      *****************************************************************
      * Author:EDUARDO SOUZA
      * Date: 09/10/2022
      * Purpose:MAT_ALTER_01
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAT_ALTER_01.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-NUM-1                 PIC 99 VALUE 0.
       77 WS-NUM-2                 PIC 99 VALUE 0.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM P001-INICIO
           PERFORM P500-CALC
      *     PERFORM P999-FIM
           .
       P001-INICIO.


           DISPLAY "DIGITE O PRIMEIRO NUMERO: "
           ACCEPT WS-NUM-1

           DISPLAY "DIGITE O SEGUNDO NUMERO: "
           ACCEPT WS-NUM-2
           .
       P300-ERRO.
            DISPLAY "ERRO DE PROCESSAMENTO"
      *      PERFORM P999-FIM
           .
       P500-CALC.

           DISPLAY 'FUNCAO ADD: '
           ADD WS-NUM-1            TO WS-NUM-2
                                   ON SIZE ERROR PERFORM P300-ERRO.


           DISPLAY 'VALOR DE WS-NUM-2 APOS ADD: ' WS-NUM-2



           DISPLAY 'FUNCAO SUBSTRACT: '
           SUBTRACT 2              FROM WS-NUM-2
                                   ON SIZE ERROR PERFORM P300-ERRO.

           DISPLAY 'VALOR DE WS-NUM-2 APOS SUBSTRACT: ' WS-NUM-2.


           DISPLAY 'FUNCAO MULTIPLY: '
           MULTIPLY 2              BY WS-NUM-2
                                   ON SIZE ERROR PERFORM P300-ERRO.

           DISPLAY 'VALOR DE WS-NUM-2 APOS MULTIPLY: ' WS-NUM-2.


           DISPLAY 'FUNCAO DIVIDE: '
           DIVIDE WS-NUM-2         BY WS-NUM-1 GIVING WS-NUM-2
                                   ON SIZE ERROR PERFORM P300-ERRO.

           DISPLAY 'VALOR DE WS-NUM-2 APOS DIVIDE: ' WS-NUM-2.

      * P999-FIM

            STOP RUN.
       END PROGRAM MAT_ALTER_01.
