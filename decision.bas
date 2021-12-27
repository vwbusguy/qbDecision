': This program uses
': InForm - GUI library for QB64 - v1.3
': Fellippe Heitor, 2016-2021 - fellippe@qb64.org - @fellippeheitor
': https://github.com/FellippeHeitor/InForm
'-----------------------------------------------------------

': Controls' IDs: ------------------------------------------------------------------
Dim Shared DecisionMaker As Long
Dim Shared YesOrNoLB As Long
Dim Shared MakeDecisionBT As Long
Dim Shared Label2 As Long

': External modules: ---------------------------------------------------------------
'$INCLUDE:'InForm\InForm.bi'
'$INCLUDE:'InForm\xp.uitheme'
'$INCLUDE:'decision.frm'

': Event procedures: ---------------------------------------------------------------
Sub __UI_BeforeInit

End Sub

Sub __UI_OnLoad

End Sub

Sub __UI_BeforeUpdateDisplay
    'This event occurs at approximately 60 frames per second.
    'You can change the update frequency by calling SetFrameRate DesiredRate%

End Sub

Sub __UI_BeforeUnload
    'If you set __UI_UnloadSignal = False here you can
    'cancel the user's request to close.

End Sub

Sub __UI_Click (id As Long)
    Select Case id
        Case DecisionMaker

        Case YesOrNoLB

        Case MakeDecisionBT
            Control(MakeDecisionBT).Disabled = True
            If Int(Rnd * 100) + 1 < 51 Then
                answer$ = "Yes"
            Else
                answer$ = "No"
            End If
            Caption(Label2) = answer$
            Control(Label2).Hidden = False
        Case Label2

    End Select
End Sub

Sub __UI_MouseEnter (id As Long)
    Select Case id
        Case DecisionMaker

        Case YesOrNoLB

        Case MakeDecisionBT

        Case Label2

    End Select
End Sub

Sub __UI_MouseLeave (id As Long)
    Select Case id
        Case DecisionMaker

        Case YesOrNoLB

        Case MakeDecisionBT

        Case Label2

    End Select
End Sub

Sub __UI_FocusIn (id As Long)
    Select Case id
        Case MakeDecisionBT

    End Select
End Sub

Sub __UI_FocusOut (id As Long)
    'This event occurs right before a control loses focus.
    'To prevent a control from losing focus, set __UI_KeepFocus = True below.
    Select Case id
        Case MakeDecisionBT

    End Select
End Sub

Sub __UI_MouseDown (id As Long)
    Select Case id
        Case DecisionMaker

        Case YesOrNoLB

        Case MakeDecisionBT

        Case Label2

    End Select
End Sub

Sub __UI_MouseUp (id As Long)
    Select Case id
        Case DecisionMaker

        Case YesOrNoLB

        Case MakeDecisionBT

        Case Label2

    End Select
End Sub

Sub __UI_KeyPress (id As Long)
    'When this event is fired, __UI_KeyHit will contain the code of the key hit.
    'You can change it and even cancel it by making it = 0
    Select Case id
        Case MakeDecisionBT

    End Select
End Sub

Sub __UI_TextChanged (id As Long)
    Select Case id
    End Select
End Sub

Sub __UI_ValueChanged (id As Long)
    Select Case id
    End Select
End Sub

Sub __UI_FormResized

End Sub

'$INCLUDE:'InForm\InForm.ui'
