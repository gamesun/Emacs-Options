;; Blackboard Colour Theme for Emacs.
;;
;; (require 'color-theme)
;; (color-theme-initialize)
;; (load-file "~/.emacs.d/themes/color-theme-blackboard.el")


(defun color-theme-darkboard-lightcolor ()
  "Color theme by sunyt, created 2013-01-22"
  (interactive)
  (color-theme-install
   '(color-theme-blackboard
   (
    (background-color . "#1C1C1C")
    (background-mode . dark)
    (border-color . "black")
;    (cursor-color . "#A7A7A7")
    (foreground-color . "#E3E3E3")
    (mouse-color . "sienna1"))
   (default ((t (:background "#1C1C1C" :foreground "#E3E3E3"))))
;   (blue ((t (:foreground "blue"))))
;   (bold ((t (:bold t))))
;;   (bold-italic ((t (:bold t))))
;;   (border-glyph ((t (nil))))
   (buffers-tab ((t (:background "#1C1C1C" :foreground "#E3E3E3"))))
   (font-lock-builtin-face ((t (:foreground "#E3E3E3"))))
   (font-lock-comment-face ((t (:italic t :foreground "#AEAEAE"))))
   (font-lock-constant-face ((t (:foreground "#D8FA3C"))))
   (font-lock-doc-string-face ((t (:foreground "DarkOrange"))))
   (font-lock-function-name-face ((t (:foreground "#C8F6F6"))))
   (font-lock-keyword-face ((t (:foreground "#F7F5D3"))))
   (font-lock-preprocessor-face ((t (:foreground "#DA8484"))))
   (font-lock-reference-face ((t (:foreground "SlateBlue"))))
 
   (font-lock-regexp-grouping-backslash ((t (:foreground "#E9C062"))))
   (font-lock-regexp-grouping-construct ((t (:foreground "red"))))
 
   (font-lock-string-face ((t (:foreground "#8080C0"))))
   (font-lock-type-face ((t (:foreground "#F7F5D3"))))
   (font-lock-variable-name-face ((t (:foreground "#FFFFFF"))))
   (font-lock-warning-face ((t (:bold t :foreground "Pink"))))
   (gui-element ((t (:background "#D4D0C8" :foreground "black"))))
   (region ((t (:background "#253B76"))))
   (mode-line ((t (:background "grey75" :foreground "black"))))
   (highlight ((t (:background "#001"))))
   (highline-face ((t (:background "SeaGreen"))))
;;   (italic ((t (nil))))
;;   (left-margin ((t (nil))))
   (text-cursor ((t (:background "yellow" :foreground "black"))))
;;   (toolbar ((t (nil))))
;;   (underline ((nil (:underline nil))))
   (zmacs-region ((t (:background "snow" :foreground "ble")))))))
