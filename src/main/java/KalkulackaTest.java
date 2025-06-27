import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class KalkulackaTest {

    int prvCislo;
    int druCislo;
    int vypoctenyVysledek;



    @Given("Uzivatel ma zadany dve cisla {int} a {int}")
    public void uzivatelMaZadanyDveCislaA(int prvniCislo, int druheCislo) {
        prvCislo = prvniCislo;
        druCislo = druheCislo;
    }

    @When("Uzivatel secte tato dve cisla")
    public void uzivatelSecteTatoDveCisla() {
        vypoctenyVysledek = prvCislo + druCislo;

    }

    @Then("Uzivatel vidi na kalkulace vysledek {int}")
    public void uzivatelVidiNaKalkulaceVysledek(int predpokladanyVysledek) {

    }
}
