;김종이가만들었습니다

(defun c:hj()

  (setq pt1 (getpoint))
  (setq pt2 (getpoint pt1))
  (setq di (distance pt1 pt2))
	(setq di1 (rtos di 2 0))
  (setq ss (/ di 840))
  	(setq ss1 (rtos ss 2 1))
  		(setq sc2 (atof ss1))
  (setq lsc (* sc2 2.5))
	(setq lsc1 (rtos lsc 2 1))

  (setq msg (strcat "length="di1 "\nscale=1/"ss1 "\nsize="lsc1))
  (setq msg1 (strcat "length="di1 " scale=1/"ss1 " size="lsc1))

  (alert msg)

  (command "text" (getpoint) lsc1 "0" msg1)

  )