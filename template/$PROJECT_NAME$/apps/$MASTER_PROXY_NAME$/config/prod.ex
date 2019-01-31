use Mix.Config

config :<%= Macro.underscore(@app1_name) %>,
  port: {:system, "PORT"}
