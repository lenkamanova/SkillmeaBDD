import Product.BankAccount;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

public class BankTest {
    BankAccount firstBankAccount;

    @Given("Bank account with {int} kc")
    public void bankAccountWithKc(int initialBalance) {
        firstBankAccount = new BankAccount(initialBalance);
    }

    @Then("A user acount balance is {int} kc")
    public void aUserAcountBalanceIsKc(int expectedBalance) {

    }
}
