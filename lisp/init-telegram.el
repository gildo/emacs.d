;;; init-telegram.el --- Support for Telegram
;;; Commentary:
;;; Code:

(require-package 'telega)


(telega-notifications-mode 1)


(after-load 'company
  (add-hook 'telega-chat-mode-hook
            (lambda ()
              (set (make-local-variable 'company-backends)
                   (append '(telega-company-emoji
                             telega-company-username
                             telega-company-hashtag)
                           (when (telega-chat-bot-p telega-chatbuf--chat)
                             '(telega-company-botcmd))))
              (company-mode 1))))

(provide 'init-telegram)


;;; init-telegram.el ends here
