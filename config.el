(setq-default
 ;; fill-column 120                         ; Set width for automatic line breaks
 gc-cons-threshold (* 8 1024 1024)      ; We're not using Game Boys anymore
 require-final-newline t
 initial-scratch-message ""             ; Empty the initial *scratch* buffer
 read-process-output-max (* 1024 1024)  ; Increase read size per process
 uniquify-buffer-name-style 'forward    ; Uniquify buffer names
 warning-minimum-level :warning)           ; Skip warning buffers
(fset 'yes-or-no-p 'y-or-n-p)           ; Replace yes/no prompts with y/n
(global-subword-mode 1)                 ; Iterate through CamelCase words
(mouse-avoidance-mode 'animate)           ; Avoid collision of mouse with point
(set-default-coding-systems 'utf-8)     ; Default to utf-8 encoding
;; (global-auto-revert-mode t) ; sounds a bit scary tbh..

(setq doom-theme 'doom-tomorrow-night)

(setq doom-font (font-spec :family "Hack Nerd Font" :size 16)
      doom-big-font (font-spec :family "Hack Nerd Font" :size 35))

;; (display-time-mode 1)
;; (unless (string-match-p "^Power N/A" (battery))
;;   (display-battery-mode 1))

(setq frame-title-format
      '(""
        (:eval
         (let ((project-name (projectile-project-name)))
           (unless (string= "-" project-name)
             (format (if (buffer-modified-p)  " ◉ %s" "  ●  %s") project-name))))))

;;(set-frame-parameter (selected-frame) 'alpha '(95 . 95))
;;(add-to-list 'default-frame-alist '(alpha . (95 . 95)))

(add-to-list 'default-frame-alist '(background-color . "#1d1f21"))

(setq org-agenda-files (list "inbox.org"))

(setq org-capture-templates
       `(("i" "Inbox" entry  (file "inbox.org")
        ,(concat "* TODO %?\n"
                 "/Entered on/ %U"))))
(define-key global-map (kbd "C-c c") 'org-capture)

(setq org-directory "~/org/")

;; (setq org-agenda-files '("~/org" "~/work/")) ;

(setq
    org-superstar-headline-bullets-list '("⁖" "◉" "○" "✸" "✿")
)

;; (add-hook! org-mode :append
;;            #'visual-line-mode
;;            #'variable-pitch-mode)

(map! :map org-mode-map
      :after org
      :n "M-l" #'org-shiftmetaright)

(setq projectile-project-search-path '("~/code"))

(setq user-full-name "Mads Røskar"
      user-mail-address "madshvero@gmail.com")

(add-hook 'typescript-mode-hook 'deno-fmt-mode)
(add-hook 'js2-mode-hook 'deno-fmt-mode)

(use-package exec-path-from-shell
  :config
  (exec-path-from-shell-initialize))

(after! xterm
  (setq xterm-set-window-title nil))

(when (eq system-type 'darwin)
  (setq mac-option-modifier 'meta))
(setq mac-command-modifier 'meta)
(setq mac-pass-command-to-system nil)

(when (eq system-type 'darwin)
  (setq mac-option-modifier 'meta))
(setq mac-command-modifier 'meta)
(setq mac-pass-command-to-system nil)

(setq yas-snippet-dirs
      '("./snippets" ;; the yasmate collection
        ))

(yas-global-mode 1) ;; or M-x yas-reload-all if you've started YASnippet already.

(setq company-idle-delay 0.2
      company-minimum-prefix-length 3)
