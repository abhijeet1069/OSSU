# List
## Insert "Mercury" into empty list
    (cons "Mercury" '())
## "Mercury" is first inserted in an empty list, then "Venus" is inserted in the resultant list. And the process continues
    (cons "Mars"
          (cons "Earth"
                (cons "Venus"
                      (cons "Mercury" '()))))


List can contain any type of data-type.

'() is a constant for representation of empty list

## List Primtives 
first - the selector to extract the last item added

### empty - Check if list is empty 
> (empty? '())
#true

> (empty? 5)
#false

> (empty? "hello world")
#false

> (empty? (cons 1 '()))
#false

> (empty? (make-posn 0 0))
#false

### rest - returns remainder of list after first node
(define my-list (cons "Mars"
(cons "Earth"
(cons "Venus"
 (cons "Mercury" '())))))

my-list
> (cons "Mars" (cons "Earth" (cons "Venus" (cons "Mercury" '()))))

(rest my-list)
> (cons "Earth" (cons "Venus" (cons "Mercury" '())))

### first - returns first node of the list
(define my-list (cons "Mars"
(cons "Earth"
(cons "Venus"
 (cons "Mercury" '())))))

my-list
> (cons "Mars" (cons "Earth" (cons "Venus" (cons "Mercury" '()))))

(first my-list)
> "Mars"


# Searching a list

; List-of-names -> Boolean
; determines whether "Flatt" occurs on bsl-list

(define (search? bsl-list)
  (cond
    [(empty? bsl-list) #false]
    [(cons? bsl-list)
     (or (string=? (first bsl-list) "Flatt")
         (search? (rest bsl-list)))]))

(check-expect (search? (cons "X" (cons "Y"  (cons "Z" '()))))  #false)
(check-expect (search? (cons "A" (cons "Flatt" (cons "C" '()))))  #true)

# Self-Referential Data definitions