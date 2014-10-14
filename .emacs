(load "~/.emacs.d/tuareg/tuareg-site-file")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (light-blue)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))

;;set c++ style to stroustrup
(add-hook 'c++-mode-hook
          '(lambda ()
             (c-set-style "stroustrup")))

;;remove toolbar
(tool-bar-mode -1)

;;add helm，现有的buffer，快速打开文件,设置快捷键为ctrl+q
(add-to-list 'load-path "~/.emacs.d/helm")
(require 'helm-config)
(global-set-key (kbd "C-q") 'helm-mini)

;;不生成临时文件
(setq-default make-backup-files nil)
;;关闭启动页面
(setq inhibit-startup-message t) 

(add-to-list 'load-path "~/.emacs.d/auto-complete")
(require 'auto-complete)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)

(add-hook 'python-mode-hook
  (lambda ()
    (setq indent-tabs-mode t)
    (setq python-indent 4)
    (setq tab-width 4))
    (tabify (point-min) (point-max)))
;;utf-8编码
(prefer-coding-system 'utf-8)
(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)
