(add-to-list 'load-path "/Users/scox/.emacs.d/color-theme-6.6.0")
(add-to-list 'load-path "/Users/scox/.emacs.d/yaml-mode")
    (add-to-list 'load-path "~/emacs")

(setq global-linum-mode t)

(add-to-list 'default-frame-alist
                       '(font . "Monaco-12"))

    

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

;;(require 'yaml-mode)
;;(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

(setq-default indent-tabs-mode nil)

;; javascript indent level
(setq js-indent-level 2)

;;(custom-set-variables  
;; '(js2-basic-offset 2)
;; '(js2-bounce-indent-p t)
;;)


;(add-to-list 'load-path "/Users/scox/emacs/sparql-mode/")
;(require 'sparql-mode)
;(autoload 'sparql-mode "sparql-mode" "Major mode for editing SPARQL files" t)
;(add-to-list 'auto-mode-alist '("\\.sparql$" . sparql-mode))
;(add-to-list 'auto-mode-alist '("\\.rq$" . sparql-mode)))


(require 'color-theme)
(color-theme-initialize)
(color-theme-calm-forest)
    ;;(set-face-attribute 'default nil :height 165)
(set-face-attribute 'default nil :height 145)
  (set-face-attribute 'default nil :family "Consolas")

;;(setq command-line-default-directory "~/dev")

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
(unless (package-installed-p 'scala-mode2)
  (package-refresh-contents) (package-install 'scala-mode2))


;; drag and drop os x
(define-key global-map [ns-drag-file] 'my-ns-open-files)
(defun my-ns-open-files ()
  "Open files in the list `ns-input-file'."
  (interactive)
  (mapc 'find-file ns-input-file)
  (setq ns-input-file nil))

 ;;(set-frame-parameter (selected-frame) 'alpha '(<active> [<inactive>]))
 (set-frame-parameter (selected-frame) 'alpha '(100 50))
 (add-to-list 'default-frame-alist '(alpha 100 50))

 (eval-when-compile (require 'cl))
 (defun toggle-transparency ()
   (interactive)
   (if (/=
        (cadr (frame-parameter nil 'alpha))
        100)
       (set-frame-parameter nil 'alpha '(100 100))
     (set-frame-parameter nil 'alpha '(100 50))))
 (global-set-key (kbd "C-c t") 'toggle-transparency)

(setq auto-mode-alist (cons '(".cs" . java-mode) auto-mode-alist))

