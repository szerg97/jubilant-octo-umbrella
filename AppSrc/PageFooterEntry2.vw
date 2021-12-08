// C:\Users\bades\Documents\GitHub\jubilant-octo-umbrella\AppSrc\PageFooterEntry2.vw
// PageFooterEntry2
//

Use DFClient.pkg
Use DFEntry.pkg
Use cDbCJGrid.pkg
Use cDbCJGridColumn.pkg

Use cEmployeeDataDictionary.dd
Use cLineDataDictionary.dd
Use cPageHeaderDataDictionary.dd
Use cShoeDataDictionary.dd
Use cPageFooterDataDictionary.dd

ACTIVATE_VIEW Activate_oPageFooterEntry2 FOR oPageFooterEntry2
Object oPageFooterEntry2 is a dbView
    Set Location to 5 5
    Set Size to 132 370
    Set Label To "PageFooterEntry2"
    Set Border_Style to Border_Thick


    Object oEmployee_DD is a cEmployeeDataDictionary
    End_Object 

    Object oLine_DD is a cLineDataDictionary
    End_Object 

    Object oPageHeader_DD is a cPageHeaderDataDictionary
        Set DDO_Server To oEmployee_DD
        Set DDO_Server To oLine_DD
        // this lets you save a new parent DD from within child DD
        Set Allow_Foreign_New_Save_State to True
    End_Object 

    Object oShoe_DD is a cShoeDataDictionary
    End_Object 

    Object oPageFooter_DD is a cPageFooterDataDictionary
        Set DDO_Server To oPageHeader_DD
        Set DDO_Server To oShoe_DD
        Set Constrain_File To PageHeader.File_Number
    End_Object 

    Set Main_DD To oPageHeader_DD
    Set Server  To oPageHeader_DD



    Object oPageHeaderid is a dbForm
        Entry_Item PageHeader.id
        Set Size to 12 204
        Set Location to 5 21
        Set peAnchors to anTopLeftRight
        Set Label to "id"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 16
        Set Label_row_Offset to 0
    End_Object 

    Object oEmployeeid is a dbForm
        Entry_Item Employee.id
        Set Size to 12 34
        Set Location to 5 271
        Set peAnchors to anTopRight
        Set Label to "employee id"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 41
        Set Label_row_Offset to 0
    End_Object 

    Object oLineid is a dbForm
        Entry_Item Line.id
        Set Size to 12 34
        Set Location to 5 331
        Set peAnchors to anTopRight
        Set Label to "line id"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 21
        Set Label_row_Offset to 0
    End_Object 

    Object oPageHeaderdate is a dbForm
        Entry_Item PageHeader.date
        Set Size to 12 236
        Set Location to 19 21
        Set peAnchors to anTopLeftRight
        Set Label to "date"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 16
        Set Label_row_Offset to 0
    End_Object 

    Object oPageHeaderhours is a dbForm
        Entry_Item PageHeader.hours
        Set Size to 12 34
        Set Location to 19 282
        Set peAnchors to anTopRight
        Set Label to "hours"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 20
        Set Label_row_Offset to 0
    End_Object 

    Object oDetailGrid is a cDbCJGrid
        Set Size to 86 354
        Set Location to 41 5
        Set Server to oPageFooter_DD
        Set Ordering to 2
        Set peAnchors to anAll
        Set psLayoutSection to "oPageFooterEntry2_oDetailGrid"
        Set pbAllowInsertRow to False
        Set pbHeaderPrompts to True

        Object oShoe_id is a cDbCJGridColumn
            Entry_Item Shoe.id
            Set piWidth to 122
            Set psCaption to "shoe id"
        End_Object 

        Object oPageFooter_price is a cDbCJGridColumn
            Entry_Item PageFooter.price
            Set piWidth to 345
            Set psCaption to "price"
        End_Object 

        Object oPageFooter_quantity is a cDbCJGridColumn
            Entry_Item PageFooter.quantity
            Set piWidth to 123
            Set psCaption to "quantity"
        End_Object 

    End_Object 

    //-----------------------------------------------------------------------
    // Create custom confirmation messages for save and delete
    // We must create the new functions and assign verify messages
    // to them.
    //-----------------------------------------------------------------------

    Function ConfirmDeleteHeader Returns Boolean
        Boolean bFail
        Get Confirm "Delete Entire Header and all detail?" to bFail
        Function_Return bFail
    End_Function 

    // Only confirm on the saving of new records
    Function ConfirmSaveHeader Returns Boolean
        Boolean bNoSave bHasRecord
        Handle  hoSrvr
        Get Server to hoSrvr
        Get HasRecord of hoSrvr to bHasRecord
        If not bHasRecord Begin
            Get Confirm "Save this NEW header?" to bNoSave
        End
        Function_Return bNoSave
    End_Function 

    // Define alternate confirmation Messages
    Set Verify_Save_MSG       to (RefFunc(ConfirmSaveHeader))
    Set Verify_Delete_MSG     to (RefFunc(ConfirmDeleteHeader))
    // Saves in header should not clear the view
    Set Auto_Clear_Deo_State to False


End_Object 
