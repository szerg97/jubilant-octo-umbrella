// C:\DataFlex Projects\ShoeFactory\AppSrc\ShoeEntry.vw
// ShoeEntry
//

Use DFClient.pkg
Use DFEntry.pkg

Use cShoeDataDictionary.dd

ACTIVATE_VIEW Activate_oShoeEntry FOR oShoeEntry
Object oShoeEntry is a dbView
    Set Location to 5 5
    Set Size to 22 430
    Set Label To "ShoeEntry"
    Set Border_Style to Border_Thick


    Object oShoe_DD is a cShoeDataDictionary
    End_Object 

    Set Main_DD To oShoe_DD
    Set Server  To oShoe_DD



    Object oShoeid is a dbForm
        Entry_Item Shoe.id
        Set Size to 12 42
        Set Location to 5 13
        Set peAnchors to anTopLeftRight
        Set Label to "id"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 8
        Set Label_row_Offset to 0
    End_Object 

    Object oShoename is a dbForm
        Entry_Item Shoe.name
        Set Size to 12 250
        Set Location to 5 80
        Set peAnchors to anTopRight
        Set Label to "name"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 20
        Set Label_row_Offset to 0
    End_Object 

    Object oShoeprice is a dbForm
        Entry_Item Shoe.price
        Set Size to 12 72
        Set Location to 5 353
        Set peAnchors to anTopRight
        Set Label to "price"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 18
        Set Label_row_Offset to 0
    End_Object 


End_Object 
