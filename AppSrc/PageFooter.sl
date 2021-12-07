// PageFooter.sl
// PageFooter Lookup List

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cEmployeeDataDictionary.dd
Use cLineDataDictionary.dd
Use cPageHeaderDataDictionary.dd
Use cShoeDataDictionary.dd
Use cPageFooterDataDictionary.dd

CD_Popup_Object PageFooter_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 141
    Set Label To "PageFooter Lookup List"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


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



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 131
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "PageFooter_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oPageFooter_id is a cDbCJGridColumn
            Entry_Item PageFooter.id
            Set piWidth to 46
            Set psCaption to "id"
        End_Object 

        Object oPageHeader_id is a cDbCJGridColumn
            Entry_Item PageHeader.id
            Set piWidth to 95
            Set psCaption to "page header id"
        End_Object 

        Object oShoe_id is a cDbCJGridColumn
            Entry_Item Shoe.id
            Set piWidth to 60
            Set psCaption to "shoe id"
        End_Object 


    End_Object 

    Object oOk_bn is a Button
        Set Label to "&Ok"
        Set Location to 115 -22
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object 

    Object oCancel_bn is a Button
        Set Label to "&Cancel"
        Set Location to 115 32
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object 

    Object oSearch_bn is a Button
        Set Label to "&Search..."
        Set Location to 115 86
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object 

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // PageFooter_sl
