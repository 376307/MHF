Sub Macro1()
'
' Macro1 Macro
'

'
    Sheets("BRANCH REPORT").Select
    Columns("F:F").Select
    ActiveWorkbook.Worksheets("BRANCH REPORT").Sort.SortFields.Clear
    ActiveWorkbook.Worksheets("BRANCH REPORT").Sort.SortFields.Add Key:=Range( _
        "F1"), SortOn:=xlSortOnValues, Order:=xlAscending, DataOption:= _
        xlSortNormal
    With ActiveWorkbook.Worksheets("BRANCH REPORT").Sort
        .SetRange Range("A2:G71")
        .Header = xlNo
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
    Range("F2").Select
    ActiveWindow.SmallScroll Down:=-60
    Sheets("DATA").Select
    Sheets("DATA").Move Before:=Sheets(1)
    Sheets("BRANCH REPORT").Select
    ActiveWindow.SmallScroll Down:=21
    Range("F55").Select
    ActiveWindow.SmallScroll Down:=-51
End Sub
