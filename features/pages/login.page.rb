class LoginPage < SitePrism::Page

    element :emailField, :xpath, "//*[@id='app']/section/div/div/section/div[1]/div/form/div[1]/input"
    element :passwordField, :xpath, "//*[@id='app']/section/div/div/section/div[1]/div/form/div[2]/input"
    element :loginButton, :xpath, "//*[@id='app']/section/div/div/section/div[1]/div/form/div[3]/button"
    element :welcomeMessage, :xpath, "/html/body/div[2]/p"
    element :errorMessage, :xpath, "/html/body/div[2]/div/div[2]/div[2]/p"
    
    def userLogin(email, password)
        emailField.set email
        passwordField.set password
        loginButton.click
    end

    def findWelcome
        welcomeMessage.text
    end

    def findError
        errorMessage.text
    end
end
