(DEFINE (reverse-general L)
        (cond
          ((NULL? L)  ;if the list is empty, return empty list 
            L)
          ((list? (CAR L))
            (append (reverse-general (CDR L)) (list (reverse-general (CAR L))))) ;reverses the sublist 
            (else (append (reverse-general (CDR L)) (list (CAR L)))) ;converts each atom into list and appends them all  
           
))

(DEFINE (sum-up-numbers-simple L)
        (cond ((NULL? L) 
               0)
              
))
              
               
               





               
              
