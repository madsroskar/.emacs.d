(setq user-full-name "Mads Røskar"
      user-mail-address "banana@gmail.com")

(setq doom-theme 'doom-dracula)

(setq org-directory "~/org/")

;;(set-frame-parameter (selected-frame) 'alpha '(95 . 95))
;;(add-to-list 'default-frame-alist '(alpha . (95 . 95)))

(add-to-list 'default-frame-alist '(background-color . "#1d1f21"))

(setq doom-font (font-spec :family "Hack Nerd Font" :size 16)
      doom-big-font (font-spec :family "Hack Nerd Font" :size 35))

(setq projectile-project-search-path '("~/code"))

(after! xterm
  (setq xterm-set-window-title nil))

(display-time-mode 1)
(unless (string-match-p "^Power N/A" (battery))
  (display-battery-mode 1))

(setq frame-title-format
      '(""
        (:eval
         (if (s-contains-p org-roam-directory (or buffer-file-name ""))
             (replace-regexp-in-string
              ".*/[0-9]*-?" "☰ "
              (subst-char-in-string ?_ ?  buffer-file-name))
           "%b"))
        (:eval
         (let ((project-name (projectile-project-name)))
           (unless (string= "-" project-name)
             (format (if (buffer-modified-p)  " ◉ %s" "  ●  %s") project-name))))))

(setq org-agenda-files '("~/org"))

(setq
    org-superstar-headline-bullets-list '("⁖" "◉" "○" "✸" "✿")
)
(use-package exec-path-from-shell
  :config
  (exec-path-from-shell-initialize))

(setq company-idle-delay 0.2
      company-minimum-prefix-length 3)
