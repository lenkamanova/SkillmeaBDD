import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import Product.Checkout;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class CheckoutTest {

    Checkout myCheckout;

    @Given("the price of a {string} is {int}c")
    public void thePriceOfAIsC(String name, int price) {
        myCheckout = new Checkout();
        myCheckout.addItem(name, price);
    }

    @When("A user checkout {string} {int}")
    public void aUserCheckout(String name, int count) {
        myCheckout.scanItems(name, count);
    }

    @Then("teh total price should be {int}c")
    public void tehTotalPriceShouldBeC(int expectdTotalPrice) {
        assertEquals(expectdTotalPrice, myCheckout.totalCart());
    }
}
