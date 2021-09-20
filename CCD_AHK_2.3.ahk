;------------------------------------------------------------------------------
; Numpad0 - перезагрузить скрипт
; Numpad1 - пауза плей
; Numpad2 - афк
; Numpad3 - 
; Numpad4 - 
; Numpad5 - 
; Numpad6 - 
; Numpad7 - 
; Numpad8 - 
; Numpad9 - 
; NumpadEnter - +W
; NumpadAdd - выгрузка (semi-auto)
; NumpadSub - закрыть скрипт
;------------------------------------------------------------------------------
; NumpadDot - раки
; Numpad3 -   дерево
; Numpad6 -   картошка
; Numpad9 -   металл




#NoTrayIcon
;#IfWinactive, ahk_exe GTA5.exe
;gta_exe := "ahk_exe GTA5.exe"

-------------------------------------------------------------------------------
Gui, 2:Add, GroupBox, x2 y-1 w100 h220 , Работа
Gui, 2:Add, Radio, x2 y19 w90 h30 gPointCrayfish, Раки
Gui, 2:Add, Radio, x2 y59 w90 h30 gPointWood, Дерево
Gui, 2:Add, Radio, x2 y99 w90 h30 gPointPotato, Картошка
Gui, 2:Add, Radio, x2 y139 w90 h30 gPointMetal, Металл
Gui, 2:Add, Radio, x2 y179 w90 h30 gPointUnloadingFromCarSleep, Выгрузка
Gui, 2:Add, Button, x112 y19 w90 h30 gPointPause, Пауза/плей
Gui, 2:Add, Button, x112 y59 w90 h30 gPointReloadScript, Перезагрузка
Gui, 2:Add, Text, x2 y229 w120 h20 +Left, loadOnCarSleep
Gui, 2:Add, Text, x2 y249 w120 h20 +Left, unloadingFromCarSleep
Gui, 2:Add, Edit, x122 y229 w80 h20  vloadOnCarSleep, 220 
Gui, 2:Add, Edit, x122 y249 w80 h20 vunloadingFromCarSleep, 100 
Gui, 2:Add, Radio, x112 y99 w90 h30 gPointAntiAFK, AFK
Gui, Font, S8 CDefault Bold, Verdana
; Generated using SmartGUI Creator for SciTE
Gui, 2:Show, w206 h276, AHK CCD 2.3
-------------------------------------------------------------------------------


loadOnCarSleep := 220
unloadingFromCarSleep := 100

;--------------------БЛОК ФУНКЦИЙ----------------------------------------------
loadOnCar(){

mouseMove, 808, 426, 3
			ContrlClick()
sleep, loadOnCarSleep
			mouseMove, 888, 426, 3
			ContrlClick()
sleep, loadOnCarSleep
			mouseMove, 968, 426, 3
			ContrlClick()
sleep, loadOnCarSleep
			mouseMove, 1048, 426, 3
			ContrlClick()
sleep, loadOnCarSleep
			mouseMove, 808, 506, 3
			ContrlClick()
sleep, loadOnCarSleep
			mouseMove, 888, 506, 3
			ContrlClick()
sleep, loadOnCarSleep
			mouseMove, 968, 506, 3
			ContrlClick()
sleep, loadOnCarSleep
			mouseMove, 1048, 506, 3
			ContrlClick()
sleep, loadOnCarSleep
			mouseMove, 808, 586, 3
			ContrlClick()
sleep, loadOnCarSleep
			mouseMove, 888, 586, 3
			ContrlClick()
sleep, loadOnCarSleep
			mouseMove, 968, 586, 3
			ContrlClick()
sleep, loadOnCarSleep
			mouseMove, 1048, 586, 3
			ContrlClick()
sleep, loadOnCarSleep
			mouseMove, 808, 666, 3
			ContrlClick()
sleep, loadOnCarSleep
			mouseMove, 888, 666, 3
			ContrlClick()
sleep, loadOnCarSleep
			mouseMove, 968, 666, 3
			ContrlClick()
sleep, loadOnCarSleep
	       		mouseMove, 1048, 666, 3
			ContrlClick()
sleep, loadOnCarSleep
			mouseMove, 808, 740, 3
			ContrlClick()
sleep, loadOnCarSleep
			mouseMove, 888, 740, 3
			ContrlClick()
sleep, loadOnCarSleep
			mouseMove, 968, 740, 3
			ContrlClick()
sleep, loadOnCarSleep
			mouseMove, 1048, 740, 3
			ContrlClick()
sleep, loadOnCarSleep


mouseMove, 888, 586
sleep, 100
MouseClick, WheelDown, , , 4, 50
sleep, 250
	
			mouseMove, 808, 586, 3
			ContrlClick()
sleep, loadOnCarSleep
			mouseMove, 888, 586, 3
			ContrlClick()
sleep, loadOnCarSleep
			mouseMove, 968, 586, 3
			ContrlClick()
sleep, loadOnCarSleep
			mouseMove, 1048, 586, 3
			ContrlClick()
sleep, loadOnCarSleep
			mouseMove, 808, 666, 3
			ContrlClick()
sleep, loadOnCarSleep
			mouseMove, 888, 666, 3
			ContrlClick()
sleep, loadOnCarSleep
			mouseMove, 968, 666, 3
			ContrlClick()
sleep, loadOnCarSleep
	        	mouseMove, 1048, 666, 3
			ContrlClick()
sleep, loadOnCarSleep
			mouseMove, 808, 740, 3
			ContrlClick()
sleep, loadOnCarSleep
			mouseMove, 888, 740, 3
			ContrlClick()
sleep, loadOnCarSleep

Return
}


ContrlClick(){
sendinput, {LControl Down}
sleep,50
Click
sendinput, {LControl Up}
sleep,50
}


;---------------------antiAFK--------------------------------------------------

Numpad2:: ; 	
pointAntiAFK:
Loop, 10000 ; 
{
		send {A}
		sleep, 30000 ; 
		
		send {D}
		sleep, 30000 ; 
}
Return

;-------------------------------+W---------------------------------------------

NumpadEnter:: ; 	

sendinput, {w down}
sleep, 99999993
Return


;-------------------------------+Scroll---------------------------------------------

E:: ; 

MouseClick, WheelDown, , , 25, 50
Return


;------------------------------Раки--------------------------------------------

NumpadDot:: ; 	
pointCrayfish:

GuiControlGet, loadOnCarSleep

sleep,2000

Loop, 10 ; 10
{
	Loop, 12 ;12 заполнение слотов инвенторя
	{
		send {E}
		sleep, 17550 ;
	}
sendinput, {r down}
sleep, 1000
mouseMove, 857, 685
Click
sendinput, {r Up}
	sleep, 5000	
		
	loadOnCar()

	sendinput, {q down}
	sleep, 50
	sendinput {q Up}
}
Return


;------------Дерево, они же доски, они же опилки, они же шелуха-----------------


Numpad3:: ; 
pointWood:

GuiControlGet, loadOnCarSleep

sleep,2000
Loop, 10 ; 10
{
	Loop, 15 ; 15
	{
		send {E}
		sleep, 11450 ; 
	}
sendinput, {r down}
sleep, 1000
mouseMove, 857, 685
Click
sendinput, {r Up}
	sleep, 5000
	    			
	loadOnCar()

	sendinput, {q down}
	sleep, 50
	sendinput {q Up}
}
Return


;--------------------------Картошка--------------------------------------------



Numpad6:: ; 
pointPotato:

GuiControlGet, loadOnCarSleep

sleep,2000
Loop, 10 ; 10
{
	Loop, 60 ; 60(мб изменить)!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	{
		send {E}
		sleep, 3700 ; 
	}
sendinput, {r down}
sleep, 1000
mouseMove, 857, 685
Click
sendinput, {r Up}
	sleep, 5000
	    
	loadOnCar()

	sendinput, {q down}
	sleep, 50
	sendinput {q Up}
}
Return



;-------------------------------Металл-----------------------------------------


Numpad9:: ;  (тут могло быть ваше пиво)
pointMetal:

GuiControlGet, loadOnCarSleep

sleep,2000
Loop, 10 ; 10
{
	Loop, 20 ; 20
	{
		send {E}
		sleep, 6850 ; 
	}
sendinput, {r down}
sleep, 1000
mouseMove, 857, 685
Click
sendinput, {r Up}
	sleep, 5000
	    
	loadOnCar()

	sendinput, {q down}
	sleep, 50
	sendinput {q Up}
}
Return


;---------------------------Выгрузка------------------------------------------

; Тут описана урезанная полуавтоматическая версия скрипта Выгрузка.
; Вам будет необходимо самостоятельно передвигать персонажа 
; от машины до маркера и наоборот
 
; На совершения ручных действий отводится 5 секунд.

; Самостоятельно подходим на маркер - запускаем скрипт - ждем продажу - 
; самостоятельно подходим к машине - ожидаем завершение выгрузки - повторяем


; Если залагал клиент или возникли инные проблемы - смело нажимайте Паузу (Numpud1).

NumpadAdd:: 			
pointUnloadingFromCarSleep:

GuiControlGet, unloadingFromCarSleep


countWheel = 0
correctItemPos = 1

						; Продаем первую партию
mouseMove, 955, 800 
Click 	
sleep, 50	
	
send {Escape}
sleep, 50

MouseMove, 100, 0, 0

sleep, 5000	



loop, 10{

						; заходим в багажник
sendinput, {r down}
sleep, 1000
mouseMove, 857, 685
Click

sendinput, {r Up}
	sleep, 3000

						; Листаем до нужных ячеек

mouseMove, 1373, 515	
MouseClick, WheelDown, , , countWheel, 50
sleep, unloadingFromCarSleep



if (Mod(correctItemPos,2)=1){
			mouseMove, 1255, 420, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1335, 420, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1415, 420, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1495, 420, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1255, 495, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1335, 495, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1415, 495, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1495, 495, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1255, 586, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1335, 586, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1415, 586, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1495, 586, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1255, 666, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1335, 666, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1415, 666, 3
			ContrlClick()
sleep, unloadingFromCarSleep
	        mouseMove, 1495, 666, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1255, 740, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1335, 740, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1415, 740, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1495, 740, 3
			ContrlClick()
sleep, unloadingFromCarSleep

mouseMove, 1255, 420
sleep, 100
MouseClick, WheelDown, , , 4, 50
sleep, 100


			mouseMove, 1255, 420, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1335, 420, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1415, 420, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1495, 420, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1255, 495, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1335, 495, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1415, 495, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1495, 495, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1255, 586, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1335, 586, 3
			ContrlClick()


}else{


mouseMove, 1415, 586, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1495, 586, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1255, 666, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1335, 666, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1415, 666, 3
			ContrlClick()
sleep, unloadingFromCarSleep
	        	mouseMove, 1495, 666, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1255, 740, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1335, 740, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1415, 740, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1495, 740, 3
			ContrlClick()
sleep, unloadingFromCarSleep


mouseMove, 1255, 420
sleep, 100
MouseClick, WheelDown, , , 4, 50
sleep, 100


mouseMove, 1255, 420, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1335, 420, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1415, 420, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1495, 420, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1255, 495, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1335, 495, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1415, 495, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1495, 495, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1255, 586, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1335, 586, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1415, 586, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1495, 586, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1255, 666, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1335, 666, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1415, 666, 3
			ContrlClick()
sleep, unloadingFromCarSleep
	        	mouseMove, 1495, 666, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1255, 740, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1335, 740, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1415, 740, 3
			ContrlClick()
sleep, unloadingFromCarSleep
			mouseMove, 1495, 740, 3
			ContrlClick()
sleep, unloadingFromCarSleep
}

send {Q} 				; выходим из багажника
sleep, 300
MouseMove, 100, 0, 0
	
sleep, 3000

						; продаем очередную партию
mouseMove, 955, 800 
Click 	
sleep, 50
send {Escape}
sleep, 50

MouseMove, 100, 0, 0

sleep, 3000

if(Mod(correctItemPos,2)=1){
countWheel:=countWheel+4
}else{
countWheel:=countWheel+8
}
correctItemPos:=correctItemPos+1

sleep, 50
}

Return

;-----------------------------------------------------------------------------------

Numpad0::Reload
PointReloadScript:
Reload

Numpad1::Pause
PointPause:
Pause

NumpadSub::ExitApp
GuiClose:
ExitApp
Return
