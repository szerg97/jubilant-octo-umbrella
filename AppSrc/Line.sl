// Line.sl
// Line Lookup List

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cLineDataDictionary.dd

CD_Popup_Object Line_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 72
    Set Label To "Line Lookup List"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oLine_DD is a cLineDataDictionary
    End_Object 

    Set Main_DD To oLine_DD
    Set Server  To oLine_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 62
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "Line_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oLine_id is a cDbCJGridColumn
            Entry_Item Line.id
            Set piWidth to 46
            Set psCaption to "id"
        End_Object 

        Object oLine_type is a cDbCJGridColumn
            Entry_Item Line.type
            Set piWidth to 40
            Set psCaption to "type"
        End_Object 


    End_Object 

    Object oOk_bn is a Button
        Set Label to "&Ok"
        Set Location to 115 -91
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object 

    Object oCancel_bn is a Button
        Set Label to "&Cancel"
        Set Location to 115 -37
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object 

    Object oSearch_bn is a Button
        Set Label to "&Search..."
        Set Location to 115 17
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object 

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // Line_sl
