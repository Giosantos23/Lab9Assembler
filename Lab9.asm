; Universidad del Valle de Guatemala
; Organización de Computadoras y Assembler
; Isabella Miralles 22293, Giovanni Santos 22523
; Descripción: Evaluador de régimen apropiado en SAT y obligaciones fiscales
; 15/05/2023

.386
.model flat, stdcall, c

.stack 4096

.data
includelib libucrt.lib
includelib legacy_stdio_definitions.lib
includelib libcmt.lib
includelib libvcruntime.lib
    factu DD 0 

    ;define facturacion de enero a diciembre de 2022

    enero DW 1000
    IVAenero DD ?

    febrero DW 256
    IVAfebrero DD ?

    marzo DW 9876
    IVAmarzo DD ?

    abril DW 2368
    IVAabril DD ?

    mayo DW 8765
    IVAmayo DD ?

    junio DW 8765
    IVAjunio DD ?

    julio DW 8765
    IVAjulio DD ?

    agosto DW 8765
    IVAagosto DD ?

    septiembre DW 456
    IVAseptiembre DD ?

    octubre DW 1234
    IVAoctubre DD ?

    noviembre DW 638
    IVAnoviembre DD ?

    diciembre DW 8963
    IVAdiciembre DD ?

    ;se muestra la factura con formato de string 
    ;se asigna a cada linea de mes facturado con msg#, que luego sera impreso
    msg1 byte "01/2022 | NIT:13265371 | monto facturado : 1000 | IVA: %d",0Ah,0
    msg2 byte "02/2022 | NIT:13265371 | monto facturado: 256 | IVA: %d",0Ah,0
    msg3 byte "03/2022 | NIT:13265371 | monto facturado: 9876 | IVA: %d",0Ah,0
    msg4 byte "04/2022 | NIT:13265371 | monto facturado: 456 | IVA: %d",0Ah,0
    msg5 byte "05/2022 | NIT:13265371 | monto facturado: 1234 | IVA: %d",0Ah,0
    msg6 byte "06/2022 | NIT:13265371 | monto facturado: 638 | IVA: %d",0Ah,0
    msg7 byte "07/2022 | NIT:13265371 | monto facturado: 8963 | IVA: %d",0Ah,0

    msg8 byte "08/2022 | NIT:13265371 | monto facturado: 387 | IVA: %d",0Ah,0
    msg9 byte "09/2022 | NIT:13265371 | monto facturado: 102 | IVA: %d",0Ah,0
    msg10 byte "10/2022 | NIT:13265371 | monto facturado: 489 | IVA: %d",0Ah,0
    msg11 byte "11/2022 | NIT:13265371 | monto facturado: 2368 | IVA: %d",0Ah,0
    msg12 byte "12/2022 | NIT:13265371 | monto facturado: 8765 | IVA: %d",0Ah,0

    ;se muestra el mensaje de tipo de contribuyente que luego sera impreso al calcularlo 
    msg13 byte "Monto de facturacion anual : Q%d",0Ah,0 
    msg14 byte "pequenio contribuyente" ,0Ah,0
    msg15 byte "Actualice a IVA general",0Ah,0 

.code

; se llama a la funcion printf y exit con extern
extern printf:near
extern exit:near


public main
main proc

    ; Calculo de IVA Enero 
    mov eax,0 ;se guarda valor 0 en eax

    mov ax, enero ;se carga el valor establecido en variable respectiva al mes 
    imul ax, 5 ;se multiplica por 5 al valor del mes
    mov cx, 100 ;posiciona el valor para dividir
    mov dx, 0 ; vuelve 0 a dx
    idiv cx ;divide por 100, guardado en cx
    mov IVAenero,eax ;se guarda el valor operado del IVA en la variable establecida


    push dword ptr [IVAenero] ;se empuja el valor del IVA por mes
    push offset msg1; push con direccion de memoria
    call printf ; llama a la funcion de imprimir
    push 0 ; realiza la impresion del valor en la factura
    ;se repite el proceso para el IVA de cada mes, solo cambian las variables utilizadas 

       ; Calculo de IVA febrero 
    mov eax,0

    mov ax, febrero
    imul ax, 5
    mov cx, 100
    mov dx, 0
    idiv cx
    mov IVAfebrero,eax


    push dword ptr [IVAfebrero]
    push offset msg2
    call printf
    push 0

       ; Calculo de IVA marzo 
    mov eax,0

    mov ax, marzo
    imul ax, 5
    mov cx, 100
    mov dx, 0
    idiv cx
    mov IVAmarzo,eax


    push dword ptr [IVAmarzo]
    push offset msg3
    call printf
    push 0

       ; Calculo de IVA abril 

    mov eax,0

    mov ax, abril
    imul ax, 5
    mov cx, 100
    mov dx, 0
    idiv cx
    mov IVAabril,eax

    push dword ptr [IVAabril]
    push offset msg4
    call printf
    push 0

           ; Calculo de IVA Mayo 

    mov eax,0
    mov ax, mayo
    imul ax, 5
    mov cx, 100
    mov dx, 0
    idiv cx
    mov IVAmayo,eax

    push dword ptr [IVAmayo]
    push offset msg5
    call printf
    push 0

           ; Calculo de IVA junio 

    mov eax,0

    mov ax, junio
    imul ax, 5
    mov cx, 100
    mov dx, 0
    idiv cx
    mov IVAjunio,eax

    push dword ptr [IVAjunio]
    push offset msg6
    call printf
    push 0

           ; Calculo de IVA julio

    mov eax,0
    mov ax, julio
    imul ax, 5
    mov cx, 100
    mov dx, 0
    idiv cx
    mov IVAjulio,eax

    push dword ptr [IVAjulio]
    push offset msg7
    call printf
    push 0

           ; Calculo de IVA agosto 

    mov eax,0

    mov ax, agosto
    imul ax, 5
    mov cx, 100
    mov dx, 0
    idiv cx
    mov IVAagosto,eax

    push dword ptr [IVAagosto]
    push offset msg8
    call printf
    push 0

          ; Calculo de IVA septiembre 

    mov eax,0

    mov ax, septiembre
    imul ax, 5
    mov cx, 100
    mov dx, 0
    idiv cx
    mov IVAseptiembre,eax

    push dword ptr [IVAseptiembre]
    push offset msg9
    call printf
    push 0

          ; Calculo de IVA octubre

    mov eax,0

    mov ax, octubre
    imul ax, 5
    mov cx, 100
    mov dx, 0
    idiv cx
    mov IVAoctubre,eax

    push dword ptr [IVAoctubre]
    push offset msg10
    call printf
    push 0

         ; Calculo de IVA noviembre 

    mov eax,0

    mov ax, noviembre
    imul ax, 5
    mov cx, 100
    mov dx, 0
    idiv cx
    mov IVAnoviembre,eax

     push dword ptr [IVAnoviembre]
     push offset msg11
     call printf
     push 0

         ; Calculo de IVA diciembre

     mov eax,0

    mov ax, diciembre
    imul ax, 5
    mov cx, 100
    mov dx, 0
    idiv cx
    mov IVAdiciembre,eax

     push dword ptr [IVAdiciembre]
     push offset msg12
     call printf
     push 0

        ; Calculo monto de facturacion anual
     mov ax,enero
     add ax,febrero
     add ax,marzo
     add ax,abril
     add ax,mayo
     add ax,junio
     add ax,julio
     add ax,agosto
     add ax,septiembre
     add ax,octubre
     add ax,noviembre
     add ax,diciembre
     mov factu,eax

        ;llama para imprimir factura con monto
     push dword ptr [factu]
     push offset msg13
     call printf
     push 0
    
        ;si es mayor a 150,000 salta a 
     mov eax, factu
     cmp eax, 150000
    
     jg mayorA

        ; Es pequeño contribuyente
     push offset msg14
     call printf
     add esp, 7

     jmp salir

mayorA:
        ; IVA
     push offset msg15
     call printf
     add esp, 7



salir:

     push 0
     call exit

RET
main endp
end