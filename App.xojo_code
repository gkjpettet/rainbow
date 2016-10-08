#tag Class
Protected Class App
Inherits ConsoleApplication
	#tag Event
		Function Run(args() as String) As Integer
		  Using Rainbow
		  
		  Print""
		  Print "Here are the foreground colours:"
		  
		  Print Colourise("Black", Colour.black) + " " + _
		  Colourise("Blue", Colour.blue) + " " + Colourise("Cyan", Colour.cyan) + " " + _
		  Colourise("Default", Colour.default) + " " + Colourise("Green", Colour.green) + " " + _
		  Colourise("Magenta", Colour.magenta) + " " + Colourise("Red", Colour.red) + " " + _
		  Colourise("White", Colour.white) + " " + Colourise("Yellow", Colour.yellow)
		  
		  Print ""
		  Print "Lots of options for background colour:"
		  Print Rainbow.Formatted("Default on black", False, False, Colour.default, Colour.black)
		  Print Rainbow.Formatted("Default on blue", False, False, Colour.default, Colour.blue)
		  Print Rainbow.Formatted("Default on cyan", False, False, Colour.default, Colour.cyan)
		  Print Rainbow.Formatted("Default on green", False, False, Colour.default, Colour.green)
		  Print Rainbow.Formatted("Default on magenta", False, False, Colour.default, Colour.magenta)
		  Print Rainbow.Formatted("Default on red", False, False, Colour.default, Colour.red)
		  Print Rainbow.Formatted("Default on white", False, False, Colour.default, Colour.white)
		  Print Rainbow.Formatted("Default on yellow", False, False, Colour.default, Colour.yellow)
		  
		  Print ""
		  Print Formatted("Bold", True, False) + " and " + Formatted("underlined", False, True) + _
		  " are also supported. " + Formatted("Even together.", True, True)
		End Function
	#tag EndEvent


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
