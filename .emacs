;; don't save backup files
(setq make-backup-files nil)

;; print python debugger line on Control-p
(global-set-key (kbd "C-x p") "import pdb;pdb.set_trace()")

;; bind rgrep to Control-g
(global-set-key (kbd "C-x g") 'rgrep)

;; set font size
(set-face-attribute 'default nil :height 100)



