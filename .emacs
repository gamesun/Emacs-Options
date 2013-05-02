(setenv "HOME" "D:/emacs-24.2")
(setenv "PATH" "D:/emacs-24.2")
;;set the default file path
(setq default-directory "~/")
(add-to-list 'load-path "~/site-lisp")
(add-to-list 'load-path "~/lisp/cedet-1.1/common")
(add-to-list 'load-path "~/lisp/cedet-1.1/semantic")

(if (and (eq system-type 'windows-nt)
  (require 'cygwin-mount nil t))
(progn
  (setenv "PATH" (concat "d:/cygwin/bin;" (getenv "PATH")))
  ;(setq exec-path (cons "d:/cygwin/bin/" exec-path))
  (require 'setup-cygwin)))


;;display buffer's name at title.
(setq frame-title-format "%b %f")

(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
	(color-theme-initialize)
	(color-theme-blackboard)
;	(color-theme-zenburn)
))

(require 'cedet)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(display-time-mode t)
 '(ecb-layout-window-sizes (quote (("leftright1" (0.16666666666666666 . 0.37777777777777777) (0.16666666666666666 . 0.28888888888888886) (0.16666666666666666 . 0.3111111111111111) (0.19270833333333334 . 0.9777777777777778)))))
 '(ecb-options-version "2.40")
 '(ecb-show-tags (quote ((default (include collapsed nil) (parent collapsed nil) (type flattened nil) (variable collapsed access) (function flattened nil) (label hidden nil) (t collapsed nil)) (c++-mode (include collapsed nil) (parent collapsed nil) (type flattened nil) (variable collapsed access) (function flattened nil) (function collapsed nil) (label hidden nil) (t collapsed nil)) (c-mode (include collapsed nil) (parent collapsed nil) (type flattened nil) (variable collapsed access) (function flattened nil) (function collapsed nil) (label hidden nil) (t collapsed nil)) (bovine-grammar-mode (keyword collapsed name) (token collapsed name) (nonterminal flattened name) (rule flattened name) (t collapsed nil)) (wisent-grammar-mode (keyword collapsed name) (token collapsed name) (nonterminal flattened name) (rule flattened name) (t collapsed nil)) (texinfo-mode (section flattened nil) (def collapsed name) (t collapsed nil)))))
 '(ede-project-directories (quote ("e:/Projects/EnumUSB/EnumUSB")))
 '(mouse-wheel-scroll-amount (quote (3 ((shift) . 0.5) ((control)))))
 '(recentf-max-menu-items 20)
 '(recentf-max-saved-items 50)
 '(scroll-bar-mode nil)
 '(speedbar-hide-button-brackets-flag t)
 '(speedbar-tag-regroup-maximum-length 50)
 '(speedbar-use-images nil)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(which-function-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(hide-ifdef-shadow ((t (:inherit shadow :slant italic))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "gray75"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "medium purple"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "magenta"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "firebrick2"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "orange"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "yellow"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "green"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "medium spring green"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "royal blue"))))
 '(rainbow-delimiters-unmatched-face ((t (:foreground "red3")))))

;; adjust the size of Emacs window
(setq default-frame-alist '(
	(top . 40)
	(left . 65)
	(height . 38)
	(width . 140)
	;(menu-bar-lines . 20)
	;(tool-bar-lines . 20)
	;(background-color . "rgb:00/00/00")
	;(foreground-color . "rgb:ff/ff/ff")
	;(font . "Monospace-11")
	;(cursor-type . bar)
))

;; Setting English Font
(set-face-attribute
  'default nil :font "Consolas 10")

;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font)
                      charset
                      (font-spec :family "Microsoft Yahei" :size 12)))
;					  (font-spec :family "MS Gothic" :size 12)))
;;
;;(dolist (command '(yank yank-pop))
;;  (eval
;;   `(defadvice ,command (after indent-region activate)
;;      (and (not current-prefix-arg)
;;           (member major-mode
;;                   '(emacs-lisp-mode
;;                     lisp-mode
;;                     clojure-mode
;;                     scheme-mode
;;                     haskell-mode
;;                     ruby-mode
;;                     rspec-mode
;;                     python-mode
;;                ;     c-mode
;;                ;     c++-mode
;;                     objc-mode
;;                     latex-mode
;;                     js-mode
;;                     plain-tex-mode))
;;           (let ((mark-even-if-inactive transient-mark-mode))
;;             (indent-region (region-beginning) (region-end) nil))))))

(setq w32-enable-synthesized-fonts t)
(set-face-font 'italic "-*-Courier New-normal-i-*-*-11-*-*-*-c-*-iso8859-1")
(set-face-font 'bold-italic "-*-Courier New-bold-i-*-*-11-*-*-*-c-*-iso8859-1")

(setq default-tab-width 4)
(setq-default c-indent-tabs-mode t	   ; Pressing TAB should cause indentation
			  c-indent-level 4		   ; A TAB is equivilent to four spaces
			  c-argdecl-indent 0	   ; Do not indent argument decl's extra
			  c-tab-always-indent t
			  backward-delete-function nil) ; DO NOT expand tabs when deleting
;; (c-add-style "my-c-style" '((c-continued-statement-offset 4))) ; If a statement continues on the next line, indent the continuation by 4
  
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(defun my-c-mode-hook ()
  (setq c-basic-offset 4          ;; basic offset
        indent-tabs-mode t        ;; NO spaces -> Tab
        default-tab-width 4))
(add-hook 'c-mode-hook 'my-c-mode-hook)
(add-hook 'c++-mode-hook 'my-c-mode-hook)

;; In ASCII, C-i and <TAB> are the same character.
;(global-set-key (kbd "C-i") (lambda () (interactive) (message "C-i"))) 
;(global-set-key (kbd "<tab>") (lambda () (interactive) (message "<tab>")))
(load-file "~/site-lisp/simple-tab.el")
(global-set-key [C-tab] 'abs-indent)
(global-set-key [S-tab] 'abs-unindent)

(require 'hideif)
(setq hide-ifdef-initially t)
(add-hook 'c-mode-common-hook
		  (lambda ()
			(setq hide-ifdef-shadow t)
			(setq hide-ifdef-mode t)
			(hide-ifdefs)
			))

(defconst project1 t)
(defconst project2 nil)
(eval-after-load "hideif"
  '(progn
     (setq hide-ifdef-env
           '((A . 1)
             (C . 2)))))


(autoload 'paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       (lambda () (paredit-mode +1)))

;; tabbar mode
(require 'tabbar)
(tabbar-mode 1)
(global-set-key [(control <)] 'tabbar-backward)
(global-set-key [(control >)] 'tabbar-forward)
(global-set-key [(control meta <)] 'tabbar-backward-group)
(global-set-key [(control meta >)] 'tabbar-forward-group)
(defun tabbar-buffer-groups ()
  "tabbar group"
  (list
   (cond
;    ((memq major-mode '(shell-mode dired-mode))
;     "shell"
;     )
;    ((memq major-mode '(c-mode c++-mode))
;     "cc"
;     )
    ((string-equal "*" (substring (buffer-name) 0 1))
     "emacs"
     )
    (t
     "User"
     )
    )))
(setq tabbar-buffer-groups-function 'tabbar-buffer-groups)

(require 'recentf)
(recentf-mode 1)


(setq stack-trace-on-error t)

(require 'semantic-ia)
;; Enable EDE (Project Management) features
(global-ede-mode t)

(semantic-load-enable-excessive-code-helpers)
(global-semantic-stickyfunc-mode nil)		;;close this function
(global-semantic-highlight-func-mode nil)
;;(semantic-load-enable-semantic-debugging-helpers)

;; Enable SRecode (Template management) minor-mode.
(global-srecode-minor-mode 1)

;(setq-mode-local c-mode semanticdb-find-default-throttle
;				 '(project unloaded system recursive))
(defun my-semantic-hook ()
  (imenu-add-to-menubar "TAGS"))
(add-hook 'semantic-init-hooks 'my-semantic-hook)
(require 'semanticdb)
(global-semanticdb-minor-mode 1)

(defun my-cedet-hook ()
  (local-set-key [(control return)] 'semantic-ia-complete-symbol)
;  (local-set-key "/C-c?" 'semantic-ia-complete-symbol-menu)
;  (local-set-key "/C-c>" 'semantic-complete-analyze-inline)
;  (local-set-key "/C-cp" 'semantic-analyze-proto-impl-toggle)
)
(add-hook 'c-mode-common-hook 'my-cedet-hook)

;; (defun my-c-mode-cedet-hook ()
;;   (local-set-key "." 'semantic-complete-self-insert)
;;   (local-set-key ">" 'semantic-complete-self-insert))
;; (add-hook 'c-mode-common-hook 'my-c-mode-cedet-hook)

(add-to-list 'load-path "~/site-lisp/ecb-2.40")
(require 'ecb)
(require 'ecb-autoloads)

(global-set-key [f12] 'semantic-ia-fast-jump)
(global-set-key [S-f12]
                (lambda ()
                  (interactive)
                  (if (ring-empty-p (oref semantic-mru-bookmark-ring ring))
                      (error "Semantic Bookmark ring is currently empty"))
                  (let* ((ring (oref semantic-mru-bookmark-ring ring))
                         (alist (semantic-mrub-ring-to-assoc-list ring))
                         (first (cdr (car alist))))
                    (if (semantic-equivalent-tag-p (oref first tag)
                                                   (semantic-current-tag))
                        (setq first (cdr (car (cdr alist)))))
                    (semantic-mrub-switch-tags first))))

(require 'sr-speedbar)
(defalias 'sb 'sr-speedbar-toggle)
(setq sr-speedbar-right-side nil)
(global-set-key [(meta f1)] 'sr-speedbar-toggle)

;;auto move mouse
(mouse-avoidance-mode 'animate)

(setq redisplay-dont-pause t
	  scroll-margin 0
	  scroll-step 0
	  scroll-conservatively 10000
	  auto-window-vscroll nil
	  scroll-preserve-screen-position 1
	  mouse-wheel-progressive-speed nil)

(global-set-key [C-z] 'undo)

(require 'highlight-parentheses)
;(highlight-parentheses-mode 1)
(require 'rainbow-delimiters)
;(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(global-rainbow-delimiters-mode)

;;bell off
(setq visible-bell nil)
(setq ring-bell-function 'ignore)

(global-linum-mode 1) ; always show line numbers
(setq linum-format "%d")  ;set format

(require 'saveplace)
(setq-default save-place t)

(desktop-save-mode 1)

(require 'semantic-tag-folding nil 'noerror)
(global-semantic-tag-folding-mode 1)

;(autoload 'whitespace-mode           "whitespace" "Toggle whitespace visualization."        t)

(require 'point-undo)
(define-key global-map [f5] 'point-undo)
(define-key global-map [f6] 'point-redo)

(global-auto-revert-mode t)

(fset 'yes-or-no-p 'y-or-n-p)

;; (defface egoge-display-time
;;   '((((type x w32 mac))
;; 	 ;; #060525 is the background colour of my default face.
;; 	 (:foreground "#060525" :inherit bold))
;; 	(((type tty))
;; 	 (:foreground "black")))
;;   "Face used to display the time in the mode line.")
;; This causes the current time in the mode line to be displayed in
;; `egoge-display-time-face' to make it stand out visually.
;(setq display-time-string-forms
;	  '((propertize (concat month "/" day " " dayname " " 24-hours ":" minutes " ")
;					;'face 'egoge-display-time
;					)))

(setq display-time-string-forms 
      '((let ((system-time-locale "japanese"))
          (propertize (format-time-string (or display-time-format 
                                             ; (if display-time-24hr-format "%H:%M" "%-I:%M%p")) now)
                                             "%Z %B%-e日(%A) %H:%M") now)
                      (quote help-echo)
                      (format-time-string "%Y/%b/%e(%a)" now)))))

(display-time-mode 1)

(cond
 ((not (string< mule-version "6.0"))
  ;; encode-translation-table
  (coding-system-put 'euc-jp :encode-translation-table
					 (get 'japanese-ucs-cp932-to-jis-map 'translation-table))
  (coding-system-put 'iso-2022-jp :encode-translation-table
					 (get 'japanese-ucs-cp932-to-jis-map 'translation-table))
  (coding-system-put 'cp932 :encode-translation-table
					 (get 'japanese-ucs-jis-to-cp932-map 'translation-table))
  ;; charset と coding-system
  (set-charset-priority 'ascii 'japanese-jisx0208 'latin-jisx0201
						'katakana-jisx0201 'iso-8859-1 'cp1252 'unicode)
;  (set-coding-system-priority 'utf-8 'euc-jp 'iso-2022-jp 'cp932)
  (set-coding-system-priority 'utf-8 'gb2312 'cp932)
  ;; for PuTTY terminal-coding-system
;  (apply 'define-coding-system 'utf-8-for-putty
;		 "UTF-8 (translate jis to cp932)"
;		 :encode-translation-table
;		 (get 'japanese-ucs-jis-to-cp932-map 'translation-table)
;		 (coding-system-plist 'utf-8))
;  (set-terminal-coding-system 'utf-8-for-putty)
  ;; East Asian Ambiguous
  (defun set-east-asian-ambiguous-width (width)
    (while (char-table-parent char-width-table)
      (setq char-width-table (char-table-parent char-width-table)))
    (let ((table (make-char-table nil)))
      (dolist (range
			   '(#x00A1 #x00A4 (#x00A7 . #x00A8) #x00AA (#x00AD . #x00AE)
						(#x00B0 . #x00B4) (#x00B6 . #x00BA) (#x00BC . #x00BF)
						#x00C6 #x00D0 (#x00D7 . #x00D8) (#x00DE . #x00E1) #x00E6
						(#x00E8 . #x00EA) (#x00EC . #x00ED) #x00F0
						(#x00F2 . #x00F3) (#x00F7 . #x00FA) #x00FC #x00FE
						#x0101 #x0111 #x0113 #x011B (#x0126 . #x0127) #x012B
						(#x0131 . #x0133) #x0138 (#x013F . #x0142) #x0144
						(#x0148 . #x014B) #x014D (#x0152 . #x0153)
						(#x0166 . #x0167) #x016B #x01CE #x01D0 #x01D2 #x01D4
						#x01D6 #x01D8 #x01DA #x01DC #x0251 #x0261 #x02C4 #x02C7
						(#x02C9 . #x02CB) #x02CD #x02D0 (#x02D8 . #x02DB) #x02DD
						#x02DF (#x0300 . #x036F) (#x0391 . #x03A9)
						(#x03B1 . #x03C1) (#x03C3 . #x03C9) #x0401
						(#x0410 . #x044F) #x0451 #x2010 (#x2013 . #x2016)
						(#x2018 . #x2019) (#x201C . #x201D) (#x2020 . #x2022)
						(#x2024 . #x2027) #x2030 (#x2032 . #x2033) #x2035 #x203B
						#x203E #x2074 #x207F (#x2081 . #x2084) #x20AC #x2103
						#x2105 #x2109 #x2113 #x2116 (#x2121 . #x2122) #x2126
						#x212B (#x2153 . #x2154) (#x215B . #x215E)
						(#x2160 . #x216B) (#x2170 . #x2179) (#x2190 . #x2199)
						(#x21B8 . #x21B9) #x21D2 #x21D4 #x21E7 #x2200
						(#x2202 . #x2203) (#x2207 . #x2208) #x220B #x220F #x2211
						#x2215 #x221A (#x221D . #x2220) #x2223 #x2225
						(#x2227 . #x222C) #x222E (#x2234 . #x2237)
						(#x223C . #x223D) #x2248 #x224C #x2252 (#x2260 . #x2261)
						(#x2264 . #x2267) (#x226A . #x226B) (#x226E . #x226F)
						(#x2282 . #x2283) (#x2286 . #x2287) #x2295 #x2299 #x22A5
						#x22BF #x2312 (#x2460 . #x24E9) (#x24EB . #x254B)
						(#x2550 . #x2573) (#x2580 . #x258F) (#x2592 . #x2595)
						(#x25A0 . #x25A1) (#x25A3 . #x25A9) (#x25B2 . #x25B3)
						(#x25B6 . #x25B7) (#x25BC . #x25BD) (#x25C0 . #x25C1)
						(#x25C6 . #x25C8) #x25CB (#x25CE . #x25D1)
						(#x25E2 . #x25E5) #x25EF (#x2605 . #x2606) #x2609
						(#x260E . #x260F) (#x2614 . #x2615) #x261C #x261E #x2640
						#x2642 (#x2660 . #x2661) (#x2663 . #x2665)
						(#x2667 . #x266A) (#x266C . #x266D) #x266F #x273D
						(#x2776 . #x277F) (#xE000 . #xF8FF) (#xFE00 . #xFE0F)
						#xFFFD
						))
		(set-char-table-range table range width))
      (optimize-char-table table)
      (set-char-table-parent table char-width-table)
      (setq char-width-table table)))
  (set-east-asian-ambiguous-width 2)
  ;;
  ;(require 'cp5022x)
  ))
;; emacs-w3m
(eval-after-load "w3m"
  '(when (coding-system-p 'cp51932)
     (add-to-list 'w3m-compatible-encoding-alist '(euc-jp . cp51932))))
;; Gnus
(eval-after-load "mm-util"
  '(when (coding-system-p 'cp50220)
     (add-to-list 'mm-charset-override-alist '(iso-2022-jp . cp50220))))
;; SEMI (cf. http://d.hatena.ne.jp/kiwanami/20091103/1257243524)
(eval-after-load "mcs-20"
  '(when (coding-system-p 'cp50220)
     (add-to-list 'mime-charset-coding-system-alist
				  '(iso-2022-jp . cp50220))))

(require 'w32-fullscreen)
(global-set-key [f11] 'w32-fullscreen)
(require 'frame-local-vars)
(require 'darkroom-mode)

(require 'cursor-chg)  ; Load this library
(change-cursor-mode 1) ; On for overwrite/read-only/input mode
(toggle-cursor-type-when-idle 1) ; On when idle

(require 'mouse-copy)

(autoload 'artist-mode "artist" "Enter artist-mode" t)

(if window-system
	(autoload 'keisen-mode "keisen-mouse" "MULE table" t)
  (autoload 'keisen-mode "keisen-mule" "MULE table" t))

(load-file "~/site-lisp/alpha-window.el")
(global-set-key [f9] 'loop-alpha)

(require 'popwin)
(setq popwin:adjust-other-windows t)
(setq display-buffer-function 'popwin:display-buffer)
(setq special-display-function 'popwin:special-display-popup-window)
(add-to-list 'special-display-buffer-names "*Help*")
(push '("*Help*" :height 20) popwin:special-display-config)
(add-to-list 'special-display-buffer-names "*Completions*")
(push '("*Completions*" :height 20) popwin:special-display-config)
(add-to-list 'special-display-buffer-names "*Messages*")
(push '("*Messages*" :height 20) popwin:special-display-config)
(add-to-list 'special-display-buffer-names "*grep*")
(push '("*grep*" :height 20) popwin:special-display-config)

;(require 'anything)
(add-to-list 'load-path "~/site-lisp/helm")
(require 'helm-config)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
;(setq anything-samewindow nil)
;(push '("*anything*" :height 20) popwin:special-display-config)
;(push '(dired-mode :position top) popwin:special-display-config)
(defun helm-my-buffers ()
  (interactive)
  (helm-other-buffer '(helm-c-source-buffers-list
					  ;helm-c-source-files-in-current-dir
                       helm-c-source-recentf
                       helm-c-source-buffer-not-found)
                     "*helm-my-buffers*"))
(global-set-key (kbd "C-x C-b") 'helm-my-buffers)

(helm-mode 1)

(require 'yascroll)
(global-yascroll-bar-mode 1)

(add-hook 'c-mode-hook 'font-lock-mode)
;(setq my-c-mode-comment-face '((:foreground "#AEAEAE" :height 90 :family "MS Gothic")))
(make-face 'my-c-mode-comment-face)
(set-face-foreground 'my-c-mode-comment-face "Green")
;(set-face-attribute 'my-c-mode-comment-face nil :foreground "Red" :height 90 :family "MS Gothic")
(add-hook 'c-mode-hook
;		  (lambda () (set (make-local-variable font-lock-comment-face) 'my-c-mode-comment-face)))
		  (lambda () (make-local-variable font-lock-comment-face) 
		  (setq font-lock-comment-face my-c-mode-comment-face)))


;; (add-hook 'emacs-lisp-mode-hook 'font-lock-mode)
;; (setq my-elisp-mode-comment-face '((t (:foreground "#00AE00" :slant italic))))
;; (add-hook 'emacs-lisp-mode-hook
;; 		  (lambda () (make-local-variable font-lock-comment-face)
;; 			(setq font-lock-comment-face my-elisp-mode-comment-face)))

(server-start)

(require 'xcscope)
(setq cscope-do-not-update-database t);auto update off


;(setq whitespace-style (quote (spaces tabs newline space-mark tab-mark newline-mark)))
(setq whitespace-style (quote (tabs newline tab-mark newline-mark)))
(setq whitespace-display-mappings
      ;; all numbers are Unicode codepoint in decimal. e.g. (insert-char 182 1)
      '(
       ; (space-mark 32 [183] [46]) ; 32 SPACE 「 」, 183 MIDDLE DOT 「·」, 46 FULL STOP 「.」
        (newline-mark 10 [8617 10]) ; 10 LINE FEED
       ; (tab-mark 9 [?\u00BB ?\t] [92 9]) ; 9 TAB, 9655 WHITE RIGHT-POINTING TRIANGLE 「▷」
        ))

;; (defface extra-whitespace-face
;;    '((t (:background "pale green")))
;;    "Used for tabs and such.")
;; (defvar my-extra-keywords
;;    '(("\t" . 'extra-whitespace-face)))
;; (add-hook 'emacs-lisp-mode-hook
;; 		  (lambda () (font-lock-add-keywords nil my-extra-keywords)))

;;(standard-display-ascii ?\t "^I")

(require 'highlight-symbol)

(global-set-key [(control f3)] 'highlight-symbol-at-point)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-prev)

(setq auto-save-default nil) ; stop creating those #auto-save# files
(setq backup-directory-alist '(("" . "~/.emacs.d/emacs-backup")))
(delete-selection-mode 1) ; delete seleted text when typing
(global-visual-line-mode 1)

(add-to-list 'load-path "~/share/emacs/site-lisp/w3m")
(add-to-list 'exec-path "~/share/emacs/site-lisp/w3m")
(autoload 'w3m "w3m" "Interface for w3m on Emacs." t)
(require 'w3m-load)
(setq w3m-use-favicon nil) 
(setq w3m-command-arguments '("-cookie" "-F")) 
(setq w3m-use-cookies t) 

;; ;;Enable Cookies
;; (setq w3m-use-cookies t)
;; ;;Follow links in W3M
;; (setq browse-url-browser-function 'w3m-browse-urlbrowse-url-new-window-flag t)
;; (autoload 'w3m-browse-url 
;; "w3m" "Ask a WWW browser to show a URL." t)
;; (global-set-key "\C-xm" 'browse-url-at-point)
;; (autoload 'browse-url-interactive-arg "browse-url")
;; ;;Set default download directory
;; (let ((d "~/downloads/"))
;;   (setq w3m-default-save-directory
;; 		(or (and (file-directory-p d) d) w3m-default-directory)))

;; ;;W3M doesn't name buffers very intelligently. Let's fix that:
;; (add-hook 'w3m-display-hook 
;;           (lambda (url)(rename-buffer 
;; 						(format "*w3m: %s*" (or w3m-current-titlew3m-current-url)) t)))


(require 'color-moccur)
 
(global-set-key (kbd "M-/") 'hippie-expand)

(defun he-tag-beg ()
  (let ((p
         (save-excursion 
           (backward-word 1)
           (point))))
    p))

(defun try-expand-tag (old)
  (unless  old
    (he-init-string (he-tag-beg) (point))
    (setq he-expand-list (sort
                          (all-completions he-search-string 'tags-complete-tag) 'string-lessp)))
  (while (and he-expand-list
              (he-string-member (car he-expand-list) he-tried-table))
	(setq he-expand-list (cdr he-expand-list)))
  (if (null he-expand-list)
      (progn
        (when old (he-reset-string))
        ())
    (he-substitute-string (car he-expand-list))
    (setq he-expand-list (cdr he-expand-list))
    t))

(setq hippie-expand-try-functions-list
      '(try-expand-all-abbrevs 
		try-expand-dabbrev
		try-expand-dabbrev-all-buffers 
		try-expand-dabbrev-from-kill
		try-complete-lisp-symbol-partially 
		try-complete-lisp-symbol
		try-complete-file-name-partially
		try-complete-file-name try-expand-tag))


(require 'eperiodic)

;(load-file "~/site-lisp/intel-hex-mode.el")

;(require 'timid)
;(timid-mode t)

;(defun my-add-file-hook ()
;  "Add the name of the file just opened or written to
;`file-name-history'"
;  (and buffer-file-name
;	   (progn (setq file-name-history
;					(delete buffer-file-name file-name-history))
;			  (push buffer-file-name file-name-history)))
;  nil)

;(Add-Hook 'Find-file-hooks	'my-add-file-hook)

;(add-to-list 'ac-dictionary-directories "~/site-lisp/ac-dict")
(add-to-list 'load-path "~/site-lisp/ac-dict")
(require 'auto-complete-config)
(ac-config-default)