;; don't save backup files
(setq make-backup-files nil)

;; print python debugger line on Control-p
(global-set-key (kbd "C-x [") "import pdb;pdb.set_trace()")
(global-set-key (kbd "C-x p") "import ipdb;ipdb.set_trace()")

;; bind rgrep to Control-g
(global-set-key (kbd "C-x g") 'rgrep)

;; set font size
(set-face-attribute 'default nil :height 105)

;; indent after new line
(define-key global-map (kbd "RET") 'newline-and-indent)

;; switch on ido
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t) ;; enable fuzzy matching

;; no tabs by default. modes that really need tabs should enable
;; indent-tabs-mode explicitly. makefile-mode already does that, for
;; example.
(setq-default indent-tabs-mode nil)

;; remove trailing whitespace upon save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; local dir for more lisp stuff
(add-to-list 'load-path "~/lisp/")

;; haml-mode
(require 'ruby-mode)
(require 'haml-mode)
