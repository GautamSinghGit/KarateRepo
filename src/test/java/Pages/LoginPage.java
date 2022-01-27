package Pages;

import BasePage.TestBase;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;
import utils.CommonCode;

public class LoginPage extends TestBase {


    private WebDriver driver;

    public LoginPage(){
        this.driver = super.driver;
        PageFactory.initElements(this.driver,this);

    }



    public void setUserName(String userName){

    }

    public void setPassword(String password){

    }

    public void sendLogin(){

    }

}
