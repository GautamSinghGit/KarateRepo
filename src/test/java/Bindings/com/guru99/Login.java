package Bindings.com.guru99;

import io.cucumber.java.en.Given;
import utils.CommonCode;

public class Login {
    @Given("Login into application to verify the scenario (.*)")
    public void loginIntoApplicationToVerifyTheScenario(String scenario) {
        CommonCode.CURRENT_SCENARIO = scenario;


    }
}
