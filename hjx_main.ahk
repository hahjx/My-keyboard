;围绕capslock实现一系列不需要让双手离开键盘的快捷操作,用于编辑文档/代码使用
;CapsLock           |映射到enter  (使用send,{enter}光标在文本内容之间无法下移,和物理enter效果不一样,姑且用换行替代)
;CapsLock + ikjl    |对应上下左右
;CapsLock + u/p     |pgup/pgdown
;CapsLock + space   |切换输入法
;CapsLock + h/;     |home/end
;CapsLock + [       |backspace
;CapsLock + [       |delete
;CapsLock + -       |发送横线




CapsLock & n::
    send,{LButton}
    Return
CapsLock & m::
    send,{RButton}
    Return
CapsLock & q::
    return
CapsLock::
  send,{enter} 
  SetCapsLockState, alwaysoff
  return
CapsLock & j::send,{left}
CapsLock & l::send,{right}
CapsLock & i::send,{up}
CapsLock & k::send,{down}
CapsLock & u::
    send,{PgUp}
    return
CapsLock & o::
    send,{PgDn}
    return
CapsLock & Space::
    send,{ctrldown}{Space}
    send,{ctrlup}
    Return
capslock & `;::
    send,{End}
    Return
CapsLock & h::
    send,{Home}
    Return
CapsLock & p::
    send,{BackSpace}
    Return
CapsLock & w::
    send,{ctrldown}{w}
    send,{ctrlup}
    Return
CapsLock & t::
    send,{ctrldown}{t}
    send,{ctrlup}
    Return
CapsLock & f::
    send,{ctrldown}{Tab}
    send,{ctrlup}
    Return
CapsLock & d::
    send,{ctrldown}{ShiftDown}{Tab}
    send,{ctrlup}{ShiftUp}
    Return
CapsLock & s::
    send,{ctrldown}{s}
    send,{ctrlup}
    Return
CapsLock & r::
    send,{ctrldown}{r}
    send,{ctrlup}
    Return
CapsLock & y::
    send,{ctrldown}{BackSpace}
    send,{ctrlup}
    Return  
capslock & [::
    send,{Delete}
    Return
CapsLock & c::
    send,{ctrldown}{c}
    send,{ctrlup}
    Return
CapsLock & x::
    send,{ctrldown}{x}
    send,{ctrlup}
    Return
CapsLock & a::
    send,{ctrldown}{a}
    send,{ctrlup}
    Return

CapsLock & v::
    send,{ctrldown}{v}
    send,{ctrlup}
    Return
CapsLock & `::
    send,--------------------------------------------------------
    return
CapsLock & z::
    send,{ctrldown}{z}
    send,{ctrlup}
    return    
;围绕alt实现一系列任务切换的操作,用于快速切换任务
;Alt + i        |直接切换上一个任务并最大化
;Alt + i        |直接切换上一个任务并最大化
;Alt + k        |直接切换下一个任务并最大化
;Alt + j        |视图切换上一个任务
;Alt + l        |视图切换下一个任务
;Alt + d        |返回桌面
;Alt + 4        |退出当前程序

; LAlt & i::
;     send,{AltDown}{Esc}
;     send,{AltUp}
;     WinActivate,A
;     ;WinMaximize, A
; return
; LAlt & k::
;     send,{AltDown}{ShiftDown}{Esc}
;     send,{ShiftUp}
;     send,{AltUp}
;     WinActivate,A
;     ;WinMaximize,A
; return
; LAlt & j::ShiftAltTab
; LAlt & l::AltTab
Alt & i::
  Send, {shiftdown}{up}
  send,{shiftup}
  Return
Alt & k::
  Send, {shiftdown}{Down}
  send,{shiftup}
  Return
Alt & j::
  Send, {shiftdown}{Left}
  send,{shiftup}
  Return
Alt & l::
  Send, {shiftdown}{Right}
  send,{shiftup}
  Return
Alt & h::
  Send, {shiftdown}{Home}
  send,{shiftup}
  Return
Alt & `;::
  Send, {shiftdown}{End}
  send,{shiftup}
  Return

LAlt & CapsLock::AltTab
; LAlt & d::
;     send,{LWinDown}{d}
;     send,{LWinUp}
; return
LAlt & 4::
    send,{AltDown}{F4}
    send,{AltUp}
return

;鼠标相关快捷键
; LButton & WheelUp::
; MoveBRightness(1)
; return
 
; LButton & WheelDown::
; MoveBRightness(-1)
; return

;COLOR
CapsLock & e::
    MouseGetPos, a,b
    PixelGetColor, c,a,b,RGB
    MsgBox, color is %c%
    Clipboard :=c
    Clipboard := StrReplace(Clipboard, "0x","#")
Return



;m(mybase)
;s(everything)
;b(B站)
;a(百度)
;q(qq)
;w(微信)
;围绕run进行程序的启动
; CapsLock & m::
;     Run, D:\sf-mybase_ver735\mybase.exe
;     WinMaximize, A
;     return


; CapsLock & b::
;     Run,https://www.bilibili.com/

;     return

; ; CapsLock & a::
; ;     Run,https://www.baidu.com/
; ;     return

; ; CapsLock & q::
; ;     Run,D:\sf-QQ\Bin\QQScLauncher.exe
; ;     return

; CapsLock & w::
;     Run,D:\sf-WeChat\WeChat\WeChat.exe
;     return

rbutton::send,{rbutton}
rbutton & wheelup::


send,{volume_up}
return
rbutton & wheeldown::
send,{volume_down}
return

; SetScrollLockState, AlwaysOff
PrintScreen & Pause::
  DllCall("PowrProf\SetSuspendState", "int", 1, "int", 0, "int", 0)
  Return
; Pause::
;   DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)
;   Return