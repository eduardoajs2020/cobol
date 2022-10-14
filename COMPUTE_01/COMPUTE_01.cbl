      ******************************************************************
      * Author:EDUARDO SOUZA
      * Date:24/09/2022
      * Purpose:COMPUTE_01
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COMPUTE_01.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-RESULT                PIC 9(05) VALUE ZEROS.
       77 WS-NUM-1                PIC 99 VALUE ZEROS.
       77 WS-NUM-2                PIC 99 VALUE ZEROS.

       PROCEDURE DIVISION.

           COMPUTE WS-RESULT = 5 + 5
           COMPUTE WS-RESULT = WS-RESULT * 3
           COMPUTE WS-RESULT = WS-RESULT - 15
           COMPUTE WS-RESULT = WS-RESULT / 3
           COMPUTE WS-RESULT = WS-RESULT ** 3

           DISPLAY 'RESULTADO: ' WS-RESULT.



           DISPLAY 'INFORME O PRIMEIRO NUMERO: '
           ACCEPT WS-NUM-1


           DISPLAY 'INFORME O SEGUNDO NUMERO: '
           ACCEPT WS-NUM-2

           COMPUTE WS-RESULT = WS-NUM-1 + WS-NUM-2

           DISPLAY 'RESULTADO: ' WS-RESULT.

           STOP RUN.


       END PROGRAM COMPUTE_01.
