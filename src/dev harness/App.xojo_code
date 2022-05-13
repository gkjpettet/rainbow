#tag Class
Protected Class App
Inherits ConsoleApplication
	#tag Event
		Function Run(args() as String) As Integer
		  #Pragma Unused args
		  
		  Rainbow.Initialise
		  
		  LoadingDemo
		  
		  Print256ForegroundColours
		  
		  Print("")
		  
		  Print256BackgroundColours
		  
		  Print("")
		  
		  Print "This is " + Rainbow.CLIBold("bold") + " and " + Rainbow.CLIUnderlined("underlined") + " I tell you"
		  Print Rainbow.CLIInverted("This is inverted")
		  
		  Var s As String = "Red, underlined"
		  Print s.CLIFormatted(False, True, False, 124)
		  
		  While True
		    App.DoEvents
		  Wend
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0, Description = 53686F77732061206C6F6164696E672070657263656E7461676520696E64696361746F722E
		Sub LoadingDemo()
		  /// Shows a loading percentage indicator.
		  
		  Print("Loading...")
		  
		  For i As Integer = 0 To 100
		    App.DoEvents(20)
		    Rainbow.CursorLeft(1000)
		    stdout.Write(i.ToString + "%")
		    stdout.Flush
		  Next i
		  
		  Print("")
		  Print("Done")
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5072696E747320616C6C20323536206261636B67726F756E6420636F6C6F75727320746F20746865207465726D696E616C2E
		Sub Print256BackgroundColours()
		  /// Prints all 256 background colours to the terminal.
		  
		  For i As Integer = 0 To 16
		    For j As Integer = 0 To 16
		      Var colourCode As Integer = (i * 16) + j
		      If colourCode > 255 Then Exit
		      Var s As String = colourCode.ToString.JustifyLeft(4)
		      stderr.Write(s.CLIBackcolor(colourCode))
		    Next j
		    Print(Rainbow.Reset)
		  Next i
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5072696E747320616C6C2032353620666F726567726F756E6420636F6C6F75727320746F20746865207465726D696E616C2E
		Sub Print256ForegroundColours()
		  /// Prints all 256 foreground colours to the terminal.
		  
		  For i As Integer = 0 To 16
		    For j As Integer = 0 To 16
		      Var colourCode As Integer = (i * 16) + j
		      If colourCode > 255 Then Exit
		      Var s As String = colourCode.ToString.JustifyLeft(4)
		      stderr.Write(s.CLIForecolor(colourCode))
		    Next j
		    Print(Rainbow.Reset)
		  Next i
		  
		End Sub
	#tag EndMethod


End Class
#tag EndClass
