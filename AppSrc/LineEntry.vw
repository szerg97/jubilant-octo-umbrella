// C:\DataFlex Projects\ShoeFactory\AppSrc\LineEntry.vw
// LineEntry
//

Use DFClient.pkg
Use DFEntry.pkg

Use cLineDataDictionary.dd

ACTIVATE_VIEW Activate_oLineEntry FOR oLineEntry
Object oLineEntry is a dbView
    Set Location to 5 5
    Set Size to 22 138
    Set Label To "LineEntry"
    Set Border_Style to Border_Thick


    Object oLine_DD is a cLineDataDictionary
    End_Object 

    Set Main_DD To oLine_DD
    Set Server  To oLine_DD



    Object oLineid is a dbForm
        Entry_Item Line.id
        Set Size to 12 55
        Set Location to 5 13
        Set peAnchors to anTopLeftRight
        Set Label to "id"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 8
        Set Label_row_Offset to 0
    End_Object 

    Object oLinetype is a dbForm
        Entry_Item Line.type
        Set Size to 12 44
        Set Location to 5 88
        Set peAnchors to anTopRight
        Set Label to "type"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 16
        Set Label_row_Offset to 0
    End_Object 


End_Object 
