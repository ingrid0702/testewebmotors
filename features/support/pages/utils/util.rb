class UtilsPage
    include Capybara::DSL

   
    def acessar_aplicacao
        visit "https://www.webmotors.com.br/"
        
    end
    
end