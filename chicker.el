; Команда C-w удаляет слово или выделенный регион.
(defun backward-kill-word-or-kill-region (arg)
  (interactive "p")
  (if (region-active-p)
      (kill-region (region-beginning) 
                   (region-end))
    (backward-kill-word arg)))

(global-set-key (kbd "C-w") 'backward-kill-word-or-kill-region)

(define-key minibuffer-local-map (kbd "C-w") 'backward-kill-word-or-kill-region)

(add-hook 'ido-setup-hook 
          (lambda ()
            (define-key ido-completion-map (kbd "C-w") 'ido-delete-backward-word-updir)))

; Команда C-q выполняет отмену
(global-set-key (kbd "C-q") 'undo)

; Команда C-z выполняет quoted insert
(global-set-key (kbd "C-z") 'quoted-insert)

; Команда C-x C-k убивает текущий буфер
(defun kill-current-buffer ()
  (interactive)
  (kill-buffer (current-buffer)))
(global-set-key (kbd "C-x C-k") 'kill-current-buffer)

; Команды C-x C-i и C-x Tab позволяют перейти к определению символа в буфере
(global-set-key (kbd "C-x C-i") 'ido-imenu)

 ; Меняем шрифт на Terminus
;(set-face-font 'default "-xos4-terminus-medium-r-normal--14-140-*-*-*-*-*-*")
(setq default-frame-alist '((font . "terminus")))

;; Включаем проверку орфографии "на лету"
(setq flyspell-dictionary "russian")
(global-set-key [f11] 'ispell-buffer)
(global-set-key [f12] 'flyspell-mode)

;; Подключаем org-mode
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-log-done t)

; Подключаем темы
(add-to-list 'load-path (concat dotfiles-dir "/chicker/color-themes"))
(require 'color-theme)
(color-theme-initialize)
(color-theme-zenburn)

;; Подключаем auto-completion
(add-to-list 'load-path (concat dotfiles-dir "/chicker/auto-completion/"))
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/chicker/auto-completion/ac-dict")
(ac-config-default)

