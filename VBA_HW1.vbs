Attribute VB_Name = "Module1"

Sub stocks_per_year()
summaryTotal = 2
totaltotalVolume = 0

Dim ws As Worksheet


For Each ws In Worksheets

      
       Dim WorksheetName As String
       ws.Select
        ' Determine the Last Row
       LastRow = ws.Cells(Rows.Count, 1).End(xlUp).Row
        ' Grabbed the WorksheetName
       WorksheetName = ws.Name
       iRow = 2
       maxPercent = 0
       maxTotal = 0
       minPercent = 0
       openPrice = ws.Cells(iRow, 3).Value
       For iRow = 2 To LastRow
        Constant = ws.Cells(iRow, 1).Value
        If Constant <> ws.Cells(iRow + 1, 1) And openPrice <> 0 Then
            stockName = ws.Cells(iRow, 1)
            stockVolume = totaltotalVolume + ws.Cells(iRow, 7)
            yearlyChange = ws.Cells(iRow, 6) - openPrice
            percentChange = (yearlyChange * 100) / openPrice
            ws.Range("K" & summaryTotal) = stockName
            If yearlyChange < 0 Then
               
                ws.Range("L" & summaryTotal).Interior.Color = RGB(250, 0, 0)
                ws.Range("M" & summaryTotal).Interior.Color = RGB(250, 0, 0)
                ws.Range("L" & summaryTotal) = yearlyChange
                ws.Range("M" & summaryTotal) = percentChange
            Else
                ws.Range("L" & summaryTotal).Interior.Color = RGB(0, 250, 0)
                ws.Range("M" & summaryTotal).Interior.Color = RGB(0, 250, 0)
                ws.Range("L" & summaryTotal) = yearlyChange
                ws.Range("M" & summaryTotal) = percentChange
            End If
                ws.Range("N" & summaryTotal) = stockVolume
                summaryTotal = summaryTotal + 1
                totaltotalVolume = 0
                openPrice = ws.Cells(iRow + 1, 3).Value
                If percentChange > maxPercent Then
                  maxPercent = percentChange
                  maxStock = stockName
                End If
                If stockVolume > maxTotal Then
                  maxTotal = stockVolume
                  maxStockTotal = stockName
                End If
                If percentChange < minPercent Then
                  minPercent = percentChange
                  minStock = stockName
                End If
        Else
            totaltotalVolume = totaltotalVolume + ws.Cells(iRow, 7)
            
        End If
        Next iRow
        summaryTotal = 2
     
       ws.Range("K" & 1) = "Ticker"
       ws.Range("L" & 1) = "Yearly Change"
       ws.Range("M" & 1) = "Percent Change"
       ws.Range("N" & 1) = "Total Volume"
       ws.Range("R" & 1) = "Ticker"
       ws.Range("S" & 1) = "Value"
       ws.Range("Q" & 2) = "Greatest % Increase"
       ws.Range("Q" & 3) = "Greatest % Decrease"
       ws.Range("Q" & 4) = "Greatest Total Volume"
       ws.Range("R" & 2) = maxStock
       ws.Range("S" & 2) = maxPercent
       ws.Range("R" & 3) = minStock
       ws.Range("S" & 3) = minPercent
       ws.Range("R" & 4) = maxStockTotal
       ws.Range("S" & 4) = maxTotal

       
 Next ws
 
End Sub
