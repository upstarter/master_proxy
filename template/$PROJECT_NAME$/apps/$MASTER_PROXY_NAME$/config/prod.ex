use Mix.Config

config :<%= Macro.underscore(@master_proxy_name) %>,
  port: {:system, "PORT"}
