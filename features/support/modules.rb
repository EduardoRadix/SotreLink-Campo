module Scroll
  def scroll_novo(elemento)
    (0...20).each do
      scroll = { start_x: 0.46, start_y: 700, end_x: 0.46, end_y: 200, duration: 2000 }
      Appium::TouchAction.new.swipe(scroll).perform
      elemento = find_element(xpath: elemento).displayed?
      return elemento unless elemento.nil?
    end
  end

  def scroll_novo_click(elemento)
    (0...20).each do
      scroll = { start_x: 0.46, start_y: 700, end_x: 0.46, end_y: 200, duration: 2000 }
      Appium::TouchAction.new.swipe(scroll).perform
      resultado = find_element(xpath: elemento).displayed?
      find_element(xpath: elemento).click unless resultado.nil?
      return resultado unless resultado.nil?
    end
  end
  
  def aguardando_elemento_clicando(elemento)
    sleep(1) until find_element(xpath: elemento).displayed?
    find_element(xpath: elemento).click
  end
end
