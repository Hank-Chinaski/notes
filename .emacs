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

;; add .emacs.d to load path
(add-to-list 'load-path "~/.emacs.d")

;; modes
(require 'ruby-mode)
;;(require 'haml-mode)

;; file type to mode associations
(add-to-list 'auto-mode-alist '("\\.qml\\'" . javascript-mode))

;; don't save backup files
(setq make-backup-files nil)
(setq auto-save-default nil)

;; don't indent in namespaces
(defconst my-c-style
  '("gnu"
    (c-offsets-alist . ((innamespace . [0])))))
(c-add-style "my-c-style" my-c-style)
(setq c-default-style "my-c-style")
