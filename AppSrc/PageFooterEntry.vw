// C:\DataFlex Projects\ShoeFactory\AppSrc\PageFooterEntry.vw
// PageFooterEntry
//

Use DFClient.pkg
Use DFEntry.pkg
Use DfTabDlg.pkg

Use cEmployeeDataDictionary.dd
Use cLineDataDictionary.dd
Use cPageHeaderDataDictionary.dd
Use cShoeDataDictionary.dd
Use cPageFooterDataDictionary.dd

ACTIVATE_VIEW Activate_oPageFooterEntry FOR oPageFooterEntry
Object oPageFooterEntry is a dbView
    Set Location to 5 5
    Set Size to 79 445
    Set Label To "PageFooterEntry"
    Set Border_Style to Border_Thick


    Object oEmployee_DD is a cEmployeeDataDictionary
    End_Object 

    Object oLine_DD is a cLineDataDictionary
    End_Object 

    Object oPageHeader_DD is a cPageHeaderDataDictionary
        Set DDO_Server To oEmployee_DD
        Set DDO_Server To oLine_DD
    End_Object 

    Object oShoe_DD is a cShoeDataDictionary
    End_Object 

    Object oPageFooter_DD is a cPageFooterDataDictionary
        Set DDO_Server To oPageHeader_DD
        Set DDO_Server To oShoe_DD
    End_Object 

    Set Main_DD To oPageFooter_DD
    Set Server  To oPageFooter_DD



    Object oPageFooterid is a dbForm
        Entry_Item PageFooter.id
        Set Size to 12 34
        Set Location to 5 13
        Set peAnchors to anTopLeftRight
        Set Label to "id"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 8
        Set Label_row_Offset to 0
    End_Object 

    Object oPageHeaderid is a dbForm
        Entry_Item PageHeader.id
        Set Size to 12 34
        Set Location to 5 119
        Set peAnchors to anTopRight
        Set Label to "page header id"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 49
        Set Label_row_Offset to 0
    End_Object 

    Object oShoeid is a dbForm
        Entry_Item Shoe.id
        Set Size to 12 42
        Set Location to 5 202
        Set peAnchors to anTopRight
        Set Label to "shoe id"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 25
        Set Label_row_Offset to 0
    End_Object 

    Object oTabDialog is a dbTabDialog
        Set Size to 47 435
        Set Location to 27 5
        Set peAnchors to anTopLeftRight

        Object oTabPage1 is a dbTabPage
            Set Label to "Tab Page Label"

            Object oPageHeaderid is a dbForm
                Entry_Item PageHeader.id
                Set Size to 12 34
                Set Location to 10 13
                Set peAnchors to anTopLeftRight
                Set Label to "id"
                Set Label_Justification_mode to jMode_Left
                Set Label_Col_Offset to 8
                Set Label_row_Offset to 0
            End_Object 

            Object oEmployeeid is a dbForm
                Entry_Item Employee.id
                Set Size to 12 34
                Set Location to 10 93
                Set peAnchors to anTopRight
                Set Label to "employee id"
                Set Label_Justification_mode to jMode_Left
                Set Label_Col_Offset to 41
                Set Label_row_Offset to 0
            End_Object 

            Object oLineid is a dbForm
                Entry_Item Line.id
                Set Size to 12 34
                Set Location to 10 153
                Set peAnchors to anTopRight
                Set Label to "line id"
                Set Label_Justification_mode to jMode_Left
                Set Label_Col_Offset to 21
                Set Label_row_Offset to 0
            End_Object 

        End_Object 

        Object oTabPage2 is a dbTabPage
            Set Label to "Tab Page Label"

            Object oShoeid is a dbForm
                Entry_Item Shoe.id
                Set Size to 12 42
                Set Location to 10 13
                Set peAnchors to anTopLeftRight
                Set Label to "id"
                Set Label_Justification_mode to jMode_Left
                Set Label_Col_Offset to 8
                Set Label_row_Offset to 0
            End_Object 

            Object oShoename is a dbForm
                Entry_Item Shoe.name
                Set Size to 12 250
                Set Location to 10 80
                Set peAnchors to anTopRight
                Set Label to "name"
                Set Label_Justification_mode to jMode_Left
                Set Label_Col_Offset to 20
                Set Label_row_Offset to 0
            End_Object 

            Object oShoeprice is a dbForm
                Entry_Item Shoe.price
                Set Size to 12 72
                Set Location to 10 353
                Set peAnchors to anTopRight
                Set Label to "price"
                Set Label_Justification_mode to jMode_Left
                Set Label_Col_Offset to 18
                Set Label_row_Offset to 0
            End_Object 

        End_Object 

    End_Object 
    
     Object oDetailGrid is a cDbCJGrid
        
        Set Size to 447 348
        Set Location to 73 5
        Set Server to oPageFooter_DD
        Set Ordering to 1
        Set peAnchors to anAll
        Set psLayoutSection to "oPageFooterEntry_oDetailGrid"
        Set pbAllowInsertRow to False
        Set pbHeaderPrompts to True
        
        
        
        Object oFooteridGrid is a cDbCJGridColumn
        Entry_Item PageFooter.id
        Set piWidth to 78
        Set psCaption to "Footer"
        End_Object
        
        
        
        Object oHeaderidGrid is a cDbCJGridColumn
        Entry_Item PageFooter.page_header_id
        Set piWidth to 115
        Set psCaption to "Header"
        End_Object
        
        
        
        Object oShoeidGrid is a cDbCJGridColumn
        Entry_Item PageFooter.shoe_id
        Set piWidth to 387
        Set psCaption to "Shoe"
        End_Object



    End_Object

End_Object 
