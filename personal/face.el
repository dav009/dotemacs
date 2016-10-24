(setq inhibit-startup-message t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(global-linum-mode t)
(blink-cursor-mode t)
(column-number-mode 1)


(load-theme 'monokai t)
(setq mac-allow-anti-aliasing t)
(set-face-attribute 'default nil :height 100)

(require 'powerline)
(require 'moe-theme)
(powerline-moe-theme)


(require 'ibuffer)
(define-ibuffer-column size-h
  (:name "Size" :inline t)
  (cond
   ((> (buffer-size) 1000000) (format "%7.1fM" (/ (buffer-size) 1000000.0)))
   ((> (buffer-size) 100000) (format "%7.0fk" (/ (buffer-size) 1000.0)))
   ((> (buffer-size) 1000) (format "%7.1fk" (/ (buffer-size) 1000.0)))
   (t (format "%8d" (buffer-size)))))

;; Modify the default ibuffer-formats
(setq ibuffer-formats
      '((mark modified read-only " "
              (name 20 20 :left :elide)
              " "
              (size-h 9 -1 :right)
              " "
              (mode 10 10 :left :elide)
              " "
              filename-and-process)))