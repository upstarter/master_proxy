use Mix.Config

config :<%= Macro.underscore(@app1) %>,
  port: {:system, "PORT"}
