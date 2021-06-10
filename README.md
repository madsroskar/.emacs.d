
# Table of Contents

1.  [Theme / looks](#orgeaa54e9)
2.  [Packages](#orgf00bb84)

While working on figuring out my own doom emacs setup, figuring out how elisp works,
and at the same time trying to figure out a little bit of org-mode as I go, I figured
I might as well try to document things a bit as I go.

Who I am:

    (setq user-full-name "Mads Røskar"
          user-mail-address "madshvero@gmail.com")

Trick I was taught by @davazp in order to be able to type my name in emacs as `M-o`
on a US International keyboard is caught by an emacs binding, as well as being
one of our [glorious scandinavian letters](https://www.youtube.com/watch?v=f488uJAQgmw):

    C-x RET C-\ norwegian-keyboard RET


<a id="orgeaa54e9"></a>

# Theme / looks

For most applications I am able to, I&rsquo;ve set Dracula as the theme, as
it looks nice, and has packages for a whole lot of applications

    (setq doom-theme 'doom-dracula)

For now, I keep my org directory in the standard `~/org/` directory,
but I&rsquo;ll keep the setting here still to make it easier to switch.

    (setq org-directory "~/org/")

I tried having a transparent background for my frame, but it seemed
like macOS wasn&rsquo;t all that much into it

    ;;(set-frame-parameter (selected-frame) 'alpha '(95 . 95))
    ;;(add-to-list 'default-frame-alist '(alpha . (95 . 95)))

    (add-to-list 'default-frame-alist '(background-color . "#1d1f21"))
    
    (setq doom-font (font-spec :family "Hack Nerd Font" :size 16)
          doom-big-font (font-spec :family "Hack Nerd Font" :size 35))

Trying to get Projectile to get projects from my default search path,
but with varying luck

    (setq projectile-project-search-path '("~/code"))


<a id="orgf00bb84"></a>

# [Packages](packages.md)

