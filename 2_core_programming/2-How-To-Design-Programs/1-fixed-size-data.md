# Fixed Size Data : Arithmetic

## Strings

```shell
(define prefix "hello")

;Output = "l"
(string-ith prefix 2)

;Output = 5
(string-length prefix)

;Output = "304"
(number->string 304)

;Output = "el"
(substring prefix 1 3)

;Output = "ello"
(substring prefix 1)

;"hello world"
(string-append "hello " "world")

```

## Images

```shell

(require 2htdp/image)

;green circle
(circle 10 "solid" "green")

;blue rectangle
(rectangle 10 20 "solid" "blue")

;star
(star 15 "solid" "yellow")

(overlay (ellipse 10 10 "solid" "white")
         (ellipse 20 20 "solid" "black")
         (ellipse 30 30 "solid" "white")
         (ellipse 40 40 "solid" "black"))

;empty scene
(place-image (circle 6 "solid" "green")
             10 10
             (empty-scene 50 50))
```

## Boolean expression

```shell
;#true
(or true false)

;#false
(and true false)

;#false
(not true)
```

## BSL program to compare height and width of image

```shell
;Output = square

(require 2htdp/image)

(define image (rectangle 10 10 "solid" "blue"))
(define width (image-width image))
(define height (image-height image))

(define (compare-image image)
  (cond [(> height width) "tall"]
        [(< height width) "wide"]
        [(= height width) "square"]))

(compare-image image)
```

## Predicates

```shell

(require 2htdp/image)

;true
(number? 42)

;false
(number? "42")

;true
(image? (rectangle 10 10 "solid" "blue"))

;true
(boolean? true)

;true. However not only limited to booleans
(eq? true true)

```

## Computing

As far as programming is concerned, arithmetic is half the game; the other half is algebra. Specifically,
the algebra notions needed are variable, function definition, function application and function composition.

Variables aren't data; they represent data.

DrRacket is an  incredibly fast algebra student; it knows all the laws of arithmetic and it is great at
substitution.

***Define one function per task.***

***DRY principle : Do not repeat***

## Programs

### File operations

```shell
(require 2htdp/batch-io)

;(write-file "sample.dat" "Make hay while the sun shines")
(read-file "sample.dat")

>"Make hay while the sun shines"

```

