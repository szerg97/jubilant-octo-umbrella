// Employee.sl
// Employee Lookup List

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cEmployeeDataDictionary.dd

CD_Popup_Object Employee_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 288
    Set Label To "Employee Lookup List"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oEmployee_DD is a cEmployeeDataDictionary
    End_Object 

    Set Main_DD To oEmployee_DD
    Set Server  To oEmployee_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 278
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "Employee_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oEmployee_id is a cDbCJGridColumn
            Entry_Item Employee.id
            Set piWidth to 46
            Set psCaption to "id"
        End_Object 

        Object oEmployee_name is a cDbCJGridColumn
            Entry_Item Employee.name
            Set piWidth to 250
            Set psCaption to "name"
        End_Object 

        Object oEmployee_id_card is a cDbCJGridColumn
            Entry_Item Employee.id_card
            Set piWidth to 150
            Set psCaption to "id card"
        End_Object 


    End_Object 

    Object oOk_bn is a Button
        Set Label to "&Ok"
        Set Location to 115 125
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object 

    Object oCancel_bn is a Button
        Set Label to "&Cancel"
        Set Location to 115 179
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object 

    Object oSearch_bn is a Button
        Set Label to "&Search..."
        Set Location to 115 233
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object 

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // Employee_sl
