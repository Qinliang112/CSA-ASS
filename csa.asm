.MODEL SMALL
.STACK 100H
.DATA
newLine DB 0DH,0AH,"$"
welcome_msg db 0AH
            db " __ __    ___  ____   __ __ ", 0AH
            db "|  |  |  /  _]|    \ |  |  |", 0AH
            db "|  |  | /  [_ |  D  )|  |  |", 0AH 
            db "|  |  ||    _]|    / |  ~  |", 0AH
            db "|  :  ||   [_ |    \ |___, |", 0AH
            db " \   / |     ||  .  \|     |", 0AH
            db "  \_/  |_____||__|\_||____/ ", 0AH
            db " ___      ___  _      ____   __  ____  ___   __ __  _____", 0AH
            db "|   \    /  _]| |    |    | /  ]|    |/   \ |  |  |/ ___/", 0AH
            db "|    \  /  [_ | |     |  | /  /  |  ||     ||  |  (   \_ ", 0AH
            db "|  D  ||    _]| |___  |  |/  /   |  ||  O  ||  |  |\__  |", 0AH
            db "|     ||   [_ |     | |  /   \_  |  ||     ||  :  |/  \ |", 0AH
            db "|     ||     ||     | |  \     | |  ||     ||     |\    |", 0AH
            db "|_____||_____||_____||____\____||____|\___/  \__,_| \___|", 0AH
            db "    __   ____  _____  ___ ", 0AH
            db "   /  ] /    ||     |/  _]", 0AH
            db "  /  / |  o  ||   __/  [_ ", 0AH
            db " /  /  |     ||  |_|    _]", 0AH
            db "/   \_ |  _  ||   _]   [_ ", 0AH
            db "\     ||  |  ||  | |     |", 0AH
            db " \____||__|__||__| |_____|", 0AH

db 0AH, "Press any key to contine...$"

main_msg db 0AH
         db "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH
         db "|   _   _    _     ___   _  _     _   _  ___   _  _   _  _   |", 0AH
         db "|  ) \_/ (  )_\   )_ _( ) \/ (   ) \_/ () __( ) \/ ( ) () (  |", 0AH
         db "|  |  _  | /( )\  _| |_ |  \ |   |  _  || _)  |  \ | | \/ |  |", 0AH
         db "|  )_( )_()_/ \_()_____()_()_(   )_( )_()___( )_()_( )____(  |", 0AH
         db "|                                                            |", 0AH
         db "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH
         db "|                     [ 1 ] Menu                             |", 0AH
         db "|                     [ 2 ] Cart                             |", 0AH
         db "|                     [ 3 ] Reservation                      |", 0AH
         db "|                     [ 4 ] Exit                             |", 0AH
         db "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH, "$"

reservation_msg db 0AH
                db "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH
                db "|  ____   ___    ___   ___   ____   _   _    _    _____   ___   ____   _  _  |", 0AH
                db "| /  _ \ ) __(  (  _( ) __( /  _ \ \ ( ) /  )_\  )__ __( )_ _( / __ \ ) \/ ( |", 0AH
                db "| )  ' / | _)   _) \  | _)  )  ' /  )\_/(  /( )\   | |   _| |_ ))__(( |  \ | |", 0AH
                db "| |_()_\ )___( )____) )___( |_()_\   \_/  )_/ \_(  )_(  )_____(\____/ )_()_( |", 0AH
                db "|                                                                            |", 0AH
                db "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH
                db "|                         [ 1 ] Make Reservation                             |", 0AH
                db "|                         [ 2 ] Modify Reservation                           |", 0AH
                db "|                         [ 3 ] Cancel Reservation                           |", 0AH
                db "|                         [ 4 ] Back to Main Menu                            |", 0AH
                db "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH, "$"

enter_msg db 0AH, "Enter Your CHoice: $"
invalid_choice db 0AH, "[Error] Please Enter 1, 2, 3 or 4 only!$"

accountID db "A1001$"
password db "ABC12345$"

accountPrompt db "Enter Account ID: $"
passwordPrompt db "Enter Password: $"
eraser	DB "            $"

userInput1 label byte
    max1 db 6 
    act1 db ?
    inputID db 7 dup("$")

userInput2 label byte
    max2 db 9 
    act2 db ?
    inputPassword db 10 dup("$")

.CODE
MAIN PROC
MOV AX, @data
MOV DS, AX

LEA DX, welcome_msg
CALL DisplayString

MOV AH, 0 
INT 16H

enterId:
    CALL ClearScreen
    MOV CX, 0919H
    CALL CenterCursor

    LEA DX, accountPrompt
    CALL DisplayString
    LEA DX, userInput1
    MOV AH, 0AH
    INT 21H

    LEA SI, accountID
    LEA DI, inputID
    MOV CX, 5

    checkAccountID:
	MOV AL, [SI]
	MOV BL, [DI]
	CMP AL, BL 
	JNE enterId
    	INC SI 
	INC DI
    	LOOP checkAccountID 

enterPass:
    MOV CX, 0B19H
    CALL CenterCursor
    
    LEA DX, passwordPrompt
    CALL DisplayString

    LEA DX, eraser       ;clear previous user input
    call DisplayString
    MOV CX, 0B29H
    CALL CenterCursor

    LEA DX, userInput2
    MOV AH, 0AH
    INT 21H

    LEA SI, password
    LEA DI, inputPassword
    MOV CX, 8

    checkPassword:
    	MOV AL, [SI]
	MOV BL, [DI]
	CMP AL, BL 
    	JNE enterPass 
    	INC SI 
	INC DI
    	LOOP checkPassword 
   
MAIN_MENU:
    CALL ClearScreen
    LEA DX, main_msg
    CALL DisplayString

ENTER_AGAIN:
    LEA DX, enter_msg
    CALL DisplayString

    MOV AH, 01H
    INT 21H
    SUB AL, '0'

    CMP AL, 1
    JE MENU
    CMP AL, 2
    JE CART
    CMP AL, 3
    JE RESERVATION
    CMP AL, 4
    JE EXIT

    LEA DX, invalid_choice
    CALL DisplayString
    LEA DX, newLine
    INT 21H

    JMP ENTER_AGAIN

ClearScreen:
    MOV AH, 0
    MOV AL, 3
    INT 10H
    RET

CenterCursor:
    MOV AH, 02H
    MOV BH, 0
    MOV DH, CH ; Row 
    MOV DL, CL ; Column 
    INT 10H
    RET

DisplayString:
    MOV AH, 09H
    INT 21H
    RET


MENU:
    JMP MAIN_MENU                ;to be CHanged

CART:
    JMP MAIN_MENU                ;to be CHanged

RESERVATION:
    CALL ClearScreen
    LEA DX, reservation_msg
    CALL DisplayString

ENTER_AGAIN2:
    LEA DX, enter_msg
    CALL DisplayString

    MOV AH, 01H
    INT 21H
    SUB AL, '0'

    CMP AL, 1
    JE EXIT                ;to be CHanged
    CMP AL, 2
    JE exit                ;to be CHanged
    CMP AL, 3
    JE exit                ;to be CHanged
    CMP AL, 4
    JE MAIN_MENU

    LEA DX, invalid_choice
    CALL DisplayString
    LEA DX, newLine
    INT 21H

    JMP ENTER_AGAIN2

EXIT:
    MOV AX, 4C00H
    INT 21H

MAIN ENDP
END MAIN
