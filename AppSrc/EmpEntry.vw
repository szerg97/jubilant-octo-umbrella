// C:\DataFlex Projects\ShoeFactory\AppSrc\EmpEntry.vw
// EmpEntry
//

Use DFClient.pkg
Use DFEntry.pkg

Use cEmployeeDataDictionary.dd

ACTIVATE_VIEW Activate_oEmpEntry FOR oEmpEntry
Object oEmpEntry is a dbView
    Set Location to 5 5
    Set Size to 22 452
    Set Label To "EmpEntry"
    Set Border_Style to Border_Thick


    Object oEmployee_DD is a cEmployeeDataDictionary
    End_Object 

    Set Main_DD To oEmployee_DD
    Set Server  To oEmployee_DD



    Object oEmployeeid is a dbForm
        Entry_Item Employee.id
        Set Size to 12 34
        Set Location to 5 13
        Set peAnchors to anTopLeftRight
        Set Label to "id"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 8
        Set Label_row_Offset to 0
    End_Object 

    Object oEmployeename is a dbForm
        Entry_Item Employee.name
        Set Size to 12 250
        Set Location to 5 72
        Set peAnchors to anTopRight
        Set Label to "name"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 20
        Set Label_row_Offset to 0
    End_Object 

    Object oEmployeeid_card is a dbForm
        Entry_Item Employee.id_card
        Set Size to 12 96
        Set Location to 5 351
        Set peAnchors to anTopRight
        Set Label to "id card"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 24
        Set Label_row_Offset to 0
    End_Object
    
    Object oDetailGrid is a cDbCJGrid
        Set Size to 229 348
        Set Location to 73 5
        Set Server to oEmployee_DD
        Set Ordering to 1
        Set peAnchors to anAll
        Set psLayoutSection to "oEmployeeEntry_oDetailGrid"
        Set pbAllowInsertRow to False
        Set pbHeaderPrompts to True
        
        
        
        Object oEmployeeId is a cDbCJGridColumn
        Entry_Item Employee.id
        Set piWidth to 78
        Set psCaption to "Azonosito"
        End_Object
        
        
        
        Object oEmployeeName is a cDbCJGridColumn
        Entry_Item Employee.name
        Set piWidth to 115
        Set psCaption to "N‚v"
        End_Object
        
        
        
        Object oEmployeeIdCard is a cDbCJGridColumn
        Entry_Item Employee.id_card
        Set piWidth to 387
        Set psCaption to "Szem‚lyig."
        End_Object



    End_Object
    
End_Object 
