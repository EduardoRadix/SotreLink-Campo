# encoding: UTF-8
require_relative "login"
require_relative "os_avulsa"

class AndroidScreens
    attr_accessor :login, :os_avulsa

    def initialize
        @login = LoginScreen.new
        @os_avulsa = NovaOssAvulsaScreen.new
    end
end
