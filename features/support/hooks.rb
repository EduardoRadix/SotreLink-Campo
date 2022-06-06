# encoding: UTF-8
require "report_builder"
require "date"
Before do
  #sobe o servidor do appium
  driver.start_driver
  #timeout de 10 segundos
  driver.manage.timeouts.implicit_wait = 60
  # #device_type = "android"
  @screen = AndroidScreens.new if DEVICE.eql?("android")
end

After do |scenario|
  #chama o driver do appium e tira uma foto
  binary_shot = driver.screenshot_as(:base64)
  attach(binary_shot, "image/png")
  #diretorio para salvar a evidencia
  temp_shot = "logs/temp_shot.png"

  #transformando o arquivo binario da foto para arquivo
  File.open(temp_shot, "wb") do |f|
    f.write(Base64.decode64(binary_shot).force_encoding("UTF-8"))
  end
  driver.quit_driver
end

at_exit do
  @infos = {
    "device" => DEVICE.upcase,
    "environment" => "Dev",
    "app" => "SotreqLink Campo App",
    "Data do Teste" => Time.now.to_s,
  }

  ReportBuilder.configure do |config|
    config.input_path = "log/report.json"
    config.report_path = "log/report"
    config.report_types = [:html]
    config.report_title = "SotreqLink Campo App"
    config.additional_info = @infos
    config.color = "indigo"
  end
  ReportBuilder.build_report
end
