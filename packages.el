;;; packages.el --- spacemacs-databases layer packages file for Spacemacs.
;;
;; Copyright (c) 2018 
;;
;; Author: Aaron Peters <acpkendo@gmail.com>
;; URL: https://github.com/acpkendo/spacemacs-databases
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `spacemacs-databases-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `spacemacs-databases/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `databases/pre-init-PACKAGE' and/or
;;   `spacemacs-databases/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst spacemacs-databases-packages
    '(
        (rec-mode :location local)
        (ob-rec :location local)
    )
)

(defun spacemacs-databases/init-databases
    init:
)

(defun spacemacs-databases/init-rec-mode ()
    (use-package rec-mode
    :mode (("\\.rec?\\'" . rec-mode))
    :defer t)
)

(defun spacemacs-databases/init-ob-rec ()
    (use-package ob-recipe
    :defer t)
)

;;;
;;  "The list of Lisp packages required by the databases layer.
;;
;; Each entry is either:
;;
;; 1. A symbol, which is interpreted as a package to be installed, or
;;
;; 2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
;;    name of the package to be installed or loaded, and KEYS are
;;    any number of keyword-value-pairs.
;;
;;    The following keys are accepted:
;;
;;    - :excluded (t or nil): Prevent the package from being loaded
;;      if value is non-nil
;;
;;    - :location: Specify a custom installation location.
;;      The following values are legal:
;;
;;      - The symbol `elpa' (default) means PACKAGE will be
;;        installed using the Emacs package manager.
;;
;;      - The symbol `local' directs Spacemacs to load the file at
;;        `./local/PACKAGE/PACKAGE.el'
;;
;;      - A list beginning with the symbol `recipe' is a melpa
;;        recipe.  See: https://github.com/milkypostman/melpa#recipe-format")
;;;

;;; packages.el ends here
