;;; live-preview-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (directory-file-name (file-name-directory load-file-name))) (car load-path)))



;;; Generated autoloads from live-preview.el

(defvar live-preview-mode nil "\
Non-nil if Live-Preview mode is enabled.
See the `live-preview-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `live-preview-mode'.")
(custom-autoload 'live-preview-mode "live-preview" nil)
(autoload 'live-preview-mode "live-preview" "\
Toggle automatic live preview in a side window.

When this minor mode (Live) is enabled, a live preview of your
source document is shown in a side window and updated whenever
you are idle for a few seconds.

Use the `live-preview' command (M-x live-preview) in any buffer
to set the preview command for that buffer, or to turn the
preview off for that buffer.

Though this minor mode is enabled globally, only buffers that
have a `live-preview-command' cause a preview to be rendered.

This is a global minor mode.  If called interactively, toggle the
`Live-Preview mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='live-preview-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t)
(autoload 'live-preview "live-preview" "\
Turn live preview on or off for this buffer and set the preview command.

If COMMAND is blank, the preview is turned off. Else it can be a
string (shell command) or an Emacs Lisp function. Please see the
documentation for the `live-preview-command' variable for
details.

If you call this command interactively (i.e. \\<global-map>\\[live-preview])
it will ask you to type a shell command in the minibuffer (you
can leave it blank to turn off the preview for the current
buffer). If you call this function from Lisp (e.g. a hook in your
`user-init-file'), you can also set a Lisp function.

(fn COMMAND)" t)
(register-definition-prefixes "live-preview" '("live-preview-"))

;;; End of scraped data

(provide 'live-preview-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; live-preview-autoloads.el ends here
