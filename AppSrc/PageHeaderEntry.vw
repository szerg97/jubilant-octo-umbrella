// C:\Users\bades\Documents\GitHub\jubilant-octo-umbrella\AppSrc\PageHeaderEntry.vw
// PageHeaderEntry
//

Use DFClient.pkg
Use DFEntry.pkg
Use DfTabDlg.pkg

Use cEmployeeDataDictionary.dd
Use cLineDataDictionary.dd
Use cPageHeaderDataDictionary.dd
Use MonthCalendarPrompt.dg

ACTIVATE_VIEW Activate_oPageHeaderEntry FOR oPageHeaderEntry
Object oPageHeaderEntry is a dbView
    Set Location to 5 5
    Set Size to 107 420
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
        Set Location to 5 101
        Set peAnchors to anTopRight
        Set Label to "employee id"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 41
        Set Label_row_Offset to 0
    End_Object 

    Object oLineid is a dbForm
        Entry_Item Line.id
        Set Size to 12 34
        Set Location to 5 161
        Set peAnchors to anTopRight
        Set Label to "line id"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 21
        Set Label_row_Offset to 0
    End_Object 

    Object oPageHeaderdate is a dbForm
        Entry_Item PageHeader.date
        Set Size to 12 66
        Set Location to 19 21
        Set peAnchors to anTopLeftRight
        Set Label to "date"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 16
        Set Label_row_Offset to 0
        Set Prompt_Object to oMonthCalendarPrompt
        Set Prompt_Button_Mode to PB_PromptOn
        Procedure OnExitObject
            Date dDateSelected
            
            Get File_Field_Current_Value of oPageHeader_DD File_Field PageHeader.Date to dDateSelected
            
            If (dDateSelected < "1/1/2020" or dDateSelected > "12/31/2022" ) Begin
                Send Info_Box "Date must be between 1/1/2020 and 12/31/2022"
            End
            
        End_Procedure
    End_Object 

    Object oPageHeaderhours is a dbForm
        Entry_Item PageHeader.hours
        Set Size to 12 34
        Set Location to 19 112
        Set peAnchors to anTopRight
        Set Label to "hours"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 20
        Set Label_row_Offset to 0
    End_Object 

    Object oTabDialog is a dbTabDialog
        Set Size to 61 410
        Set Location to 41 5
        Set peAnchors to anTopLeftRight

        Object oTabPage1 is a dbTabPage
            Set Label to "Tab Page Label"

            Object oLinetype is a dbForm
                Entry_Item Line.type
                Set Size to 12 250
                Set Location to 10 25
                Set peAnchors to anTopLeftRight
                Set Label to "type"
                Set Label_Justification_mode to jMode_Left
                Set Label_Col_Offset to 20
                Set Label_row_Offset to 0
            End_Object 

            Object oEmployeename is a dbForm
                Entry_Item Employee.name
                Set Size to 12 250
                Set Location to 24 25
                Set peAnchors to anTopLeftRight
                Set Label to "name"
                Set Label_Justification_mode to jMode_Left
                Set Label_Col_Offset to 20
                Set Label_row_Offset to 0
            End_Object 

            Object oEmployeeid_card is a dbForm
                Entry_Item Employee.id_card
                Set Size to 12 96
                Set Location to 24 304
                Set peAnchors to anTopRight
                Set Label to "id card"
                Set Label_Justification_mode to jMode_Left
                Set Label_Col_Offset to 24
                Set Label_row_Offset to 0
            End_Object 

        End_Object 

    End_Object 


End_Object 
