VERSION 5.00
Object = "{4A4AA691-3E6F-11D2-822F-00104B9E07A1}#3.0#0"; "ssdw3bo.ocx"
Object = "{F8D97923-5EB1-11D3-BA04-0040F6348B67}#9.1#0"; "LRNavigatorsX.ocx"
Begin VB.Form frmTermDelivery 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Term of Delivery"
   ClientHeight    =   4410
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7185
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   4410
   ScaleWidth      =   7185
   Tag             =   "01011000"
   Begin LRNavigators.LROleDBNavBar NavBar1 
      Height          =   375
      Left            =   360
      TabIndex        =   2
      Top             =   3840
      Width           =   3525
      _ExtentX        =   6218
      _ExtentY        =   661
      AllowCustomize  =   0   'False
      EMailEnabled    =   0   'False
      NewEnabled      =   -1  'True
      AllowAddNew     =   0   'False
      AllowUpdate     =   0   'False
      AllowCancel     =   0   'False
      AllowDelete     =   0   'False
      CommandType     =   8
      EditEnabled     =   0   'False
      EditVisible     =   0   'False
      CancelToolTipText=   "Undo the changes made to the current Screen"
   End
   Begin SSDataWidgets_B_OLEDB.SSOleDBGrid SSDBGTermDelivry 
      Bindings        =   "frmTermDelivery.frx":0000
      Height          =   3075
      Left            =   240
      TabIndex        =   0
      Top             =   480
      Width           =   5610
      _Version        =   196617
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BorderStyle     =   0
      FieldSeparator  =   ";"
      stylesets.count =   2
      stylesets(0).Name=   "Colls"
      stylesets(0).HasFont=   -1  'True
      BeginProperty stylesets(0).Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      stylesets(0).Picture=   "frmTermDelivery.frx":0014
      stylesets(1).Name=   "Rows"
      stylesets(1).HasFont=   -1  'True
      BeginProperty stylesets(1).Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      stylesets(1).Picture=   "frmTermDelivery.frx":0030
      HeadFont3D      =   4
      DefColWidth     =   5292
      BevelColorFrame =   -2147483630
      BevelColorHighlight=   14737632
      BevelColorShadow=   -2147483633
      AllowDelete     =   -1  'True
      AllowUpdate     =   0   'False
      MultiLine       =   0   'False
      AllowGroupSizing=   0   'False
      AllowGroupMoving=   0   'False
      AllowColumnMoving=   0
      AllowGroupSwapping=   0   'False
      AllowColumnSwapping=   0
      AllowGroupShrinking=   0   'False
      AllowColumnShrinking=   0   'False
      SelectTypeCol   =   0
      SelectTypeRow   =   1
      ForeColorEven   =   8388608
      BackColorEven   =   16771818
      BackColorOdd    =   16777215
      RowHeight       =   423
      Columns.Count   =   8
      Columns(0).Width=   2275
      Columns(0).Caption=   "Code"
      Columns(0).Name =   "Code"
      Columns(0).DataField=   "tod_termcode"
      Columns(0).DataType=   8
      Columns(0).FieldLen=   10
      Columns(1).Width=   5292
      Columns(1).Caption=   "Description"
      Columns(1).Name =   "Description"
      Columns(1).DataField=   "tod_desc"
      Columns(1).DataType=   8
      Columns(1).FieldLen=   25
      Columns(2).Width=   5292
      Columns(2).Visible=   0   'False
      Columns(2).Caption=   "np"
      Columns(2).Name =   "np"
      Columns(2).DataField=   "tod_npecode"
      Columns(2).DataType=   8
      Columns(2).FieldLen=   5
      Columns(3).Width=   1455
      Columns(3).Caption=   "Active"
      Columns(3).Name =   "active"
      Columns(3).DataField=   "tod_actvflag"
      Columns(3).DataType=   11
      Columns(3).FieldLen=   256
      Columns(3).Style=   2
      Columns(4).Width=   5292
      Columns(4).Visible=   0   'False
      Columns(4).Caption=   "modify_date"
      Columns(4).Name =   "modify_date"
      Columns(4).DataField=   "Column 4"
      Columns(4).DataType=   8
      Columns(4).FieldLen=   256
      Columns(5).Width=   5292
      Columns(5).Visible=   0   'False
      Columns(5).Caption=   "modify_user"
      Columns(5).Name =   "modify_user"
      Columns(5).DataField=   "Column 5"
      Columns(5).DataType=   8
      Columns(5).FieldLen=   256
      Columns(6).Width=   5292
      Columns(6).Visible=   0   'False
      Columns(6).Caption=   "create_date"
      Columns(6).Name =   "create_date"
      Columns(6).DataField=   "Column 6"
      Columns(6).DataType=   8
      Columns(6).FieldLen=   256
      Columns(7).Width=   5292
      Columns(7).Visible=   0   'False
      Columns(7).Caption=   "create_user"
      Columns(7).Name =   "create_user"
      Columns(7).DataField=   "Column 7"
      Columns(7).DataType=   8
      Columns(7).FieldLen=   256
      _ExtentX        =   9895
      _ExtentY        =   5424
      _StockProps     =   79
      DataMember      =   "TermDelivery"
      BeginProperty PageFooterFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty PageHeaderFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Label lblStatus 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Visualization"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   19.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   480
      Left            =   4560
      TabIndex        =   3
      Top             =   3720
      Width           =   2460
   End
   Begin VB.Label lbl_TermofDelivery 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Term of Delivery"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   300
      TabIndex        =   1
      Top             =   120
      Width           =   5430
   End
End
Attribute VB_Name = "frmTermDelivery"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim GoodColMove As Boolean
Dim InUnload As Boolean
Dim Modify As String
Dim Create As String
Dim RecSaved As Boolean
Dim Visualize As String
Dim NVBAR_EDIT As Boolean
Dim NVBAR_ADD As Boolean
Dim NVBAR_SAVE As Boolean
Dim CAncelGrid As Boolean
Dim TableLocked As Boolean, currentformname As String   'jawdat
Private Function CheckDesCode(Code As String) As Boolean
On Error Resume Next
Dim cmd As ADODB.Command
Dim rst As ADODB.Recordset

    Set cmd = MakeCommand(deIms.cnIms, adCmdText)
    
    With cmd
        .CommandText = "SELECT count(*) RT"
         .CommandText = .CommandText & " From TERMOFDELIVERY "
        .CommandText = .CommandText & " Where tod_npecode = '" & deIms.NameSpace & "'"
       .CommandText = .CommandText & " AND tod_termcode = '" & Code & "'"
       
        Set rst = .Execute
        CheckDesCode = rst!rt
    End With
       
     Set cmd = Nothing
    Set rst = Nothing
    If Err Then Call LogErr(Name & "::CheckDesCode", Err.Description, Err.number, True)
End Function
Private Function validate_fields(colnum As Integer) As Boolean
Dim x As Boolean

validate_fields = True
If SSDBGTermDelivry.IsAddRow Then
   If colnum = 0 Or colnum = 1 Then
      x = NotValidLen(SSDBGTermDelivry.Columns(colnum).Text)
      If x = True Then
         RecSaved = False
         msg1 = translator.Trans("M00702")
         MsgBox IIf(msg1 = "", "Required field, please enter value", msg1)
         SSDBGTermDelivry.SetFocus
         SSDBGTermDelivry.Col = colnum
         validate_fields = False
         Exit Function
      End If
    End If
      If colnum = 0 Then
        x = CheckDesCode(SSDBGTermDelivry.Columns(0).Text)
        If x <> False Then
             RecSaved = False
             msg1 = translator.Trans("M00703")
             MsgBox IIf(msg1 = "", "This code already exists. Please choose a unique value.", msg1)
             SSDBGTermDelivry.SetFocus
             SSDBGTermDelivry.Columns(0).Text = ""
             SSDBGTermDelivry.Col = 0
            validate_fields = False
         End If
    End If
   End If

End Function

'call function get recordset and set back ground color

Private Sub Form_Load()



Dim ctl As Control

    Screen.MousePointer = vbHourglass
   CAncelGrid = False
   msg1 = translator.Trans("M00126")
   Modify = IIf(msg1 = "", "Modification", msg1)
   msg1 = translator.Trans("M00092")
   Visualize = IIf(msg1 = "", "Visualization", msg1)
   msg1 = translator.Trans("M00125")
   Create = IIf(msg1 = "", "Creation", msg1)
   GoodColMove = True
   RecSaved = True
   InUnload = False
    
    'Modified by Juan (9/25/2000) for Multilingual
    Call translator.Translate_Forms("frmTermDelivery")
    '---------------------------------------------
    
    'color the controls and form backcolor
    Me.BackColor = frm_Color.txt_WBackground.BackColor
    
    For Each ctl In Controls
        Call gsb_fade_to_black(ctl)
    Next ctl
    
    Call deIms.TermDelivery(deIms.NameSpace)
    Set NavBar1.Recordset = deIms.rsTermDelivery

    Set SSDBGTermDelivry.DataSource = deIms
    
    Screen.MousePointer = vbDefault
    Caption = Caption + " - " + Tag
    NVBAR_EDIT = NavBar1.EditEnabled
    NVBAR_ADD = NavBar1.NewEnabled
    NVBAR_SAVE = NavBar1.SaveEnabled
  '  NavBar1.FirstEnabled = True
  '  NavBar1.FirstVisible = True
  '  NavBar1.LastEnabled = True
  '  NavBar1.LastVisible = True
    NavBar1.NextEnabled = True
    NavBar1.NextVisible = True
    NavBar1.PreviousEnabled = True
    NavBar1.PreviousVisible = True
    NavBar1.EditEnabled = True
    NavBar1.EditVisible = True
    NavBar1.CancelEnabled = False
    NavBar1.SaveEnabled = False
    NavBar1.CloseEnabled = True
    NavBar1.Width = 5050
    Call DisableButtons(Me, NavBar1)
    SSDBGTermDelivry.AllowUpdate = False
  
    With frmTermDelivery
        .Left = Round((Screen.Width - .Width) / 2)
        .Top = Round((Screen.Height - .Height) / 2)
    End With
End Sub

'unload form set recordset close and free memory

Private Sub Form_Unload(Cancel As Integer)


If TableLocked = True Then    'jawdat
Dim imsLock As imsLock.Lock
Set imsLock = New imsLock.Lock
currentformname = Forms(3).Name
Call imsLock.UnLock_table(TableLocked, currentformname, deIms.cnIms, CurrentUser)
End If



On Error Resume Next
 InUnload = True
  RecSaved = True
  CAncelGrid = False
SSDBGTermDelivry.Update
 If RecSaved = True Then
    Hide
    deIms.rsTermDelivery.Close
    Set frmTermDelivery = Nothing
    If open_forms <= 5 Then ShowNavigator
  Else
      Cancel = True
  End If
End Sub

Private Sub NavBar1_BeforeMove(bCancel As Boolean)
    SSDBGTermDelivry.Update
 
End Sub

Private Sub NavBar1_BeforeNewClick()
    SSDBGTermDelivry.AddNew
    NavBar1.CancelEnabled = True
    NavBar1.NewEnabled = False
    NavBar1.EditEnabled = False
    NavBar1.SaveEnabled = True
    lblStatus.ForeColor = &HFF&
    lblStatus.Caption = Create
    SSDBGTermDelivry.AllowUpdate = True
    SSDBGTermDelivry.Columns("active").Text = 1
    SSDBGTermDelivry.SetFocus
    SSDBGTermDelivry.Col = 0

End Sub

Private Sub NavBar1_BeforeSaveClick()
    CAncelGrid = False
    SSDBGTermDelivry.Update
      If RecSaved = True Then
            NavBar1.SaveEnabled = False
            SSDBGTermDelivry.Columns(0).locked = False
            NavBar1.CancelEnabled = False
            lblStatus.ForeColor = &HFF00&
            lblStatus = Visualize
            NavBar1.SaveEnabled = False
            NavBar1.CancelEnabled = False
            NavBar1.EditEnabled = True
            NavBar1.NewEnabled = NVBAR_ADD
            SSDBGTermDelivry.AllowUpdate = False
       End If

If TableLocked = True Then    'jawdat
Dim imsLock As imsLock.Lock
Set imsLock = New imsLock.Lock
currentformname = Forms(3).Name
Call imsLock.UnLock_table(TableLocked, currentformname, deIms.cnIms, CurrentUser)
End If
       


End Sub

'cancel recordset update

Private Sub NavBar1_OnDeleteClick()
End Sub

Private Sub NavBar1_OnEditClick()


'
''copy begin here
'
'If NavBar1.SaveEnabled = True Then          ''jawdat, to be put into every form with similar navbar

Dim currentformname
Dim imsLock As imsLock.Lock
Set imsLock = New imsLock.Lock
currentformname = Forms(3).Name
Call imsLock.CHECK_TABLE(TableLocked, currentformname, deIms.cnIms, CurrentUser)


   If TableLocked = True Then    'sets locked = true because another user has this record open in edit mode
NavBar1.SaveEnabled = False
NavBar1.NewEnabled = False
NavBar1.CancelEnabled = False
Exit Sub                                                     'Exit Edit sub because theres nothing the user can do
Else


'
'    Dim textboxes As Control
'
'    For Each textboxes In Controls
'        If (TypeOf textboxes Is textBOX) Then
'            textboxes.Enabled = False
'        End If
'
'    Next textboxes
'    Else
'    TableLocked = True
'    End If
'End If

'end copy



SSDBGTermDelivry.AllowUpdate = True
SSDBGTermDelivry.Columns(0).locked = True
NavBar1.CancelEnabled = True
NavBar1.EditEnabled = False
NavBar1.SaveEnabled = True
NavBar1.NewEnabled = False
lblStatus.ForeColor = &HFF0000
lblStatus.Caption = Modify
SSDBGTermDelivry.SetFocus
SSDBGTermDelivry.Col = 1
SSDBGTermDelivry.AllowUpdate = True
TableLocked = True
End If
End Sub



Private Sub NavBar1_OnFirstClick()
If TableLocked = True Then    'Added for locking rows, user was allowed to view edit more records while having the current record locked, Jawdat 2.5.02
MsgBox "You must save the information, or cancel modification before moving to any other record."
Exit Sub                'cancel movement if they still have it locked, until they save or cancel
End If
End Sub

Private Sub NavBar1_OnLastClick()
If TableLocked = True Then    'Added for locking rows, user was allowed to view edit more records while having the current record locked, Jawdat 2.5.02
MsgBox "You must save the information, or cancel modification before moving to any other record."
Exit Sub                'cancel movement if they still have it locked, until they save or cancel
End If
End Sub

'move recordset to add new position and set name space to
'current name space

Private Sub NavBar1_OnNewClick()
If TableLocked = True Then    'Added for locking rows, user was allowed to view edit more records while having the current record locked, Jawdat 2.5.02
MsgBox "You must save the information, or cancel modification before moving to any other record."
Exit Sub                'cancel movement if they still have it locked, until they save or cancel
End If
    
    SSDBGTermDelivry.AddNew
End Sub

'cancel recordset update

Private Sub NavBar1_OnCancelClick()
Dim response As Integer
   If SSDBGTermDelivry.IsAddRow Then
      msg1 = translator.Trans("M00706")
      response = MsgBox((IIf(msg1 = "", " Are you sure you want to cancel changes?", msg1)), vbOKCancel, "Imswin")
      If response = vbOK Then
          CAncelGrid = True
           SSDBGTermDelivry.CancelUpdate
          CAncelGrid = True
          SSDBGTermDelivry.CancelUpdate
          NavBar1.EditEnabled = True
          NavBar1.NewEnabled = True
          NavBar1.CancelEnabled = False
          NavBar1.SaveEnabled = False
          SSDBGTermDelivry.AllowUpdate = False
         lblStatus.ForeColor = &HFF00&
          lblStatus.Caption = Visualize
    Else
        CAncelGrid = False
    End If
Else
    SSDBGTermDelivry.CancelUpdate
    SSDBGTermDelivry.Columns(0).locked = False

    SSDBGTermDelivry.CancelUpdate
    NavBar1.EditEnabled = True
    NavBar1.NewEnabled = True
    NavBar1.CancelEnabled = False
    NavBar1.SaveEnabled = False
    SSDBGTermDelivry.AllowUpdate = False
    lblStatus.ForeColor = &HFF00&
    lblStatus.Caption = Visualize

End If

If TableLocked = True Then    'jawdat
Dim imsLock As imsLock.Lock
Set imsLock = New imsLock.Lock
currentformname = Forms(3).Name
Call imsLock.UnLock_table(TableLocked, currentformname, deIms.cnIms, CurrentUser)
End If


      End Sub

'close form

Private Sub NavBar1_OnCloseClick()
    
If TableLocked = True Then    'jawdat
Dim imsLock As imsLock.Lock
Set imsLock = New imsLock.Lock
currentformname = Forms(3).Name
Call imsLock.UnLock_table(TableLocked, currentformname, deIms.cnIms, CurrentUser)
End If
    
    
    
    Unload Me
End Sub

Private Sub NavBar1_OnNextClick()
If TableLocked = True Then    'Added for locking rows, user was allowed to view edit more records while having the current record locked, Jawdat 2.5.02
MsgBox "You must save the information, or cancel modification before moving to any other record."
Exit Sub                'cancel movement if they still have it locked, until they save or cancel
End If
End Sub

Private Sub NavBar1_OnPreviousClick()
If TableLocked = True Then    'Added for locking rows, user was allowed to view edit more records while having the current record locked, Jawdat 2.5.02
MsgBox "You must save the information, or cancel modification before moving to any other record."
Exit Sub                'cancel movement if they still have it locked, until they save or cancel
End If
End Sub

'move recordset to next position



'get crystal report parameters
'and application path

Private Sub NavBar1_OnPrintClick()
On Error GoTo Handler
   
   With MDI_IMS.CrystalReport1
        .Reset
        .ReportFileName = FixDir(App.Path) + "CRreports\termdelivery.rpt"
        .ParameterFields(0) = "namespace;" + deIms.NameSpace + ";TRUE"
        
        'Modified by Juan (9/25/2000) for Multilingual
        msg1 = translator.Trans("M00094") 'J added
        .WindowTitle = IIf(msg1 = "", "Term of Delivery", msg1) 'J modified
        Call translator.Translate_Reports("termdelivery.rpt") 'J added
        '---------------------------------------------
        
        .Action = 1: .Reset
    End With
    Exit Sub
    
Handler:
    If Err Then _
        MsgBox Err.Description: Err.Clear
End Sub

'save recordset to database

Private Sub NavBar1_OnSaveClick()
On Error Resume Next
    Call deIms.rsTermDelivery.Move(0)
    If Err Then Err.Clear

End Sub


Private Sub SSDBGTermDelivry_AfterUpdate(RtnDispErrMsg As Integer)
If RecSaved = True Then
    lblStatus.ForeColor = &HFF00&
    lblStatus = Visualize
    NavBar1.SaveEnabled = False
    NavBar1.CancelEnabled = False
    NavBar1.EditEnabled = True
    NavBar1.NewEnabled = NVBAR_ADD
    SSDBGTermDelivry.AllowUpdate = False
End If
End Sub

Private Sub SSDBGTermDelivry_BeforeColUpdate(ByVal ColIndex As Integer, ByVal oldVALUE As Variant, Cancel As Integer)
Dim Recchanged As Boolean
Dim ret As Integer
  
          If SSDBGTermDelivry.IsAddRow And ColIndex = 0 Then 'And TMPCTL.RecordToProcess.editmode = adEditAdd Then
             If NotValidLen(SSDBGTermDelivry.Columns(ColIndex).Text) Then
                msg1 = translator.Trans("M00702")
                MsgBox IIf(msg1 = "", "Required field, please enter value.", msg1)
                Cancel = 1
                SSDBGTermDelivry.SetFocus
                SSDBGTermDelivry.Columns(ColIndex).Text = oldVALUE
                SSDBGTermDelivry.Col = 0
                RecSaved = False
                GoodColMove = False
              ElseIf CheckDesCode(SSDBGTermDelivry.Columns(ColIndex).Text) Then
                msg1 = translator.Trans("M00703")
                MsgBox IIf(msg1 = "", "This code already exists. Please choose a unique value", msg1)
                Cancel = 1
                SSDBGTermDelivry.SetFocus
                SSDBGTermDelivry.Columns(ColIndex).Text = oldVALUE
                SSDBGTermDelivry.Col = 0
                RecSaved = False
                GoodColMove = False
             End If
        
        ElseIf SSDBGTermDelivry.IsAddRow And ColIndex = 1 Then
              If NotValidLen(SSDBGTermDelivry.Columns(ColIndex).Text) Then
                msg1 = translator.Trans("M00702")
                MsgBox IIf(msg1 = "", "Required field, please enter value", msg1)
                Cancel = 1
                RecSaved = False
                SSDBGTermDelivry.SetFocus
                'SSDBGTermDelivry.Columns(ColIndex).Text =
                SSDBGTermDelivry.Col = 1
               End If
        ElseIf Not SSDBGTermDelivry.IsAddRow And ColIndex = 1 Then
                If NotValidLen(SSDBGTermDelivry.Columns(ColIndex).Text) Then
               msg1 = translator.Trans("M00702")
                MsgBox IIf(msg1 = "", "Required field, please enter value", msg1)
                Cancel = 1
                RecSaved = False
                SSDBGTermDelivry.SetFocus
                'SSDBGTermDelivry.Columns(ColIndex).Text =
                SSDBGTermDelivry.Col = 1
               End If
       End If
     Recchanged = DidFieldChange(Trim(oldVALUE), Trim(SSDBGTermDelivry.Columns(ColIndex).Text))

End Sub

Private Sub SSDBGTermDelivry_BeforeRowColChange(Cancel As Integer)
Dim good_field As Boolean
    good_field = validate_fields(SSDBGTermDelivry.Col)
    If Not good_field Then
       Cancel = True
    End If

End Sub

Private Sub SSDBGTermDelivry_BeforeUpdate(Cancel As Integer)
 Dim response As Integer
 Dim x As Boolean
  response = 0

 RecSaved = True
 If CAncelGrid = True Then
       Cancel = True
       CAncelGrid = False
       Exit Sub
  End If
  If InUnload Then
    msg1 = translator.Trans("M00704") 'J added
    response = MsgBox((IIf(msg1 = "", "Do you wish to save changes before closing?", msg1)), vbYesNo, "Imswin")
  End If
 If response = vbNo Then
    Cancel = True
    Exit Sub
 End If
 If (InUnload = False) Or (response = vbYes) Then
 
  If SSDBGTermDelivry.IsAddRow Then
      x = NotValidLen(SSDBGTermDelivry.Columns(1).Text)
      If x = True Then
         RecSaved = False
         Cancel = True
         msg1 = translator.Trans("M00702")
         MsgBox IIf(msg1 = "", "Required field, please enter value", msg1)
                  SSDBGTermDelivry.SetFocus
         SSDBGTermDelivry.Col = 1
         Exit Sub
      End If
      x = CheckDesCode(SSDBGTermDelivry.Columns(0).Text)
      If x <> False Then
         RecSaved = False
         msg1 = translator.Trans("M00703")
         MsgBox IIf(msg1 = "", "This code already exists. Please choose a unique value.", msg1)
         SSDBGTermDelivry.SetFocus
         SSDBGTermDelivry.Col = 0
         Exit Sub
      End If
   End If
End If
    If InUnload = False Then
           msg1 = translator.Trans("M00705") 'J added
          response = MsgBox((IIf(msg1 = "", "Are you sure you want to save the changes?", msg1)), vbOKCancel, "Imswin")
   End If
     If (response = vbOK) Or (response = vbYes) Then
        
        SSDBGTermDelivry.Columns("np").Text = deIms.NameSpace
        If SSDBGTermDelivry.IsAddRow Then
            SSDBGTermDelivry.Columns("create_date").Text = Date
            SSDBGTermDelivry.Columns("create_user").Text = CurrentUser
        End If
        SSDBGTermDelivry.Columns("modify_date").Text = Date
        SSDBGTermDelivry.Columns("modify_user").Text = CurrentUser
        Cancel = 0
     Else
       CAncelGrid = True
        RecSaved = False
       'SSDBGTermDelivry.CancelUpdate
     Cancel = True
  '   SSDBGTermDelivry.Refresh
   End If
End Sub

Private Sub SSDBGTermDelivry_KeyPress(KeyAscii As Integer)
  Dim Char
  Dim cur_col As Integer
  Dim good_field As Boolean


    
    
If Not SSDBGTermDelivry.IsAddRow And SSDBGTermDelivry.Col = 0 And KeyAscii <> 13 Then
    KeyAscii = 0
Else
    Char = Chr(KeyAscii)
    KeyAscii = Asc(UCase(Char))
    If KeyAscii = 13 Or ((KeyAscii = 9) And (SSDBGTermDelivry.Col = 2)) Then
        GoodColMove = True
    End If
    If KeyAscii = 13 Or KeyAscii = 9 Then
        cur_col = SSDBGTermDelivry.Col
        If (cur_col = 2) Then
            If GoodColMove = True Then
                SSDBGTermDelivry.Col = 0
            Else
                GoodColMove = True
            End If
        Else
            If GoodColMove = True Then
                good_field = validate_fields(SSDBGTermDelivry.Col)
                If good_field Then
                    SSDBGTermDelivry.Col = cur_col + 1
                End If
            Else
                GoodColMove = True
            End If
        End If
    End If
End If
End Sub
