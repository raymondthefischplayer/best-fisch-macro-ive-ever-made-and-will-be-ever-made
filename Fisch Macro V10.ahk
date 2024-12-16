﻿#SingleInstance Force
setkeydelay, 0
setmousedelay, 0
setbatchlines, 0
CoordMode, Tooltip, Screen
CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
SetTitleMatchMode 2

;======    General Settings    ===================================================================;

KeyInputDelayForImportantKeys := 250
AutoLowGraphics := false
AutoCamera := true
AutoZoom := true
AutoLookDown := true
AutoBlur := true
AutoShutdown := false

; How long to wait after fishing before recasting the rod
RodRecastDelay := 1000

; How long to hold the cast for before releasing
HoldRodCastDuration := 1000

; How long to wait for the bobber to land in water
WaitForBobberDelay := 1000

; This is used for AutoCamera only for now
NavigationKey := "\"

;======    Shake Settings    =====================================================================;

; Use "Navigation" or "Click"
ShakeMode := "Click"
WhiteBarColorTolerance := 15
FishBarColorTolerance := 4

; Click Mode Settings
ShakeDelay := 100
ShakeBypassCounter := 10
ShakeFailedCounter := 50
ShakeColorTolerance := 5

; UI Navigation Settings
NavKeyDelay := 50
FailsafeTimer := 25

;======    Bar Minigame Settings    ==============================================================;

ManualBarSize := 0

BarSideRatio := 0.8
BarSideScanDelay := 200
BarSideFailsafe := 10
	
StableStrength := 2.5
UnstableStrength := 2.5
Division := 1.2

StabilizerSpamLoop := 5

RightAnkleBreakerMultiplier := 1
LeftAnkleBreakerMultiplier := 0.7

;=================================================================================================;

tooltip, Loading, tooltipSide, tooltip1, 1
calculations:
WinActivate, Roblox
if WinActive("Roblox")
	{
	WinMaximize, Roblox
	}
else
	{
	msgbox, where roblox bruh
	exitapp
	}
sleep 1000
WinGetActiveStats, Title, Width, Height, ScreenWidthLeft, ScreenHeightTop
CenterX := ScreenWidthLeft+Width/2
PixelSearch, , , CenterX, 1, CenterX, 1, 0xF3F3F3, 0, Fast
if (Errorlevel == 1)
	{
	ScreenHeightTop := ScreenHeightTop+23
	Height := Height-23
	}
ScreenWidthLeft := ScreenWidthLeft
ScreenWidthRight := ScreenWidthLeft+Width
ScreenHeightTop := ScreenHeightTop
ScreenHeightBottom := ScreenHeightTop+Height
tooltipSide := ScreenWidthLeft+(Width/20)
tooltipSpacing :=  ScreenHeightTop+(Height/2)
tooltip1 := tooltipSpacing-180
tooltip2 := tooltipSpacing-160
tooltip3 := tooltipSpacing-140
tooltip4 := tooltipSpacing-120
tooltip5 := tooltipSpacing-100
tooltip6 := tooltipSpacing-80
tooltip7 := tooltipSpacing-60
tooltip8 := tooltipSpacing-40
tooltip9 := tooltipSpacing-20
tooltip10 := tooltipSpacing
tooltip11 := tooltipSpacing+20
tooltip12 := tooltipSpacing+40
tooltip13 := tooltipSpacing+60
tooltip14 := tooltipSpacing+80
tooltip15 := tooltipSpacing+100
tooltip16 := tooltipSpacing+120
tooltip17 := tooltipSpacing+140
tooltip18 := tooltipSpacing+160
tooltip19 := tooltipSpacing+180
tooltip20 := tooltipSpacing+200
EndShakeScanLeft := ScreenWidthLeft+(Width/2.0078)
EndShakeScanRight := ScreenWidthLeft+(Width/1.9922)
EndShakeScanTop := ScreenHeightTop+(Height/1.1842)
EndShakeScanBottom := ScreenHeightTop+(Height/1.1501)
ClickShakeLeft := ScreenWidthLeft+(Width/4.1967)
ClickShakeRight := ScreenWidthLeft+(Width/1.3128)
ClickShakeTop := ScreenHeightTop+(Height/4.4307)
ClickShakeBottom := ScreenHeightTop+(Height/1.0635)
FishScanLeft := ScreenWidthLeft+(Width/3.3464)
FishScanRight := ScreenWidthRight-(Width/3.3464)
FishScanTop := EndShakeScanTop
FishScanBottom := EndShakeScanBottom
FishTrackHeight := ScreenHeightTop+(Height/1.0397)
ResolutionScaling := 2560/Width
MiddleOfScreenX := ScreenWidthLeft+(Width/2)
MiddleOfScreenY := ScreenHeightTop+(Height/2)
CameraCheckLeft := ScreenWidthLeft+(Width/2.1694)
CameraCheckRight := ScreenWidthLeft+(Width/1.8550)
CameraCheckTop := ScreenHeightTop+(Height/1.1612)
CameraCheckBottom := ScreenHeightTop+Height
tooltip, Runtime: 0h 0m 0s, tooltipSide, tooltip1, 1
tooltip, Made By AsphaltCake, tooltipSide, tooltip2, 2
tooltip, Press P To Begin, tooltipSide, tooltip4, 4
tooltip, Press O To Reload, tooltipSide, tooltip5, 5
tooltip, Press M To Exit, tooltipSide, tooltip6, 6
tooltip, Navigation Key: %NavigationKey%, tooltipSide, tooltip8, 8
tooltip, Shake Mode: %ShakeMode%, tooltipSide, tooltip9, 9

if (AutoLowGraphics == 1)
	{
	tooltip, AutoLowGraphics: true, tooltipSide, tooltip11, 11
	}
else
	{
	tooltip, AutoLowGraphics: false, tooltipSide, tooltip11, 11
	}
	
if (AutoCamera == 1)
	{
	tooltip, AutoCamera: true, tooltipSide, tooltip12, 12
	}
else
	{
	tooltip, AutoCamera: false, tooltipSide, tooltip12, 12
	}
	
if (AutoZoom == 1)
	{
	tooltip, AutoZoom: true, tooltipSide, tooltip13, 13
	}
else
	{
	tooltip, AutoZoom: false, tooltipSide, tooltip13, 13
	}
	
if (AutoLookDown == 1)
	{
	tooltip, AutoLookDown: true, tooltipSide, tooltip14, 14
	}
else
	{
	tooltip, AutoLookDown: false, tooltipSide, tooltip14, 14
	}
	
if (AutoBlur == 1)
	{
	tooltip, AutoBlur: true, tooltipSide, tooltip15, 15
	}
else
	{
	tooltip, AutoBlur: false, tooltipSide, tooltip15, 15
	}
	
if (AutoShutdown == 1)
	{
	tooltip, AutoShutdown: true, tooltipSide, tooltip16, 16
	}
else
	{
	tooltip, AutoShutdown: false, tooltipSide, tooltip16, 16
	}
return

;=================================================================================================;

if (AutoLowGraphics != true and AutoLowGraphics != false)
	{
	msgbox, AutoLowGraphics has to be true or false (check spelling)
	exitapp
	}
if (AutoCamera != true and AutoCamera != false)
	{
	msgbox, AutoCamera has to be true or false (check spelling)
	exitapp
	}
if (AutoZoom != true and AutoZoom != false)
	{
	msgbox, AutoZoom has to be true or false (check spelling)
	exitapp
	}
if (AutoLookDown != true and AutoLookDown != false)
	{
	msgbox, AutoLookDown has to be true or false (check spelling)
	exitapp
	}
if (AutoBlur != true and AutoBlur != false)
	{
	msgbox, AutoBlur has to be true or false (check spelling)
	exitapp
	}
if (AutoShutdown != true and AutoShutdown != false)
	{
	msgbox, AutoShutdown has to be true or false (check spelling)
	exitapp
	}
if (ShakeMode != "Navigation" and ShakeMode != "Click")
	{
	msgbox, ShakeMode has to be "Navigation" or "Click" (check spelling)
	exitapp
	}

;=================================================================================================;

COCK:
COCKERS++
if (COCKERS >= 60)
{
COCKERS := 0
COCKERM++
if (COCKERM >= 60)
{
COCKERM := 0
COCKERH++
}
}
tooltip, Runtime: %COCKERH%h %COCKERM%m %COCKERS%s, tooltipSide, tooltip1, 1
if WinActive("Roblox")
	{
	return
	}
else
	{
	if (AutoShutdown == true)
		{
		Shutdown, 4
		}
	exitapp
	}

$o:: reload
return
$m:: exitapp
return
$p::
COCKERS := 0
COCKERM := 0
COCKERH := 0
TimerToggleOnce := true
settimer, COCK, 1000
gosub, calculations
tooltip, Press O To Reload, tooltipSide, tooltip4, 4
tooltip, Press M To Exit, tooltipSide, tooltip5, 5
tooltip, , , , 6
tooltip, , , , 8
tooltip, , , , 9
tooltip, , , , 10
tooltip, , , , 11
tooltip, , , , 12
tooltip, , , , 13
tooltip, , , , 14
tooltip, , , , 15
tooltip, , , , 16

if (AutoLowGraphics == true)
	{
	tooltip, Current Task: Lowering Graphics, tooltipSide, tooltip7, 7
	send {shift down}
	sleep %KeyInputDelayForImportantKeys%
		loop, 15
		{
		send {f10 up}
		sleep 100
		send {f10 down}
		sleep 100
		send {f10 up}
		sleep 100
		}
	sleep 150
	send {shift up}
	sleep %KeyInputDelayForImportantKeys%
	send {shift down}
	sleep %KeyInputDelayForImportantKeys%
	send {shift up}
	sleep %KeyInputDelayForImportantKeys%
	}

if (AutoCamera == true)
	{
	tooltip, Current Task: Checking Camera Mode, tooltipSide, tooltip7, 7
	PixelSearch, , , CameraCheckLeft, CameraCheckTop, CameraCheckRight, CameraCheckBottom, 0xFFFFFF, 0, Fast
	if (Errorlevel == 0)
		{
		tooltip, Current Task: Enabling Camera Mode, tooltipSide, tooltip7, 7
		sleep %KeyInputDelayForImportantKeys%
		send {2 up}
		sleep %KeyInputDelayForImportantKeys%
		send {2 down}
		sleep %KeyInputDelayForImportantKeys%
		send {2 up}
		sleep %KeyInputDelayForImportantKeys%
		send {1 up}
		sleep %KeyInputDelayForImportantKeys%
		send {1 down}
		sleep %KeyInputDelayForImportantKeys%
		send {1 up}
		sleep %KeyInputDelayForImportantKeys%
		send {%NavigationKey% up}
		sleep %KeyInputDelayForImportantKeys%
		send {%NavigationKey% down}
		sleep %KeyInputDelayForImportantKeys%
		send {%NavigationKey% up}
		sleep %KeyInputDelayForImportantKeys%
		loop, 5
			{
			send {right down}
			sleep 100
			send {right up}
			sleep 100
			}
		sleep 150
		send {enter down}
		sleep %KeyInputDelayForImportantKeys%
		send {enter up}
		sleep %KeyInputDelayForImportantKeys%
		}
	}
	
if (AutoZoom == true)
	{
	tooltip, Current Task: Zooming In, tooltipSide, tooltip7, 7
	sleep %KeyInputDelayForImportantKeys%
	loop, 15
		{
		send {wheelup}
		sleep 50
		}
	sleep 200
	send {wheeldown}
	}

goto FirstTimeRunSkip
StartMacro:
tooltip, Current Task: Waiting For RodRecastDelay (%RodRecastDelay%), tooltipSide, tooltip7, 7
sleep %RodRecastDelay%
FirstTimeRunSkip:

if (AutoLookDown == true)
	{
	tooltip, Current Task: Looking Down, tooltipSide, tooltip7, 7
	sleep %KeyInputDelayForImportantKeys%
	mousemove, %MiddleOfScreenX%, %MiddleOfScreenY%
	sleep %KeyInputDelayForImportantKeys%
	send {rbutton up}
	sleep %KeyInputDelayForImportantKeys%
	send {rbutton down}
	sleep %KeyInputDelayForImportantKeys%
	DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", 10000)
	sleep %KeyInputDelayForImportantKeys%
	send {rbutton up}
	sleep %KeyInputDelayForImportantKeys%
	mousemove, %MiddleOfScreenX%, %MiddleOfScreenY%
	}
	
if (AutoBlur == true)
	{
	tooltip, Current Task: Blurring Screen (Opening Menu), tooltipSide, tooltip7, 7
	sleep %KeyInputDelayForImportantKeys%
	send {m up}
	sleep %KeyInputDelayForImportantKeys%
	send {m down}
	sleep %KeyInputDelayForImportantKeys%
	send {m up}
	sleep %KeyInputDelayForImportantKeys%
	}

tooltip, Current Task: Casting Rod, tooltipSide, tooltip7, 7
send {lbutton up}
sleep %KeyInputDelayForImportantKeys%
send {lbutton down}
sleep %HoldRodCastDuration%
send {lbutton up}
tooltip, Current Task: Waiting For WaitForBobberDelay (%WaitForBobberDelay%), tooltipSide, tooltip7, 7
sleep %WaitForBobberDelay%

if (ShakeMode == "Click")
goto ClickShakeOnce
if (ShakeMode == "Navigation")
goto NavigationShakeOnce

ClickShakeOnce:
tooltip, Current Task: Shaking, tooltipSide, tooltip7, 7
tooltip, Shake Bypass: 0/%ShakeBypassCounter%, tooltipSide, tooltip8, 8
tooltip, Fail Shake Counter: 0/%ShakeFailedCounter%, tooltipSide, tooltip9, 9
ShakeCountFail := 0
MemoryX := 0
MemoryY := 0
ShakeRedo:
PixelSearch, ShakeX, ShakeY, ClickShakeLeft, ClickShakeTop, ClickShakeRight, ClickShakeBottom, 0xFFFFFF, %ShakeColorTolerance%, Fast
if (Errorlevel == 0)
	{
	ShakeCountFail := 0
	tooltip, Fail Shake Counter: %ShakeCountFail%/%ShakeFailedCounter%, tooltipSide, tooltip9, 9
	if (ShakeX != MemoryX and ShakeY != MemoryY)
		{
		ShakeCount := 0
		tooltip, Shake Bypass: %ShakeCount%/%ShakeBypassCounter%, tooltipSide, tooltip8, 8
		click, %ShakeX% %ShakeY%
		sleep %ShakeDelay%
		MemoryX := ShakeX
		MemoryY := ShakeY
		goto ShakeRedo
		}
	else
		{
		ShakeCount++
		tooltip, Shake Bypass: %ShakeCount%/%ShakeBypassCounter%, tooltipSide, tooltip8, 8
		if (ShakeCount > ShakeBypassCounter)
		MemoryX := 0
		MemoryY := 0
		sleep %ShakeDelay%
		goto ShakeRedo
		}
	}
else
	{
		{
		PixelSearch, FishX, FishY, FishScanLeft, FishScanTop, FishScanRight, FishScanBottom, 0x5B4B43, %FishBarColorTolerance%, Fast
		if (Errorlevel == 0)
			{
			goto CalculateBarSize
			}
		else
			{
			ShakeCountFail++
			tooltip, Fail Shake Counter: %ShakeCountFail%/%ShakeFailedCounter%, tooltipSide, tooltip9, 9
			if (ShakeCountFail > ShakeFailedCounter)
				{
				goto StartMacro
				}
			sleep %ShakeDelay%
			goto ShakeRedo
			}
		}
	}

NavigationFailsafe:
NavCounter++
tooltip, Fail Shake Counter: %NavCounter%/%FailsafeTimer%, tooltipSide, tooltip8, 8
if (NavCounter > FailsafeTimer)
	{
	settimer, NavigationFailsafe, off
	EndThisShit := true
	}
return

NavigationShakeOnce:
tooltip, Current Task: Shaking, tooltipSide, tooltip7, 7
tooltip, Fail Shake Counter: 0/%FailsafeTimer%, tooltipSide, tooltip8, 8
NavCounter := 0
EndThisShit := false
send {%NavigationKey% down}
sleep %KeyInputDelayForImportantKeys%
send {%NavigationKey% up}
sleep %KeyInputDelayForImportantKeys%
settimer, NavigationFailsafe, 1000
NavigationRedo:
PixelSearch, FishX, FishY, FishScanLeft, FishScanTop, FishScanRight, FishScanBottom, 0x5B4B43, %FishBarColorTolerance%, Fast
if (Errorlevel == 0)
	{
	settimer, NavigationFailsafe, off
	sleep 100
	goto CalculateBarSize
	}
else
	{
	if (EndThisShit == true)
		{
		goto StartMacro
		}
	send {s down}
	sleep %NavKeyDelay%
	send {s up}
	sleep %NavKeyDelay%
	send {enter down}
	sleep %NavKeyDelay%
	send {enter up}
	sleep %NavKeyDelay%
	goto NavigationRedo
	}
	
CalculateBarSize:
BarCounter := 0
tooltip, Current Task: Calculating Bar Size, tooltipSide, tooltip7, 7
tooltip, Bar Size:, tooltipSide, tooltip8, 8
tooltip, Fail Bar Counter: 0/%ShakeFailedCounter%, tooltipSide, tooltip9, 9
tooltip, , , , 8
tooltip, , , , 9
PixelSearch, WhiteX, , FishScanLeft, FishScanTop, FishScanRight, FishScanBottom, 0xFFFFFF, %WhiteBarColorTolerance%, Fast
if (Errorlevel == 0)
	{
	if (ManualBarSize <> 0)
		{
		HalfBar := ManualBarSize/2
		Fullbar := ManualBarSize
		}
	else
		{
		HalfBar := FishX-WhiteX
		FullBar := HalfBar*2
		}
	}
else
	{
	BarCounter++
	tooltip, Fail Bar Counter: %BarCounter%/%ShakeFailedCounter%, tooltipSide, tooltip9, 9
	if (BarCounter > ShakeFailedCounter)
		{
		goto StartMacro
		}
	sleep %ShakeDelay%
	goto CalculateBarSize
	}

tooltip, Current Task: Bar Minigame, tooltipSide, tooltip7, 7
tooltip, Bar Size: %FullBar%, tooltipSide, tooltip8, 8
tooltip, , , , 9
tooltip, Direction:, tooltipSide, tooltip10, 10
tooltip, Forward Delay:, tooltipSide, tooltip11, 11
tooltip, Counter Delay:, tooltipSide, tooltip12, 12

AnkleBreakingDelay := 0
CrossRightLeft := false
CrossLeftRight := false
MaxLeft := FishScanLeft+(FullBar*BarSideRatio)
MaxRight := FishScanRight-(FullBar*BarSideRatio)
MaxLeftToggle := false
MaxRightToggle := false
tooltip, |, %MaxLeft%, %FishTrackHeight%, 17
tooltip, |, %MaxRight%, %FishTrackHeight%, 18

BarMinigame:
PixelSearch, FishX, , FishScanLeft, FishScanTop, FishScanRight, FishScanBottom, 0x5B4B43, %FishBarColorTolerance%, Fast
if (Errorlevel == 0)
	{
	tooltip, ., %FishX%, %FishTrackHeight%, 20
	if (FishX > MaxRight)
		{
		if (MaxRightToggle == false)
			{
			AnkleBreakingDelay := 0
			CrossRightLeft := false
			CrossLeftRight := false
			tooltip, >, %MaxRight%, %FishTrackHeight%, 19
			tooltip, Direction: Max Right, tooltipSide, tooltip10, 10
			tooltip, Forward Delay: Infinite, tooltipSide, tooltip11, 11
			tooltip, Counter Delay: 0, tooltipSide, tooltip12, 12
			tooltip, Ankle Break Delay: %AnkleBreakingDelay%, tooltipSide, tooltip13, 13
			
			tooltip, Match State: false, tooltipSide, tooltip15, 15
			tooltip, Max Side Failsafe: 0/%BarSideFailsafe%, tooltipSide, tooltip18, 18
			sleep 50
			send {lbutton down}
			Memory := 0
			tooltip, Memory Value: %Memory%, tooltipSide, tooltip17, 17
			Counter := 0
			MaxRightToggle := true
			MaxRightCheck:
			PixelSearch, ArrowX, , FishScanLeft, FishScanTop, FishScanRight, FishScanBottom, 0x878584, %IncreaseIfCantFindFishBar%, Fast	
			if (Errorlevel == 0)
				{
				tooltip, Match Value: %ArrowX%, tooltipSide, tooltip16, 16
				tooltip, Memory Value: %Memory%, tooltipSide, tooltip17, 17
				if (ArrowX == Memory)
					{
					tooltip, Match State: true, tooltipSide, tooltip15, 15
					goto BarMinigame
					}
				Memory := ArrowX
				}
			Counter++
			tooltip, Max Side Failsafe: %Counter%/%BarSideFailsafe%, tooltipSide, tooltip18, 18
			if (Counter >= BarSideFailsafe)
			goto BarMinigame
			sleep %BarSideScanDelay%
			goto MaxRightCheck
			}
		tooltip, Waiting For Exit, tooltipSide, tooltip18, 18
		sleep 1
		goto BarMinigame
		}
		
	if (FishX < MaxLeft)
		{
		if (MaxRightToggle == false)
			{
			AnkleBreakingDelay := 0
			CrossRightLeft := false
			CrossLeftRight := false
			tooltip, <, %MaxLeft%, %FishTrackHeight%, 19
			tooltip, Direction: Max Left, tooltipSide, tooltip10, 10
			tooltip, Forward Delay: Infinite, tooltipSide, tooltip11, 11
			tooltip, Counter Delay: 0, tooltipSide, tooltip12, 12
			tooltip, Ankle Break Delay: %AnkleBreakingDelay%, tooltipSide, tooltip13, 13
			
			tooltip, Match State: false, tooltipSide, tooltip15, 15
			tooltip, Max Side Failsafe: 0/%BarSideFailsafe%, tooltipSide, tooltip18, 18
			sleep 50
			send {lbutton up}
			Memory := 0
			tooltip, Memory Value: %Memory%, tooltipSide, tooltip17, 17
			Counter := 0
			MaxRightToggle := true
			MaxLeftCheck:
			PixelSearch, ArrowX, , FishScanLeft, FishScanTop, FishScanRight, FishScanBottom, 0x878584, %IncreaseIfCantFindFishBar%, Fast	
			if (Errorlevel == 0)
				{
				tooltip, Match Value: %ArrowX%, tooltipSide, tooltip16, 16
				tooltip, Memory Value: %Memory%, tooltipSide, tooltip17, 17
				if (ArrowX == Memory)
					{
					tooltip, Match State: true, tooltipSide, tooltip15, 15
					goto BarMinigame
					}
				Memory := ArrowX
				}
			Counter++
			tooltip, Max Side Failsafe: %Counter%/%BarSideFailsafe%, tooltipSide, tooltip18, 18
			if (Counter >= BarSideFailsafe)
			goto BarMinigame
			sleep %BarSideScanDelay%
			goto MaxLeftCheck
			}
		tooltip, Waiting For Exit, tooltipSide, tooltip18, 18
		sleep 1
		goto BarMinigame
		}

	tooltip, , , , 15
	tooltip, , , , 16
	tooltip, , , , 17
	tooltip, , , , 18
	
	MaxLeftToggle := false
	MaxRightToggle := false
	PixelSearch, WhiteX, , FishScanLeft, FishScanTop, FishScanRight, FishScanBottom, 0xFFFFFF, %WhiteBarColorTolerance%, Fast
	if (Errorlevel == 0)
		{
		WhiteX := WhiteX+HalfBar
		tooltip, ., %WhiteX%, %FishTrackHeight%, 19
		Direction := FishX-WhiteX
		if (Direction > 0)
			{
			tooltip, >, %WhiteX%, %FishTrackHeight%, 19
			Difference := (FishX-WhiteX)*ResolutionScaling*StableStrength
			CounterDifference := Difference/Division
			tooltip, Direction: >, tooltipSide, tooltip10, 10
			tooltip, Forward Delay: %Difference%, tooltipSide, tooltip11, 11
			tooltip, Counter Delay: %CounterDifference%, tooltipSide, tooltip12, 12
			send {lbutton down}
			CrossLeftRight := true
			if (CrossRightLeft == true)
				{
				AnkleBreakingDelay := AnkleBreakingDelay*RightAnkleBreakerMultiplier
				CrossRightLeft := false
				sleep %AnkleBreakingDelay%
				AnkleBreakingDelay := 0
				tooltip, Ankle Break Delay: %AnkleBreakingDelay%, tooltipSide, tooltip13, 13
				}
			sleep %Difference%
				PixelSearch, FishX, , FishScanLeft, FishScanTop, FishScanRight, FishScanBottom, 0x5B4B43, %FishBarColorTolerance%, Fast
				if (FishX > MaxRight)
					{
					goto BarMinigame
					}
			send {lbutton up}
			AnkleBreakingDelay := AnkleBreakingDelay+(Difference-CounterDifference)
			tooltip, Ankle Break Delay: %AnkleBreakingDelay%, tooltipSide, tooltip13, 13
			sleep %CounterDifference%
			loop, %StabilizerSpamLoop%
				{
				send {lbutton down}
				send {lbutton up}
				}
			goto BarMinigame
			}
		else
			{
			tooltip, <, %WhiteX%, %FishTrackHeight%, 19
			Difference := (WhiteX-FishX)*ResolutionScaling*StableStrength
			CounterDifference := Difference/Division
			tooltip, Direction: <, tooltipSide, tooltip10, 10
			tooltip, Forward Delay: %Difference%, tooltipSide, tooltip11, 11
			tooltip, Counter Delay: %CounterDifference%, tooltipSide, tooltip12, 12
			send {lbutton up}
			CrossRightLeft := true
			if (CrossLeftRight == true)
				{
				AnkleBreakingDelay := AnkleBreakingDelay*LeftAnkleBreakerMultiplier
				CrossLeftRight := false
				sleep %AnkleBreakingDelay%
				AnkleBreakingDelay := 0
				tooltip, Ankle Break Delay: %AnkleBreakingDelay%, tooltipSide, tooltip13, 13
				}
			sleep %Difference%
				PixelSearch, FishX, , FishScanLeft, FishScanTop, FishScanRight, FishScanBottom, 0x5B4B43, %FishBarColorTolerance%, Fast
				if (FishX < MaxLeft)
					{
					goto BarMinigame
					}
			send {lbutton down}
			AnkleBreakingDelay := AnkleBreakingDelay+(Difference-CounterDifference)
			tooltip, Ankle Break Delay: %AnkleBreakingDelay%, tooltipSide, tooltip13, 13
			sleep %CounterDifference%
			loop, %StabilizerSpamLoop%
				{
				send {lbutton up}
				send {lbutton down}
				}
			goto BarMinigame
			}
		}
	else
		{
		PixelSearch, ArrowX, , FishScanLeft, FishScanTop, FishScanRight, FishScanBottom, 0x878584, %IncreaseIfCantFindFishBar%, Fast
		if (Errorlevel == 0)
			{
			Direction := FishX-ArrowX
			if (Direction > 0)
				{
				tooltip, >, %ArrowX%, %FishTrackHeight%, 19
				Difference := (HalfBar)*ResolutionScaling*UnstableStrength
				CounterDifference := Difference/Division
				tooltip, Direction: >>>, tooltipSide, tooltip10, 10
				tooltip, Forward Delay: %Difference%, tooltipSide, tooltip11, 11
				tooltip, Counter Delay: %CounterDifference%, tooltipSide, tooltip12, 12
				send {lbutton down}
				if (CrossRightLeft == true)
					{
					AnkleBreakingDelay := AnkleBreakingDelay*RightAnkleBreakerMultiplier
					CrossRightLeft := false
					sleep %AnkleBreakingDelay%
					AnkleBreakingDelay := 0
					tooltip, Ankle Break Delay: %AnkleBreakingDelay%, tooltipSide, tooltip13, 13
					}
				sleep %Difference%
					PixelSearch, FishX, , FishScanLeft, FishScanTop, FishScanRight, FishScanBottom, 0x5B4B43, %FishBarColorTolerance%, Fast
					if (FishX > MaxRight)
						{
						goto BarMinigame
						}
				send {lbutton up}
				AnkleBreakingDelay := AnkleBreakingDelay+(Difference-CounterDifference)
				tooltip, Ankle Break Delay: %AnkleBreakingDelay%, tooltipSide, tooltip13, 13
				sleep %CounterDifference%
				loop, %StabilizerSpamLoop%
					{
					send {lbutton down}
					send {lbutton up}
					}
				goto BarMinigame
				}
			else
				{
				tooltip, <, %ArrowX%, %FishTrackHeight%, 19
				Difference := (HalfBar)*ResolutionScaling*UnstableStrength
				CounterDifference := Difference/Division
				tooltip, Direction: <<<, tooltipSide, tooltip10, 10
				tooltip, Forward Delay: %Difference%, tooltipSide, tooltip11, 11
				tooltip, Counter Delay: %CounterDifference%, tooltipSide, tooltip12, 12
				send {lbutton up}
				CrossRightLeft := true
				if (CrossLeftRight == true)
					{
					AnkleBreakingDelay := AnkleBreakingDelay*LeftAnkleBreakerMultiplier
					CrossLeftRight := false
					sleep %AnkleBreakingDelay%
					AnkleBreakingDelay := 0
					tooltip, Ankle Break Delay: %AnkleBreakingDelay%, tooltipSide, tooltip13, 13
					}
				sleep %Difference%
					PixelSearch, FishX, , FishScanLeft, FishScanTop, FishScanRight, FishScanBottom, 0x5B4B43, %FishBarColorTolerance%, Fast
					if (FishX < MaxLeft)
						{
						goto BarMinigame
						}
				send {lbutton down}
				AnkleBreakingDelay := AnkleBreakingDelay+(Difference-CounterDifference)
				tooltip, Ankle Break Delay: %AnkleBreakingDelay%, tooltipSide, tooltip13, 13
				sleep %CounterDifference%
				loop, %StabilizerSpamLoop%
					{
					send {lbutton up}
					send {lbutton down}
					}
				goto BarMinigame
				}
			}
		else
			{
			sleep 1
			goto BarMinigame
			}
		}
	}
else
	{
	tooltip, , , , 7
	tooltip, , , , 10
	tooltip, , , , 11
	tooltip, , , , 12
	tooltip, , , , 13
	tooltip, , , , 15
	tooltip, , , , 16
	tooltip, , , , 17
	tooltip, , , , 18
	tooltip, , , , 19
	tooltip, , , , 20
	send {lbutton up}
	sleep 50
	goto StartMacro
	}