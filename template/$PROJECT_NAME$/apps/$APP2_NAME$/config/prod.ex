use Mix.Config

config :<%= Macro.underscore(@app2_name) %>,
  port: {:system, "PORT"}
