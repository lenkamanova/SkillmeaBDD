import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class CheckoutTest {
    @Given("the price of a {string} is {int}c")
    public void thePriceOfAIsC(String arg0, int arg1) {
    }

    @When("A user checkout {string} {int}")
    public void aUserCheckout(String arg0, int arg1) {
    }

    @Then("teh total price should be {int}c")
    public void tehTotalPriceShouldBeC(int arg0) {
    }
}
