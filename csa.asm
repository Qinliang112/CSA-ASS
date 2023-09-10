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

db 0AH, "Press any key to continue...$"

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
                
 reservation_head db 0AH
                db "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH
                db "|  ____   ___    ___   ___   ____   _   _    _    _____   ___   ____   _  _  |", 0AH
                db "| /  _ \ ) __(  (  _( ) __( /  _ \ \ ( ) /  )_\  )__ __( )_ _( / __ \ ) \/ ( |", 0AH
                db "| )  ' / | _)   _) \  | _)  )  ' /  )\_/(  /( )\   | |   _| |_ ))__(( |  \ | |", 0AH
                db "| |_()_\ )___( )____) )___( |_()_\   \_/  )_/ \_(  )_(  )_____(\____/ )_()_( |", 0AH
                db "|                                                                            |", 0AH
                db "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH, "$"
                

enter_msg db 0AH, "Enter Your Choice: $"
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
;---------------------------------------------------------------------------------------------    

welcomeReservation db 0AH, "Welcome to VERY DELICIOUS CAFE.", 0AH 
		   db 0AH, "Enter ANY CHARACTERS to continue, [X] back to reservation menu.$", 0AH, "$"
noReservation db 0AH, "Seems like you have not made any reservation. Make one now?$"  

nameInput label byte
    max3 db 30 
    act3 db ?
    inputName db 31 dup("$") 

phoneInput label byte
    max4 db 11 
    act4 db ?
    inputPhone db 12 dup("$") 
    
dateInput label byte
    max5 db 11 
    act5 db ?
    inputDate db 12 dup("$")  
    
timeInput label byte
    max6 db 6 
    act6 db ?
    inputTime db 7 dup("$")       
    
    choicePrompt db 0DH,0AH, "Your choice: $"                      
    namePrompt db 0DH,0AH,0DH,0AH, "Enter your name: $"  
    phonePrompt db 0DH,0AH, "Enter your phone number: $"  
    guestPrompt db 0DH,0AH, "Enter number of guest (max 9): $"
    datePrompt db 0DH,0AH, "Enter a date (dd/mm/yyyy): $"
    timePrompt db 0DH,0AH, "Enter reservation time e.g. (13:30): $"

    invalidDateFormat db 0DH,0AH, "[Error] Invalid date format! Use dd/mm/yyyy!$" 
    invalidTimeFormat db 0DH,0AH, "[Error] Invalid time format! Use hh:mm!$"       
    invalidTimeE db 0DH,0AH, "[Error] The earliest reservation time can be made is 10.00am!$"
    invalidTimeL db 0DH,0AH, "[Error] The last reservation time can be made is 8.00pm!$" 
    invalidMin db 0DH,0AH, "[Error] Invalid minutes. Please enter (00-59) only!$"
 
    
    invalidYearG db 0DH,0AH, "[Error] You can only make a reservation before year 2025!$" 
    invalidYearL db 0DH,0AH, "[Error] You can only make a reservation in this year and before year 2025!$" 
    invalidMonth db 0DH,0AH, "[Error] Invalid month. Please enter month (01-12) only!$"    
    invalidDay30 db 0DH,0AH, "[Error] Invalid day. Maximum day for this month is 30!$" 
    invalidDay31 db 0DH,0AH, "[Error] Invalid day. Maximum day for this month is 31!$"
    invalidDay29 db 0DH,0AH,"[Error] This is a leap year. Day must be (1-29) in Febuary!$"  
    invalidDay28 db 0DH,0AH,"[Error] This not is a leap year. Day must be (1-28) in Febuary!$" 
    invalidDay1 db 0DH,0AH,"[Error] Invalid day. Please enter at least day 1!$"
    
    reservationYX db ?
    noOfGuest db 0
    day db 0
    month db 0
    year dw 0
    sys_day db 0
    sys_month db 0
    sys_year dw 0     
    
    hh db 0
    mm db 0


.CODE
MAIN PROC
MOV AX, @data
MOV DS, AX

LEA DX, welcome_msg
MOV AH, 09H
INT 21H

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

EXIT:
    MOV AX, 4C00H
    INT 21H

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
    JE MAKE_RESERVATION
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
    

MAKE_RESERVATION:
    CALL ClearScreen   
    LEA DX, reservation_head                      
    CALL DisplayString
    LEA DX, welcomeReservation
    CALL DisplayString 

    LEA DX, choicePrompt 
    CALL DisplayString
    MOV AH, 01H
    int 21H
    MOV reservationYX, AL

    CMP reservationYX, "X"
    JE RESERVATION
    CMP reservationYX, "x"
    JE RESERVATION
                   
    LEA DX, namePrompt
    CALL DisplayString                       ;enter name
    LEA DX, nameInput
    MOV AH, 0AH
    INT 21H   
    
    LEA DX, phonePrompt
    CALL DisplayString                      ;enter phone
    LEA DX, phoneInput
    MOV AH, 0AH
    INT 21H   
    
    LEA DX, guestPrompt
    CALL DisplayString                      ;enter guest
    MOV AH, 01H
    INT 21H   
    MOV noOfGuest, AL

ENTER_AGAIN3:
    LEA DX, datePrompt
    CALL DisplayString			    ;enter date
    LEA DX, dateInput
    MOV AH, 0AH
    INT 21H

    LEA SI, inputDate  
    MOV AL, [SI+2]
    CMP AL, '/'   
    JNE invalid_Date_Format   
    MOV AL, [SI+5]
    CMP AL, '/'
    JNE invalid_Date_Format  
    MOV AL, [SI+10]
    CMP AL, '$'
    JE invalid_Date_Format   
    JMP PARSING


invalid_Date_Format:
    LEA DX, invalidDateFormat
    CALL DisplayString
    JMP ENTER_AGAIN3

PARSING:    
          
    LEA DI, inputDate     
    CALL parseDayMonth         ;PARSE DAY
    MOV day, AL  
    
    ADD DI, 2  
    CALL parseDayMonth         ;PARSE MONTH
    MOV month, AL 
     
    ADD DI, 2                  ;PARSE YEAR
    
    MOV AL, [DI]            
    SUB AL, '0'     ;2         
    MOV BL, 10     ;20
    MUL BL     
    INC DI
    ADD AL, [DI]  ;22
    SUB AL, '0'   
    MUL BL       ;220
    INC DI
    ADD AL, [DI]  ;222
    SUB AL, '0'
    MUL BL          ;2220
    INC DI
    ADD AL, [DI]       ;2222
    SUB AL, '0'         
    MOV year, AX
    
                      
    MOV AH,2AH           ; To get System Date
    INT 21H
    MOV sys_day, DL      ; Day is in DL    
    MOV sys_month,DH     ; Month is in DH  
    MOV sys_year, CX     ; Year is in CX
    
    
                  
    CMP year, CX 
    JL invalid_year_less  
    CMP year, 2025              ;valid year
    JG invalid_year_more        
    JMP MONTH_VALIDATION

invalid_year_less:   
    LEA DX, invalidYearL
    CALL DisplayString  
    JMP ENTER_AGAIN3

invalid_year_more:
    LEA DX, invalidYearG
    CALL DisplayString         
    JMP ENTER_AGAIN3

    
MONTH_VALIDATION:
    CMP month, 1
    JL invalid_month            ;valid month
    CMP month, 12
    JG invalid_month  
    JMP DAY_VALIDATION

invalid_month:                                                      
    LEA DX, invalidMonth
    CALL DisplayString         
    JMP ENTER_AGAIN3  

DAY_VALIDATION:    
    CMP month, 2 
    JE check_leap_year          ;valid day, check which month first
    CMP month, 4 
    JE check_day30
    CMP month, 6 
    JE check_day30
    CMP month, 9 
    JE check_day30
    CMP month, 11 
    JE check_day30

    CMP day, 1
    JL invalid_day1
    CMP day, 31                ;all months with 31days
    JLE valid_day    
    JMP invalid_day31  
                                      
check_leap_year:
    MOV AX, year
    MOV BX, 100
    MOV DX, 0000H 
    DIV BX                ;2024/100, 20INAX 24INDX
    
    
    MOV AL, DL
    MOV BL, 4             ;24/4 IF REM IS 0 = LEAP
    DIV BL
    CMP AH, 0
    JNZ not_leap_year
       
    CMP day, 1
    JL invalid_day1   
    CMP day, 29
    JLE valid_day  
    JMP invalid_day29
   

not_leap_year:  
    CMP day, 1
    JL invalid_day1
    CMP day, 28
    JLE valid_day
    JMP invalid_day28
    
check_day30:  
    CMP day, 1                        ;TODO: TEST ZERO
    JL  invalid_day1
    CMP day, 30
    JLE valid_day  
    JMP invalid_day30

invalid_day1:
    LEA DX, invalidDay1
    CALL DisplayString         
    JMP ENTER_AGAIN3 

invalid_day30:
    LEA DX, invalidDay30
    CALL DisplayString         
    JMP ENTER_AGAIN3   
    
invalid_day31:
    LEA DX, invalidDay31
    CALL DisplayString         
    JMP ENTER_AGAIN3 
    
invalid_day29: 
    LEA DX, invalidDay29
    CALL DisplayString         
    JMP ENTER_AGAIN3 

invalid_day28:
    LEA DX, invalidDay28
    CALL DisplayString         
    JMP ENTER_AGAIN3 
                


valid_day: 

    enter_time:
        LEA DX, timePrompt  
        CALL DisplayString 
        LEA DX, timeInput
        MOV AH, 0AH
        INT 21H    
               
        LEA SI, inputTime
        MOV AL, inputTime[0] 
        SUB AL, '0' 
        MOV DL, 10
        MUL DL
                 
        MOV AH, inputTime[1] 
        SUB AH, '0'  
        ADD AL, AH
        MOV hh, AL
                
        MOV AL, inputTime[3] 
        SUB AL, '0'
        MUL DL          
        
        MOV AH, inputTime[4] 
        SUB AH, '0'  
        ADD AL, AH
        MOV mm, AL
        
        CMP inputTime[2], ':'
        JNE invalid_Time_Format  
        JMP valid_time       

invalid_Time_Format:  
    LEA DX, invalidTimeFormat
    CALL DisplayString         
    JMP enter_time  
    
valid_time:                                                                                  
    CMP hh, 10           
    JL invalid_time_early
    CMP hh, 20           
    JG invalid_time_late           

    JMP check_minutes     
 
invalid_time_early:
    LEA DX, invalidTimeE
    CALL DisplayString         
    JMP enter_time     
    
invalid_time_late:
    LEA DX, invalidTimel
    CALL DisplayString         
    JMP enter_time

check_minutes:
    CMP mm, 0
    JL invalid_min
    CMP mm, 59
    JG invalid_min
        
    
invalid_min:
    LEA DX, invalidMin
    CALL DisplayString         
    JMP enter_time

parseDayMonth:           ;X10 + NEXT NUMBER   
    MOV AL, [DI]            
    SUB AL, '0'               
    MOV BL, 10      
    MUL BL     
    INC DI
    ADD AL, [DI]
    SUB AL, '0'    
     
    RET              


MAIN ENDP
END MAIN
