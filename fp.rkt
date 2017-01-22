(DEFINE (reverse-general L)
        (if (NULL? L)  ;if the list is empty, return empty list 
            L
        (if (list? (CAR L))
            
            (append (reverse-general (CDR L))(reverse-general (CAR L))) ;reverses the sublist
             (append (reverse-general (CDR L))(list (CAR L))) ;appends all the atoms
           
)))

