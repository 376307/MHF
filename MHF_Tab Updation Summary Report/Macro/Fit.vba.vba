Sub Macro1()
'
' Macro1 Macro
'

'
    Sheets("Summary").Select
    Sheets("Summary").Move Before:=Sheets(1)
    Columns("F:F").Select
    Selection.Style = "Percent"
    Columns("H:H").Select
    Selection.Style = "Percent"
    Range("C10").Select
    Sheets("Live_Emp").Select
    Range("A7").Select
    Sheets("Report").Select
    Range("A9").Select
    Sheets("Summary").Select
    Range("F9").Select
    ActiveWindow.SmallScroll Down:=12
    Range("F32").Select
    ActiveWindow.SmallScroll Down:=51
    Range("F85").Select
    ActiveWindow.SmallScroll Down:=-99
    ActiveWorkbook.Save
End Sub
