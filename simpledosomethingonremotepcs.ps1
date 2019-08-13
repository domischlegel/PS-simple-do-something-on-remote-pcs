Foreach ($Computer in (Get-Content "F:\PCs.txt")) #Textfile with list of Computers to execute on
{  
	if(Test-Connection -ComputerName $Computer -Count 1 -ea 0) 
	{            
		try 
		{            
		# ENTER CODE HERE TO EXECUTE/DO ON PC   
		} 
		catch 
		{            
		Write-Warning "Error occurred while querying $computer."            
		Continue            
		}               
	}
	else
	{
		Write-Warning "$computer is offline"
	} 
}         
