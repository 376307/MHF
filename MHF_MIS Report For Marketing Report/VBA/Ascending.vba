Sub Macro1()
'
' Macro1 Macro
'

'
    Sheets("BRANCH REPORT").Select
    Columns("F:F").Select
    ActiveWorkbook.Worksheets("BRANCH REPORT").Sort.SortFields.Clear
    ActiveWorkbook.Worksheets("BRANCH REPORT").Sort.SortFields.Add Key:=Range( _
        "F1"), SortOn:=xlSortOnValues, Order:=xlDescending, DataOption:= _
        xlSortNormal
    With ActiveWorkbook.Worksheets("BRANCH REPORT").Sort
        .SetRange Range("A2:G50")
        .Header = xlNo
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
    ActiveWorkbook.Worksheets("BRANCH REPORT").Sort.SortFields.Clear
    ActiveWorkbook.Worksheets("BRANCH REPORT").Sort.SortFields.Add Key:=Range( _
        "F1"), SortOn:=xlSortOnValues, Order:=xlAscending, DataOption:= _
        xlSortNormal
    With ActiveWorkbook.Worksheets("BRANCH REPORT").Sort
        .SetRange Range("A2:G50")
        .Header = xlNo
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
    Range("F2").Select
    ActiveWindow.SmallScroll Down:=-12
    Range("G8").Select
    ActiveWindow.SmallScroll Down:=-39
End Sub