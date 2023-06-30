       IDENTIFICATION DIVISION.
       PROGRAM-ID. READ-AND-DISPLAY-FILE.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       SELECT MY-FILE ASSIGN TO "data.txt".

       DATA DIVISION.
       FILE SECTION.
       FD MY-FILE.
       01 MY-RECORD.
           05 FIELD1 PIC X(10).
           05 FIELD2 PIC 9(5).

       WORKING-STORAGE SECTION.
       01 WS-EOF-SWITCH PIC 9 VALUE 0.

       PROCEDURE DIVISION.
           OPEN INPUT MY-FILE.
           PERFORM UNTIL WS-EOF-SWITCH = 1
               READ MY-FILE
                   AT END SET WS-EOF-SWITCH TO 1
                   NOT AT END
                       DISPLAY "Field1: " FIELD1
                       DISPLAY "Field2: " FIELD2
           END-READ
           END-PERFORM.
           CLOSE MY-FILE.
           STOP RUN.
