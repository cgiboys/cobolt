       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXAMPLE.
       AUTHOR. BJORN BLOMBERG.
       DATE-WRITTEN. 2023-JUN-30.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 MY-VARIABLE PIC X(10).
       01 AGE PIC 9(3) VALUE 25.
       01 COUNTER PIC 9(2) VALUE 0.
       01 NUMBER1 PIC 9(2) VALUE 10.
       01 NUMBER2 PIC 9(2) VALUE 5.
      * sifran 4 indikerar hur många digets som den ska ha 4 = 0001
       01 RESULT PIC 9(4).

       PROCEDURE DIVISION.
      * Här testas en Ifsats.
           IF AGE < 18
               DISPLAY "Du är under 18 år."
           ELSE
               DISPLAY "Du är 18 år eller äldre."
           END-IF.
      * Här körs en for loop.
           PERFORM VARYING COUNTER FROM 1 BY 1 UNTIL COUNTER > 10
               DISPLAY "Loop iteration: " COUNTER
           END-PERFORM.
      *    Add 2 nummer till samans och spara i result
           ADD NUMBER1, NUMBER2 GIVING RESULT.
           DISPLAY "Resultat: " RESULT.
      *    Flyta en sträng till en veriabel
           MOVE "Hello" TO MY-VARIABLE.
           DISPLAY MY-VARIABLE.
           STOP RUN.
