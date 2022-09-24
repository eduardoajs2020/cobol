      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG_TESTE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      * 77 WS-MOSTRA        PIC X(20) VALUE SPACES.
        01 WS-DATA          PIC X(10) VALUE SPACES.
        77 FILLER           PIC X(10) VALUES "12/03/2021".

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

      *      DISPLAY "DIGITE ALGO: "
      *      ACCEPT WS-MOSTRA
      *      DISPLAY 'WS-MOSTRA: ' WS-MOSTRA

      *      ACCEPT WS-MOSTRA FROM DATE YYYYMMDD

      *       ACCEPT WS-MOSTRA FROM TIME
      *       DISPLAY WS-MOSTRA

           MOVE "12"          TO WS-DATA(01:02).
           MOVE "/"           TO WS-DATA(03:01).
           MOVE "03"          TO WS-DATA(04:02).
           MOVE "/"           TO WS-DATA(06:01).
           MOVE "2021"        TO WS-DATA(07:04).

.
           DISPLAY WS-DATA.


            GOBACK.

       END PROGRAM PROG_TESTE.
