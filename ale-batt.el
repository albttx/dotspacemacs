
(defun dotspacemacs/init ()
  (setq-default



dotspacemacs-editing-style 'vim

dotspacemacs-verbose-loading nil

dotspacemacs-startup-banner 'official

dotspacemacs-startup-lists '(recents projects)

dotspacemacs-themes '(solarized-dark
                         spacemacs-dark
                         spacemacs-light
                         solarized-light
                         leuven
                         monokai
                         zenburn)

dotspacemacs-colorize-cursor-according-to-state t

dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)

dotspacemacs-leader-key "SPC"

dotspacemacs-emacs-leader-key "M-m"

dotspacemacs-major-mode-leader-key ","

dotspacemacs-major-mode-emacs-leader-key "C-M-m"

dotspacemacs-command-key ":"

dotspacemacs-remap-Y-to-y$ t

dotspacemacs-auto-save-file-location 'cache

dotspacemacs-use-ido nil

dotspacemacs-helm-resize nil

dotspacemacs-helm-no-header nil

dotspacemacs-helm-position 'bottom

dotspacemacs-enable-paste-micro-state nil

dotspacemacs-which-key-delay 0.4

dotspacemacs-which-key-position 'bottom

dotspacemacs-loading-progress-bar t

dotspacemacs-fullscreen-at-startup t

dotspacemacs-fullscreen-use-non-native nil

dotspacemacs-maximized-at-startup nil

dotspacemacs-active-transparency 90

dotspacemacs-inactive-transparency 90

dotspacemacs-mode-line-unicode-symbols t

dotspacemacs-smooth-scrolling t

dotspacemacs-smartparens-strict-mode nil

dotspacemacs-highlight-delimiters 'all

dotspacemacs-persistent-server nil

dotspacemacs-search-tools '("ag" "pt" "ack" "grep")

dotspacemacs-default-package-repository nil

))

(defun dotspacemacs/user-init ()

)

(defun dotspacemacs/user-config ()

(global-unset-key (kbd "s-p"))

(global-set-key (kbd "s-[") (lambda () (interactive) (other-window -1)))
(global-set-key (kbd "s-]") (lambda () (interactive) (other-window +1)))

(define-key evil-motion-state-map (kbd "s-}") 'eyebrowse-next-window-config)
(define-key evil-motion-state-map (kbd "s-{") 'eyebrowse-prev-window-config)
(define-key evil-motion-state-map (kbd "<s-backspace>") 'eyebrowse-close-window-config)

(setq-default indent-tabs-mode t)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)
(setq-default c-basic-offset 4)

)

(defun dotspacemacs/layers ()
  (setq-default

dotspacemacs-distribution 'spacemacs

dotspacemacs-configuration-layer-path '()

dotspacemacs-configuration-layers
'(

emacs-lisp

colors
(colors :variables colors-enable-nyan-cat-progress-bar t)

jabber

eyebrowse

evil-commentary

osx

org
(shell :variables
        shell-default-height 30
        shell-default-position 'bottom)
syntax-checking

git

;; auto-completion
;; better-defaults
;; markdown
;; version-control
;; spell-checking

)

dotspacemacs-additional-packages '(
                                     )

dotspacemacs-excluded-packages '()

dotspacemacs-delete-orphan-packages t

))
