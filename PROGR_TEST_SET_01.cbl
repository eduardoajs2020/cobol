      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAM_TEST_SET_01.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-PAGTO             PIC X  VALUE 'N'.
          88 WS-CONFIRM        VALUE 'S' FALSE 'N'.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            DISPLAY 'SITUACAO DO PAGTO ATUAL: ' WS-PAGTO
            SET WS-CONFIRM                      TO TRUE
            DISPLAY 'NOVA SITUACAO DO PAGTO.: ' WS-PAGTO
            SET WS-CONFIRM                      TO FALSE
            DISPLAY 'SITUACAO DO PAGTO CORR.: ' WS-PAGTO

            STOP RUN.
       END PROGRAM PROGRAM_TEST_SET_01.
