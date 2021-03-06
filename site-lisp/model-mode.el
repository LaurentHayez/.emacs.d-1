(require 'generic-x)

(define-generic-mode 'model-mode
  '()
  '()
  '(("\\(#.*$\\)" 1 'font-lock-comment-face)
    ("\\(\\<d\\>\\)(" 1 'font-lock-constant-face)
    ("\\(\\<sum\\>\\)(" 1 'font-lock-constant-face)
    ("\\(\\<value\\>\\)(" 1 'font-lock-constant-face)
    ("\\(\\<if\\>\\)(" 1 'font-lock-constant-face)
    ("\\(@elem\\)(" 1 'font-lock-constant-face)
    ("\\(\\<in\\>\\)" 1 'font-lock-keyword-face)
    ("\\(\\<if\\>\\)" 1 'font-lock-keyword-face)
    ("\\<\\(where\\)\\>" 1 'font-lock-keyword-face)
    ("\\(\\<on\\>\\)" 1 'font-lock-keyword-face)
    ("\\(\\<,\\>\\)" 1 'font-lock-keyword-face)
    ("^\\(@pv\\)" 1 'font-lock-keyword-face)
    ("^\\(@over\\)" 1 'font-lock-keyword-face)
    ("%[a-zA-Z0-9_]+" . 'font-lock-variable-name-face)
    ("[A-Z][a-zA-Z0-9_]*" . 'font-lock-string-face)
    ("[0-9]+ " . 'font-lock-string-face)
    )
  '(".mdl\\'")
  nil)

(provide 'model-mode)
