      ******************************************************************
      * Author:Eduardo Souza
      * Date:01/10/2022
      * Purpose: STRING_01
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. STRING_01.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-CONTEUDO              PIC X(30) VALUE SPACE.
       77 WS-TEXTO                 PIC X(40) VALUE SPACE.
       77 WS-PONTEIRO              PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
      **************************FORMA 1*********************************
           INITIALISE WS-CONTEUDO
                      WS-TEXTO.
           STRING
               'ANDRE'
               ' '
               'COSTA'
               DELIMITED BY SIZE INTO WS-CONTEUDO

           END-STRING.

            DISPLAY WS-CONTEUDO

      **************************FORMA 2*********************************

           INITIALISE WS-CONTEUDO
                      WS-TEXTO
            MOVE 'O ANDRE COSTA ESTA MINISTRANDO CURSO' TO WS-TEXTO


           STRING
               WS-TEXTO(1:8)
               WS-TEXTO(15:22)

               DELIMITED BY SIZE INTO WS-CONTEUDO

           END-STRING.

            DISPLAY WS-CONTEUDO

      **************************FORMA 3*********************************

           INITIALISE WS-CONTEUDO
                      WS-TEXTO
            MOVE 'O ANDRE COSTA ESTA MINISTRANDO CURSO' TO WS-TEXTO

           STRING
               WS-TEXTO

               DELIMITED BY SPACES INTO WS-CONTEUDO

           END-STRING.

            DISPLAY WS-CONTEUDO

      **************************FORMA 4*********************************

           INITIALISE WS-CONTEUDO
                      WS-TEXTO
            MOVE 'O ANDRE;COSTA ESTA MINISTRANDO CURSO' TO WS-TEXTO

           STRING
               WS-TEXTO

               DELIMITED BY ';' INTO WS-CONTEUDO

           END-STRING.

            DISPLAY WS-CONTEUDO

      **************************FORMA 5*********************************

           INITIALISE WS-CONTEUDO
                      WS-TEXTO
            MOVE 'O             ESTA MINISTRANDO CURSO' TO WS-TEXTO
            SET WS-PONTEIRO                             TO 3

           STRING
               'ANDRE COSTA'
               DELIMITED BY SIZE INTO WS-TEXTO
               WITH POINTER WS-PONTEIRO

           END-STRING.

            DISPLAY WS-TEXTO
            DISPLAY WS-PONTEIRO

           STOP RUN.

       END PROGRAM STRING_01.
