      ******************************************************************
      * Author:EDUARDO
      * Date:17/09/2022
      * Purpose:PROGRAMA DE TESTE DE VARIAVEIS
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. VARIAVEIS-01.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-DATA            PIC X(10) VALUE SPACES.
       01 FILLER          REDEFINES WS-DATA.
          03 WS-DATA-DD      PIC 9(02).
          03 FILLER          PIC X.
          03 WS-DATA-MM      PIC 9(02).
          03 FILLER          PIC X.
          03 WS-DATA-AA      PIC 9(04).
       77 WS-NOME-MES-AUX    PIC X(15) VALUE SPACES.
       77 WS-TECLA-AUX       PIC X.
       77 FILLER             PIC X(10) VALUES "12/02/2021".

       01 WS-MESES-ANO       PIC 99 VALUE ZEROS.
          88 WS-MES-ATUAL           VALUE 1 THRU 12.

       01 WS-DIAS-MES        PIC 99 VALUES ZEROS.
          88 WS-FEV-NB              VALUE 1 THRU 28.
          88 WS-FEV-B               VALUE 1 THRU 29.
          88 WS-MES-30              VALUE 1 THRU 30.
          88 WS-MES-31              VALUE 1 THRU 31.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY WS-DATA
            STOP RUN.
       END PROGRAM VARIAVEIS-01.
