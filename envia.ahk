#SingleInstance, Force ; Garante que apenas uma instância do script é executada


openWhatsApp(contact,wayFile) {
    Run, https://web.whatsapp.com/
    Sleep, 10000
    WinGetActiveTitle, CurrentTitle ; Obtém o título da janela ativa
    Sleep, 200
    WinMaximize, %CurrentTitle% ; Maximiza a janela ativa
    Sleep, 5000
    MouseClick, Left, 198, 158
    Sleep, 1000
    Send, %contact% ; Usa a variável contact passada na função
    Sleep, 2000
    Send, {Enter}
    Sleep, 5000
    Sleep, 5000
    loop, 16{
        Send, {Tab}
        Sleep, 200
    }
    Sleep, 1000
    Send, {Enter}
    Sleep, 1000
    loop, 8{
        Send, {Up}
        Sleep, 200
    }
    Sleep, 1000
    Send, {Enter}
    Sleep, 1000
    Send, %wayFile% ; Usa a variável wayFile passada na função
    Sleep, 2000
    Send, {Enter}
    Sleep, 2000
    Send, {Enter}
    Sleep, 5000
    Send, !{F4}
    Sleep, 2000
    return
}

; Agora você pode chamar a função openWhatsApp passando o contato desejado como argumento
openWhatsApp("pethrus","C:\Users\Pethrus\Documents\teste.pdf")


;Guilherme presidente
;helio presidente
;Lucas dia 2

