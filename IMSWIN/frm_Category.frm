VERSION 5.00
Object = "{4A4AA691-3E6F-11D2-822F-00104B9E07A1}#3.0#0"; "SSDW3BO.OCX"
Object = "{F8D97923-5EB1-11D3-BA04-0040F6348B67}#9.1#0"; "LRNAVIGATORS.OCX"
Begin VB.Form frm_Category 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Category "
   ClientHeight    =   4500
   ClientLeft      =   30
   ClientTop       =   270
   ClientWidth     =   7800
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   4500
   ScaleWidth      =   7800
   Tag             =   "01011600"
   Begin LRNavigators.LROleDBNavBar NavBar1 
      Height          =   375
      Left            =   600
      TabIndex        =   1
      Top             =   3960
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
      DeleteToolTipText=   ""
   End
   Begin SSDataWidgets_B_OLEDB.SSOleDBGrid SSDBGCategory 
      Bindings        =   "frm_Category.frx":0000
      Height          =   3135
      Left            =   480
      TabIndex        =   3
      Top             =   480
      Width           =   5775
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
      stylesets(0).Name=   "RowFont"
      stylesets(0).HasFont=   -1  'True
      BeginProperty stylesets(0).Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      stylesets(0).Picture=   "frm_Category.frx":0014
      stylesets(0).AlignmentText=   0
      stylesets(1).Name=   "ColHeader"
      stylesets(1).HasFont=   -1  'True
      BeginProperty stylesets(1).Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      stylesets(1).Picture=   "frm_Category.frx":0030
      stylesets(1).AlignmentText=   1
      HeadFont3D      =   4
      DefColWidth     =   5292
      AllowUpdate     =   0   'False
      MultiLine       =   0   'False
      AllowGroupMoving=   0   'False
      AllowColumnMoving=   0
      AllowGroupSwapping=   0   'False
      AllowColumnSwapping=   0
      AllowGroupShrinking=   0   'False
      AllowColumnShrinking=   0   'False
      SelectTypeCol   =   0
      SelectTypeRow   =   0
      SelectByCell    =   -1  'True
      ForeColorEven   =   8388608
      BackColorEven   =   16771818
      BackColorOdd    =   16777215
      RowHeight       =   423
      Columns.Count   =   8
      Columns(0).Width=   1402
      Columns(0).Caption=   "Code"
      Columns(0).Name =   "Code"
      Columns(0).DataField=   "cate_catecode"
      Columns(0).DataType=   8
      Columns(0).FieldLen=   256
      Columns(0).HeadStyleSet=   "ColHeader"
      Columns(1).Width=   6324
      Columns(1).Caption=   "Description"
      Columns(1).Name =   "Description"
      Columns(1).DataField=   "cate_catename"
      Columns(1).DataType=   8
      Columns(1).FieldLen=   256
      Columns(1).HeadStyleSet=   "ColHeader"
      Columns(2).Width=   1667
      Columns(2).Caption=   "Active"
      Columns(2).Name =   "Active"
      Columns(2).DataField=   "cate_actvflag"
      Columns(2).DataType=   11
      Columns(2).FieldLen=   256
      Columns(2).Style=   2
      Columns(2).HeadStyleSet=   "ColHeader"
      Columns(3).Width=   5292
      Columns(3).Visible=   0   'False
      Columns(3).Caption=   "np"
      Columns(3).Name =   "np"
      Columns(3).DataField=   "cate_npecode"
      Columns(3).DataType=   8
      Columns(3).FieldLen=   256
      Columns(4).Width=   5292
      Columns(4).Visible=   0   'False
      Columns(4).Caption=   "modify_date"
      Columns(4).Name =   "modify_date"
      Columns(4).DataField=   "cate_modidate"
      Columns(4).DataType=   135
      Columns(4).FieldLen=   256
      Columns(5).Width=   5292
      Columns(5).Visible=   0   'False
      Columns(5).Caption=   "modify_user"
      Columns(5).Name =   "modify_user"
      Columns(5).DataField=   "cate_modiuser"
      Columns(5).DataType=   8
      Columns(5).FieldLen=   256
      Columns(6).Width=   5292
      Columns(6).Visible=   0   'False
      Columns(6).Caption=   "create_date"
      Columns(6).Name =   "create_date"
      Columns(6).DataField=   "cate_creadate"
      Columns(6).DataType=   135
      Columns(6).FieldLen=   256
      Columns(7).Width=   5292
      Columns(7).Visible=   0   'False
      Columns(7).Caption=   "create_user"
      Columns(7).Name =   "create_user"
      Columns(7).DataField=   "cate_creauser"
      Columns(7).DataType=   8
      Columns(7).FieldLen=   256
      _ExtentX        =   10186
      _ExtentY        =   5530
      _StockProps     =   79
      DataMember      =   "CATEGORY"
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
      Left            =   4920
      TabIndex        =   2
      Top             =   3840
      Width           =   2460
   End
   Begin VB.Label lbl_Category 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Category"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   2790
      TabIndex        =   0
      Top             =   60
      Width           =   1230
   End
End
Attribute VB_Name = "frm_Category"
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
Private Function validate_fields(colnum As Integer) As Boolean
Dim x As Boolean

validate_fields = True
If SSDBGCategory.IsAddRow Then
   If colnum = 0 Or colnum = 1 Then
      x = NotValidLen(SSDBGCategory.Columns(colnum).text)
      If x = True Then
         RecSaved = False
         msg1 = translator.Trans("M00702")
         MsgBox IIf(msg1 = "", "Required field, please enter value", msg1)
         SSDBGCategory.SetFocus
         SSDBGCategory.Col = colnum
         validate_fields = False
         Exit Function
      End If
    End If
      If colnum = 0 Then
           x = CheckDesCode(SSDBGCategory.Columns(0).text)
        If x <> False Then
             RecSaved = False
             msg1 = translator.Trans("M00703")
             MsgBox IIf(msg1 = "", "This code already exists. Please choose a unique value.", msg1)
             SSDBGCategory.SetFocus
             SSDBGCategory.Col = 0
             SSDBGCategory.Columns(0).text = ""
            validate_fields = False
         End If
    End If
   End If

End Function
Private Sub Form_Load()
Dim ctl As Control

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
   
    Screen.MousePointer = vbHourglass
    
    'Added by Juan (9/11/2000) for Multilingual
    Call translator.Translate_Forms("frm_Category")
    '------------------------------------------
    
    'color the controls and form backcolor
    Me.BackColor = frm_Color.txt_WBackground.BackColor
    
    For Each ctl In Controls
        Call gsb_fade_to_black(ctl)
    Next ctl
    
    Call deIms.CATEGORY(deIms.NameSpace)
    Set NavBar1.Recordset = deIms.rsCATEGORY
    Set SSDBGCategory.DataSource = deIms
    
    Screen.MousePointer = vbDefault
 
    
    frm_Category.Caption = frm_Category.Caption + " - " + frm_Category.Tag
    NVBAR_EDIT = NavBar1.EditEnabled
    NVBAR_ADD = NavBar1.NewEnabled
    NVBAR_SAVE = NavBar1.SaveEnabled
    
    NavBar1.EditEnabled = True
    NavBar1.EditVisible = True
    NavBar1.CancelEnabled = False
    NavBar1.SaveEnabled = False
    NavBar1.CloseEnabled = True
    NavBar1.Width = 5050
    SSDBGCategory.AllowUpdate = False
      Call DisableButtons(Me, NavBar1)
End Sub

Private Sub Form_Terminate()
'MsgBox ("here")
End Sub

Private Sub Form_Unload(Cancel As Integer)

On Error Resume Next
On Error Resume Next
 RecSaved = True
 InUnload = True
 CAncelGrid = False
 SSDBGCategory.Update
 If RecSaved = True Then
    Hide
'    deIms.rsCATEGORY.Update
'    deIms.rsCATEGORY.CancelUpdate
    '
   ' deIms.rsCATEGORY.UpdateBatch
   ' deIms.rsCATEGORY.CancelBatch
   ' If Err Then Err.Clear
    
    deIms.rsCATEGORY.Close
    If Err Then Err.Clear
    Set frm_Category = Nothing
    If open_forms <= 5 Then ShowNavigator
    If Err Then Err.Clear
    
Else
    Cancel = True
End If
End Sub

Private Sub NavBar1_BeforeMove(bCancel As Boolean)
   SSDBGCategory.Update
  End Sub

Private Sub NavBar1_BeforeNewClick()
     SSDBGCategory.AddNew
    NavBar1.CancelEnabled = True
    NavBar1.NewEnabled = False
    NavBar1.EditEnabled = False
    NavBar1.SaveEnabled = True
    lblStatus.ForeColor = &HFF&
    lblStatus.Caption = Create
    SSDBGCategory.AllowUpdate = True
    SSDBGCategory.Columns("active").text = 1
    SSDBGCategory.SetFocus
    SSDBGCategory.Col = 0
End Sub

Private Sub NavBar1_BeforeSaveClick()
CAncelGrid = False
     SSDBGCategory.Update
        If RecSaved = True Then
            NavBar1.SaveEnabled = False
            SSDBGCategory.Columns(0).locked = False
            NavBar1.CancelEnabled = False
            lblStatus.ForeColor = &HFF00&
            lblStatus = Visualize
            NavBar1.SaveEnabled = False
            NavBar1.CancelEnabled = False
            NavBar1.EditEnabled = True
            NavBar1.NewEnabled = NVBAR_ADD
            SSDBGCategory.AllowUpdate = False
       End If
    
End Sub

Private Sub NavBar1_BeforeCancelClick()
   CAncelGrid = True
End Sub

Private Sub NavBar1_OnCancelClick()
 Dim response As Integer
   If SSDBGCategory.IsAddRow Then
      msg1 = translator.Trans("M00706")
      response = MsgBox((IIf(msg1 = "", " Are you sure you want to cancel changes?", msg1)), vbOKCancel, "Imswin")
      If response = vbOK Then
          CAncelGrid = True
           SSDBGCategory.CancelUpdate
        ' Cancel = -1
          CAncelGrid = True
          SSDBGCategory.CancelUpdate
       '   SSDBGCategory.Refresh
          NavBar1.EditEnabled = True
          NavBar1.NewEnabled = True
          NavBar1.CancelEnabled = False
          NavBar1.SaveEnabled = False
          SSDBGCategory.AllowUpdate = False
         lblStatus.ForeColor = &HFF00&
          lblStatus.Caption = Visualize
     '     SSDBGCategory.Refresh
    Else
        CAncelGrid = False
    End If
Else
  '  CAncelGrid = True
    SSDBGCategory.CancelUpdate
   ' Cancel = -1
   ' CAncelGrid = True
    SSDBGCategory.CancelUpdate
    SSDBGCategory.Columns(0).locked = False
    NavBar1.EditEnabled = True
    NavBar1.NewEnabled = True
    NavBar1.CancelEnabled = False
    NavBar1.SaveEnabled = False
    SSDBGCategory.AllowUpdate = False
    lblStatus.ForeColor = &HFF00&
    lblStatus.Caption = Visualize
'    SSDBGCategory.Refresh
End If

End Sub

Private Sub NavBar1_OnCloseClick()
    Unload Me
End Sub

Private Sub NavBar1_OnEditClick()
SSDBGCategory.AllowUpdate = True
SSDBGCategory.Columns(0).locked = True
NavBar1.CancelEnabled = True
NavBar1.EditEnabled = False
NavBar1.SaveEnabled = True
NavBar1.NewEnabled = False
lblStatus.ForeColor = &HFF0000
lblStatus.Caption = Modify
SSDBGCategory.SetFocus
SSDBGCategory.Col = 1
SSDBGCategory.AllowUpdate = True

End Sub

Private Sub NavBar1_OnNewClick()
   SSDBGCategory.AllowUpdate = False
 End Sub

Private Sub NavBar1_OnPrintClick()
On Error GoTo ErrHandler

    With MDI_IMS.CrystalReport1
        .Reset
        .ReportFileName = FixDir(App.Path) + "CRreports\Category.rpt"
        .ParameterFields(0) = "namespace;" + deIms.NameSpace + ";TRUE"
        
        'Modified by Juan (9/11/2000) for Multilingual
        msg1 = translator.Trans("L00027") 'J added
        .WindowTitle = IIf(msg1 = "", "Category", msg1) 'J modified
        Call translator.Translate_Reports("Category.rpt") 'J added
        '---------------------------------------------
        
        .Action = 1: .Reset
        
    End With
        Exit Sub
    
ErrHandler:
    If Err Then
        MsgBox Err.Description
        Err.Clear
    End If
End Sub

Private Sub NavBar1_OnSaveClick()
On Error Resume Next
    Call deIms.rsCATEGORY.Move(0)
    If Err Then Err.Clear
    

End Sub

Private Sub SSDBGCategory_AfterUpdate(RtnDispErrMsg As Integer)
If RecSaved = True Then
    lblStatus.ForeColor = &HFF00&
    lblStatus = Visualize
    NavBar1.SaveEnabled = False
    NavBar1.CancelEnabled = False
    NavBar1.EditEnabled = True
    NavBar1.NewEnabled = NVBAR_ADD
    SSDBGCategory.AllowUpdate = False
End If

End Sub

Private Sub SSDBGCategory_BeforeColUpdate(ByVal ColIndex As Integer, ByVal oldVALUE As Variant, Cancel As Integer)
Dim Recchanged As Boolean
Dim ret As Integer
  
          If SSDBGCategory.IsAddRow And ColIndex = 0 Then 'And TMPCTL.RecordToProcess.editmode = adEditAdd Then
             If NotValidLen(SSDBGCategory.Columns(ColIndex).text) Then
                msg1 = translator.Trans("M00702")
                MsgBox IIf(msg1 = "", "Required field, please enter value.", msg1)
                Cancel = 1
                SSDBGCategory.SetFocus
                SSDBGCategory.Columns(ColIndex).text = oldVALUE
                SSDBGCategory.Col = 0
                RecSaved = False
                GoodColMove = False
              ElseIf CheckDesCode(SSDBGCategory.Columns(ColIndex).text) Then
                msg1 = translator.Trans("M00703")
                MsgBox IIf(msg1 = "", "This code already exists. Please choose a unique value", msg1)
                Cancel = 1
                SSDBGCategory.SetFocus
                SSDBGCategory.Columns(ColIndex).text = oldVALUE
                SSDBGCategory.Col = 0
                RecSaved = False
                GoodColMove = False
             End If
        
        ElseIf SSDBGCategory.IsAddRow And ColIndex = 1 Then
              If NotValidLen(SSDBGCategory.Columns(ColIndex).text) Then
                msg1 = translator.Trans("M00702")
                MsgBox IIf(msg1 = "", "Required field, please enter value", msg1)
                Cancel = 1
                SSDBGCategory.SetFocus
                'SSDBGCategory.Columns(ColIndex).Text =
                RecSaved = False
                SSDBGCategory.Col = 1
               End If
        ElseIf Not SSDBGCategory.IsAddRow And ColIndex = 1 Then
                If NotValidLen(SSDBGCategory.Columns(ColIndex).text) Then
               msg1 = translator.Trans("M00702")
                MsgBox IIf(msg1 = "", "Required field, please enter value", msg1)
                Cancel = 1
                SSDBGCategory.SetFocus
                'SSDBGCategory.Columns(ColIndex).Text =
                RecSaved = False
                SSDBGCategory.Col = 1
               End If
       End If
     Recchanged = DidFieldChange(Trim(oldVALUE), Trim(SSDBGCategory.Columns(ColIndex).text))
     
        

End Sub

Private Sub SSDBGCategory_BeforeRowColChange(Cancel As Integer)
Dim good_field As Boolean
    good_field = validate_fields(SSDBGCategory.Col)
    If Not good_field Then
       Cancel = True
    End If

End Sub

Private Sub SSDBGCategory_BeforeUpdate(Cancel As Integer)
  Dim response, SavedCol As Integer
 Dim x As Boolean
  response = 0
  
SavedCol = SSDBGCategory.Col
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
 
  If SSDBGCategory.IsAddRow Then
      x = NotValidLen(SSDBGCategory.Columns(1).text)
      If x = True Then
         RecSaved = False
         Cancel = True
         msg1 = translator.Trans("M00702")
         MsgBox IIf(msg1 = "", "Required field, please enter value", msg1)
                  SSDBGCategory.SetFocus
         SSDBGCategory.Col = 1
         Exit Sub
      End If
      x = CheckDesCode(SSDBGCategory.Columns(0).text)
      If x <> False Then
         RecSaved = False
         msg1 = translator.Trans("M00703")
         MsgBox IIf(msg1 = "", "This code already exists. Please choose a unique value.", msg1)
         SSDBGCategory.SetFocus
         SSDBGCategory.Col = 0
         SSDBGCategory.Columns(0).text = ""
         Exit Sub
      End If
   End If
End If
    If InUnload = False Then
           msg1 = translator.Trans("M00705") 'J added
          response = MsgBox((IIf(msg1 = "", "Are you sure you want to save the changes?", msg1)), vbOKCancel, "Imswin")
   End If
     If (response = vbOK) Or (response = vbYes) Then
        
        SSDBGCategory.Columns("np").text = deIms.NameSpace
        If SSDBGCategory.IsAddRow Then
            SSDBGCategory.Columns("create_date").text = Date
            SSDBGCategory.Columns("create_user").text = CurrentUser
        End If
        SSDBGCategory.Columns("modify_date").text = Date
        SSDBGCategory.Columns("modify_user").text = CurrentUser
        Cancel = 0
     Else
       CAncelGrid = True
        RecSaved = False
         SSDBGCategory.SetFocus
         SSDBGCategory.Col = SavedCol
      ' SSDBGCategory.CancelUpdate
     Cancel = True
   End If
  
End Sub

Private Function CheckDesCode(Code As String) As Boolean
On Error Resume Next
Dim cmd As ADODB.Command
Dim rst As ADODB.Recordset

    Set cmd = MakeCommand(deIms.cnIms, adCmdText)
    
    With cmd
        .CommandText = "SELECT count(*) RT"
         .CommandText = .CommandText & " From CATEGORY "
        .CommandText = .CommandText & " Where cate_npecode = '" & deIms.NameSpace & "'"
       .CommandText = .CommandText & " AND cate_catecode = '" & Code & "'"
       
        Set rst = .Execute
        CheckDesCode = rst!rt
    End With
       
     Set cmd = Nothing
    Set rst = Nothing
    If Err Then Call LogErr(Name & "::CheckDesCode", Err.Description, Err.number, True)
End Function
'Public Function Checkactiveflag() As Integer
'On Error Resume Next
'Dim str As String
'Dim cmd  As ADODB.Command
'Dim rst As ADODB.Recordset
'
'    Set cmd = MakeCommand(deIms.cnIms, adCmdText)
'
'    With cmd
'
'        .CommandText = " SELECT cate_actvflag "
'        .CommandText = .CommandText & " From CATEGORY "
'        .CommandText = .CommandText & " WHERE WHERE (cate_npecode = '" & deIms.NameSpace & "') "
'        .CommandText = .CommandText & " AND (cate_catecode = '" & SSDBGCategory.Columns(0).Text & "') "
'
'
'        Set rst = .Execute
'
'
'    End With
'
'
'End Function
Private Sub SSDBGCategory_KeyPress(KeyAscii As Integer)
 Dim Char
  Dim cur_col As Integer
  Dim good_field As Boolean


    
    
If Not SSDBGCategory.IsAddRow And SSDBGCategory.Col = 0 And KeyAscii <> 13 Then
    KeyAscii = 0
Else
    Char = Chr(KeyAscii)
    KeyAscii = Asc(UCase(Char))
    If KeyAscii = 13 Or ((KeyAscii = 9) And (SSDBGCategory.Col = 2)) Then
        GoodColMove = True
    End If
    If KeyAscii = 13 Or KeyAscii = 9 Then
        cur_col = SSDBGCategory.Col
        If (cur_col = 2) Then
            If GoodColMove = True Then
                SSDBGCategory.Col = 0
            Else
                GoodColMove = True
            End If
        Else
            If GoodColMove = True Then
                good_field = validate_fields(SSDBGCategory.Col)
                If good_field Then
                    SSDBGCategory.Col = cur_col + 1
                End If
            Else
                GoodColMove = True
            End If
        End If
    End If
End If
End Sub

Private Sub SSDBGCategory_LostFocus()
'MsgBox ("here")
End Sub
