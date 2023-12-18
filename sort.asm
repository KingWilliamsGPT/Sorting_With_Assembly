section .data
    array:  dd 1, 2, 5, 4, 5
    arrayLen: equ 5      ; point to end of array
    NIB: equ 4


section .text
    global main
main:
    mov eax, array
    mov ebx, arrayLen
    call bubbleSort
    ret

bubbleSort:
    ; eax: arrayStartAddress
    ; ebx: arrayLen
    pusha
    
    lea edx, [eax + NIB]    ; leftEndLimit
    lea esi, [eax]          ; arrayStartAddress
    lea ebp, [ebx*NIB-NIB]  ; arrayEndAddress
    add ebp, eax
    
    mov ecx, ebp
    .loop:
        ; grab values at slider
        mov eax, [ecx - NIB]
        mov ebx, [ecx]

        ; do we need to swap?
        cmp eax, ebx
        jle .next       ; no, don't swap

        ; yes swap
        lea eax, [ecx - NIB]
        lea ebx, [ecx]
        call swapValues

        .next:
            ; are we at left end?
            cmp ecx, edx
            je .atLeftEnd
            
            ; move towards left
            call .slideLeft
            jmp .loop
        
        .doneSorting:
            jmp .exitFunction

    .slideLeft:
        ; move towards left
        sub ecx, NIB
        ret
    
    .atLeftEnd:
        ; reset counter to right end
        mov ecx, ebp
        
        ; just like poping the first element, we reduce the considered array size
        add edx, NIB

        ; are we done sorting?
        lea edi, [ecx - NIB]    ; if we are done, then the array should have just 2 elements say a and b, therefore edi->a, and ecx->b
        cmp esi, edi
        je .doneSorting

        jmp .loop
    
    .exitFunction:
        popa
        ret


swapValues:
    ; swap the values eax, and ebx point to
    push ecx
    push edx
    
    ; temp hold values
    mov ecx, dword [eax]
    mov edx, dword [ebx]

    ; transfer
    mov dword [eax], edx
    mov dword [ebx], ecx
    
    pop edx
    pop ecx
    ret

