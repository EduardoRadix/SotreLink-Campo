class LoginScreen
    def clicando_permitir_login
        find_element(:id, "com.android.packageinstaller:id/permission_allow_button").click
    end

    def acessando(usuario)
        find_element(xpath: "//android.widget.EditText[@text='Matrícula']").send_keys(usuario[:matricula])
        find_element(xpath: "//android.widget.EditText[@text='Senha']").send_keys(usuario[:senha])
        find_element(xpath: "//android.widget.TextView[@text='ENTRAR']").click
    end

    def tela_home_validacao
        sleep 20
        sleep(1) until find_element(xpath: "//android.widget.TextView[@text='SotreqLink Campo']").displayed?
        if find_element(xpath: "//android.widget.TextView[@text='SotreqLink Campo']").displayed?
            find_element(xpath: "//android.view.ViewGroup[@index='4']").click
            return find_element(xpath: "//android.widget.TextView[@text='Ordens de Serviço']")
        else
            return find_element(xpath: "//android.widget.TextView[@text='Ordens de Serviço']")
        end
    end
end
