;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; File:         takr.sch
; Description:  TAKR benchmark
; Author:       Richard Gabriel
; Created:      12-Apr-85
; Modified:     12-Apr-85 10:12:43 (Bob Shaw)
;               22-Jul-87 (Will Clinger)
; Language:     Scheme
; Status:       Public Domain
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
;;; TAKR  -- 100 function (count `em) version of TAK that tries to defeat cache
;;; memory effects.  Results should be the same as for TAK on stack machines.
;;; Distribution of calls is not completely flat.

(define (tak0 x y z)
  (cond ((not (< y x)) z)
        (else (tak1 (tak37 (- x 1) y z)
                 (tak11 (- y 1) z x)
                 (tak17 (- z 1) x y)))))
(define (tak1 x y z)
  (cond ((not (< y x)) z)
        (else (tak2 (tak74 (- x 1) y z)
                 (tak22 (- y 1) z x)
                 (tak34 (- z 1) x y)))))
(define (tak2 x y z)
  (cond ((not (< y x)) z)
        (else (tak3 (tak11 (- x 1) y z)
                 (tak33 (- y 1) z x)
                 (tak51 (- z 1) x y)))))
(define (tak3 x y z)
  (cond ((not (< y x)) z)
        (else (tak4 (tak48 (- x 1) y z)
                 (tak44 (- y 1) z x)
                 (tak68 (- z 1) x y)))))
(define (tak4 x y z)
  (cond ((not (< y x)) z)
        (else (tak5 (tak85 (- x 1) y z)
                 (tak55 (- y 1) z x)
                 (tak85 (- z 1) x y)))))
(define (tak5 x y z)
  (cond ((not (< y x)) z)
        (else (tak6 (tak22 (- x 1) y z)
                 (tak66 (- y 1) z x)
                 (tak2 (- z 1) x y)))))
(define (tak6 x y z)
  (cond ((not (< y x)) z)
        (else (tak7 (tak59 (- x 1) y z)
                 (tak77 (- y 1) z x)
                 (tak19 (- z 1) x y)))))
(define (tak7 x y z)
  (cond ((not (< y x)) z)
        (else (tak8 (tak96 (- x 1) y z)
                 (tak88 (- y 1) z x)
                 (tak36 (- z 1) x y)))))
(define (tak8 x y z)
  (cond ((not (< y x)) z)
        (else (tak9 (tak33 (- x 1) y z)
                 (tak99 (- y 1) z x)
                 (tak53 (- z 1) x y)))))
(define (tak9 x y z)
  (cond ((not (< y x)) z)
        (else (tak10 (tak70 (- x 1) y z)
                  (tak10 (- y 1) z x)
                  (tak70 (- z 1) x y)))))
(define (tak10 x y z)
  (cond ((not (< y x)) z)
        (else (tak11 (tak7 (- x 1) y z)
                  (tak21 (- y 1) z x)
                  (tak87 (- z 1) x y)))))
(define (tak11 x y z)
  (cond ((not (< y x)) z)
        (else (tak12 (tak44 (- x 1) y z)
                  (tak32 (- y 1) z x)
                  (tak4 (- z 1) x y)))))
(define (tak12 x y z)
  (cond ((not (< y x)) z)
        (else (tak13 (tak81 (- x 1) y z)
                  (tak43 (- y 1) z x)
                  (tak21 (- z 1) x y)))))
 
(define (tak13 x y z)
  (cond ((not (< y x)) z)
        (else (tak14 (tak18 (- x 1) y z)
                  (tak54 (- y 1) z x)
                  (tak38 (- z 1) x y)))))
(define (tak14 x y z)
  (cond ((not (< y x)) z)
        (else (tak15 (tak55 (- x 1) y z)
                  (tak65 (- y 1) z x)
                  (tak55 (- z 1) x y)))))
(define (tak15 x y z)
  (cond ((not (< y x)) z)
        (else (tak16 (tak92 (- x 1) y z)
                  (tak76 (- y 1) z x)
                  (tak72 (- z 1) x y)))))
(define (tak16 x y z)
  (cond ((not (< y x)) z)
        (else (tak17 (tak29 (- x 1) y z)
                  (tak87 (- y 1) z x)
                  (tak89 (- z 1) x y)))))
(define (tak17 x y z)
  (cond ((not (< y x)) z)
        (else (tak18 (tak66 (- x 1) y z)
                  (tak98 (- y 1) z x)
                  (tak6 (- z 1) x y)))))
(define (tak18 x y z)
  (cond ((not (< y x)) z)
        (else (tak19 (tak3 (- x 1) y z)
                  (tak9 (- y 1) z x)
                  (tak23 (- z 1) x y)))))
(define (tak19 x y z)
  (cond ((not (< y x)) z)
        (else (tak20 (tak40 (- x 1) y z)
                  (tak20 (- y 1) z x)
                  (tak40 (- z 1) x y)))))
(define (tak20 x y z)
  (cond ((not (< y x)) z)
        (else (tak21 (tak77 (- x 1) y z)
                  (tak31 (- y 1) z x)
                  (tak57 (- z 1) x y)))))
(define (tak21 x y z)
  (cond ((not (< y x)) z)
        (else (tak22 (tak14 (- x 1) y z)
                  (tak42 (- y 1) z x)
                  (tak74 (- z 1) x y)))))
(define (tak22 x y z)
  (cond ((not (< y x)) z)
        (else (tak23 (tak51 (- x 1) y z)
                  (tak53 (- y 1) z x)
                  (tak91 (- z 1) x y)))))
(define (tak23 x y z)
  (cond ((not (< y x)) z)
        (else (tak24 (tak88 (- x 1) y z)
                  (tak64 (- y 1) z x)
                  (tak8 (- z 1) x y)))))
(define (tak24 x y z)
  (cond ((not (< y x)) z)
        (else (tak25 (tak25 (- x 1) y z)
                  (tak75 (- y 1) z x)
                  (tak25 (- z 1) x y)))))
(define (tak25 x y z)
  (cond ((not (< y x)) z)
        (else (tak26 (tak62 (- x 1) y z)
                  (tak86 (- y 1) z x)
                  (tak42 (- z 1) x y)))))
(define (tak26 x y z)
  (cond ((not (< y x)) z)
        (else (tak27 (tak99 (- x 1) y z)
                  (tak97 (- y 1) z x)
                  (tak59 (- z 1) x y)))))
(define (tak27 x y z)
  (cond ((not (< y x)) z)
        (else (tak28 (tak36 (- x 1) y z)
                  (tak8 (- y 1) z x)
                  (tak76 (- z 1) x y)))))
(define (tak28 x y z)
  (cond ((not (< y x)) z)
        (else (tak29 (tak73 (- x 1) y z)
                  (tak19 (- y 1) z x)
                  (tak93 (- z 1) x y)))))
(define (tak29 x y z)
  (cond ((not (< y x)) z)
        (else (tak30 (tak10 (- x 1) y z)
                  (tak30 (- y 1) z x)
                  (tak10 (- z 1) x y)))))
(define (tak30 x y z)
  (cond ((not (< y x)) z)
        (else (tak31 (tak47 (- x 1) y z)
                  (tak41 (- y 1) z x)
                  (tak27 (- z 1) x y)))))
(define (tak31 x y z)
  (cond ((not (< y x)) z)
        (else (tak32 (tak84 (- x 1) y z)
                  (tak52 (- y 1) z x)
                  (tak44 (- z 1) x y)))))
(define (tak32 x y z)
  (cond ((not (< y x)) z)
        (else (tak33 (tak21 (- x 1) y z)
                  (tak63 (- y 1) z x)
                  (tak61 (- z 1) x y)))))
(define (tak33 x y z)
  (cond ((not (< y x)) z)
        (else (tak34 (tak58 (- x 1) y z)
                  (tak74 (- y 1) z x)
                  (tak78 (- z 1) x y)))))
(define (tak34 x y z)
  (cond ((not (< y x)) z)
        (else (tak35 (tak95 (- x 1) y z)
                  (tak85 (- y 1) z x)
                  (tak95 (- z 1) x y)))))
(define (tak35 x y z)
  (cond ((not (< y x)) z)
        (else (tak36 (tak32 (- x 1) y z)
                  (tak96 (- y 1) z x)
                  (tak12 (- z 1) x y)))))
(define (tak36 x y z)
  (cond ((not (< y x)) z)
        (else (tak37 (tak69 (- x 1) y z)
                  (tak7 (- y 1) z x)
                  (tak29 (- z 1) x y)))))
(define (tak37 x y z)
  (cond ((not (< y x)) z)
        (else (tak38 (tak6 (- x 1) y z)
                  (tak18 (- y 1) z x)
                  (tak46 (- z 1) x y)))))
(define (tak38 x y z)
  (cond ((not (< y x)) z)
        (else (tak39 (tak43 (- x 1) y z)
                  (tak29 (- y 1) z x)
                  (tak63 (- z 1) x y)))))
(define (tak39 x y z)
  (cond ((not (< y x)) z)
        (else (tak40 (tak80 (- x 1) y z)
                  (tak40 (- y 1) z x)
                  (tak80 (- z 1) x y)))))
(define (tak40 x y z)
  (cond ((not (< y x)) z)
        (else (tak41 (tak17 (- x 1) y z)
                  (tak51 (- y 1) z x)
                  (tak97 (- z 1) x y)))))
(define (tak41 x y z)
  (cond ((not (< y x)) z)
        (else (tak42 (tak54 (- x 1) y z)
                  (tak62 (- y 1) z x)
                  (tak14 (- z 1) x y)))))
(define (tak42 x y z)
  (cond ((not (< y x)) z)
        (else (tak43 (tak91 (- x 1) y z)
                  (tak73 (- y 1) z x)
                  (tak31 (- z 1) x y)))))
(define (tak43 x y z)
  (cond ((not (< y x)) z)
        (else (tak44 (tak28 (- x 1) y z)
                  (tak84 (- y 1) z x)
                  (tak48 (- z 1) x y)))))
(define (tak44 x y z)
  (cond ((not (< y x)) z)
        (else (tak45 (tak65 (- x 1) y z)
                  (tak95 (- y 1) z x)
                  (tak65 (- z 1) x y)))))
(define (tak45 x y z)
  (cond ((not (< y x)) z)
        (else (tak46 (tak2 (- x 1) y z)
                  (tak6 (- y 1) z x)
                  (tak82 (- z 1) x y)))))
(define (tak46 x y z)
  (cond ((not (< y x)) z)
        (else (tak47 (tak39 (- x 1) y z)
                  (tak17 (- y 1) z x)
                  (tak99 (- z 1) x y)))))
(define (tak47 x y z)
  (cond ((not (< y x)) z)
        (else (tak48 (tak76 (- x 1) y z)
                  (tak28 (- y 1) z x)
                  (tak16 (- z 1) x y)))))
(define (tak48 x y z)
  (cond ((not (< y x)) z)
        (else (tak49 (tak13 (- x 1) y z)
                  (tak39 (- y 1) z x)
                  (tak33 (- z 1) x y)))))
(define (tak49 x y z)
  (cond ((not (< y x)) z)
        (else (tak50 (tak50 (- x 1) y z)
                  (tak50 (- y 1) z x)
                  (tak50 (- z 1) x y)))))
(define (tak50 x y z)
  (cond ((not (< y x)) z)
        (else (tak51 (tak87 (- x 1) y z)
                  (tak61 (- y 1) z x)
                  (tak67 (- z 1) x y)))))
(define (tak51 x y z)
  (cond ((not (< y x)) z)
        (else (tak52 (tak24 (- x 1) y z)
                  (tak72 (- y 1) z x)
                  (tak84 (- z 1) x y)))))
(define (tak52 x y z)
  (cond ((not (< y x)) z)
        (else (tak53 (tak61 (- x 1) y z)
                  (tak83 (- y 1) z x)
                  (tak1 (- z 1) x y)))))
(define (tak53 x y z)
  (cond ((not (< y x)) z)
        (else (tak54 (tak98 (- x 1) y z)
                  (tak94 (- y 1) z x)
                  (tak18 (- z 1) x y)))))
(define (tak54 x y z)
  (cond ((not (< y x)) z)
        (else (tak55 (tak35 (- x 1) y z)
                  (tak5 (- y 1) z x)
                  (tak35 (- z 1) x y)))))
(define (tak55 x y z)
  (cond ((not (< y x)) z)
        (else (tak56 (tak72 (- x 1) y z)
                  (tak16 (- y 1) z x)
                  (tak52 (- z 1) x y)))))
(define (tak56 x y z)
  (cond ((not (< y x)) z)
        (else (tak57 (tak9 (- x 1) y z)
                  (tak27 (- y 1) z x)
                  (tak69 (- z 1) x y)))))
(define (tak57 x y z)
  (cond ((not (< y x)) z)
        (else (tak58 (tak46 (- x 1) y z)
                  (tak38 (- y 1) z x)
                  (tak86 (- z 1) x y)))))
(define (tak58 x y z)
  (cond ((not (< y x)) z)
        (else (tak59 (tak83 (- x 1) y z)
                  (tak49 (- y 1) z x)
                  (tak3 (- z 1) x y)))))
(define (tak59 x y z)
  (cond ((not (< y x)) z)
        (else (tak60 (tak20 (- x 1) y z)
                  (tak60 (- y 1) z x)
                  (tak20 (- z 1) x y)))))
(define (tak60 x y z)
  (cond ((not (< y x)) z)
        (else (tak61 (tak57 (- x 1) y z)
                  (tak71 (- y 1) z x)
                  (tak37 (- z 1) x y)))))
(define (tak61 x y z)
  (cond ((not (< y x)) z)
        (else (tak62 (tak94 (- x 1) y z)
                  (tak82 (- y 1) z x)
                  (tak54 (- z 1) x y)))))
(define (tak62 x y z)
  (cond ((not (< y x)) z)
        (else (tak63 (tak31 (- x 1) y z)
                  (tak93 (- y 1) z x)
                  (tak71 (- z 1) x y)))))
(define (tak63 x y z)
  (cond ((not (< y x)) z)
        (else (tak64 (tak68 (- x 1) y z)
                  (tak4 (- y 1) z x)
                  (tak88 (- z 1) x y)))))
(define (tak64 x y z)
  (cond ((not (< y x)) z)
        (else (tak65 (tak5 (- x 1) y z)
                  (tak15 (- y 1) z x)
                  (tak5 (- z 1) x y)))))
(define (tak65 x y z)
  (cond ((not (< y x)) z)
        (else (tak66 (tak42 (- x 1) y z)
                  (tak26 (- y 1) z x)
                  (tak22 (- z 1) x y)))))
(define (tak66 x y z)
  (cond ((not (< y x)) z)
        (else (tak67 (tak79 (- x 1) y z)
                  (tak37 (- y 1) z x)
                  (tak39 (- z 1) x y)))))
(define (tak67 x y z)
  (cond ((not (< y x)) z)
        (else (tak68 (tak16 (- x 1) y z)
                  (tak48 (- y 1) z x)
                  (tak56 (- z 1) x y)))))
(define (tak68 x y z)
  (cond ((not (< y x)) z)
        (else (tak69 (tak53 (- x 1) y z)
                  (tak59 (- y 1) z x)
                  (tak73 (- z 1) x y)))))
(define (tak69 x y z)
  (cond ((not (< y x)) z)
        (else (tak70 (tak90 (- x 1) y z)
                  (tak70 (- y 1) z x)
                  (tak90 (- z 1) x y)))))
(define (tak70 x y z)
  (cond ((not (< y x)) z)
        (else (tak71 (tak27 (- x 1) y z)
                  (tak81 (- y 1) z x)
                  (tak7 (- z 1) x y)))))
(define (tak71 x y z)
  (cond ((not (< y x)) z)
        (else (tak72 (tak64 (- x 1) y z)
                  (tak92 (- y 1) z x)
                  (tak24 (- z 1) x y)))))
(define (tak72 x y z)
  (cond ((not (< y x)) z)
        (else (tak73 (tak1 (- x 1) y z)
                  (tak3 (- y 1) z x)
                  (tak41 (- z 1) x y)))))
(define (tak73 x y z)
  (cond ((not (< y x)) z)
        (else (tak74 (tak38 (- x 1) y z)
                  (tak14 (- y 1) z x)
                  (tak58 (- z 1) x y)))))
(define (tak74 x y z)
  (cond ((not (< y x)) z)
        (else (tak75 (tak75 (- x 1) y z)
                  (tak25 (- y 1) z x)
                  (tak75 (- z 1) x y)))))
(define (tak75 x y z)
  (cond ((not (< y x)) z)
        (else (tak76 (tak12 (- x 1) y z)
                  (tak36 (- y 1) z x)
                  (tak92 (- z 1) x y)))))
(define (tak76 x y z)
  (cond ((not (< y x)) z)
        (else (tak77 (tak49 (- x 1) y z)
                  (tak47 (- y 1) z x)
                  (tak9 (- z 1) x y)))))
(define (tak77 x y z)
  (cond ((not (< y x)) z)
        (else (tak78 (tak86 (- x 1) y z)
                  (tak58 (- y 1) z x)
                  (tak26 (- z 1) x y)))))
(define (tak78 x y z)
  (cond ((not (< y x)) z)
        (else (tak79 (tak23 (- x 1) y z)
                  (tak69 (- y 1) z x)
                  (tak43 (- z 1) x y)))))
(define (tak79 x y z)
  (cond ((not (< y x)) z)
        (else (tak80 (tak60 (- x 1) y z)
                  (tak80 (- y 1) z x)
                  (tak60 (- z 1) x y)))))
(define (tak80 x y z)
  (cond ((not (< y x)) z)
        (else (tak81 (tak97 (- x 1) y z)
                  (tak91 (- y 1) z x)
                  (tak77 (- z 1) x y)))))
(define (tak81 x y z)
  (cond ((not (< y x)) z)
        (else (tak82 (tak34 (- x 1) y z)
                  (tak2 (- y 1) z x)
                  (tak94 (- z 1) x y)))))
(define (tak82 x y z)
  (cond ((not (< y x)) z)
        (else (tak83 (tak71 (- x 1) y z)
                  (tak13 (- y 1) z x)
                  (tak11 (- z 1) x y)))))
(define (tak83 x y z)
  (cond ((not (< y x)) z)
        (else (tak84 (tak8 (- x 1) y z)
                  (tak24 (- y 1) z x)
                  (tak28 (- z 1) x y)))))
(define (tak84 x y z)
  (cond ((not (< y x)) z)
        (else (tak85 (tak45 (- x 1) y z)
                  (tak35 (- y 1) z x)
                  (tak45 (- z 1) x y)))))
(define (tak85 x y z)
  (cond ((not (< y x)) z)
        (else (tak86 (tak82 (- x 1) y z)
                  (tak46 (- y 1) z x)
                  (tak62 (- z 1) x y)))))
(define (tak86 x y z)
  (cond ((not (< y x)) z)
        (else (tak87 (tak19 (- x 1) y z)
                  (tak57 (- y 1) z x)
                  (tak79 (- z 1) x y)))))
(define (tak87 x y z)
  (cond ((not (< y x)) z)
        (else (tak88 (tak56 (- x 1) y z)
                  (tak68 (- y 1) z x)
                  (tak96 (- z 1) x y)))))
(define (tak88 x y z)
  (cond ((not (< y x)) z)
        (else (tak89 (tak93 (- x 1) y z)
                  (tak79 (- y 1) z x)
                  (tak13 (- z 1) x y)))))
(define (tak89 x y z)
  (cond ((not (< y x)) z)
        (else (tak90 (tak30 (- x 1) y z)
                  (tak90 (- y 1) z x)
                  (tak30 (- z 1) x y)))))
(define (tak90 x y z)
  (cond ((not (< y x)) z)
        (else (tak91 (tak67 (- x 1) y z)
                  (tak1 (- y 1) z x)
                  (tak47 (- z 1) x y)))))
(define (tak91 x y z)
  (cond ((not (< y x)) z)
        (else (tak92 (tak4 (- x 1) y z)
                  (tak12 (- y 1) z x)
                  (tak64 (- z 1) x y)))))
(define (tak92 x y z)
  (cond ((not (< y x)) z)
        (else (tak93 (tak41 (- x 1) y z)
                  (tak23 (- y 1) z x)
                  (tak81 (- z 1) x y)))))
(define (tak93 x y z)
  (cond ((not (< y x)) z)
        (else (tak94 (tak78 (- x 1) y z)
                  (tak34 (- y 1) z x)
                  (tak98 (- z 1) x y)))))
(define (tak94 x y z)
  (cond ((not (< y x)) z)
        (else (tak95 (tak15 (- x 1) y z)
                  (tak45 (- y 1) z x)
                  (tak15 (- z 1) x y)))))
(define (tak95 x y z)
  (cond ((not (< y x)) z)
        (else (tak96 (tak52 (- x 1) y z)
                  (tak56 (- y 1) z x)
                  (tak32 (- z 1) x y)))))
(define (tak96 x y z)
  (cond ((not (< y x)) z)
        (else (tak97 (tak89 (- x 1) y z)
                  (tak67 (- y 1) z x)
                  (tak49 (- z 1) x y)))))
(define (tak97 x y z)
  (cond ((not (< y x)) z)
        (else (tak98 (tak26 (- x 1) y z)
                  (tak78 (- y 1) z x)
                  (tak66 (- z 1) x y)))))
(define (tak98 x y z)
  (cond ((not (< y x)) z)
        (else (tak99 (tak63 (- x 1) y z)
                  (tak89 (- y 1) z x)
                  (tak83 (- z 1) x y)))))
(define (tak99 x y z)
  (cond ((not (< y x)) z)
        (else (tak0 (tak0 (- x 1) y z)
                 (tak0 (- y 1) z x)
                 (tak0 (- z 1) x y)))))
 
;;; call:  (tak0 18 12 6)

(let ((input 1))
  (time
   (let loop ((n 1500) (v 0))
     (if (zero? n)
         v
         (loop (- n 1) (tak0 18 12 (if input 6 0)))))))
