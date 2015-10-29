;;; packages.el --- rspec-mode Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; rspec-mode obviously depends on the emacs package `rspec-mode'
(setq rspec-mode-packages
    '(
      rspec-mode
      ))

;; List of packages to exclude.
(setq rspec-mode-excluded-packages '())

(defun rspec-mode/init-rspec-mode ()
  "Initialize rspec-mode with some sane settings and keybindings"
  (use-package rspec-mode
    :defer t
    :init
    (progn
      (evil-leader/set-key
        "mtm" 'rspec-verify-matching
        "mta" 'rspec-verify-all
        "mtt" 'rspec-verify
        "mtf" 'rspec-run-last-failed
        "mtr" 'rspec-rerun
        "mts" 'rspec-verify-method
        "mto" 'rspec-toggle-spec-and-target
        "mtw" 'rspec-find-spec-or-target-other-window)

      (setq
       rspec-expose-dsl-globally t  ; except Rspec to be exposed globally in project
       compilation-scroll-output t  ; scroll output when running tests automatically
       )

      (message "Loaded rspec-mode"))))
