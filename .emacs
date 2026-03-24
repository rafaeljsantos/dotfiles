(setq inhibit-startup-screen t)
(setq-default display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(ido-mode 1)
(evil-mode 1)
(setq org-log-done 'time)
(setq org-hide-emphasis-markers t)
(setq default-directory "~/org/")
(setq org-todo-keywords '((sequence "TODO" "IN-PROGRESS" "WAIT" "DONE")))
(setq org-directory (expand-file-name "~/org"))
(setq org-agenda-files '("~/org/tasks.org.gpg"))
(setq diary-file '("~/org/diary"))
(setq org-journal-dir "~/org/journal/")
(setq org-journal-file-format "%Y-%m-%d.org.gpg")
(setq magit-refresh-status-buffer nil)
(setq auto-revert-buffer-list-filter
      'magit-auto-revert-repository-buffer-p)
(require 'org)
(require 'org-agenda)
(require 'org-journal)
(require 'evil)
(require 'epa-file)
(epa-file-enable)
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(wombat))
 '(package-selected-packages '(evil magit org-journal)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-set-key (kbd "C-c j") #'org-journal-new-entry)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

(add-hook 'org-mode-hook
          (lambda ()
            (org-indent-mode 1)
            (visual-line-mode 1)))


(evil-define-key 'normal org-mode-map (kbd "<tab>") #'org-cycle)

(setq org-capture-templates
      '(("t" "Task into specific headline"
         entry
         (file+headline "~/org/tasks.org.gpg" "Tasks")
         "** TODO %?\n  %U\n  %a")))

(defvar spc-leader-map (make-sparse-keymap)
  "Space leader keymap")

(with-eval-after-load 'evil
  (define-key evil-normal-state-map (kbd "SPC") spc-leader-map))

(define-key spc-leader-map (kbd ".") #'org-time-stamp)

(define-key spc-leader-map (kbd "f f") #'find-file)
(define-key spc-leader-map (kbd "f r") #'recentf-open-files)
(define-key spc-leader-map (kbd "f s") #'save-buffer)
(define-key spc-leader-map (kbd "f S") #'write-file)
(define-key spc-leader-map (kbd "f d") #'dired)

(define-key spc-leader-map (kbd "b b") #'switch-to-buffer)
(define-key spc-leader-map (kbd "b k") #'kill-buffer)
(define-key spc-leader-map (kbd "b n") #'next-buffer)
(define-key spc-leader-map (kbd "b p") #'previous-buffer)

(define-key spc-leader-map (kbd "o a") #'org-agenda)
(define-key spc-leader-map (kbd "o c") #'org-capture)
(define-key spc-leader-map (kbd "o t") #'org-todo)
(define-key spc-leader-map (kbd "o q") #'org-set-tags-command)
(define-key spc-leader-map (kbd "o n") #'org-add-note)
(define-key spc-leader-map (kbd "j a") #'org-journal-new-entry)

(define-key spc-leader-map (kbd "w s") #'split-window-below)
(define-key spc-leader-map (kbd "w v") #'split-window-right)
(define-key spc-leader-map (kbd "w d") #'delete-window)

(define-key spc-leader-map (kbd "w h") #'windmove-left)
(define-key spc-leader-map (kbd "w j") #'windmove-down)
(define-key spc-leader-map (kbd "w k") #'windmove-up)
(define-key spc-leader-map (kbd "w l") #'windmove-right)

(define-key spc-leader-map (kbd "s s") #'isearch-forward)
(define-key spc-leader-map (kbd "s r") #'query-replace)
