package stepdefs;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

	@RunWith(Cucumber.class)
	
	@CucumberOptions(
			
			monochrome = true,
			//plugin = {"pretty"},
			plugin = {"pretty","html:target/html-cucumber","json:target/cucumber.json"},//reports
			features = "src/test/java/features",
			glue = "stepdefs",
			//tags = {"@WIP"}
			//tags = {"@Sanity"}
			//tags = {"@Regression or Sanity"}, //either Regression or Sanity
			//tags = {"@Regression and Sanity"}, //both the tags should be there
			//tags = {"@Calculator"}, //either Regression or Sanity
			//tags = {"@Browser"} //tag hooks
			//tags = {"not @WIP"} //run all scenarios except WIP
			tags = {"@Browser and not @WIP"} //run all Browser scenarios except WIP
			)
	
	public class TestRunner{
		
		
	}


