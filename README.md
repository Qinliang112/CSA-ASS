# CSA-ASS


1. clearScreen - 直接 “CALL clearScreen”就可以用了

2. CenterCursor - 这个function可以pass 2个parameter（row and col），ch是row，cl是col，要call这个function前先set好ch，cl，然后才call
                - MOV CX, 0919H
                  CALL CenterCursor
   
3. DisplayString - set好dx先然后才call
                 - LEA DX, successMessage
                   CALL DisplayString

 
