check_address:
    cmp ebx, 0 ; Check if ebx is null
    je handle_error
    ; Add additional checks for valid memory address range here, if needed

    mov eax, [ebx+4]
    mov ecx, [eax]
    jmp end

handle_error:
    ; Handle error appropriately
    ; Example: Print an error message or exit gracefully
    ; ...

end: