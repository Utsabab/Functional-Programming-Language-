(DEFINE (reverse-general L)
        (cond
          ((NULL? L)  ;if the list is empty, return empty list 
            L)
          ((list? (CAR L))
            (append (reverse-general (CDR L)) (list (reverse-general (CAR L))))) ;reverses the sublist 
            (else (append (reverse-general (CDR L)) (list (CAR L)))) ;converts each atom into list and appends them all  
           
))

(DEFINE (sum-up-numbers-simple L)
        (cond ((NULL? L) ;if the list is empty, returns the list
               0)
              ((number? (CAR L));if the first element of list is number goes to the next line
               (+ (CAR L) (sum-up-numbers-simple (CDR L)))) ;adds up all the numeric atoms in the list
               (else
               (sum-up-numbers-simple(CDR L));if the first element is not numeric, then recursion to the CDR of list 
)))

(DEFINE (sum-up-numbers-general L)
        (cond ((NULL? L) ;if the list is empty, returns the list
               0)
              ((list? (CAR L)) ;if the CAR L is a list goes to the next line
               (+(sum-up-numbers-general (CAR L)) (sum-up-numbers-general (CDR L)))) ;sums the numbers inside the sublist and the main list 
              
              ((number? (CAR L));if the first element of list is number goes to the next line
               (+ (CAR L) (sum-up-numbers-general (CDR L)))) ;adds up all the numeric atoms in the list
               (else
               (sum-up-numbers-general(CDR L));if the first element is not numeric, then recursion to the CDR of list 
)))

(DEFINE (find-min-helper L)
        (Cond
         ((NULL? (CDR L)) ;if the (CDR L) is empty returns (CAR L)
          (CAR L))

         ((number? (CAR L)) ;if (CAR L) is number 
          (Cond
           ((< (CAR L) (find-min-helper (CDR L))) (CAR L)) ;finding minimum number 
           (else (find-min-helper (CDR L)))
           ))
         (else (find-min-helper (CDR L))) ;else recursion 
))

          
    
         
           
         




               
              
