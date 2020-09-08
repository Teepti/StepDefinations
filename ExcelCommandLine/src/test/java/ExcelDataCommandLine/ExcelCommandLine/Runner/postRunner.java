package ExcelDataCommandLine.ExcelCommandLine.Runner;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;


@RunWith(Cucumber.class)
@CucumberOptions(glue = { "ExcelDataCommandLine.ExcelCommandLine.StepDefination" },
				 features = {"classpath:ExcelDataCommandLine/ExcelCommandLine/Feature"},
				 dryRun = true,
				 monochrome = true
		           )

public class postRunner {

}
