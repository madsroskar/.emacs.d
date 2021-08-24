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

(setq org-directory "~/org/")

;; (setq org-agenda-files '("~/org" "~/work/")) ;

(setq
    org-superstar-headline-bullets-list '("⁖" "◉" "○" "✸" "✿")
)

(add-hook! org-mode :append
           #'visual-line-mode
           #'variable-pitch-mode)

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

(setq company-idle-delay 0.2
      company-minimum-prefix-length 3)
