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

continue db 0DH,0AH,"Press any key to continue...$"

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
         db "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH
         db "Enter Your Choice: $"

menu_msg db 0AH
         db "++++++++++++++++++++++++++++++++", 0AH
         db "|   _   _  ___   _  _   _  _   |", 0AH
         db "|  ) \_/ () __( ) \/ ( ) () (  |", 0AH
         db "|  |  _  || _)  |  \ | | \/ |  |", 0AH
         db "|  )_( )_()___( )_()_( )____(  |", 0AH
         db "|                              |", 0AH
         db "++++++++++++++++++++++++++++++++", 0AH
         db "|   [ 1 ] Food Menu            |", 0AH
         db "|   [ 2 ] Beverage Menu        |", 0AH
         db "|   [ 3 ] Dessert Menu         |", 0AH
         db "|   [ 4 ] Back to Main Menu    |", 0AH
         db "++++++++++++++++++++++++++++++++", 0AH
         db "Enter Your Choice: $"

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

reservation_confirmation db 0AH
                db "          -------------------------------------------------------", 0AH
                db "          |                RESERVATION DETAILS                  |", 0AH
                db "          -------------------------------------------------------", "$"

reservationDetails db "          -------------------------------------------------------", 0AH
		   db "          | NAME                 :                              |", 0AH
                   db "          | PHONE                :                              |", 0AH
	           db "          | NUMBER OF GUEST(s)   :                              |", 0AH
    	           db "          | DATE                 :                              |", 0AH
	           db "          | TIME                 :                              |", 0AH
                   db "          -------------------------------------------------------", 0AH
		   db "          |            THANK YOU FOR YOUR RESERVATION!          |", 0AH
                   db "          -------------------------------------------------------", "$"      

datetime_head db 0AH
                db "          --------------------------------------------------", 0AH
                db "          | NO |        DATE           |       TIME        |", 0AH
                db "          --------------------------------------------------", 0AH, "$"          

line1 db "          | 0  |                       |                   |", 0AH
      db "          --------------------------------------------------", 0AH, "$"

food_menu db 0AH
          db "++++++++++++++++++++++++++++++++++++++++", 0AH
          db "|       ___   ____   ____   ___        |", 0AH
          db "|      ) __( / __ \ / __ \ \   \       |", 0AH
          db "|      | _)  ))__(( ))__(( | ) (       |", 0AH
          db "|      )_(   \____/ \____/ /___/       |", 0AH
          db "|                                      |", 0AH
          db "++++++++++++++++++++++++++++++++++++++++", 0AH
          db "| Western Food            | Price (RM) |", 0AH
          db "++++++++++++++++++++++++++++++++++++++++", 0AH
          db "| A | Fish and Chips      |      18.00 |", 0AH
          db "| B | Burger and Fries    |      19.50 |", 0AH
          db "| C | Macaroni and Cheese |      16.00 |", 0AH
          db "++++++++++++++++++++++++++++++++++++++++", 0AH
          db "| Eastern Food                         |", 0AH
          db "++++++++++++++++++++++++++++++++++++++++", 0AH
          db "| D | Nasi Biryani Ayam   |      15.50 |", 0AH
          db "| E | Laksa               |      10.00 |", 0AH
          db "| F | Char Kuey Teow      |      10.50 |", 0AH
          db "++++++++++++++++++++++++++++++++++++++++", 0AH
          db "Enter Item Number (X = Back to Menu): $"

beverage_menu db 0AH
              db "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH
              db "|   ___   ___   _   _  ___   ____     _    ____   ___   |", 0AH
              db "|  \  _) ) __( \ ( ) /) __( /  _ \   )_\  ).-._( ) __(  |", 0AH
              db "|  |  (  | _)   )\_/( | _)  )  ' /  /( )\ |( ,-. | _)   |", 0AH
              db "|  /__o) )___(   \_/  )___( |_()_\ )_/ \_()_`__( )___(  |", 0AH
              db "|                                                       |", 0AH
              db "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH
              db "|                                          | Price (RM) |", 0AH
              db "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH
              db "| G | Coffee                               |       6.00 |", 0AH
              db "| H | Cappuccino                           |       6.50 |", 0AH
              db "| I | Mojito                               |       7.00 |", 0AH
              db "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH
              db "Enter Item Number (X = Back to Menu): $"

dessert_menu db 0AH
             db "++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH
             db "|   ___   ___    ___    ___   ___   ____   _____   |", 0AH
             db "|  \   \ ) __(  (  _(  (  _( ) __( /  _ \ )__ __(  |", 0AH
             db "|  | ) ( | _)   _) \   _) \  | _)  )  ' /   | |    |", 0AH
             db "|  /___/ )___( )____) )____) )___( |_()_\   )_(    |", 0AH
             db "|                                                  |", 0AH
             db "++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH
             db "|                                     | Price (RM) |", 0AH
             db "++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH
             db "| J | Egg Tart                        |       5.00 |", 0AH
             db "| K | Creme Brulee                    |      10.00 |", 0AH
             db "| L | Cendol                          |       5.50 |", 0AH
             db "++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH
             db "Enter Item Number (X = Back to Menu): $"

cart_msg  db 0AH
          db "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH
          db "|               ___    _    ____   _____                |", 0AH
          db "|              / _(   )_\  /  _ \ )__ __(               |", 0AH
          db "|              ))_   /( )\ )  ' /   | |                 |", 0AH
          db "|              \__( )_/ \_(|_()_\   )_(                 |", 0AH
          db "|                                                       |", 0AH
          db "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH
          db "| Item                    | Quantity | Total Price (RM) |", 0AH
          db "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH, "$"
cartItemA db "| A | Fish and Chips      |       $"
cartItemB db "| B | Burger and Fries    |       $"
cartItemC db "| C | Macaroni and Cheese |       $"
cartItemD db "| D | Nasi Biryani Ayam   |       $"
cartItemE db "| E | Laksa               |       $"
cartItemF db "| F | Char Kuey Teow      |       $"
cartItemG db "| G | Coffee              |       $"
cartItemH db "| H | Cappuccino          |       $"
cartItemI db "| I | Mojito              |       $"
cartItemJ db "| J | Egg Tart            |       $"
cartItemK db "| K | Creme Brulee        |       $"
cartItemL db "| L | Cendol              |       $"
cartSpace1 db " |           $"
cartSpace2 db " |", 0AH, "$"
cart_line db "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH, "$"
cartSubtotal db "|                Subtotal |       $"
cartEnd   db "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH
          db "Press any key to continue...$"
cartContinue db 0AH
             db "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH
     	     db "|                [ 1 ] Menu                             |", 0AH
             db "|                [ 2 ] Remove Cart Item                 |", 0AH
    	     db "|                [ 3 ] Payment                          |", 0AH
             db "|                [ 4 ] Back to Main Menu                |", 0AH
             db "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH
             db "Enter Your Choice: $"

payment_msg   db 0AH
              db "++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH
              db "|   ____     _    _  _   _   _  ___   _  _   _____   |", 0AH
              db "|  )  _)\   )_\  ) () ( ) \_/ () __( ) \/ ( )__ __(  |", 0AH
              db "|  | '__/  /( )\ '.  /  |  _  || _)  |  \ |   | |    |", 0AH
              db "|  )_(    )_/ \_( /_(   )_( )_()___( )_()_(   )_(    |", 0AH
              db "|                                                    |", 0AH
              db "++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH
              db "|                          |       Price (RM)        |", 0AH
              db "++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH, "$"
cartSubtotal2 db "|        Subtotal          |          $"
paymentDisc   db "|        Discount          |          $"
paymentSST    db "|        SST     (5%)      |          $"
paymentSC     db "|        Service (6%)      |          $"
paymentLine   db "++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH, "$"
paymentTotal  db "|        Total Amount      |          $"
paymentSpace  db "        |", 0AH, "$"
paymentSpace2 db "         |", 0AH, "$"
pay_msg       db "Press any key to pay Total Amount...$"

cafe_msg     db 0AH
             db "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH
	     db "|   _   _  ___   ____   _  _                                   |", 0AH
	     db "|  \ ( ) /) __( /  _ \ ) () (                                  |", 0AH
             db "|   )\_/( | _)  )  ' / '.  /                                   |", 0AH
 	     db "|    \_/  )___( |_()_\  /_(                                    |", 0AH
             db "|   ___   ___   _       ___   ___   ___   ____   _  _    ___   |", 0AH
             db "|  \   \ ) __( ) |     )_ _( / _(  )_ _( / __ \ ) () (  (  _(  |", 0AH
             db "|  | ) ( | _)  | (__   _| |_ ))_   _| |_ ))__(( | \/ |  _) \   |", 0AH
             db "|  /___/ )___( )____( )_____(\__( )_____(\____/ )____( )____)  |", 0AH
             db "|   ___    _    ___   ___                                      |", 0AH
             db "|  / _(   )_\  ) __( ) __(                                     |", 0AH
             db "|  ))_   /( )\ | _)  | _)                                      |", 0AH
             db "|  \__( )_/ \_()_(   )___(                                     |", 0AH               
             db "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH
             db "| Address:                                     Phone No. :     |", 0AH
             db "|    Taman Setapak Indah Jaya                     09-222-1234  |", 0AH
             db "|    53100 Kuala Lumpur                                        |", 0AH
             db "|    Federal Territory of Kuala Lumpur                         |", 0AH
             db "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH
             db "Press any key to continue...$"

payAmount     db "|        Pay Amount        |          $"
changeAmount  db "|        Change            |          $"

receipt_msg   db 0AH
              db "++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH 
              db "|    ____   ___   ___  ___    ___   ____   _____     |", 0AH
              db "|   /  _ \ ) __( / _( ) __(  )_ _( )  _)\ )__ __(    |", 0AH
              db "|   )  ' / | _)  ))_  | _)   _| |_ | '__/   | |      |", 0AH
              db "|   |_()_\ )___( \__( )___( )_____()_(      )_(      |", 0AH
              db "|                                                    |", 0AH
              db "++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH
              db "|                          |       Price (RM)        |", 0AH
              db "++++++++++++++++++++++++++++++++++++++++++++++++++++++", 0AH, "$"

invalid_main db 0AH, "[Error] Please Enter 1, 2, 3 or 4 only!"
             db 0AH, "Press any key to continue...$"
invalid_menu db 0AH, "[Error] Please Enter A to M and X only!"
             db 0AH, "Press any key to continue...$"
invalidCart db 0AH, "[Error] Please Enter X or Y only!"
            db 0AH, "Press any key to continue...$"
quantity_msg db 0AH, "Enter Quantity: $"
confirm_cart db 0AH, "Confirm Add to Cart? (Y = Yes, N = No): $"
success_cart db 0AH, "Add to Cart Successfully!"
             db 0AH, "Press any key to continue...$"
itemRemove db 0AH, "Enter Item Number (X = Back to Cart): $"
removeSuccessMsg db 0AH, "Item Remove Successfully!", 0AH, "$"
removeErrorMsg db 0AH, "Item is not in the Cart!", 0AH, "$"
removeQuantityMsg db 0AH, "Quantity Entered is more than in the Cart!", 0AH, "$"
max_quantity db 0AH, "[Error] Reached Max Quantity (20)!"
             db 0AH, "Press any key to continue...$"
promo_msg     db "Enter Promo Code (X = No Promo Code): $"
invalid_promo db 0AH, "[Error] Please Enter Valid Promo Code or X only!", 0AH, "$"
continue_msg  db 0AH, "Press any key to continue...$"
pay_error db 0AH, "[Error] Incorrect Format!", 0AH, "$"
pay_error2 db 0AH, "[Error] Please Enter Greater or Equal to the Total Amount only!", 0AH, "$"
paysuccess_msg db 0AH, "Payment Successful!"
               db 0AH, "Press any key to continue...$"

menuType db ?
menuChoice db "ABCDEFGHIJKLM"
menuPrice dw 1800, 1950, 1600, 1550, 1000, 1050, 600, 650, 700, 500, 1000, 550
cartQuantity dw 12 dup(0)
itemTotalPrice dw 12 dup(0)
userMenuChoice db ?
tempCartQuantity dw ?
cartNone db 0
totalItem dw 0
subtotal dw 0
rem dw 0
quo dw 0
temp dw ?

numberAttempt db 16 dup(0)
attemptMsg db 0AH
           db "+++++++++++++++++++++++++++++++++++++++", 0AH
           db "| Number of Attempt                   |", 0AH
           db "+++++++++++++++++++++++++++++++++++++++", 0AH, "$"
idAttempt  db "| ID          : $"
passwordAttempt db "  Password     : $"
mainMenuAttempt db " |", 0AH, "| Main Menu   : $"
menuAttempt db "  Menu         : $"
foodAttempt db " |", 0AH, "| Food Menu   : $"
beverageAttempt db "  Beverage Menu: $"
dessertAttempt db " |", 0AH, "| Dessert Menu: $"
cartAttempt db "  Cart         : $"
removeAttempt db " |", 0AH, "| Remove Item : $"
paymentAttempt db "  Promo Code   : $"
reservationAttempt db " |", 0AH, "| Reservation : $"
exitAttempt db "  Exit         : $"
makeReservationAttempt db " |", 0AH, "| Make Reservation   : $"
modifyReservationAttempt db "             |", 0AH, "| Modify Reservation : $"
cancelReservationAttempt db "             |", 0AH, "| Cancel Reservation : $"
paymentAttempt2 db "             |", 0AH, "| Payment     : $"
attemptEnd db "                    |", 0AH, "+++++++++++++++++++++++++++++++++++++++", 0AH, "Thank You!$"

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

userInput3 label byte
    max9 db 11
    act9 db ?
    promocode db 12 dup("$")

userInput4 label byte
    max db 7
    act db ?
    input4 db 8 dup("$")

noPromo db "X$"
FIRST20_PROMO db "FIRST20$"
DELICIOUS5_PROMO db "DELICIOUS5$"
ALLDAY_PROMO db "ALLDAY$"

FIRST20_RATE dw 20
DELICIOUS5_RATE dw 5
ALLDAY_RATE dw 8
SST_RATE            dw 5
SC_RATE             dw 6

discount_rate dw 0
discountQuo dw ?
discountRem dw ?
subtotalAfterDiscQuo dw ?
subtotalAfterDiscRem dw ?
SSTQuo                 dw ?
SSTRem dw ?
SCQuo                  dw ?
SCRem dw ?
TOTAL_AMOUNT dw ?
amountPay dw ?
paid                dw ?
change              dw ?

enter_msg db 0AH, "Enter Your Choice: $"
reservationSelection_cancel db 0AH, "Select which reservation to cancel: NO $"  
reservationSelection_modify db 0AH, "Select which reservation to modify: NO $"
newDate db 0AH, "Enter new date: $"   
newTime db 0AH, "Enter new time: $"
invalid_choice db 0AH, "[Error] Please Enter 1, 2, 3 or 4 only!$"
invalid_YN db 0AH, "[Error] Please Enter (Y/N) ONLY!$"  
invalidYX db 0AH, "[Error] Please Enter (Y/X) ONLY!$" 
invalidCancelNo db 0AH, "[ERROR] Please enter a valid reservation NO!$"

names db "$$$$$$$$$$$$$$$$$$$$$", "$$$$$$$$$$$$$$$$$$$$$$", "$$$$$$$$$$$$$$$$$$$$$$", "$$$$$$$$$$$$$$$$$$$$$$", "$$$$$$$$$$$$$$$$$$$$$$"
phones db "$$$$$$$$$$$$$", "$$$$$$$$$$$$$$", "$$$$$$$$$$$$$$", "$$$$$$$$$$$$$$", "$$$$$$$$$$$$$$"  
guests db 5 dup(0)
dates db "$$$$$$$$$$$$", "$$$$$$$$$$$$", "$$$$$$$$$$$$", "$$$$$$$$$$$$", "$$$$$$$$$$$$"   
times db "$$$$$$", "$$$$$$$", "$$$$$$$", "$$$$$$$", "$$$$$$$" 
reservedDates db "18/08/2023$", "21/08/2023$", "$$$$$$$$$$$$", "$$$$$$$$$$$$", "$$$$$$$$$$$$", "$$$$$$$$$$$$", "$$$$$$$$$$$$"

makeReservation db 0AH, "[MAKE RESERVATION]", 0AH 
		   db 0AH, "Enter [Y] to continue, [X] back to reservation menu.$", 0AH, "$"   
		   
cancelReservation db 0AH, "[CANCEL RESERVATION]", 0AH 
		   db 0AH, "Enter [Y] to continue, [X] back to reservation menu.$", 0AH, "$"   
		   
modifyReservation db 0AH, "[MODIFY RESERVATION]", 0AH 
		   db 0AH, "Enter [Y] to continue, [X] back to reservation menu.$", 0AH, "$"
		   
noReservation db 0AH, 0AH, 0AH, "Seems like you have not made any reservation. Make one now? (Y/N)$"    
cancelSucessMsg db 0AH,0AH, "This reservation has been successfully cancelled!$", 0DH,0AH, "$"  
modifySucessMsg db 0AH,0AH, "This reservation has been successfully modified!$", 0DH,0AH, "$"

nameInput label byte
    max3 db 21 
    act3 db ?
    inputName db 22 dup("$") 

phoneInput label byte
    max4 db 13 
    act4 db ?
    inputPhone db 14 dup("$") 
    
dateInput label byte
    max5 db 11 
    act5 db ?
    inputDate db 12 dup("$")  
    
timeInput label byte
    max6 db 6 
    act6 db ?
    inputTime db 7 dup("$")       
    
newDateInput label byte
    max7 db 11 
    act7 db ?
    inputNewDate db 12 dup("$")  
    
newTimeInput label byte
    max8 db 6 
    act8 db ?
    inputNewTime db 7 dup("$")  
                                         
    confirmMake db 0DH,0AH, "Confirm to MAKE this reservation (Y/N): $" 
    confirmCancel db 0DH,0AH, "Confirm to CANCEL this reservation (Y/N): $"
    confirmModify db 0DH,0AH, "Confirm to MODIFY this reservation (Y/N): $"                                 
    choicePrompt db 0DH,0AH, "Your choice: $"                      
    namePrompt db 0DH,0AH,0DH,0AH, "Enter your name (max 20 characters): $"  
    phonePrompt db 0DH,0AH, "Enter your phone number (max 12 characters): $"  
    guestPrompt db 0DH,0AH, "Enter number of guest (max 9): $"
    datePrompt db 0DH,0AH, "Enter a date (dd/mm/yyyy): $"
    timePrompt db 0DH,0AH, "Enter reservation time e.g. (13:30): $"
    
    invaildGuest db 0DH,0AH, "[Error] Please enter 1-9 only!$" 
    invalidDateFormat db 0DH,0AH, "[Error] Invalid date format! Use dd/mm/yyyy!$" 
    invalidTimeFormat db 0DH,0AH, "[Error] Invalid time format! Use hh:mm!$"       
    invalidTimeE db 0DH,0AH, "[Error] The earliest reservation time can be made is 10.00am!$"
    invalidTimeL db 0DH,0AH, "[Error] The last reservation time can be made is 8.00pm!$" 
    invalidMin db 0DH,0AH, "[Error] Invalid minutes. Please enter (00-59) only!$"
 
    invalidReservedDate db 0DH,0AH, "[Error] This date has been reserved by other people!$"
    invalidYearG db 0DH,0AH, "[Error] You can only make a reservation before year 2025!$" 
    invalidYearL db 0DH,0AH, "[Error] You can only make a reservation in this year and before year 2025!$" 
    invalidMonth db 0DH,0AH, "[Error] Invalid month. Please enter month (01-12) only!$"    
    invalidDay30 db 0DH,0AH, "[Error] Invalid day. Maximum day for this month is 30!$" 
    invalidDay31 db 0DH,0AH, "[Error] Invalid day. Maximum day for this month is 31!$"
    invalidDay29 db 0DH,0AH,"[Error] This is a leap year. Day must be (1-29) in Febuary!$"  
    invalidDay28 db 0DH,0AH,"[Error] This not is a leap year. Day must be (1-28) in Febuary!$" 
    invalidDay1 db 0DH,0AH,"[Error] Invalid day. Please enter at least day 1!$"
    
    namesPointer dw 0 
    phonesPointer dw 0
    datesPointer dw 0
    timesPointer dw 0
    loopCounter dw 0
    reservationCount dw 0
    reservationYX db ?
    day db 0
    month db 0
    year dw 0
    sys_day db 0
    sys_month db 0
    sys_year dw 0     
    
    hh db 0
    mm db 0
    hh8 db 0
    mm8 db 0     
    cancelNo db ?  
    dateIndex dw ? 
    timeIndex dw ?     
    dateCounter db 0
    timeCounter db 0 
    
    reservedDatesPointer dw 0  
    reservedCopyIndex dw 22
    reservedCount db 2 
    charCounter db 0 
    endingIndex dw 0
    correct db 10         ;put 10 to avoid go to negative
    
.CODE
MAIN PROC
MOV AX, @data
MOV DS, AX

LEA DX, welcome_msg
CALL DisplayString
CALL PressContinue

enterId:
    ADD numberAttempt[0], 1
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
    ADD numberAttempt[1], 1
    MOV CX, 0B19H
    CALL CenterCursor
    
    LEA DX, passwordPrompt
    CALL DisplayString

    LEA DX, eraser       ;clear previous user input
    CALL DisplayString
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

JMP MAIN_MENU

checkNoPromo:
	LEA SI, noPromo
	LEA DI, promoCode
	MOV CX, 1
	JMP checkNoPromoLoop

checkNoPromoLoop:
	MOV AL, [SI]
	MOV BL, [DI]
	CMP AL, BL
	JNE checkFirst
	INC SI
	INC DI
Loop checkNoPromoLoop
JMP PROMO_DONE

checkFirst:
	LEA SI, FIRST20_PROMO
	LEA DI, promoCode
	MOV CX, 7
	JMP checkFirstLoop

checkFirstLoop:
	MOV AL, [SI]
	MOV BL, [DI]
	CMP AL, BL
	JNE checkDelicious
	INC SI
	INC DI
Loop checkFirstLoop
MOV AX, FIRST20_RATE
MOV discount_rate, AX
JMP PROMO_DONE

checkDelicious:
	LEA SI, DELICIOUS5_PROMO
	LEA DI, promoCode
	MOV CX, 10
	JMP checkDeliciousLoop

checkDeliciousLoop:
	MOV AL, [SI]
	MOV BL, [DI]
	CMP AL, BL
	JNE checkAllday
	INC SI
	INC DI
Loop checkDeliciousLoop
MOV AX, DELICIOUS5_RATE
MOV discount_rate, AX
JMP PROMO_DONE

checkAllday:
	LEA SI, ALLDAY_PROMO
	LEA DI, promoCode
	MOV CX, 6
	JMP checkAlldayLoop

checkAlldayLoop:
	MOV AL, [SI]
	MOV BL, [DI]
	CMP AL, BL
	JNE PROMO_ERROR
	INC SI
	INC DI
Loop checkAlldayLoop
MOV AX, ALLDAY_RATE
MOV discount_rate, AX
JMP PROMO_DONE

PROMO_ERROR:
	CALL promoError
	JMP PAYMENT

PROMO_DONE:
	CALL callPromoDone
	CALL callCalculateSubtotal
	CALL callCalculateSST
	CALL callCalculateSC
	CALL callCalculateTotal
	JMP PAY

removeItem:
	ADD numberAttempt[8], 1
	LEA DX, itemRemove
	CALL DisplayString
    	CALL readCharacter
	MOV userMenuChoice, AL

    	CMP userMenuChoice, 'X'
	JE CART

	CALL setLoop
	MOV DI, 0
	CALL removeCart

PAYMENT:
	ADD numberAttempt[9], 1
	;CALL callPayment
    CALL ClearScreen
    LEA DX, promo_msg
    CALL DisplayString
	LEA DX, userInput3
	CALL readString
	JMP checkNoPromo

CART:
	ADD numberAttempt[7], 1
	CALL calcCart
	CALL orderPrint
	JMP cartChoice

;checkPayAmount:
	;MOV AX, [SI]
	;MOV BX, [DI]
	;CMP AX, BX

cartChoice:
	CALL ClearScreen
	LEA DX, cartContinue
	CALL DisplayString
	CALL readCharacter
	SUB AL, '0'

	CMP AL, 1
	JE MENU
	CMP AL, 2
	JE removeItem
	CMP AL, 3
	JE PAYMENT
	CMP AL, 4
	JE MAIN_MENU

	CALL userChoiceError
	LOOP cartChoice

PAY:
	CALL paymentPrint
pay1:
	ADD numberAttempt[15], 1
    LEA DX, pay_msg
    CALL DisplayString
	CALL PressContinue
	JMP paySuccess
	
	;LEA DX, userInput4         ;PAYMENT SHOULD BE DONE BY LIPWAI, BUT HE CANT DO, MINGSHEN COMPLETED THIS PAYMENT IN 10H
	;MOV AH, 0AH
	;INT 21H

	;CMP input4[3], '.'
	;JE copyPayAmount
	;JNE payError

;copyPayAmount:           ;;;;;;;;;;;;;;;;;;HELPPPPPPPPPP
	;LEA DI, input4
	;MOV AL, [DI]
	;SUB AL, '0'
	;MOV BL, 10
	;MUL BL
	;INC DI
	;ADD AL, [DI]
	;SUB AL, '0'
	;MUL BL
	;INC DI
	;ADD AL, [DI]
	;SUB AL, '0'
	;MUL BL
	;ADD DI, 2
	;ADD AL, [DI]
	;SUB AL, '0'
	;INC DI
	;ADD AL, [DI]
	;SUB AL, '0'
	;MOV amountPay, AX
	;LEA SI, amountPay
	;LEA DI, input4
	;MOV CX, 6

;copyLoop:
	;CMP DI, '.'
	;JE addInputArr2

	;MOV AL, [DI]
	;MOV AH, 0
	;MOV [SI], AX
	;ADD SI, 2

;addInputArr2:
	;INC DI
	;LOOP copyLoop

;payLoop:
	;CALL callPayLoop
	;LEA SI, amountPay
	;LEA DI, TOTAL_AMOUNT
	;MOV CX, 6
	;JMP checkAmountPay       ;;;;;;;;;;;;;;;;;;;;HELPPPP UNTIL HERE

MAIN_MENU:
    ADD numberAttempt[2], 1
    CALL ClearScreen
    LEA DX, main_msg
    CALL DisplayString
    CALL readCharacter
    SUB AL, '0'

    CMP AL, 1
    JE MENU
    CMP AL, 2
    JE CART
    CMP AL, 3
    JE CALL_RESERVATION100
    CMP AL, 4
    JE EXIT

    CALL userChoiceError
    LOOP MAIN_MENU

MENU:
menuEnter:
	CALL callMenuEnter

menuJump:
	CMP menuType, 1
	JE FOOD
	CMP menuType, 2
	JE BEVERAGE
	CMP menuType, 3
	JE DESSERT
	CMP menuType, 4
	JE MAIN_MENU

	CALL userChoiceError
	LOOP menuEnter

;payError:
	;LEA DX, pay_error
	;CALL DisplayString
	;JMP pay1

Display_Cafe:
	CALL callDisplayCafe
	JMP MAIN_MENU

;checkAmountPay: ;;;;;;;;;;;;;;;;;;;;;;HELPPPPPPPPPPP
	;CMP DI, '.'
	;JE addInputArr

	;MOV AX, [SI]
	;MOV BX, [DI]
	;CMP BX, AX
	;CMP AX, BX
	;JE paySuccess
	;JB payError2
	;JA payChange

	;ADD SI, 2
	;ADD DI, 2

;LOOP checkAmountPay;;;;;;;;;;;;;;;;;;;;;;;HELPPPPP UNTIL HERE

;payError2:
	;LEA DX, pay_error2
	;CALL DisplayString
	;JMP pay1

;payChange:
	;MOV AX, amountPay
	;SUB AX, TOTAL_AMOUNT
	;MOV change, AX
	;JMP paySuccess

paySuccess:
	LEA DX, paysuccess_msg
	CALL DisplayString
	CALL PressContinue
	;RET
;callPayLoop ENDP

	JMP Display_Cafe

CALL_RESERVATION100:
	CALL RESERVATION
	RET

EXIT:
	CALL callExit

menuContinue:
    CALL readCharacter
	MOV userMenuChoice, AL

    CMP userMenuChoice, 'X'
	JE MENU

	CALL setLoop
	MOV DI, 0
	JMP findItem

FOOD:
	CALL callFood
	JMP menuContinue

BEVERAGE:
	CALL callBeverage
	JMP menuContinue

DESSERT:
	CALL callDessert
	JMP menuContinue

maxItem:
	CALL callMaxItem
	JMP menuJump

addToCart:
	CALL callAddToCart
	JMP menuJump

noAddToCart:
	CALL callNoAddToCart
	JMP menuJump

findItem:
	MOV BL, menuChoice[SI]
	CMP userMenuChoice, BL
	JE itemFound
	INC SI
	ADD DI, 2

	LOOP findItem

	LEA DX, invalid_menu
    CALL DisplayString
	CALL PressContinue
	JMP menuJump

itemFound:
	CALL callItemFound

	CMP totalItem, 20
	JA maxItem
	MOV tempCartQuantity, AX
	JMP confirmCart

confirmCart:
	LEA DX, confirm_cart
    CALL DisplayString
    CALL readCharacter

	CMP AL, 'Y'
    JE addToCart
    CMP AL, 'N'
	JE noAddToCart

	LEA DX, invalidCart
    CALL DisplayString
	CALL PressContinue
    LOOP confirmCart

MAIN ENDP

ClearScreen PROC
	MOV AH, 0
	MOV AL, 3
	INT 10H
	RET
ClearScreen ENDP

CenterCursor PROC
    MOV AH, 02H
    MOV BH, 0
    MOV DH, CH ; Row 
    MOV DL, CL ; Column 
    INT 10H
    RET
CenterCursor ENDP

PressContinue PROC
	MOV AH, 0 
	INT 16H
	RET
PressContinue ENDP

userChoiceError PROC
	LEA DX, invalid_main
    	CALL DisplayString
	CALL PressContinue
	RET
userChoiceError ENDP

DisplayString PROC
	MOV AH, 09H
	INT 21H
	RET
DisplayString ENDP

DisplayCharacter PROC
	MOV AH, 02H
	INT 21H
	RET
DisplayCharacter ENDP

readCharacter PROC
	MOV AH, 01H
	INT 21H
	RET
readCharacter ENDP

readString PROC
	MOV AH, 0AH
	INT 21H
	RET
readString ENDP

setLoop PROC
    MOV SI, 0
	MOV CX, 12
	RET
setLoop ENDP

exitLoop PROC
	MOV DL, numberAttempt[SI]
	MOV DH, 0
	MOV AX, DX
	CALL PRINT
	INC SI
	RET
exitLoop ENDP

callMenuEnter PROC
	ADD numberAttempt[3], 1
	CALL ClearScreen
	LEA DX, menu_msg
    CALL DisplayString
    CALL readCharacter
	MOV menuType, AL
	SUB menuType, '0'
	RET
callMenuEnter ENDP

callItemFound PROC
	LEA DX, quantity_msg
    CALL DisplayString
    CALL readCharacter
	MOV AH, 0
	SUB AL,'0'
	ADD totalItem, AX
	RET
callItemFound ENDP

callFood PROC
	ADD numberAttempt[4], 1
	CALL ClearScreen
	LEA DX, food_menu
    CALL DisplayString
	RET
callFood ENDP

callBeverage PROC
	ADD numberAttempt[5], 1
	CALL ClearScreen
	LEA DX, beverage_menu
    CALL DisplayString
	RET
callBeverage ENDP

callDessert PROC
	ADD numberAttempt[6], 1
	CALL ClearScreen
	LEA DX, dessert_menu
    CALL DisplayString
	RET
callDessert ENDP

callMaxItem PROC
	SUB totalItem, AX
	LEA DX, max_quantity
	CALL DisplayString
	CALL PressContinue
	RET
callMaxItem ENDP

callAddToCart PROC
	MOV AX, tempCartQuantity
	ADD cartQuantity[DI], AX

    LEA DX, success_cart
    CALL DisplayString
	CALL PressContinue
	RET
callAddToCart ENDP

callNoAddToCart PROC
	MOV AX, tempCartQuantity
	SUB totalItem, AX
	RET
callNoAddToCart ENDP

calcCart PROC
	CALL setLoop

totalPriceLoop:
	MOV AX, menuPrice[SI]
	MOV BX, cartQuantity[SI]
	MUL BX
	MOV itemTotalPrice[SI], AX
	ADD SI, 2

	LOOP totalPriceLoop

	CALL setLoop
	MOV subtotal, 0

subtotalLoop:
	MOV DX, itemTotalPrice[SI]
	ADD subtotal, DX
	ADD SI, 2
	LOOP subtotalLoop
	RET
calcCart ENDP

removeCart PROC
removeloop: 
	MOV BL, menuChoice[SI]
	CMP userMenuChoice, BL
	JE removeContinue
	INC SI
	ADD DI,2

	LOOP removeloop

	LEA DX, invalid_menu
    CALL DisplayString
	CALL PressContinue
	JMP removeItem

removeContinue:
	LEA DX, quantity_msg
	CALL DisplayString
	CALL readCharacter

	CMP cartQuantity[DI], 0
	JE removeError
	MOV AH, 0
	SUB AL, '0'
	CMP cartQuantity[DI], AX
	JAE removeSuccess
	JB removeQuantity

removeError:
	LEA DX, removeErrorMsg
	CALL DisplayString
	JMP removeItem

removeQuantity:
	LEA DX, removeQuantityMsg
	CALL DisplayString
	JMP removeItem

removeSuccess:
	MOV AH, 0
	SUB cartQuantity[DI], AX
	SUB totalItem, AX

	LEA DX, removeSuccessMsg
	CALL DisplayString
	JMP removeItem
	RET
removeCart ENDP

orderPrint PROC
	CALL ClearScreen
	MOV SI, 0
	LEA DX, cart_msg
	CALL DisplayString

	CMP cartQuantity[SI], 0
	JE cmpB
	JNE printA
printA:
	LEA DX, cartItemA
	CALL printOrder
	MOV cartNone, 1
cmpB:
	ADD SI, 2
	CMP cartQuantity[SI], 0
	JE cmpC
	JNE printB
printB:
	LEA DX, cartItemB
	CALL printOrder
	MOV cartNone, 1
cmpC:
	ADD SI, 2
	CMP cartQuantity[SI], 0
	JE cmpD
	JNE printC
printC:
	LEA DX, cartItemC
	CALL printOrder
	MOV cartNone, 1
cmpD:
	ADD SI, 2
	CMP cartQuantity[SI], 0
	JE cmpE
	JNE printD
printD:
	LEA DX, cartItemD
	CALL printOrder
	MOV cartNone, 1
cmpE:
	ADD SI, 2
	CMP cartQuantity[SI], 0
	JE cmpF
	JNE printE
printE:
	LEA DX, cartItemE
	CALL printOrder
	MOV cartNone, 1
cmpF:
	ADD SI, 2
	CMP cartQuantity[SI], 0
	JE cmpG
	JNE printF
printF:
	LEA DX, cartItemF
	CALL printOrder
	MOV cartNone, 1
cmpG:
	ADD SI, 2
	CMP cartQuantity[SI], 0
	JE cmpH
	JNE printG
printG:
	LEA DX, cartItemG
	CALL printOrder
	MOV cartNone, 1
cmpH:
	ADD SI, 2
	CMP cartQuantity[SI], 0
	JE cmpI
	JNE printH
printH:
	LEA DX, cartItemH
	CALL printOrder
	MOV cartNone, 1
cmpI:
	ADD SI, 2
	CMP cartQuantity[SI], 0
	JE cmpJ
	JNE printI
printI:
	LEA DX, cartItemI
	CALL printOrder
	MOV cartNone, 1
cmpJ:
	ADD SI, 2
	CMP cartQuantity[SI], 0
	JE cmpK
	JNE printJ
printJ:
	LEA DX, cartItemJ
	CALL printOrder
	MOV cartNone, 1
cmpK:
	ADD SI, 2
	CMP cartQuantity[SI], 0
	JE cmpL
	JNE printK
printK:
	LEA DX, cartItemK
	CALL printOrder
	MOV cartNone, 1
cmpL:
	ADD SI, 2
	CMP cartQuantity[SI], 0
	JE noneItem
	JNE printL
printL:
	LEA DX, cartItemL
	CALL printOrder
	MOV cartNone, 1

noneItem:
	CMP cartNone, 1
	JE printLine
	JNE printENd

printLine:
	LEA DX, cart_line
	CALL DisplayString

printEnd:
	LEA DX, cartSubtotal
	CALL DisplayString
	MOV AX, totalItem
	CALL PRINT
	LEA DX, cartSpace1
	CALL DisplayString
	MOV AX, subtotal
	CALL printPrice
	LEA DX, cartSpace2
	CALL DisplayString
	LEA DX, cartEnd
	CALL DisplayString
	CALL PressContinue
	RET
orderPrint ENDP

callPayment PROC
    CALL ClearScreen
    LEA DX, promo_msg
    CALL DisplayString
	LEA DX, userInput3
	CALL readString
	RET
callPayment ENDP

paymentPrint PROC
	;CALL ClearScreen
	MOV SI, 0
	LEA DX, payment_msg
	CALL DisplayString

	LEA DX, cartSubtotal2
	CALL subtotalPrint
	LEA DX, paymentDisc
	CALL discPrint 
	LEA DX, paymentSST
	CALL sstPrint
	LEA DX, paymentSC
	CALL scPrint 
	LEA DX, paymentLine
	CALL DisplayString
	LEA DX, paymentTotal
	CALL paymentTotalPrint 
        LEA DX, paymentLine
	CALL DisplayString

	;CALL PressContinue
	RET
paymentPrint ENDP

callPromoDone PROC
	MOV AX, discount_rate
	MOV BX, subtotal
	MUL BX
	MOV BX, 100
	DIV BX
	MOV discountQuo, AX
	MOV discountRem, DX
	RET
callPromoDone ENDP

callCalculateSubtotal PROC
CALCULATE_SUBTOTAL_AFTER_DISC:
	MOV AX, subtotal
	SUB AX, discountQuo
	MOV BX, 100
	MUL BX
	SUB AX, discountRem
	MOV BX, 100
	DIV BX
	MOV subtotalAfterDiscQuo, AX
	MOV subtotalAfterDiscRem, DX
	RET
callCalculateSubtotal ENDP

callCalculateSST PROC
CALCULATE_SST:
	MOV AX, SST_RATE
	MOV BX, subtotalAfterDiscQuo
	MUL BX
	MOV BX, 100
	DIV BX
	MOV SSTQuo, AX
	MOV SSTRem, DX
	RET
callCalculateSST ENDP

callCalculateSC PROC
CALCULATE_SC:
	MOV AX, SC_RATE
	MOV BX, subtotalAfterDiscQuo
	MUL BX
	MOV BX, 100
	DIV BX
	MOV SCQuo, AX
	MOV SCRem, DX
	RET
callCalculateSC ENDP

callCalculateTotal PROC
CALCULATE_TOTAL_AMOUNT:
	MOV AX, subtotalAfterDiscQuo
	ADD AX, SSTQuo
	ADD AX, SCQuo
	MOV TOTAL_AMOUNT, AX
	RET
callCalculateTotal ENDP

promoError PROC
    MOV CX, 0000H
    CALL CenterCursor
	LEA DX, invalid_promo
	CALL DisplayString
    MOV CX, 0100H
    CALL CenterCursor
	LEA DX, continue_msg
	CALL DisplayString
	CALL PressContinue
	RET
promoError ENDP

subtotalPrint PROC
	CALL DisplayString        
	MOV AX, subtotal     
	CALL printPrice
	LEA DX, paymentSpace2
	CALL DisplayString
	RET
subtotalPrint ENDP

discPrint PROC
	CALL DisplayString        
	MOV AX, discountQuo     
	CALL printPrice
	MOV AX, discountRem
	CALL PRINT2
	LEA DX, paymentSpace
	CALL DisplayString
	RET
discPrint ENDP

sstPrint PROC
	CALL DisplayString        
	MOV AX, SSTQuo     
	CALL printPrice
	MOV AX, SSTRem
	CALL PRINT2
	LEA DX, paymentSpace
	CALL DisplayString
	RET
sstPrint ENDP

scPrint PROC
	CALL DisplayString
	MOV AX, SCQuo     
	CALL printPrice
	MOV AX, SCRem
	CALL PRINT2
	LEA DX, paymentSpace
	CALL DisplayString
	RET
scPrint ENDP

paymentTotalPrint PROC
	CALL DisplayString        
	MOV AX, TOTAL_AMOUNT     
	CALL printPrice
	LEA DX, paymentSpace2
	CALL DisplayString
	RET
paymentTotalPrint ENDP

paidPrint PROC
	CALL DisplayString        
	MOV AX, TOTAL_AMOUNT
	CALL printPrice
	LEA DX, paymentSpace2
	CALL DisplayString
	RET
paidPrint ENDP

orderPrint2 PROC
	CALL ClearScreen
	MOV SI, 0
	LEA DX, cart_line
	CALL DisplayString

	CMP cartQuantity[SI], 0
	JE cmpB1
	JNE printA1
printA1:
	LEA DX, cartItemA
	CALL printOrder
	MOV cartNone, 1
cmpB1:
	ADD SI, 2
	CMP cartQuantity[SI], 0
	JE cmpC1
	JNE printB1
printB1:
	LEA DX, cartItemB
	CALL printOrder
	MOV cartNone, 1
cmpC1:
	ADD SI, 2
	CMP cartQuantity[SI], 0
	JE cmpD1
	JNE printC1
printC1:
	LEA DX, cartItemC
	CALL printOrder
	MOV cartNone, 1
cmpD1:
	ADD SI, 2
	CMP cartQuantity[SI], 0
	JE cmpE1
	JNE printD1
printD1:
	LEA DX, cartItemD
	CALL printOrder
	MOV cartNone, 1
cmpE1:
	ADD SI, 2
	CMP cartQuantity[SI], 0
	JE cmpF1
	JNE printE1
printE1:
	LEA DX, cartItemE
	CALL printOrder
	MOV cartNone, 1
cmpF1:
	ADD SI, 2
	CMP cartQuantity[SI], 0
	JE cmpG1
	JNE printF1
printF1:
	LEA DX, cartItemF
	CALL printOrder
	MOV cartNone, 1
cmpG1:
	ADD SI, 2
	CMP cartQuantity[SI], 0
	JE cmpH1
	JNE printG1
printG1:
	LEA DX, cartItemG
	CALL printOrder
	MOV cartNone, 1
cmpH1:
	ADD SI, 2
	CMP cartQuantity[SI], 0
	JE cmpI1
	JNE printH1
printH1:
	LEA DX, cartItemH
	CALL printOrder
	MOV cartNone, 1
cmpI1:
	ADD SI, 2
	CMP cartQuantity[SI], 0
	JE cmpJ1
	JNE printI1
printI1:
	LEA DX, cartItemI
	CALL printOrder
	MOV cartNone, 1
cmpJ1:
	ADD SI, 2
	CMP cartQuantity[SI], 0
	JE cmpK1
	JNE printJ1
printJ1:
	LEA DX, cartItemJ
	CALL printOrder
	MOV cartNone, 1
cmpK1:
	ADD SI, 2
	CMP cartQuantity[SI], 0
	JE cmpL1
	JNE printK1
printK1:
	LEA DX, cartItemK
	CALL printOrder
	MOV cartNone, 1
cmpL1:
	ADD SI, 2
	CMP cartQuantity[SI], 0
	JE noneItem1
	JNE printL1
printL1:
	LEA DX, cartItemL
	CALL printOrder
	MOV cartNone, 1

noneItem1:
	CMP cartNone, 1
	JE printLine1
	JNE printEnd1

printLine1:
	LEA DX, cart_line
	CALL DisplayString

printEnd1:
	;LEA DX, cartSubtotal
	;CALL DisplayString
	;MOV AX, totalItem
	;CALL PRINT
	;LEA DX, cartSpace1
	;CALL DisplayString
	;MOV AX, subtotal
	;CALL printPrice
	;LEA DX, cartSpace2
	;CALL DisplayString
	;LEA DX, cartEnd
	;CALL DisplayString
	;CALL PressContinue
	RET
orderPrint2 ENDP

callExit PROC
	ADD numberAttempt[11], 1
	CALL printExit
	MOV AX, 4C00H
	INT 21H
	RET
callExit ENDP

printExit PROC
	CALL ClearScreen
	MOV SI, 0
	MOV CX, 15
	LEA DX, attemptMsg
	CALL DisplayString

	LEA DX, idAttempt
	CALL DisplayString
	CALL exitLoop
	LEA DX, passwordAttempt
	CALL DisplayString
	CALL exitLoop
	LEA DX, mainMenuAttempt
	CALL DisplayString
	CALL exitLoop
	LEA DX, menuAttempt
	CALL DisplayString
	CALL exitLoop
	LEA DX, foodAttempt
	CALL DisplayString
	CALL exitLoop
	LEA DX, beverageAttempt
	CALL DisplayString
	CALL exitLoop
	LEA DX, dessertAttempt
	CALL DisplayString
	CALL exitLoop
	LEA DX, cartAttempt
	CALL DisplayString
	CALL exitLoop
	LEA DX, removeAttempt
	CALL DisplayString
	CALL exitLoop
	LEA DX, paymentAttempt
	CALL DisplayString
	CALL exitLoop
	LEA DX, reservationAttempt
	CALL DisplayString
	CALL exitLoop
	LEA DX, exitAttempt
	CALL DisplayString
	CALL exitLoop
	LEA DX, makeReservationAttempt
	CALL DisplayString
	CALL exitLoop
	LEA DX, modifyReservationAttempt
	CALL DisplayString
	CALL exitLoop
	LEA DX, cancelReservationAttempt
	CALL DisplayString
	CALL exitLoop
	LEA DX, paymentAttempt2
	CALL DisplayString
	CALL exitLoop
	LEA DX, attemptEnd
	CALL DisplayString
	RET
printExit ENDP

printOrder PROC
	CALL DisplayString
	MOV DX, cartQuantity[SI]
	MOV CX, itemTotalPrice[SI]

	MOV AX, DX
	CALL PRINT
	LEA DX, cartSpace1
	CALL DisplayString
	MOV AX, CX
	CALL printPrice
	LEA DX, cartSpace2
	CALL DisplayString
	RET
printOrder ENDP

receiptPrint PROC
	CALL ClearScreen
	MOV SI, 0
	LEA DX, receipt_msg
	CALL DisplayString

	LEA DX, cartSubtotal2
	CALL subtotalPrint
	LEA DX, paymentDisc
	CALL discPrint 
	LEA DX, paymentSST
	CALL sstPrint
	LEA DX, paymentSC
	CALL scPrint 
	LEA DX, paymentLine
	CALL DisplayString
	LEA DX, paymentTotal
	CALL paymentTotalPrint 
        LEA DX, payAmount
	CALL paidPrint
        LEA DX, paymentLine
	CALL DisplayString
        ;LEA DX, changeAmount
	;CALL changePrint
        ;LEA DX, paymentLine
	;CALL DisplayString
	LEA DX, continue_msg
	CALL DisplayString
	CALL PressContinue
	RET
receiptPrint ENDP

changePrint PROC
	CALL DisplayString        
	MOV AX, change
	CALL printPrice
	LEA DX, paymentSpace2
	CALL DisplayString
	RET
changePrint ENDP

callDisplayCafe PROC
	    CALL ClearScreen
    LEA DX, cafe_msg
    CALL DisplayString
	CALL PressContinue
	CALL orderPrint2

receipt:
	CALL receiptPrint
	CALL clearCart
	RET
callDisplayCafe ENDP

clearCart PROC
	MOV cartNone, 0
    MOV totalItem, 0
    MOV SI, 0
    MOV CX, 12
    XOR AX, AX
    XOR BX, BX
    CLEAR_LOOP:
        MOV cartQuantity[SI], AX
        MOV itemTotalPrice[SI], AX
        ADD SI, 2
        LOOP CLEAR_LOOP

    RET
clearCart ENDP

PRINT PROC           
    MOV DX, 0000H                  
    MOV BX, 10
    
    DIV BX
    MOV rem, DX
    MOV quo, AX 
    
    MOV AH, 02H                   
    MOV DX, quo   
    ADD DX, '0'
    INT 21H     

    MOV AH, 02H                   
    MOV DX, rem   
    ADD DX, '0'
    INT 21H  
    RET        
PRINT ENDP

PRINT2 PROC
	MOV DX, 0000H                  
    MOV BX, 10
    
    DIV BX
    ;MOV rem, DX
    MOV quo, AX 
    
    MOV AH, 02H                   
    MOV DX, quo   
    ADD DX, '0'
    INT 21H
	RET  
PRINT2 ENDP

printPrice PROC
    MOV DX, 0000H 
    MOV BX, 10000
    
    DIV BX 
    MOV rem, DX
    MOV quo, AX
    
    MOV AH, 02H
    MOV DX, quo   
    ADD DX, '0'
    INT 21H 

    MOV AX, rem
    MOV DX, 0000H
    MOV BX, 1000
    
    DIV BX 
    MOV rem, DX
    MOV quo, AX
    
    MOV AH, 02H
    MOV DX, quo   
    ADD DX, '0'
    INT 21H               
    
    MOV AX, rem   
    MOV DX, 0000H
    MOV BX, 100
    
    DIV BX
    MOV rem, DX
    MOV quo, AX 
    
    MOV AH, 02H
    MOV DX, quo   
    ADD DX, '0'
    INT 21H                    
                           
    MOV AH, 02H          
    MOV DL, "."
    INT 21H
    
    MOV AX, rem   
    MOV DX, 0000H                  
    MOV BX, 10
    
    DIV BX
    MOV rem, DX
    MOV quo, AX 
    
    MOV AH, 02H                   
    MOV DX, quo   
    ADD DX, '0'
    INT 21H     
    
    MOV AH, 02H                   
    MOV DX, rem   
    ADD DX, '0'
    INT 21H     
    RET           
printPrice ENDP

RESERVATION PROC
    ADD numberAttempt[10], 1
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
    JE CALL_MAKE_RESERVATION
    CMP AL, 2
    JE CALL_MODIFY_RESERVATION               
    CMP AL, 3
    JE CALL_CEANCEL_RESERVATION               
    CMP AL, 4
    JE GO_MAIN_MENU

    LEA DX, invalid_choice
    CALL DisplayString
    LEA DX, newLine
    INT 21H
                                                                  
    JMP ENTER_AGAIN2 
    
CALL_MAKE_RESERVATION:
    CALL MAKE_RESERVATION
    RET         
    
CALL_CEANCEL_RESERVATION:
    CALL CANCEL_RESERVATION
    RET   
    
CALL_MODIFY_RESERVATION:
    CALL MODIFY_RESERVATION
    RET

GO_MAIN_MENU:
	JMP MAIN_MENU
RESERVATION ENDP

MAKE_RESERVATION PROC
    ADD numberAttempt[12], 1
    CALL ClearScreen   
    LEA DX, reservation_head                      
    CALL DisplayString
    LEA DX, makeReservation
    CALL DisplayString 
     
REENTER_CHOICE:
    LEA DX, choicePrompt 
    CALL DisplayString
    MOV AH, 01H
    int 21H
    MOV reservationYX, AL
                          
    CMP reservationYX, "Y"
    JE valid_YX
    CMP reservationYX, "y"
    JE valid_YX         
    CMP reservationYX, "X"
    JE CALL_RESERVATION
    CMP reservationYX, "x"
    JE CALL_RESERVATION         
 
    LEA DX, invalidYX
    CALL DisplayString
    JMP REENTER_CHOICE   

CALL_RESERVATION:
	CALL RESERVATION
     	RET

valid_YX:                   
    LEA DX, namePrompt
    CALL DisplayString                       ;enter name
    LEA DX, nameInput
    MOV AH, 0AH
    INT 21H  
    
    MOV SI, namesPointer  
    LEA DI, inputName
    MOV CX, 20
    COPY20:                                  ;copy name to names
       MOV BX, [DI]
       MOV names[SI], BL  
       INC DI
       INC SI
       LOOP COPY20
      
    LEA DX, phonePrompt
    CALL DisplayString                      ;enter phone
    LEA DX, phoneInput
    MOV AH, 0AH
    INT 21H        
    
    MOV SI, phonesPointer  
    LEA DI, inputPhone
    MOV CX, 12
    COPY12:                                  ;copy phone to phones
       MOV BX, [DI]
       MOV phones[SI], BL  
       INC DI
       INC SI
       LOOP COPY12

enter_guest:    
    LEA DX, guestPrompt
    CALL DisplayString                      ;enter guest
    MOV AH, 01H
    INT 21H    
    
    SUB AL, "0"
    CMP AL, 1
    JL invalid_Guest
    CMP AL, 9
    JG invalid_Guest
                
    MOV BX, reservationCount  
    ADD AL, "0"
    MOV guests[BX], AL 
    JMP ENTER_AGAIN3  
    
invalid_Guest:
    LEA DX, invaildGuest
    CALL DisplayString
    JMP enter_guest   
        
ENTER_AGAIN3:   
    LEA SI, inputDate
    XOR AL, AL                    
    
    DATE_CLEANING:
        MOV [SI], AL             ;clean inputDate = "$$$$$$$$$$"
        INC SI
	    MOV BL, [SI]
        CMP BL, "$"
        JNE DATE_CLEANING     

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
    JMP DATE_CHECKING

invalid_Date_Format:
    LEA DX, invalidDateFormat
    CALL DisplayString
    JMP ENTER_AGAIN3    
    
DATE_CHECKING:
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
    JG invalid_day31    
    JMP valid_day  
                                      
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
              
    MOV DI, reservedDatesPointer            ;INPUT 1 GET 10
    MOV AL, reservedCount                   ;INPUT 2 GET 21
    MOV BL, 10                              ;INPUT 3 GET 32
    MUL BL
    ADD AL, reservedCount                   ;10N + (N-1)
    SUB AL, 1
    MOV endingIndex, AX                     ;if reservedcount = 2, end at 21, (22 is new date already)

CHECK_OUTER:                
      
        MOV charCounter, 0 
        MOV CORRECT, 10               
        MOV SI, 0                                   
        MOV CX, 10 

        CHECK_INNER:
            MOV AL, [reservedDates+DI] 
            SUB AL, "0"
            MOV BL, [inputDate+SI]
            SUB BL, "0"   
        
            CMP AL, BL                   
            JE PLUS_COUNTER
            JMP SUB_COUNTER
            
            PLUS_COUNTER:
                INC CORRECT 
                JMP OK
            
            SUB_COUNTER:
                DEC CORRECT
            
            OK:
            INC SI 
            INC DI
            INC charCounter
            LOOP CHECK_INNER    
        
        MOV AL, CORRECT
        CMP CORRECT, 20                       ;correct = 20 means all chracters of date are same
        JE  FOUND_RESERVED                             ;less than 20 means not all same
     
           
        CMP DI, endingIndex                   
        JE NOT_FOUND_RESERVED        
        
        CMP charCounter, 10                    ;date length is 10, after 10, move to next date
        JE GOTO_NEXT_DATE        
        JMP NOT_FOUND_RESERVED              
        
GOTO_NEXT_DATE:     
    ADD DI, 1                                  ;add 1 because next string start at position 11
    JMP CHECK_OUTER
                  
                  
FOUND_RESERVED:
    LEA DX, invalidReservedDate
    CALL DisplayString         
    JMP ENTER_AGAIN3
                                                                                                         
NOT_FOUND_RESERVED:
    
    
    MOV SI, datesPointer  
    LEA DI, inputDate
    MOV CX, 10
    COPY10:                                  ;copy date to dates
       MOV BX, [DI]
       MOV dates[SI], BL  
       INC DI
       INC SI
       LOOP COPY10  
       
ENTER_TIME:      
    LEA SI, inputTime
    XOR AL, AL
        
    TIME_CLEANING:
        MOV [SI], AL             ;clean inputTime = "$$$$$"
        INC SI
	    MOV BL, [SI]
        CMP BL, "$"
        JNE TIME_CLEANING         
        
        LEA DX, timePrompt  
        CALL DisplayString 
        LEA DX, timeInput
        MOV AH, 0AH
        INT 21H      
        
        LEA SI, inputTime            
        CMP inputTime[2], ':'
        JNE invalid_Time_Format  
        CMP inputTime[5], '$'
        JE invalid_Time_Format    
                      
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
        JMP VALIDIATE_TIME

invalid_Time_Format:  
    LEA DX, invalidTimeFormat
    CALL DisplayString         
    JMP ENTER_TIME  
  
VALIDIATE_TIME:                                                                                  
    CMP hh, 10           
    JL invalid_time_early
    CMP hh, 20           
    JG invalid_time_late           
    JMP check_minutes     
 
invalid_time_early:
    LEA DX, invalidTimeE
    CALL DisplayString         
    JMP ENTER_TIME     
    
invalid_time_late:
    LEA DX, invalidTimel
    CALL DisplayString         
    JMP ENTER_TIME

check_minutes:
    CMP mm, 0
    JL invalid_min
    CMP mm, 59
    JG invalid_min        
    
confirmation:        
    MOV SI, timesPointer  
    LEA DI, inputTime
    MOV CX, 5
    COPY5:                                  ;copy time to times
       MOV BX, [DI]
       MOV times[SI], BL  
       INC DI
       INC SI
       LOOP COPY5
       
    LEA DX, confirmMake
    CALL DisplayString   
    MOV AH, 01H
    INT 21H   
    
    CMP AL, "Y"  
    JE valid_YN   
    CMP AL, "y"
    JE valid_YN
    CMP AL, "N"
    JE valid_YN  
    CMP AL, "n"
    JE valid_YN
    JMP ENTER_AGAIN4
         
valid_YN:
    CMP AL, "Y"
    JE sucess_reservation
    CMP AL, "y"
    JE sucess_reservation   
    CALL MAKE_RESERVATION
    
invalid_min:
    LEA DX, invalidMin
    CALL DisplayString         
    JMP enter_time      
    
ENTER_AGAIN4:
    LEA DX, invalid_YN
    CALL DisplayString
    JMP confirmation    
     
sucess_reservation:  
    CALL ClearScreen
    LEA DX, reservation_head
    CALL DisplayString
    
    MOV CX, 0819H
    CALL CenterCursor
    LEA DX, reservation_confirmation
    CALL DisplayString

    MOV CX, 0B00H
    CALL CenterCursor
    LEA DX, reservationDetails
    CALL DisplayString
          
    MOV BX, namesPointer
    MOV CX, 0C23H
    CALL removePreviousChar
    LEA DX, [names + BX]
    CALL DisplayString   
    
    MOV BX, phonesPointer
    MOV CX, 0D23H
    CALL removePreviousChar
    LEA DX, [phones + BX]
    CALL DisplayString   
    
    MOV BX, reservationCount
    MOV CX, 0E23H
    CALL CenterCursor 
    MOV AH, 02H
    MOV DL, guests[BX]
    INT 21H
          
    MOV BX, datesPointer
    MOV CX, 0F23H
    CALL CenterCursor
    LEA DX, [dates + BX]
    CALL DisplayString
                        
    MOV BX, timesPointer
    MOV CX, 1023H
    CALL CenterCursor
    LEA DX, [times + BX]
    CALL DisplayString
 
    MOV CX, 1500H
    CALL CenterCursor
    LEA DX, continue
    CALL DisplayString
    MOV AH, 0 
    INT 16H     
    
    ADD reservationCount, 1
    ADD namesPointer, 21 
    ADD phonesPointer, 13 
    ADD datesPointer, 11
    ADD timesPointer, 6 
    
    MOV SI, reservedCopyIndex  
    LEA DI, inputDate
    MOV CX, 10
    COPY101:                                  ;copy date to RESERVEDDATES
       MOV BX, [DI]
       MOV reservedDates[SI], BL  
       INC DI
       INC SI
       LOOP COPY101  
       
    ADD reservedCount, 1
    ADD reservedCopyIndex, 11 
    JMP RESERVATION 
    RET   
MAKE_RESERVATION ENDP     

CANCEL_RESERVATION PROC
    ADD numberAttempt[14], 1
    CALL ClearScreen   
    LEA DX, reservation_head                      
    CALL DisplayString
    LEA DX, cancelReservation
    CALL DisplayString 

ENTER_AGAIN6:                                                                                                     
    LEA DX, choicePrompt 
    CALL DisplayString   
    XOR AL, AL
    MOV AH, 01H
    int 21H
    MOV reservationYX, AL

    CMP reservationYX, "Y"  
    JE valid_Choice1   
    CMP reservationYX, "y"
    JE valid_Choice1
    CMP reservationYX, "X"
    JE valid_Choice1  
    CMP reservationYX, "x"
    JE valid_Choice1
                   
    LEA DX, invalidYX
    CALL DisplayString
    JMP ENTER_AGAIN6

valid_Choice1:
    CMP reservationYX, "Y"  
    JE check_reservation_count   
    CMP reservationYX, "y"
    JE check_reservation_count
    JMP RESERVATION    
    
check_reservation_count:
    MOV AX, reservationCount
    CMP AL, 0
    JE NO_RESERVATION   
    JMP LISTING_RESERVATION  
        
NO_RESERVATION:                                                  
    LEA DX, noReservation 
    CALL DisplayString 
    
ENTER_AGAIN7:
    LEA DX, choicePrompt 
    CALL DisplayString  
    XOR AL, AL
    MOV AH, 01H
    int 21H   
    
    CMP AL, "Y"  
    JE CALL_MAKE_RESERVATION2   
    CMP AL, "y"
    JE CALL_MAKE_RESERVATION2
    CMP AL, "N"
    JE CALL_RESERVATION1  
    CMP AL, "n"
    JE CALL_RESERVATION1 
       
    LEA DX, invalid_YN
    CALL DisplayString
    JMP ENTER_AGAIN7  
    
CALL_MAKE_RESERVATION2:
    CALL MAKE_RESERVATION     
    
CALL_RESERVATION1: 
    CALL RESERVATION
                  
LISTING_RESERVATION:
    LEA DX, datetime_head
    CALL DisplayString  

    MOV SI, 0
    MOV DI, 0
    MOV BX, 0030H
    MOV CX, 1000H  
    MOV loopCounter, 0
    LISTING:
        LEA DX, line1
        CALL DisplayString
	ADD CL, 0DH               ;ADD COL
	    
        CALL CenterCursor
	ADD BX, 0001H
        MOV DX, BX
        MOV AH, 02H
        INT 21H

	ADD CL, 08H 			;1015
        CALL CenterCursor
	LEA DX, [dates + SI]
	CALL DisplayString

	ADD CL, 1AH 			;102F
        CALL CenterCursor
	LEA DX, [times + DI]
	CALL DisplayString

        ADD CH, 02H
	MOV CL, 00H
	CALL CenterCursor
	INC loopCounter
        ADD SI, 11
        ADD DI, 6
	    
	MOV AX, reservationCount
	MOV DX, loopCounter
	CMP AX, DX                                                  
	JNE LISTING                                                      
              
SELECT_CANCEL_RESERVATION:
        LEA DX, reservationSelection_cancel
	CALL DisplayString 
	XOR AL, AL
	MOV AH, 01H
	INT 21H     
	
	MOV cancelNo, AL            
	MOV CX, reservationCount                                
	SUB AL, "0"
	CMP AL, CL
	JG INVALID_RESERVATION_NO
	CMP AL, 1
	JL INVALID_RESERVATION_NO     
	
	MOV BL, 11
	MUL BL                              ;DATE: EG [2]X11-11 = 11
	SUB AX, 11
	MOV dateIndex, AX  
	         
	MOV AL, cancelNo
	SUB AL, "0"
	MOV BL, 6                           ;TIME: EG [2]X6-6 = 6
	MUL BL                              ;USER ONLY SELECT WHICH RESERVATION ONLY, (1,2,3,4,5)
	SUB AX, 6                           ;I NEED TO TRANSFORM THE (1,2,3,4,5) TO DATE/TIME INDEX
	MOV timeIndex, AX   	
            	
CANCEL_CONFIRMATION:	
	LEA DX, confirmCancel
    CALL DisplayString
    XOR AL, AL   
    MOV AH, 01H
    INT 21H   
    
    CMP AL, "Y"  
    JE valid_YN2   
    CMP AL, "y"
    JE valid_YN2
    CMP AL, "N"
    JE valid_YN2  
    CMP AL, "n"
    JE valid_YN2
    
    LEA DX, invalid_YN
    CALL DisplayString
    JMP CANCEL_CONFIRMATION                                                                 

INVALID_RESERVATION_NO:
    LEA DX, invalidCancelNo	 
    CALL DisplayString
    JMP SELECT_CANCEL_RESERVATION
    
valid_YN2:
    CMP AL, "Y"
    JE SUCESS_CANCEL
    CMP AL, "y"
    JE SUCESS_CANCEL   
    CALL CANCEL_RESERVATION                                                                                   
    
SUCESS_CANCEL:              
    DATE_CLEARING:	
	MOV CX, 10
        MOV SI, dateIndex       
        ADD SI, 10
        SUB SI, 1

    REPLACE_DATE_$$$:                           ;CLEARING DATE
        MOV [dates+SI], "$"   
        DEC SI
        LOOP REPLACE_DATE_$$$  
                
    DATE_FORWARD_OUTER:                ;MOVING DATES FORWARD TO FILL EMPTY SPACE, EASY DO LISTING
        MOV dateCounter, 0       
                 
        MOV SI, dateIndex               ;11                 ;"$$$$$$$$$$$" <- SI FOR THIS
        MOV DI, dateIndex               ;11                 ;"23/01/2021$" <- DI FOR THIS
        ADD DI, 11                      ;11 + 11 = 22
        
        MOV CX, 10 
        ADD SI, CX                     ;SI 21
        ADD DI, CX                     ;DI 32
        SUB SI, 1                      ;SI 20
        SUB DI, 1                      ;DI 31   
        
        DATE_FORWARD_INNER:
            MOV AL, [dates+SI]
            MOV BL, [dates+DI]   
            XCHG AL, BL                   ;CHANGING EVERY CHARACTER, STARTING FROM BACK
            MOV [dates+SI], AL
            MOV [dates+DI], BL 
        
            DEC SI
            DEC DI
            INC dateCounter
            LOOP DATE_FORWARD_INNER   
            
        CMP dateIndex, 33                 ;THE FORTH STRING STOP
        JE TIME_CLEARING        
        
        CMP dateCounter, 10                   ;LENGTH FOR EACH DATE STRING IS 10
        JE TO_NEXT_DATE        
        JMP TIME_CLEARING               
        
TO_NEXT_DATE:     
    ADD dateIndex, 11 
    JMP DATE_FORWARD_OUTER
                
TIME_CLEARING:              
    MOV CX, 5
    MOV SI, timeIndex       
    ADD SI, 5
    SUB SI, 1
    REPLACE_TIME_$$$:
                                              ;CLEARING TIME
        MOV [times+SI], "$"   
        DEC SI
        LOOP REPLACE_TIME_$$$         
        
    TIME_FORWARD_OUTER:
      
        MOV timeCounter, 0       
                 
        MOV SI, timeIndex               ;6                 ;"$$$$$$" <- SI FOR THIS
        MOV DI, timeIndex               ;6                 ;"15:11$" <- DI FOR THIS
        ADD DI, 6                      ;6 + 6 = 12
        
        MOV CX, 5 
        ADD SI, CX                     ;SI 12
        ADD DI, CX                     ;DI 18
        SUB SI, 1                      ;SI 11
        SUB DI, 1                      ;DI 17   
        
        TIME_FORWARD_INNER:

            MOV AL, [times+SI]
            MOV BL, [times+DI]   
        
            XCHG AL, BL                   ;CHANGING EVERY CHARACTER, STARTING FROM BACK

            MOV [times+SI], AL
            MOV [times+DI], BL 
        
            DEC SI
            DEC DI
            INC timeCounter
            LOOP TIME_FORWARD_INNER   
            
        CMP timeIndex, 18                 ;THE FORTH STRING STOP
        JE PRINT_SUCESS_CANCEL        
        
        CMP timeCounter, 5                   ;LENGTH FOR EACH DATE STRING IS 5
        JE TO_NEXT_TIME        
        JMP PRINT_SUCESS_CANCEL               
        
TO_NEXT_TIME:     
    ADD timeIndex, 6 
    JMP TIME_FORWARD_OUTER 
        
PRINT_SUCESS_CANCEL:
    LEA DX, cancelSucessMsg      
    CALL DisplayString    
    LEA DX, continue
    CALL DisplayString
    
    MOV AH, 0 
    INT 16H      
    
    SUB reservationCount, 1  
    SUB datesPointer, 11
    SUB timesPointer, 6
    
    JMP RESERVATION   
    RET   
CANCEL_RESERVATION ENDP      

MODIFY_RESERVATION PROC
    ADD numberAttempt[13], 1
    CALL ClearScreen   
    LEA DX, reservation_head                      
    CALL DisplayString
    LEA DX, modifyReservation
    CALL DisplayString 

ENTER_AGAIN8:                                                                                                     
    LEA DX, choicePrompt 
    CALL DisplayString   
    XOR AL, AL
    MOV AH, 01H
    int 21H
    MOV reservationYX, AL

    CMP reservationYX, "Y"  
    JE valid_Choice2   
    CMP reservationYX, "y"
    JE valid_Choice2
    CMP reservationYX, "X"
    JE valid_Choice2  
    CMP reservationYX, "x"
    JE valid_Choice2
                   
    LEA DX, invalidYX
    CALL DisplayString
    JMP ENTER_AGAIN8

valid_Choice2:
    CMP reservationYX, "Y"  
    JE check_reservation_count1   
    CMP reservationYX, "y"
    JE check_reservation_count1 
    JMP RESERVATION    
    
check_reservation_count1:
    MOV AX, reservationCount
    CMP AL, 0
    JE NO_RESERVATION1   
    JMP LISTING_RESERVATION1  
    
NO_RESERVATION1:                                                  
    LEA DX, noReservation 
    CALL DisplayString 
    
ENTER_AGAIN9:
    LEA DX, choicePrompt 
    CALL DisplayString  
    XOR AL, AL
    MOV AH, 01H
    int 21H   
    
    CMP AL, "Y"  
    JE CALL_MAKE_RESERVATION3   
    CMP AL, "y"
    JE CALL_MAKE_RESERVATION3
    CMP AL, "N"
    JE CALL_RESERVATION2 
    CMP AL, "n"
    JE CALL_RESERVATION2   
    
    LEA DX, invalid_YN
    CALL DisplayString
    JMP ENTER_AGAIN9 
    
CALL_MAKE_RESERVATION3:
    CALL MAKE_RESERVATION     
    
CALL_RESERVATION2: 
    CALL RESERVATION
                   
LISTING_RESERVATION1:
    LEA DX, datetime_head
    CALL DisplayString  

    MOV SI, 0
    MOV DI, 0
    MOV BX, 0030H
    MOV CX, 1000H  
    MOV loopCounter, 0
    LISTING1:
        LEA DX, line1
        CALL DisplayString
	ADD CL, 0DH               ;ADD COL
	    
        CALL CenterCursor
	ADD BX, 0001H
        MOV DX, BX
        MOV AH, 02H
        INT 21H

	ADD CL, 08H 			;1015
        CALL CenterCursor
	LEA DX, [dates + SI]
	CALL DisplayString

	ADD CL, 1AH 			;102F
        CALL CenterCursor
	LEA DX, [times + DI]
	CALL DisplayString

        ADD CH, 02H
	MOV CL, 00H
	CALL CenterCursor
	INC loopCounter
	ADD SI, 11
        ADD DI, 6
	    
	MOV AX, reservationCount
	MOV DX, loopCounter
	CMP AX, DX                                                  
	JNE LISTING1
              
SELECT_MODIFY_RESERVATION:
    LEA DX, reservationSelection_modify
	CALL DisplayString 
	XOR AL, AL
	MOV AH, 01H
	INT 21H     
	
	MOV cancelNo, AL            
	MOV CX, reservationCount                                
	SUB AL, "0"
	CMP AL, CL
	JG INVALID_RESERVATION_NO1
	CMP AL, 1
	JL INVALID_RESERVATION_NO1      
	JMP MOVE_INDEX

INVALID_RESERVATION_NO1:
    LEA DX, invalidCancelNo	 
    CALL DisplayString
    JMP SELECT_MODIFY_RESERVATION   

MOVE_INDEX:	
	MOV BL, 11
	MUL BL                              ;DATE: EG [2]X11-11 = 11
	SUB AX, 11
	MOV dateIndex, AX  
	         
	MOV AL, cancelNo
	SUB AL, "0"
	MOV BL, 6                           ;TIME: EG [2]X6-6 = 7
	MUL BL
	SUB AX, 6
	MOV timeIndex, AX 
	
ENTER_NEW_DATE:   
    LEA SI, inputNewDate
    XOR AL, AL                    
    
    DATE_CLEANING1:
        MOV [SI], AL             ;clean inputDate = "$$$$$$$$$$"
        INC SI
	    MOV BL, [SI]
        CMP BL, "$"
        JNE DATE_CLEANING1     

    LEA DX, newDate
    CALL DisplayString			    ;enter date
    LEA DX, newDateInput
    MOV AH, 0AH
    INT 21H

    LEA SI, inputNewDate  
    MOV AL, [SI+2]
    CMP AL, '/'   
    JNE invalid_Date_Format1   
    MOV AL, [SI+5]
    CMP AL, '/'
    JNE invalid_Date_Format1  
    MOV AL, [SI+10]
    CMP AL, '$'
    JE invalid_Date_Format1   
    JMP NEW_DATE_CHECKING

invalid_Date_Format1:
    LEA DX, invalidDateFormat
    CALL DisplayString
    JMP ENTER_NEW_DATE    
    
NEW_DATE_CHECKING:
    LEA DI, inputNewDate
    
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
    JL invalid_year_less1  
    CMP year, 2025              ;valid year
    JG invalid_year_more1        
    JMP MONTH_VALIDATION1

invalid_year_less1:   
    LEA DX, invalidYearL
    CALL DisplayString  
    JMP ENTER_NEW_DATE

invalid_year_more1:
    LEA DX, invalidYearG
    CALL DisplayString         
    JMP ENTER_NEW_DATE

MONTH_VALIDATION1:
    CMP month, 1
    JL invalid_month1            ;valid month
    CMP month, 12
    JG invalid_month1  
    JMP DAY_VALIDATION1

invalid_month1:                                                      
    LEA DX, invalidMonth
    CALL DisplayString         
    JMP ENTER_NEW_DATE  

DAY_VALIDATION1:    
    CMP month, 2 
    JE check_leap_year1          ;valid day, check which month first
    CMP month, 4 
    JE check_day301
    CMP month, 6 
    JE check_day301
    CMP month, 9 
    JE check_day301
    CMP month, 11 
    JE check_day301

    CMP day, 1
    JL invalid_day11
    CMP day, 31                ;all months with 31days
    JG invalid_day311    
    JMP valid_day1  
                                      
check_leap_year1:
    MOV AX, year
    MOV BX, 100
    MOV DX, 0000H 
    DIV BX                ;2024/100, 20INAX 24INDX   
    
    MOV AL, DL
    MOV BL, 4             ;24/4 IF REM IS 0 = LEAP
    DIV BL
    CMP AH, 0
    JNZ not_leap_year1
       
    CMP day, 1
    JL invalid_day11   
    CMP day, 29
    JLE valid_day1  
    JMP invalid_day291
   
not_leap_year1:  
    CMP day, 1
    JL invalid_day11
    CMP day, 28
    JLE valid_day1
    JMP invalid_day281
    
check_day301:  
    CMP day, 1                        ;TODO: TEST ZERO
    JL  invalid_day11
    CMP day, 30
    JLE valid_day1  
    JMP invalid_day301

invalid_day11:
    LEA DX, invalidDay1
    CALL DisplayString         
    JMP ENTER_NEW_DATE 

invalid_day301:
    LEA DX, invalidDay30
    CALL DisplayString         
    JMP ENTER_NEW_DATE                
    
invalid_day311:
    LEA DX, invalidDay31
    CALL DisplayString         
    JMP ENTER_NEW_DATE 
    
invalid_day291: 
    LEA DX, invalidDay29
    CALL DisplayString         
    JMP ENTER_NEW_DATE 

invalid_day281:
    LEA DX, invalidDay28
    CALL DisplayString         
    JMP ENTER_NEW_DATE        

valid_day1:
        
    MOV DI, reservedDatesPointer            ;INPUT 1 GET 10
    MOV AL, reservedCount                   ;INPUT 2 GET 21
    MOV BL, 10                              ;INPUT 3 GET 32
    MUL BL
    ADD AL, reservedCount                   ;10N + (N-1)
    SUB AL, 1
    MOV endingIndex, AX                     ;if reservedcount = 2, end at 21, (22 is new date already)

CHECK_OUTER1:                
      
        MOV charCounter, 0 
        MOV CORRECT, 10               
        MOV SI, 0                                   
        MOV CX, 10 

        CHECK_INNER1:
            MOV AL, [reservedDates+DI] 
            SUB AL, "0"
            MOV BL, [inputNewDate+SI]
            SUB BL, "0"   
        
            CMP AL, BL                   
            JE PLUS_COUNTER1
            JMP SUB_COUNTER1
            
            PLUS_COUNTER1:
                INC CORRECT 
                JMP OK1
            
            SUB_COUNTER1:
                DEC CORRECT
            
            OK1:
            INC SI 
            INC DI
            INC charCounter
            LOOP CHECK_INNER1    
        
        MOV AL, CORRECT
        CMP CORRECT, 20                       ;correct = 20 means all chracters of date are same
        JE  FOUND_RESERVED1                             ;less than 20 means not all same
     
           
        CMP DI, endingIndex                   
        JE ENTER_NEW_TIME        
        
        CMP charCounter, 10                    ;date length is 10, after 10, move to next date
        JE GOTO_NEXT_DATE1        
        JMP ENTER_NEW_TIME              
        
GOTO_NEXT_DATE1:     
    ADD DI, 1                                  ;add 1 because next string start at position 11
    JMP CHECK_OUTER1
                  
                  
FOUND_RESERVED1:
    LEA DX, invalidReservedDate
    CALL DisplayString         
    JMP ENTER_NEW_DATE
                                                                                                                    
ENTER_NEW_TIME:      
    LEA SI, inputNewTime
    XOR AL, AL
        
    TIME_CLEANING1:
        MOV [SI], AL             ;clean inputTime = "$$$$$"
        INC SI
	    MOV BL, [SI]
        CMP BL, "$"
        JNE TIME_CLEANING1         
        
        LEA DX, newTime  
        CALL DisplayString 
        LEA DX, newTimeInput
        MOV AH, 0AH
        INT 21H      
        
        LEA SI, inputNewTime            
        CMP inputNewTime[2], ':'
        JNE invalid_Time_Format1  
        CMP inputNewTime[5], '$'
        JE invalid_Time_Format1    
                      
        MOV AL, inputNewTime[0] 
        SUB AL, '0' 
        MOV DL, 10
        MUL DL
                 
        MOV AH, inputNewTime[1] 
        SUB AH, '0'  
        ADD AL, AH
        MOV hh8, AL
                
        MOV AL, inputNewTime[3] 
        SUB AL, '0'
        MUL DL          
        
        MOV AH, inputNewTime[4] 
        SUB AH, '0'  
        ADD AL, AH
        MOV mm8, AL 
        JMP VALIDIATE_TIME1

invalid_Time_Format1:  
    LEA DX, invalidTimeFormat
    CALL DisplayString         
    JMP ENTER_NEW_TIME  
  
VALIDIATE_TIME1:                                                                                  
    CMP hh8, 10           
    JL invalid_time_early1
    CMP hh8, 20           
    JG invalid_time_late1           
    JMP check_minutes1     
 
invalid_time_early1:
    LEA DX, invalidTimeE
    CALL DisplayString         
    JMP ENTER_NEW_TIME     
    
invalid_time_late1:
    LEA DX, invalidTimel
    CALL DisplayString         
    JMP ENTER_NEW_TIME

check_minutes1:
    CMP mm8, 0
    JL invalid_min1
    CMP mm8, 59
    JG invalid_min1 
    JMP MODIFY_CONFIRMATION
     
invalid_min1:
    LEA DX, invalidMin
    CALL DisplayString         
    JMP ENTER_NEW_TIME         
	
MODIFY_CONFIRMATION:	
    LEA DX, confirmModify
    CALL DisplayString
    XOR AL, AL   
    MOV AH, 01H
    INT 21H   
    
    CMP AL, "Y"  
    JE valid_YN3   
    CMP AL, "y"
    JE valid_YN3
    CMP AL, "N"
    JE valid_YN3  
    CMP AL, "n"
    JE valid_YN3
    
    LEA DX, invalid_YN
    CALL DisplayString
    JMP MODIFY_CONFIRMATION                                                                 
    
valid_YN3:
    CMP AL, "Y"
    JE SUCESS_MODIFY
    CMP AL, "y"
    JE SUCESS_MODIFY   
    CALL MODIFY_RESERVATION                                                                                   
    
SUCESS_MODIFY:  
    MOV SI, dateIndex  
    LEA DI, inputNewDate
    MOV CX, 10
    COPY10_2:                                  ;copy date to dates
       MOV BX, [DI]
       MOV dates[SI], BL  
       INC DI
       INC SI
       LOOP COPY10_2  
       
    MOV SI, timeIndex  
    LEA DI, inputNewTime
    MOV CX, 5
    COPY5_2:                                  ;copy time to times
       MOV BX, [DI]
       MOV times[SI], BL  
       INC DI
       INC SI
       LOOP COPY5_2
                
    LEA DX, modifySucessMsg      
    CALL DisplayString    
    LEA DX, continue
    CALL DisplayString
    
    MOV AH, 0 
    INT 16H      
         
    JMP RESERVATION   
    RET    
MODIFY_RESERVATION ENDP  

parseDayMonth PROC           ;X10 + NEXT NUMBER   
    MOV AL, [DI]            
    SUB AL, '0'               
    MOV BL, 10      
    MUL BL                                                                              
    INC DI
    ADD AL, [DI]
    SUB AL, '0'        
    RET   
parseDayMonth ENDP

removePreviousChar PROC       
    CALL CenterCursor
    LEA DX, eraser       ;clear previous user input  
    CALL DisplayString 
    CALL CenterCursor    ;back to original starting
    RET
removePreviousChar ENDP 


END MAIN
