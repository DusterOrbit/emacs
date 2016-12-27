;; Enable package managero
(setq package-archives '(("melpa" . "http://melpa.org/packages/")
			 ("org" . "http://orgmode.org/elpa/")
			 ("gnu" . "https://elpa.gnu.org/packages/")))

(require 'package)
(package-initialize)

;; Enable evil mode
(require 'evil)
(evil-mode 1)


;; incorporate text folding minor mode origami
(add-to-list 'load-path (expand-file-name "/path/to/origami.el/"))
(require 'origami)


;; Add evil keybindings to jump between windows easily
(global-set-key "\M-p" 'help-for-help)
(define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
(define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
(define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
(define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)


;; Exit insert mode by pressing ja and then j quickly
(setq key-chord-two-keys-delay 0.5)
(key-chord-define evil-insert-state-map "kj" 'evil-normal-state)  
(key-chord-mode 1)

;; Add pomodoro to the modeline
(add-to-list 'load-path "~/.emacs.d/lisp")
(require 'pomodoro)
(pomodoro-add-to-mode-line)
(global-set-key (kbd "<f12>") 'pomodoro-start)
(global-set-key (kbd "<f10>") 'pomodoro-pause)
(global-set-key (kbd "<f11>") 'pomodoro-resume)

(add-to-list 'default-frame-alist '(font . "Source Code Pro"))

;; Remove the Menubar and the Toolbar
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Prevent scheduled TODOs from appearing in Global TODO list
(setq org-agenda-todo-ignore-scheduled 'all)

;; Enable org-mode and key-bindings
(require 'org)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)
(setq org-log-done t)

;; Add the WAITING state for TODOS
(setq org-todo-keywords
      '((sequence "TODO" "IN PROGRESS" "WAITING" "|" "CANCELLED" "DONE")))

;; Add blue color for waiting state
(setq org-todo-keyword-faces
      '(("TODO" . "yellow") ("IN PROGRESS" . "slate gray") ("WAITING" . "purple") ("CANCELLED" . "red")))

;; Add desired files to the agenda
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#ffffff" "#ff9da4" "#d1f1a9" "#ffeead" "#bbdaff" "#ebbbff" "#99ffff" "#002451"))
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#657b83")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (zenburn)))
 '(custom-safe-themes
   (quote
    ("26ce7eea701bfd143ac536e6805224cff5598b75effb60f047878fe9c4833ae4" "405b0ac2ac4667c5dab77b36e3dd87a603ea4717914e30fcf334983f79cfd87e" "b79104a19e95f10698badb711bd4ab25565af3ffcf18fa7d3c7db4de7d759ac8" "c4a784404a2a732ef86ee969ab94ec8b8033aee674cd20240b8addeba93e1612" "9b402e9e8f62024b2e7f516465b63a4927028a7055392290600b776e4a5b9905" "f9574c9ede3f64d57b3aa9b9cef621d54e2e503f4d75d8613cbcc4ca1c962c21" "cab317d0125d7aab145bc7ee03a1e16804d5abdfa2aa8738198ac30dc5f7b569" "39dd7106e6387e0c45dfce8ed44351078f6acd29a345d8b22e7b8e54ac25bac4" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "70b9c3d480948a3d007978b29e31d6ab9d7e259105d558c41f8b9532c13219aa" "ac2b1fed9c0f0190045359327e963ddad250e131fbf332e80d371b2e1dbc1dc4" "99953b61ecd4c3e414a177934e888ce9ee12782bbaf2125ec2385d5fd732cbc2" "74278d14b7d5cf691c4d846a4bbf6e62d32104986f104c1e61f718f9669ec04b" "613a7c50dbea57860eae686d580f83867582ffdadd63f0f3ebe6a85455ab7706" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "6c62b1cd715d26eb5aa53843ed9a54fc2b0d7c5e0f5118d4efafa13d7715c56e" "f3d6a49e3f4491373028eda655231ec371d79d6d2a628f08d5aa38739340540b" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" default)))
 '(fci-rule-color "#003f8e")
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#fdf6e3" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#586e75")
 '(highlight-tail-colors
   (quote
    (("#eee8d5" . 0)
     ("#B4C342" . 20)
     ("#69CABF" . 30)
     ("#69B7F0" . 50)
     ("#DEB542" . 60)
     ("#F2804F" . 70)
     ("#F771AC" . 85)
     ("#eee8d5" . 100))))
 '(hl-bg-colors
   (quote
    ("#DEB542" "#F2804F" "#FF6E64" "#F771AC" "#9EA0E5" "#69B7F0" "#69CABF" "#B4C342")))
 '(hl-fg-colors
   (quote
    ("#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3")))
 '(hl-sexp-background-color "#efebe9")
 '(magit-diff-use-overlays nil)
 '(notmuch-search-line-faces
   (quote
    (("unread" :foreground "#aeee00")
     ("flagged" :foreground "#0a9dff")
     ("deleted" :foreground "#ff2c4b" :bold t))))
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(org-agenda-files
   (quote
    ("~/org/ideas.org" "~/org/knowledge.org" "~/org/work.org")))
 '(pos-tip-background-color "#eee8d5")
 '(pos-tip-foreground-color "#586e75")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#eee8d5" 0.2))
 '(term-default-bg-color "#fdf6e3")
 '(term-default-fg-color "#657b83")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#ff9da4")
     (40 . "#ffc58f")
     (60 . "#ffeead")
     (80 . "#d1f1a9")
     (100 . "#99ffff")
     (120 . "#bbdaff")
     (140 . "#ebbbff")
     (160 . "#ff9da4")
     (180 . "#ffc58f")
     (200 . "#ffeead")
     (220 . "#d1f1a9")
     (240 . "#99ffff")
     (260 . "#bbdaff")
     (280 . "#ebbbff")
     (300 . "#ff9da4")
     (320 . "#ffc58f")
     (340 . "#ffeead")
     (360 . "#d1f1a9"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#fdf6e3" "#eee8d5" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#657b83" "#839496")))
 '(xterm-color-names
   ["#eee8d5" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#073642"])
 '(xterm-color-names-bright
   ["#fdf6e3" "#cb4b16" "#93a1a1" "#839496" "#657b83" "#6c71c4" "#586e75" "#002b36"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#3F3F3F" :foreground "#DCDCCC" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 158 :width normal :foundry "outline" :family "Source Code Pro")))))

;; Setup capture template
(setq org-capture-templates
      '(("e" "Emacs" entry (file+olp "~/org/work.org" "Ideas" "Emacs")
	 "* %?\n\n")
	("i" "Ideas" entry (file+olp "~/org/work.org" "Ideas" "General")
	 "* %?\n\n")
	("Q" "Questions" entry (file+olp "~/org/work.org" "Knowledge" "Questions")
	 "* %? \n\n")
	("t" "Tasks" entry (file+olp "~/org/work.org" "Active")
	 "* TODO %? \n\n\n%t")))

;; Send all backup files to the saves directory in the ~ directory
(setq
 backup-by-copying t
 backup-directory-alist '(("." . "~/.saves"))
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)

;; add evil keybindings 'j' and 'k' to org agenda mode for
;; easy travel between lines and add "c-h" to move back to
;; left window easily
;;(define-key org-agenda-mode-map "j" 'evil-next-line)
;;(define-key org-agenda-mode-map "k" 'evil-previous-line)
;;(define-key org-agenda-mode-map (kbd "c-h") 'evil-window-left)

;; enable theme
;;(require 'color-theme-sanityinc-tomorrow)
;;(color-theme-sanityinc-tomorrow-night)

;; change indentation
(setq org-list-indent-offset 2)
(setq org-startup-indented t)

;; open work.org on startup
(setq initial-buffer-choice "~/org/work.org")

;; use js2-mode instead of default js-mode
;;(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; Enlarge font
(set-face-attribute 'default nil :font "Courier New-10.0" :height 160)
