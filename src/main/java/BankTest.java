import Product.BankAccount;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class BankTest {
    BankAccount firstBankAccount;

    @Given("Bank account with {int} kc")
    public void bankAccountWithKc(int initialBalance) {
        firstBankAccount = new BankAccount(initialBalance);
    }

    @Then("A user account balance is {int} kc")
    public void aUserAccountBalanceIsKc(int expectedBalance) {
        assertEquals(expectedBalance, firstBankAccount.getAccountBalance());
    }
}
