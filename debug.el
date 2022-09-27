;; optionally if you want to use debugger
(use-package exec-path-from-shell
  :ensure
  :init (exec-path-from-shell-initialize)
)

(use-package dap-mode
  :ensure
  :config
  (dap-ui-mode)
  (dap-ui-controls-mode 1)

  (require 'dap-lldb)
  (require 'dap-gdb-lldb)
  ;; 安装 .extendsion/vscode
  (dap-gdb-lldb-setup)
  (dap-register-debug-template
    "Rust::LLDB Run Configuration"
    (list :type "lldb"
      :request "launch"
      :name "LLDB::Run"
      :gdbpath "rust-lldb"
      :target nil
      :cwd nil
    )
  )
)