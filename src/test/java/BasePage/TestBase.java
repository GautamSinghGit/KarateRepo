package BasePage;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import utils.CommonCode;

public class TestBase {

    public WebDriver driver;

    public void setUp(){
        WebDriverManager.chromedriver().setup();
        driver = new ChromeDriver();
        CommonCode.DRIVER = this.driver;

    }


}
