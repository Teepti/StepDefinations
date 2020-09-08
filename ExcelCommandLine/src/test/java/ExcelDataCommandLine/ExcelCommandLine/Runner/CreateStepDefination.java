package ExcelDataCommandLine.ExcelCommandLine.Runner;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.Iterator;

public class CreateStepDefination {
	public static void main(String[] args) throws IOException {
		Path featurePath = Paths.get("C:\\Users\\Revaan\\eclipse-workspace\\ExcelCommandLine\\console_log.log");
		Path OutputFilePath = Paths.get("C:\\Users\\Revaan\\eclipse-workspace\\ExcelCommandLine\\src\\test\\java\\ExcelDataCommandLine\\ExcelCommandLine\\StepDefination\\newFeatureStepDfn.java");
		ArrayList<String> lines = (ArrayList<String>) Files.readAllLines(featurePath,StandardCharsets.UTF_8); 
		ArrayList<String> outputLines = new ArrayList<String>();
		//ArrayList<String> outputlinehandle = (ArrayList<String>) Files.readAllLines(OutputFilePath,StandardCharsets.UTF_8); 
		outputLines.add("public class newFeatureStepdfn {");
		int position = 0; 		
			  for(String line : lines) {
				  if(line.contains("You can implement missing steps with the snippets below:")|| line.contains("Scenarios") || line.contains("Steps") || line.contains("0m0.000s"))
				  {
			  
				  	System.out.println(line);
				  }
				  else
					  outputLines.add(line);
				  
			  }
			  outputLines.add("}");
			
			  		  
			  System.out.println(outputLines);
			 
		 
		  
		
		
		 
		
		  Files.write(OutputFilePath, outputLines,StandardCharsets.UTF_8,StandardOpenOption.APPEND);

		  
		  
		   
		  //System.out.println("StepDefination File written Successfully");
		  }
		
	}

	
	


