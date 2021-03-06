(eval-when-compile
  (require 'color-theme))

(defun wombat-theme ()
  "Example theme. Carbon copy of color-theme-gnome contributed by Jonadab."
  (interactive)
  (color-theme-install
   '(wombat-theme
     (

;; Wombat theme ported from Vim
;;
(set-background-color “#242424″)
(set-foreground-color “#f6f3e8″)
(set-cursor-color “#656565″)
(set-face-foreground ‘font-lock-comment-face “#99968b”)
(set-face-italic-p ‘font-lock-comment-face t)
(set-face-foreground ‘font-lock-doc-face “#99968b”)
(set-face-italic-p ‘font-lock-doc-face t)
(set-face-foreground ‘font-lock-constant-face “#e5786d”)
(set-face-foreground ‘font-lock-string-face “#95e454″)
(set-face-italic-p ‘font-lock-string-face t)
(set-face-foreground ‘font-lock-variable-name-face “#cae682″)
(set-face-foreground ‘font-lock-function-name-face “#cae682″)
(set-face-foreground ‘font-lock-type-face “#cae682″)
(set-face-foreground ‘font-lock-builtin-face “#8ac6f2″)
(set-face-foreground ‘font-lock-keyword-face “#8ac6f2″)
(set-face-foreground ‘font-lock-preprocessor-face “#e5786d”)
(set-face-foreground ‘font-lock-negation-char-face “#e7f6da”)
(set-face-foreground ‘link “#8ac6f2″)
(set-face-bold-p ‘link t)
(set-face-underline-p ‘link t)
(set-face-foreground ‘show-paren-match “#f6f3e8″)
(set-face-background ‘show-paren-match “#857b6f”)
(set-face-bold-p ‘show-paren-match t)
(set-face-foreground ‘region “#f6f3e8″)
(set-face-background ‘region “#444444″)
(set-face-foreground ‘lazy-highlight “black”)
(set-face-background ‘lazy-highlight “yellow”)
    )
