# encoding: UTF-8
require_relative "login"

class AndroidScreens
    attr_accessor :login

    def initialize
        @login = LoginScreen.new
    end
end
