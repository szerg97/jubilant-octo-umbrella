// Shoe.sl
// Shoe Lookup List

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cShoeDataDictionary.dd

CD_Popup_Object Shoe_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 272
    Set Label To "Shoe Lookup List"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oShoe_DD is a cShoeDataDictionary
    End_Object 

    Set Main_DD To oShoe_DD
    Set Server  To oShoe_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 262
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "Shoe_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oShoe_id is a cDbCJGridColumn
            Entry_Item Shoe.id
            Set piWidth to 60
            Set psCaption to "id"
        End_Object 

        Object oShoe_name is a cDbCJGridColumn
            Entry_Item Shoe.name
            Set piWidth to 250
            Set psCaption to "name"
        End_Object 

        Object oShoe_price is a cDbCJGridColumn
            Entry_Item Shoe.price
            Set piWidth to 110
            Set psCaption to "price"
        End_Object 


    End_Object 

    Object oOk_bn is a Button
        Set Label to "&Ok"
        Set Location to 115 109
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object 

    Object oCancel_bn is a Button
        Set Label to "&Cancel"
        Set Location to 115 163
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object 

    Object oSearch_bn is a Button
        Set Label to "&Search..."
        Set Location to 115 217
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object 

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // Shoe_sl
