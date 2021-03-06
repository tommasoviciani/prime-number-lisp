(defun prime (n)
	(defvar div)
	(defvar resto)
	(cond ((= n 2)
		(return-from prime (pprint "Il numero e' primo")))
		((<= n 1)
		(return-from prime 1))
	)
	(setq div 2)
	(setq resto 0)
		(loop
		(setq resto (rem n div))
		(cond ((= resto 0)			
			(return (pprint "Il numero non e' primo")))
		)
		(setq div (+ div 1))
		(when (= div n) (return))
	)
	(cond ((= div n)
		(pprint "Il numero e' primo"))
	)
)

(defun list-prime (n)
	(defvar div)
	(defvar resto)
	(defvar nv)
	(cond ((= n 2)
		(return-from list-prime 2))
		((< n 2)
		(return-from list-prime 1))
	)
	(setq div 2)
	(setq resto 0)
	(setq nv 3)
	(print 2)
	(loop
		(loop
			(setq resto (rem nv div))
			(if (= resto 0)
				(return)
				(setq div (+ div 1))
			)			
			(when (= div nv) (return (print nv)))
		)
		(setq nv (+ nv 1))
		(setq div 2)
		(when (> nv n) (return))
	)
)

(defun fibonacci (n)
	(defvar somma)
	(defvar f1)
	(defvar f2)
	(setq somma 0)
	(setq f1 1)
	(setq f2 1)
	(loop for cont 0 below n do
		(setq somma (+ f1 f2))
		(setq f2 f1)
		(setq f1 somma)
		(write somma)		
	)
)