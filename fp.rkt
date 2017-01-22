(DEFINE (reverse-general L)
        (if (NULL? L)  ;if the list is empty, return empty list 
            L
        
        (append (reverse-general (CDR L))(list (CAR L)))


            )
)