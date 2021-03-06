;;
;; Copyright (C) 2015 Brian Davis
;;
;; Author: Brian Davis <bd@jollyrogerlabs.com>
;;
;; Permission is hereby granted, free of charge, to any person obtaining a copy
;; of this software and associated documentation files (the "Software"), to deal
;; in the Software without restriction, including without limitation the rights
;; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;; copies of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:

;; The above copyright notice and this permission notice shall be included in
;; all copies or substantial portions of the Software.

;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
;; THE SOFTWARE.


;; Support functions that are useful for various purposes.

;; Code for calculating micro prices, useful for quick and dirty
;; checking of values in log files.
(defun calc-micro (bp bs ap as)
  "Calculate micro price."
  (+ bp (* (- ap bp) (/ bs (+ bs as)))))

;; Code for calculating the center of a hole with a given inside
;; diameter and outsied diameter.
(defun calc-center-of (inside-diameter outside-diameter)
  (let* ((is-reversed (> inside-diameter outside-diameter))
	 (id (if is-reversed outside-diameter inside-diameter))
	 (od (if is-reversed inside-diameter outside-diameter)))
    (+ id (/ (- od id) 2.0))))
