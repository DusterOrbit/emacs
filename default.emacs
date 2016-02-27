;; My Emacs Init File

;; Initialize package manager
(setq package-archives '(("melpa" . "http://melpa.org/packages/")
			 ("org" . "http://orgmode.org/elpa/")
			 ("gnu" . "http://elpa.gnu.org/packages/")))

(require 'package)
(package-initialize)

;; Enable Evil upon start
(require 'evil)
(evil-mode 1)

;; Remap the help command to Meta-h
(global-set-key "\M-h" 'help-for-help)

;; Add evil keybinding to jump between windows easily
(define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
(define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
(define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
(define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)

;; exit insert mode by press j and then j quickly
(setq keychord-two-keys-delay 0.5)
(key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
(key-chord-mode 1)

;; Add pomodoro
(add-to-list 'load-path "~/.emacs.d/lisp")
(require 'pomodoro) 
    (pomodoro-add-to-mode-line)
(global-set-key (kbd "<f12">) 'pomodoro-start)
(global-set-key (kbd "<f10>") 'pomodoro-pause)
(global-set-key (kbd "<f11>") 'pomodoro-resume)

;; Remove toolbar and menubar
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Global commands for Org Mode
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

;; Prevent scheduled TODOs from appearing in Global TODO list
(setq org-agenda-todo-ignore-scheduled 'all)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/org/mundane.org" "~/org/plan.org")))
 '(pomodoro-show-number nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Send all backup files to the saves directory in the home directory
(setq
 backup-by-copying t
 backup-directory-alist '(("." . "~/.saves"))
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)







