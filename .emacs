(setq inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(ido-mode 1)
(evil-mode 1)
(global-visual-line-mode 1)
(display-line-numbers-mode 1)
(auto-fill-mode 1)
(setq org-todo-keywords '((sequence "TODO" "IN-PROGRESS" "WAIT" "DONE")))
(setq org-directory (expand-file-name "~/org"))
(setq org-agenda-files '("~/org/"))
(setq diary-file '("~/org/diary"))
(setq org-journal-dir "~/org/journal/")
(setq org-journal-file-format "%Y-%m-%d.org")
(setq magit-refresh-status-buffer nil)
(setq auto-revert-buffer-list-filter
      'magit-auto-revert-repository-buffer-p)
(require 'org)
(require 'org-agenda)
(require 'org-journal)
(require 'evil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes nil)
 '(package-selected-packages '(evil magit org-journal)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-set-key (kbd "C-c j") #'org-journal-new-entry)
(global-set-key (kbd "C-c a") #'org-agenda)
