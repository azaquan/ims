VERSION 5.00
Object = "{4A4AA691-3E6F-11D2-822F-00104B9E07A1}#3.0#0"; "ssdw3bo.ocx"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frm_orderdelivery 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Order Delivery Schedule"
   ClientHeight    =   2595
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4725
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   2595
   ScaleWidth      =   4725
   Tag             =   "03020600"
   Begin SSDataWidgets_B_OLEDB.SSOleDBCombo combo_endpo 
      Height          =   315
      Left            =   2520
      TabIndex        =   1
      Top             =   600
      Width           =   1575
      DataFieldList   =   "Column 0"
      _Version        =   196617
      DataMode        =   2
      Cols            =   1
      Columns(0).Width=   3200
      _ExtentX        =   2778
      _ExtentY        =   556
      _StockProps     =   93
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
   End
   Begin SSDataWidgets_B_OLEDB.SSOleDBCombo combo_begpo 
      Height          =   315
      Left            =   2520
      TabIndex        =   0
      Top             =   240
      Width           =   1575
      DataFieldList   =   "Column 0"
      _Version        =   196617
      Cols            =   1
      Columns(0).Width=   3200
      _ExtentX        =   2778
      _ExtentY        =   556
      _StockProps     =   93
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
   End
   Begin VB.CommandButton cmd_ok 
      Caption         =   " &Ok"
      Height          =   375
      Left            =   1080
      TabIndex        =   4
      Top             =   2040
      Width           =   1215
   End
   Begin VB.CommandButton cmd_cancel 
      Cancel          =   -1  'True
      Caption         =   "&Cancel"
      Height          =   375
      Left            =   2520
      TabIndex        =   5
      Top             =   2040
      Width           =   1215
   End
   Begin MSComCtl2.DTPicker DTbegdate 
      Height          =   315
      Left            =   2520
      TabIndex        =   2
      Top             =   960
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   556
      _Version        =   393216
      Format          =   60227585
      CurrentDate     =   36522
   End
   Begin MSComCtl2.DTPicker DTenddate 
      Height          =   315
      Left            =   2520
      TabIndex        =   3
      Top             =   1320
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   556
      _Version        =   393216
      Format          =   60227585
      CurrentDate     =   36522
   End
   Begin VB.Label lbl_enddate 
      Caption         =   "End Date"
      Height          =   255
      Left            =   600
      TabIndex        =   9
      Top             =   1400
      Width           =   2000
   End
   Begin VB.Label dt_beg 
      Caption         =   "Begining Date"
      Height          =   255
      Left            =   600
      TabIndex        =   8
      Top             =   1040
      Width           =   2000
   End
   Begin VB.Label lbl_endpo 
      Caption         =   "End PO"
      Height          =   255
      Left            =   600
      TabIndex        =   7
      Top             =   680
      Width           =   2000
   End
   Begin VB.Label lbl_begningpo 
      Caption         =   "Begining PO"
      Height          =   255
      Left            =   600
      TabIndex        =   6
      Top             =   320
      Width           =   2000
   End
End
Attribute VB_Name = "frm_orderdelivery"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim cmd As ADODB.Command
Dim rs As ADODB.Recordset

'close form

Private Sub cmd_cancel_Click()
Unload Me
End Sub

'SQL statement get po number and populate combo

Private Sub combo_begpo_Click()
Dim str As String
  If UCase(Trim$(combo_begpo.text)) <> "ALL" Then
  
    str = "select po_ponumb from po where po_npecode ='" & deIms.NameSpace & "'"
    Set rs = get_recordset(combo_endpo, str)
    
    If get_status(rs) Then
     
         'Commented out by shakir
        'Call PopuLateFromRecordSet(combo_endpo, rs, "po_ponumb", True)
        
        'Added by shakir
        
        rs.MoveFirst
        combo_endpo.RemoveAll
        
        Do While Not rs.EOF
           combo_endpo.AddItem rs!PO_PONUMB
           rs.MoveNext
        Loop
        
        
    
    End If
      
    Call CleanUp
    combo_endpo.Enabled = True
    Else
     
     combo_endpo.Enabled = False
    End If
    combo_endpo = combo_begpo
End Sub

'get crystal report parameter and application path

Private Sub cmd_ok_Click()
On Error GoTo ErrHandler

If DTenddate.value >= DTbegdate.value Then
With MDI_IMS.CrystalReport1
        .Reset
        .ReportFileName = FixDir(App.Path) + "CRreports\deliveryschedule.rpt"
        .ParameterFields(0) = "namespace;" + deIms.NameSpace + ";TRUE"
        .ParameterFields(1) = "begpo;" + IIf(UCase(Trim$(combo_begpo.text)) = "ALL", "ALL", combo_begpo.text) + ";true"
        .ParameterFields(4) = "endpo;" + IIf(UCase(Trim$(combo_begpo.text)) = "ALL", "", Trim$(combo_endpo.text)) + ";true"
        .ParameterFields(2) = "begdate;date(" & Year(DTbegdate.value) & "," & Month(DTbegdate.value) & "," & Day(DTbegdate.value) & ");true"
        .ParameterFields(3) = "enddate;date(" & Year(DTenddate.value) & "," & Month(DTenddate.value) & "," & Day(DTenddate.value) & ");true"
        
        'Modified by Juan (9/13/2000) for Multilingual
        msg1 = translator.Trans("M00278") 'J added
        .WindowTitle = IIf(msg1 = "", "Order Delivery", msg1) 'J modified
        Call translator.Translate_Reports("deliveryschedule.rpt") 'J added
        '---------------------------------------------
        
        .Action = 1: .Reset
End With
Else

'Modified by Juan (9/13/2000) for Multilingual
msg1 = translator.Trans("M00272") 'J added
MsgBox IIf(msg1 = "", "Make Sure The Beg date is less than the End date", msg1) 'J modified
'---------------------------------------------

DTenddate_Validate ("true")
End If
    Exit Sub
    
ErrHandler:
    If Err Then
        MsgBox Err.Description
        Err.Clear
    End If
End Sub



Private Sub combo_begpo_DropDown()
    With combo_begpo
        .MoveNext
    End With
End Sub

Private Sub combo_begpo_GotFocus()
Call HighlightBackground(combo_begpo)
End Sub

Private Sub combo_begpo_KeyDown(KeyCode As Integer, Shift As Integer)
If Not combo_begpo.DroppedDown Then combo_begpo.DroppedDown = True
End Sub

Private Sub combo_begpo_KeyPress(KeyAscii As Integer)
'combo_begpo.MoveNext
End Sub

Private Sub combo_begpo_LostFocus()
Call NormalBackground(combo_begpo)
End Sub

Private Sub combo_begpo_Validate(Cancel As Boolean)
If Len(Trim$(combo_begpo)) > 0 Then
    If Not combo_begpo.IsItemInList Then
        combo_begpo.text = ""
    End If
    If Len(Trim$(combo_begpo)) = 0 Then
        combo_begpo.SetFocus
        Cancel = True
    End If
End If
End Sub

Private Sub combo_endpo_GotFocus()
Call HighlightBackground(combo_endpo)
End Sub

Private Sub combo_endpo_KeyDown(KeyCode As Integer, Shift As Integer)
If Not combo_endpo.DroppedDown Then combo_endpo.DroppedDown = True
End Sub

Private Sub combo_endpo_KeyPress(KeyAscii As Integer)
'combo_endpo.MoveNext
End Sub

Private Sub combo_endpo_LostFocus()
Call NormalBackground(combo_endpo)
End Sub

Private Sub combo_endpo_Validate(Cancel As Boolean)
If Len(Trim$(combo_endpo)) > 0 Then
    If combo_endpo.Rows > 0 Then
        If Not combo_endpo.IsItemInList Then
            combo_endpo.text = ""
        End If
        If Len(Trim$(combo_endpo)) = 0 Then
            combo_endpo.SetFocus
            Cancel = True
        End If
    End If
End If
End Sub

Private Sub DTenddate_Validate(Cancel As Boolean)
Dim x As Boolean
End Sub

'SQL statement get po number and populate combo box

Private Sub Form_Load()
 Dim rs As ADODB.Recordset
 Set rs = New ADODB.Recordset
 
'Added by Juan (9/13/2000) for Multilingual
Call translator.Translate_Forms("frm_orderdelivery")
'-----------------------------------------
'Me.Height = 3120 'J hidden
'Me.Width = 4800 'J hidden
With rs
        .ActiveConnection = deIms.cnIms

   .Source = "select po_ponumb from po where po_npecode ='" & deIms.NameSpace & " '"
   .Open , , adOpenStatic
   End With
   If Not ((rs Is Nothing) Or (rs.State And adStateOpen = adStateClosed) _
   Or (rs.EOF And rs.BOF) Or (rs.RecordCount = 0)) Then
'  combo_begpo.AddItem "ALL"
'  combo_begpo.text = "ALL"
'  combo_endpo.text = "ALL"
'   Do While (Not rs.EOF)
'
'  combo_begpo.AddItem (rs!PO_PONUMB)
'  rs.MoveNext
'  Loop
   
        With combo_begpo
            Set .DataSourceList = rs
            .DataFieldToDisplay = "po_ponumb"
            .DataFieldList = "po_ponumb"
            .Refresh
        End With
   
   
  Set rs = Nothing
  
  Else
    Exit Sub
  End If
    
    Caption = Caption + " - " + Tag

    DTbegdate = FirstOfMonth
    DTenddate = Now
    
     With frm_orderdelivery
        .Left = Round((Screen.Width - .Width) / 2)
        .Top = Round((Screen.Height - .Height) / 2)
    End With
    
    End Sub

'set recordset connection

Public Function get_recordset(ctl As Control, str As String) As ADODB.Recordset
Set cmd = New ADODB.Command
With cmd
  .ActiveConnection = deIms.cnIms
  .CommandType = adCmdText
  .CommandText = str
  Set get_recordset = .Execute
  End With
   End Function

Public Sub CleanUp()
Set cmd = Nothing
Set rs = Nothing
End Sub

'check recordset status

Public Function get_status(rst As Recordset) As Boolean
  get_status = IIf(rst Is Nothing, (False), (True))
   If rst.State And adStateOpen = adStateClosed Then get_status = False
   If rst.EOF And rst.BOF Then get_status = False
   If rst.RecordCount = 0 Then get_status = False
 
End Function

'resize form

Private Sub Form_Resize()
If Not Me.WindowState = vbMinimized Then
'Me.Height = 3120 'J hidden
'Me.Width = 4800 'J hidden
End If
End Sub

'unload form

Private Sub Form_Unload(Cancel As Integer)
    Hide
    If open_forms <= 5 Then ShowNavigator
End Sub
