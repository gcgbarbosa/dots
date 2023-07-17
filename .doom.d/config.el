;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "George C. G. Barbosa"
      user-mail-address "gcgbarbosa@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "Iosevka Nerd Font" :size 24 :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "sans" :size 18))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-ir-black)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/repos/gcgbarbosa/life/org/")
(setq org-roam-directory "~/repos/gcgbarbosa/life/org/roam/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
;; normal is simply (setq display-line-numbers-type t)
(setq display-line-numbers-type 'relative)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(map! :leader
      (:prefix-map ("l" . "natural [l]anguage")
       :desc "Apply checks" "f"        #'langtool-correct-buffer
       :desc "Check language" "c"      #'langtool-check
       :desc "Check language done" "d" #'langtool-check-done
       :desc "Toggle write good" "t"   #'writegood-mode
       :desc "Check reading grade" "g" #'writegood-grade-level
       ))

(map! :map dap-mode-map
      :leader
      :prefix ("d" . "dap")
      ;; basics
      :desc "dap next"          "n" #'dap-next
      :desc "dap step in"       "i" #'dap-step-in
      :desc "dap step out"      "o" #'dap-step-out
      :desc "dap continue"      "c" #'dap-continue
      :desc "dap hydra"         "h" #'dap-hydra
      :desc "dap debug restart" "r" #'dap-debug-restart
      :desc "dap debug"         "s" #'dap-debug

      ;; debug
      :prefix ("dd" . "Debug")
      :desc "dap debug recent"  "r" #'dap-debug-recent
      :desc "dap debug last"    "l" #'dap-debug-last

      ;; eval
      :prefix ("de" . "Eval")
      :desc "eval"                "e" #'dap-eval
      :desc "eval region"         "r" #'dap-eval-region
      :desc "eval thing at point" "s" #'dap-eval-thing-at-point
      :desc "add expression"      "a" #'dap-ui-expressions-add
      :desc "remove expression"   "d" #'dap-ui-expressions-remove

      :prefix ("db" . "Breakpoint")
      :desc "dap breakpoint toggle"      "b" #'dap-breakpoint-toggle
      :desc "dap breakpoint condition"   "c" #'dap-breakpoint-condition
      :desc "dap breakpoint hit count"   "h" #'dap-breakpoint-hit-condition
      :desc "dap breakpoint log message" "l" #'dap-breakpoint-log-message)

(map! :map research-mode-map
      :leader
      :prefix ("r" . "research")
      ;; basics
      :desc "research insert citation"   "c" #'citar-insert-citation
      :desc "research open bib entry"    "e" #'citar-open-entry
      :desc "research open file"        "f"  #'citar-open
      :desc "research refresh bibtex"   "r"  #'citar-refresh
      )


;; the after keyword means that the command will
;; run only after org is done loading
(after! org-agenda
  (setq org-agenda-files
        '("~/repos/gcgbarbosa/life/org/gmail-gcal.org"
          "~/repos/gcgbarbosa/life/org/tasks.org"
          )
        ))


;; Org-pomodoro
(after! org-pomodoro
  (setq org-pomodoro-length 25
        org-pomodoro-short-break-length 5
        org-pomodoro-long-break-length 15
        org-pomodoro-play-sounds nil
        org-pomodoro-clock-break 1
        org-pomodoro-manual-break 1))

;; Citations
(after! citar
  (setq! citar-bibliography '("~/repos/research/references/refs.bib")
         citar-library-paths '("~/repos/research/references/pdfs/")
         citar-notes-paths '("~/repos/research/references/pdfs/")
         ))

(after! org-gcal
  ;; configuring org with gcal
  (setq org-gcal-client-id "1017129847861-8d36kja4t0hslbv3jsg2vb2391fcjc3g.apps.googleusercontent.com"
        org-gcal-client-secret "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"
        org-gcal-fetch-file-alist '(("gcgbarbosa@gmail.com" .  "~/repos/gcgbarbosa/life/org/gmail-gcal.org"))
        )
  )

(after! org-download
  (setq-default org-download-image-dir "/home/gcgbarbosa/imgs/org")
  )

(after! plantuml-mode
  ;; Sample jar configuration
  (setq plantuml-jar-path "/home/gcgbarbosa/.local/bin/plantuml.jar")
  (setq plantuml-default-exec-mode 'jar)
  )

(after! mu4e
  (set-email-account!
   "gmail"
   '((mu4e-sent-folder       . "/gmail/sent")
     (mu4e-drafts-folder     . "/gmail/drafts")
     (mu4e-trash-folder      . "/gmail/trash")
     (mu4e-refile-folder     . "/gmail/Inbox")
     (smtpmail-smtp-user     . "gcgbarbosa@gmail.com")
     (user-mail-address      . "gcgbarbosa@gmail.com")    ;; only needed for mu < 1.4
     (mu4e-compose-signature . "---\nGeorge C. G. Barbosa"))
   t)

  (set-email-account!
   "arizona"
   '((mu4e-sent-folder       . "/arizona/sent")
     (mu4e-drafts-folder     . "/arizona/drafts")
     (mu4e-trash-folder      . "/arizona/trash")
     (mu4e-refile-folder     . "/arizona/Inbox")
     (smtpmail-smtp-user     . "gcgbarbosa@arizona.edu")
     (user-mail-address      . "gcgbarbosa@arizona.edu")    ;; only needed for mu < 1.4
     (mu4e-compose-signature . "---\nGeorge C. G. Barbosa"))
   t)
  )

;; allows us to run conda environments
(setenv "WORKON_HOME" "/home/gcgbarbosa/anaconda3/envs/")


;; org-roam-ui stuff
(use-package! websocket
    :after org-roam)

(use-package! org-roam-ui
    :after org-roam ;; or :after org
;;         normally we'd recommend hooking orui after org-roam, but since org-roam does not have
;;         a hookable mode anymore, you're advised to pick something yourself
;;         if you don't care about startup time, use
;;  :hook (after-init . org-roam-ui-mode)
    :config
    (setq org-roam-ui-sync-theme t
          org-roam-ui-follow t
          org-roam-ui-update-on-save t
          org-roam-ui-open-on-start t))
