      ******************************************************************
      * Author:
      * Date:
      * Purpose: INSPECT_01
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. INSPECT_01.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-MOSTRA        PIC X(20) VALUE SPACES.
       01 WS-DATA          PIC X(10) VALUE SPACES.
       77 WS-TOTAL         PIC 9(02).
       PROCEDURE DIVISION.

           MOVE "12"          TO WS-DATA(01:02).
           MOVE "/"           TO WS-DATA(03:01).
           MOVE "03"          TO WS-DATA(04:02).
           MOVE "/"           TO WS-DATA(06:01).
           MOVE "2021"        TO WS-DATA(07:04).

.
           DISPLAY WS-DATA.

           INSPECT WS-DATA TALLYING WS-TOTAL FOR ALL "/"
           BEFORE INITIAL 2021.

           DISPLAY "CONTAGEM TOTAL DO CARACTER: " WS-TOTAL.


           INSPECT WS-DATA REPLACING ALL "/" BY "-" AFTER "12".

           DISPLAY "NOVO FORMATO: " WS-DATA.

            STOP RUN.
       END PROGRAM INSPECT_01.
