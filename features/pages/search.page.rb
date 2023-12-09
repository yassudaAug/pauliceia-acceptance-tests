class SearchPage < SitePrism::Page

    element :wayPointSearch, :xpath, "//*[@id='app']/section/div/section/div/section[1]/form/div/div[1]/div[1]/input"
    element :wayPointSearchButton, :xpath, "//*[@id='app']/section/div/section/div/section[1]/form/div/div[2]/button"
    element :wayPointDistance, :xpath, "//*[@id='app']/section/div/section/div/div[6]/div[2]/div[4]/div"
    element :errorMessage, :xpath, "/html/body/div[2]/div/div[2]/div[2]/p"

    def searchWayPoint(rua, numero, ano)
        wayPointSearch.set "#{rua}, #{numero}, #{ano}"
        wayPointSearchButton.click
        sleep 5
    end

    def findWayPoint
        wayPointDistance.text
    end

    def findError
        errorMessage.text
    end
end
