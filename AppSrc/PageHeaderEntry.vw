// C:\DataFlex Projects\ShoeFactory\AppSrc\PageHeaderEntry.vw
// PageHeaderEntry
//

Use DFClient.pkg
Use DFEntry.pkg

Use cEmployeeDataDictionary.dd
Use cLineDataDictionary.dd
Use cPageHeaderDataDictionary.dd

ACTIVATE_VIEW Activate_oPageHeaderEntry FOR oPageHeaderEntry
Object oPageHeaderEntry is a dbView
    Set Location to 5 5
    Set Size to 50 414
    Set Label To "PageHeaderEntry"
    Set Border_Style to Border_Thick


    Object oEmployee_DD is a cEmployeeDataDictionary
    End_Object 

    Object oLine_DD is a cLineDataDictionary
    End_Object 

    Object oPageHeader_DD is a cPageHeaderDataDictionary
        Set DDO_Server To oEmployee_DD
        Set DDO_Server To oLine_DD
    End_Object 

    Set Main_DD To oPageHeader_DD
    Set Server  To oPageHeader_DD



    Object oPageHeaderid is a dbForm
        Entry_Item PageHeader.id
        Set Size to 12 34
        Set Location to 5 34
        Set peAnchors to anTopLeftRight
        Set Label to "id"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 29
        Set Label_row_Offset to 0
    End_Object 

    Object oEmployeeid is a dbForm
        Entry_Item Employee.id
        Set Size to 12 34
        Set Location to 5 114
        Set peAnchors to anTopRight
        Set Label to "employee id"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 41
        Set Label_row_Offset to 0
    End_Object 

    Object oLineid is a dbForm
        Entry_Item Line.id
        Set Size to 12 34
        Set Location to 5 174
        Set peAnchors to anTopRight
        Set Label to "line id"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 21
        Set Label_row_Offset to 0
    End_Object 

    Object oEmployeename is a dbForm
        Entry_Item Employee.name
        Set Size to 12 250
        Set Location to 19 34
        Set peAnchors to anTopLeftRight
        Set Label to "name"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 29
        Set Label_row_Offset to 0
    End_Object 

    Object oEmployeeid_card is a dbForm
        Entry_Item Employee.id_card
        Set Size to 12 96
        Set Location to 19 313
        Set peAnchors to anTopRight
        Set Label to "id card"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 24
        Set Label_row_Offset to 0
    End_Object 

    Object oLinetype is a dbForm
        Entry_Item Line.type
        Set Size to 12 59
        Set Location to 33 34
        Set peAnchors to anTopLeftRight
        Set Label to "line type"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 29
        Set Label_row_Offset to 0
    End_Object 


End_Object 
