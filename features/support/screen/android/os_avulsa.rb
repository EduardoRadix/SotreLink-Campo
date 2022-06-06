class NovaOssAvulsaScreen
include Scroll
    def preenchendo_os_avulsa(prioridade)
        find_element(xpath: "//android.widget.TextView[@text='AVULSAS']").click
        find_element(xpath: "//android.widget.TextView[@text='']").click
        find_element(xpath: "//android.widget.EditText[@index='4']").click
        find_element(xpath: "//android.widget.TextView[@text='661 - DESPESAS ADICIONAIS']").click
        # jobscodes = find_elements(xpath: "//android.view.ViewGroup[@index='0']")[30..]
        # jobscodes.each do |jobscode|
        #     break jobscode.click() if jobscode.clickable?
        # end
        find_element(xpath: "//android.widget.EditText[@index='6']").click
        find_element(xpath: "//android.widget.TextView[@text='0334 - SISTEMA DE ANALISE']").click
        # componentcodes = find_elements(xpath: "//android.view.ViewGroup[@index='0']")[29..]
        # componentcodes.each do |componentcode|
        #     break componentcode.click() if componentcode.clickable?
        # end
        case prioridade
        when ("baixa")
            find_element(xpath: "//android.widget.TextView[@text='BAIXA']").click
        when ("media")
            find_element(xpath: "//android.widget.TextView[@text='MÉDIA']").click
        when ("alta")
            find_element(xpath: "//android.widget.TextView[@text='ALTA']").click
        end
        find_element(xpath: "//android.widget.EditText[@index='13']").click
        find_element(xpath: "//android.widget.TextView[@text='0000054480 - TERRAPLAN ENGENHARIA LTDA']").click
        # codigo_nomes = find_elements(xpath: "//android.view.ViewGroup[@index='0']")[28..]
        # codigo_nomes.each do |codigo_nome|
        #     break codigo_nome.click() if codigo_nome.clickable?
        # end
        sleep(0.5)
        scroll_novo("//android.widget.TextView[@text='Logradouro']")
        find_element(xpath: "//android.widget.EditText[@text='RUA, AVENIDA, RODOVIA, ETC']").send_keys("Rua Teste")
        find_element(xpath: "//android.widget.EditText[@index='18']").send_keys("100")
        scroll_novo("//android.widget.TextView[@text='Cidade']")
        find_element(xpath: "//android.widget.EditText[@index='22']").send_keys("São Paulo")
        # find_element(xpath: "//android.widget.Spinner[@index='0']").click
        # find_element(xpath: "//android.widget.TextView[@text='DF']").click
        find_element(xpath: "//android.widget.EditText[@index='24']").send_keys("02185030")
        scroll_novo("//android.widget.TextView[@text='Nome']")
        find_element(xpath: "//android.widget.EditText[@index='30']").send_keys("Eduardo")
        scroll_novo("//android.widget.TextView[@text='Telefone']")
        find_element(xpath: "//android.widget.EditText[@index='32']").send_keys("1112341234")
        # scroll_novo("//android.widget.TextView[@text='E-mail']")
        find_element(xpath: "//android.widget.EditText[@index='34']").send_keys("teste@teste.com.br")
        scroll_novo("//android.widget.TextView[@text='Celular']")
        find_element(xpath: "//android.widget.EditText[@index='36']").send_keys("11999999999")
        scroll_novo("//android.widget.TextView[@text='CPF/RG']")
        find_element(xpath: "//android.widget.EditText[@index='38']").send_keys("123456789")
        scroll_novo_click("//android.widget.EditText[@index='41']")
        find_element(xpath: "//android.widget.TextView[@text='BOMAG']").click
        sleep(0.5)
        scroll_novo_click("//android.widget.EditText[@index='43']")
        find_element(xpath: "//android.widget.TextView[@text='CAMINHAO']").click
        sleep(0.5)
        scroll_novo_click("//android.widget.EditText[@index='45']")
        find_element(xpath: "//android.widget.TextView[@text='D6K2-LR']").click
        sleep(0.5)
        scroll_novo("//android.widget.TextView[@text='Prefixo']")
        find_element(xpath: "//android.widget.EditText[@index='48']").send_keys("123")
        find_element(xpath: "//android.widget.EditText[@index='49']").send_keys("456")
        # scroll_novo("//android.widget.TextView[@text='Número da Frota']")
        find_element(xpath: "//android.widget.EditText[@index='52']").send_keys("666")
        find_element(xpath: "//android.widget.EditText[@index='53']").send_keys("777")
        scroll_novo("//android.widget.TextView[@text='Data Início Avaria']")
        find_element(xpath: "//android.widget.TextView[@text='DD/MM/AAAA']").click
        find_element(:id, "android:id/button1").click
        sleep(0.5)
        scroll_novo("//android.widget.TextView[@text='Horímetro']")
        find_element(xpath: "//android.widget.EditText[@index='60']").send_keys("1")
        # scroll_novo("//android.widget.TextView[@text='Formulário de Inspeção']")
        find_element(xpath: "//android.widget.EditText[@index='62']").click
        find_element(xpath: "//android.widget.TextView[@text='INSPEÇÃO RENTAL DE SAÍDA_v4']").click
        sleep(0.5)
        scroll_novo("//android.widget.TextView[@text='JobCode']")
        find_element(xpath: "//android.widget.EditText[@index='65']").click
        find_element(xpath: "//android.widget.TextView[@text='661 - DESPESAS ADICIONAIS']").click
        # scroll_novo("//android.widget.TextView[@text='ComponentCode']")
        find_element(xpath: "//android.widget.EditText[@index='67']").click
        find_element(xpath: "//android.widget.TextView[@text='0334 - SISTEMA DE ANALISE']").click
        sleep(0.5)
        scroll_novo("//android.widget.TextView[@text='Estimado']")
        find_element(xpath: "//android.widget.EditText[@index='70']").send_keys("8")
        scroll_novo_click("//android.widget.TextView[@text='ADICIONAR OPERAÇÃO']")
        scroll_novo("//android.widget.TextView[@text='Empresa']")
        find_element(xpath: "//android.widget.EditText[@index='80']").click
        find_element(xpath: "//android.widget.TextView[@text='Sotreq']").click
        sleep(0.5)
        scroll_novo("//android.widget.TextView[@text='Produto']")
        find_element(xpath: "//android.widget.EditText[@index='82']").click
        find_element(xpath: "//android.widget.TextView[@text='Teste']").click
        sleep(0.5)
        scroll_novo("//android.widget.TextView[@text='Unidade de Negócio']")
        find_element(xpath: "//android.widget.EditText[@index='84']").click
        find_element(xpath: "//android.widget.TextView[@text='Geral']").click
        sleep(0.5)
        scroll_novo("//android.widget.TextView[@text='Filial']")
        find_element(xpath: "//android.widget.EditText[@index='86']").click
        find_element(xpath: "//android.widget.TextView[@text='0036 - SOTREQ - SANTOS']").click
        # scroll_novo("//android.widget.TextView[@text='Área Operacional']")
        find_element(xpath: "//android.widget.EditText[@index='88']").click
        find_element(xpath: "//android.widget.TextView[@text='Campo']").click
        sleep(0.5)
        scroll_novo("//android.widget.TextView[@text='Tipo de Manutenção']")
        find_element(xpath: "//android.widget.EditText[@index='90']").click
        find_element(xpath: "//android.widget.TextView[@text='CO-CORRETIVA']").click
        sleep(0.5)
        scroll_novo("//android.widget.TextView[@text='Consequência']")
        find_element(xpath: "//android.widget.EditText[@index='92']").click
        find_element(xpath: "//android.widget.TextView[@text='Manutenção e Reparo Básico']").click
        find_element(xpath: "//android.widget.TextView[@text='']").click
        find_element(xpath: "//android.widget.TextView[@text='Ordem de serviço avulsa criada localmente com sucesso.']").displayed?
    end
end
