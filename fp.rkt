;Question 1
(DEFINE (reverse-general L)
        (cond
          ((NULL? L)  ;if the list is empty, return empty list 
            L)
          ((list? (CAR L))
            (append (reverse-general (CDR L)) (list (reverse-general (CAR L))))) ;reverses the sublist 
            (else (append (reverse-general (CDR L)) (list (CAR L)))) ;converts each atom into list and appends them all  
           
))

;Question 2
(DEFINE (sum-up-numbers-simple L)
        (cond ((NULL? L) ;if the list is empty, returns the list
               0)
              ((number? (CAR L));if the first element of list is number goes to the next line
               (+ (CAR L) (sum-up-numbers-simple (CDR L)))) ;adds up all the numeric atoms in the list
               (else
               (sum-up-numbers-simple(CDR L));if the first element is not numeric, then recursion to the CDR of list 
)))

;Question 3
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

;Question 4 
;Finds the minimum number in any given List 
(DEFINE (find-min-helper L)
        (cond
          ((NULL? L) #f) ;returns #f if the list is empty
         ((NOT (NUMBER? (CAR L))) (find-min-helper (CDR L))) ;if (CAR L) is not number, recursion on (CDR L)
         ((NULL? (CDR L)) (CAR L)) ;if the list ends then (CAR L)
         ((NUMBER? (find-min-helper (CDR L)))
          (cond
            ((< (CAR L) (find-min-helper (CDR L))) (CAR L)) ;finding minimum number 
            (else (find-min-helper (CDR L)))))
         (else (CAR L))
            
))

;Finds the next big number from the list while the minimum number is given 
(DEFINE (next-big-helper L min-num)
        (cond
          ((NULL? L) #f) ;#f if the list is empty
           ((NOT (NUMBER? (CAR L))) (next-big-helper (CDR L) min-num)) ;if not number, recursion on (CDR L)
          ((> (CAR L) min-num) ;if (CAR L) is bigger than minimum number 
           (cond
             ((NULL? (CDR L)) (CAR L))  ;if list1 has only one number then return the number 
             ((NUMBER? (next-big-helper (CDR L) min-num)) (MIN (CAR L) (next-big-helper (CDR L) min-num))) ;if the next element in the list is number, minimum of (CAR L) and rest of the list
             (else (CAR L))))
          (else (next-big-helper (CDR L) min-num)))
          
)

(DEFINE (min-above-min L1 L2)
        (cond))