VERSION 5.00
Object = "{4A4AA691-3E6F-11D2-822F-00104B9E07A1}#3.0#0"; "ssdw3bo.ocx"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F8D97923-5EB1-11D3-BA04-0040F6348B67}#9.1#0"; "LRNavigatorsX.ocx"
Object = "{27609682-380F-11D5-99AB-00D0B74311D4}#1.0#0"; "ImsMailVBX.ocx"
Begin VB.Form frmAuditSap 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Audit SAP"
   ClientHeight    =   5790
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8415
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   5790
   ScaleWidth      =   8415
   Tag             =   "02051100"
   Begin LRNavigators.NavBar NavBar1 
      Height          =   375
      Left            =   3360
      TabIndex        =   8
      TabStop         =   0   'False
      Top             =   5280
      Width           =   1800
      _ExtentX        =   3175
      _ExtentY        =   661
      ButtonHeight    =   329.953
      ButtonWidth     =   345.26
      Style           =   1
      MouseIcon       =   "AuditSAP.frx":0000
      CancelVisible   =   0   'False
      PreviousVisible =   0   'False
      NewVisible      =   0   'False
      LastVisible     =   0   'False
      NextVisible     =   0   'False
      FirstVisible    =   0   'False
      EMailVisible    =   -1  'True
      CloseEnabled    =   0   'False
      PrintEnabled    =   0   'False
      SaveEnabled     =   0   'False
      DeleteEnabled   =   -1  'True
      EditEnabled     =   -1  'True
   End
   Begin TabDlg.SSTab sstbSapAdjustment 
      Height          =   5055
      Left            =   120
      TabIndex        =   9
      TabStop         =   0   'False
      Top             =   120
      Width           =   8145
      _ExtentX        =   14367
      _ExtentY        =   8916
      _Version        =   393216
      Style           =   1
      Tabs            =   2
      TabsPerRow      =   6
      TabHeight       =   520
      TabCaption(0)   =   "Sap Adjustment"
      TabPicture(0)   =   "AuditSAP.frx":001C
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "lblDesc(10)"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "lblEntyNumb"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "lblDesc(12)"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "lblCurrSap"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "lblDesc(11)"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).Control(5)=   "lblDesc(0)"
      Tab(0).Control(5).Enabled=   0   'False
      Tab(0).Control(6)=   "lblDesc(2)"
      Tab(0).Control(6).Enabled=   0   'False
      Tab(0).Control(7)=   "lblDesc(5)"
      Tab(0).Control(7).Enabled=   0   'False
      Tab(0).Control(8)=   "lblDate"
      Tab(0).Control(8).Enabled=   0   'False
      Tab(0).Control(9)=   "lblDesc(4)"
      Tab(0).Control(9).Enabled=   0   'False
      Tab(0).Control(10)=   "lblType"
      Tab(0).Control(10).Enabled=   0   'False
      Tab(0).Control(11)=   "lblDesc(3)"
      Tab(0).Control(11).Enabled=   0   'False
      Tab(0).Control(12)=   "lblDesc(1)"
      Tab(0).Control(12).Enabled=   0   'False
      Tab(0).Control(13)=   "lblUser"
      Tab(0).Control(13).Enabled=   0   'False
      Tab(0).Control(14)=   "lblDesc(6)"
      Tab(0).Control(14).Enabled=   0   'False
      Tab(0).Control(15)=   "lblDesc(7)"
      Tab(0).Control(15).Enabled=   0   'False
      Tab(0).Control(16)=   "Label1"
      Tab(0).Control(16).Enabled=   0   'False
      Tab(0).Control(17)=   "ssdcboCompany"
      Tab(0).Control(17).Enabled=   0   'False
      Tab(0).Control(18)=   "ssdcboCondition"
      Tab(0).Control(18).Enabled=   0   'False
      Tab(0).Control(19)=   "ssdcboStockNumb"
      Tab(0).Control(19).Enabled=   0   'False
      Tab(0).Control(20)=   "ssdcboWarehouse"
      Tab(0).Control(20).Enabled=   0   'False
      Tab(0).Control(21)=   "txtNewSap"
      Tab(0).Control(21).Enabled=   0   'False
      Tab(0).Control(22)=   "txtRemarks"
      Tab(0).Control(22).Enabled=   0   'False
      Tab(0).Control(23)=   "cbo_Transaction"
      Tab(0).Control(23).Enabled=   0   'False
      Tab(0).ControlCount=   24
      TabCaption(1)   =   "&Recipients"
      TabPicture(1)   =   "AuditSAP.frx":0038
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "lbl_Recipients"
      Tab(1).Control(1)=   "ssdbRecepientList"
      Tab(1).Control(2)=   "Picture1"
      Tab(1).Control(3)=   "cmd_Remove"
      Tab(1).Control(4)=   "cmd_Add"
      Tab(1).ControlCount=   5
      Begin VB.ComboBox cbo_Transaction 
         Height          =   315
         Left            =   5580
         Style           =   2  'Dropdown List
         TabIndex        =   6
         Tag             =   "3"
         Top             =   480
         Width           =   2400
      End
      Begin VB.CommandButton cmd_Add 
         Caption         =   "Add"
         Height          =   288
         Left            =   -74835
         TabIndex        =   14
         Top             =   1320
         Width           =   1335
      End
      Begin VB.CommandButton cmd_Remove 
         Caption         =   "Remove"
         Height          =   288
         Left            =   -74835
         TabIndex        =   15
         Top             =   1635
         Width           =   1335
      End
      Begin VB.PictureBox Picture1 
         BorderStyle     =   0  'None
         Height          =   2895
         Left            =   -74880
         ScaleHeight     =   2895
         ScaleWidth      =   7455
         TabIndex        =   29
         Top             =   2040
         Width           =   7455
         Begin ImsMailVB.Imsmail Imsmail 
            Height          =   2775
            Left            =   70800
            TabIndex        =   31
            Top             =   -4320
            Width           =   7455
            _ExtentX        =   13150
            _ExtentY        =   4895
         End
      End
      Begin VB.TextBox txtRemarks 
         Height          =   2175
         Left            =   180
         MaxLength       =   7000
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   5
         Top             =   2640
         Width           =   7815
      End
      Begin VB.TextBox txtNewSap 
         Enabled         =   0   'False
         Height          =   315
         Left            =   5580
         TabIndex        =   4
         Tag             =   "5"
         Top             =   2160
         Width           =   1425
      End
      Begin SSDataWidgets_B_OLEDB.SSOleDBCombo ssdcboWarehouse 
         Height          =   315
         Left            =   1440
         TabIndex        =   1
         Tag             =   "1"
         Top             =   825
         Width           =   2385
         DataFieldList   =   "Column 0"
         _Version        =   196617
         DataMode        =   2
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ColumnHeaders   =   0   'False
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
         stylesets(0).Picture=   "AuditSAP.frx":0054
         stylesets(0).AlignmentText=   0
         stylesets(1).Name=   "ColHeader"
         stylesets(1).HasFont=   -1  'True
         BeginProperty stylesets(1).Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         stylesets(1).Picture=   "AuditSAP.frx":0070
         stylesets(1).AlignmentText=   1
         HeadFont3D      =   4
         DefColWidth     =   5292
         ForeColorEven   =   8388608
         BackColorEven   =   16771818
         BackColorOdd    =   16777215
         RowHeight       =   423
         Columns.Count   =   2
         Columns(0).Width=   4339
         Columns(0).Caption=   "Description"
         Columns(0).Name =   "Description"
         Columns(0).DataField=   "Column 0"
         Columns(0).DataType=   8
         Columns(0).FieldLen=   256
         Columns(1).Width=   1799
         Columns(1).Caption=   "Code"
         Columns(1).Name =   "Code"
         Columns(1).DataField=   "Column 1"
         Columns(1).DataType=   8
         Columns(1).FieldLen=   256
         _ExtentX        =   4207
         _ExtentY        =   556
         _StockProps     =   93
         BackColor       =   -2147483643
      End
      Begin SSDataWidgets_B_OLEDB.SSOleDBCombo ssdcboStockNumb 
         Height          =   315
         Left            =   1440
         TabIndex        =   2
         Tag             =   "2"
         Top             =   1470
         Width           =   2400
         DataFieldList   =   "Column 0"
         _Version        =   196617
         DataMode        =   2
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ColumnHeaders   =   0   'False
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
         stylesets(0).Picture=   "AuditSAP.frx":008C
         stylesets(0).AlignmentText=   0
         stylesets(1).Name=   "ColHeader"
         stylesets(1).HasFont=   -1  'True
         BeginProperty stylesets(1).Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         stylesets(1).Picture=   "AuditSAP.frx":00A8
         stylesets(1).AlignmentText=   1
         HeadFont3D      =   4
         DefColWidth     =   5292
         ForeColorEven   =   8388608
         BackColorEven   =   16771818
         BackColorOdd    =   16777215
         RowHeight       =   423
         ExtraHeight     =   370
         Columns.Count   =   2
         Columns(0).Width=   3519
         Columns(0).Caption=   "Description"
         Columns(0).Name =   "Description"
         Columns(0).DataField=   "Column 0"
         Columns(0).DataType=   8
         Columns(0).FieldLen=   256
         Columns(1).Width=   1799
         Columns(1).Caption=   "Code"
         Columns(1).Name =   "Code"
         Columns(1).DataField=   "Column 1"
         Columns(1).DataType=   8
         Columns(1).FieldLen=   256
         _ExtentX        =   4233
         _ExtentY        =   556
         _StockProps     =   93
         BackColor       =   -2147483643
         Enabled         =   0   'False
      End
      Begin SSDataWidgets_B_OLEDB.SSOleDBCombo ssdcboCondition 
         Height          =   315
         Left            =   5580
         TabIndex        =   3
         Tag             =   "4"
         Top             =   1470
         Width           =   2385
         DataFieldList   =   "Column 0"
         AllowInput      =   0   'False
         _Version        =   196617
         DataMode        =   2
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ColumnHeaders   =   0   'False
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
         stylesets(0).Picture=   "AuditSAP.frx":00C4
         stylesets(0).AlignmentText=   0
         stylesets(1).Name=   "ColHeader"
         stylesets(1).HasFont=   -1  'True
         BeginProperty stylesets(1).Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         stylesets(1).Picture=   "AuditSAP.frx":00E0
         stylesets(1).AlignmentText=   1
         HeadFont3D      =   4
         DefColWidth     =   5292
         ForeColorEven   =   8388608
         BackColorEven   =   16771818
         BackColorOdd    =   16777215
         RowHeight       =   423
         Columns.Count   =   2
         Columns(0).Width=   4339
         Columns(0).Caption=   "Description"
         Columns(0).Name =   "Description"
         Columns(0).DataField=   "Column 0"
         Columns(0).DataType=   8
         Columns(0).FieldLen=   256
         Columns(1).Width=   1799
         Columns(1).Caption=   "Code"
         Columns(1).Name =   "Code"
         Columns(1).DataField=   "Column 1"
         Columns(1).DataType=   8
         Columns(1).FieldLen=   256
         _ExtentX        =   4207
         _ExtentY        =   556
         _StockProps     =   93
         BackColor       =   -2147483643
         Enabled         =   0   'False
      End
      Begin SSDataWidgets_B_OLEDB.SSOleDBGrid ssdbRecepientList 
         Height          =   1455
         Left            =   -73260
         TabIndex        =   16
         Top             =   480
         Width           =   6150
         _Version        =   196617
         AllowUpdate     =   0   'False
         AllowGroupSizing=   0   'False
         AllowGroupMoving=   0   'False
         AllowColumnMoving=   0
         AllowGroupSwapping=   0   'False
         AllowColumnSwapping=   0
         AllowGroupShrinking=   0   'False
         SelectTypeCol   =   0
         SelectTypeRow   =   3
         ForeColorEven   =   -2147483640
         ForeColorOdd    =   -2147483640
         BackColorEven   =   -2147483643
         BackColorOdd    =   -2147483643
         RowHeight       =   423
         Columns(0).Width=   9710
         Columns(0).Caption=   "Recp"
         Columns(0).Name =   "Recp"
         Columns(0).DataField=   "Column 0"
         Columns(0).DataType=   8
         Columns(0).FieldLen=   256
         _ExtentX        =   10848
         _ExtentY        =   2566
         _StockProps     =   79
         Caption         =   "Recipient List"
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
      Begin SSDataWidgets_B_OLEDB.SSOleDBCombo ssdcboCompany 
         Height          =   315
         Left            =   1440
         TabIndex        =   0
         Tag             =   "0"
         Top             =   480
         Width           =   2400
         DataFieldList   =   "Column 0"
         _Version        =   196617
         DataMode        =   2
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BackColorOdd    =   16771818
         RowHeight       =   423
         Columns.Count   =   2
         Columns(0).Width=   4445
         Columns(0).Caption=   "Description"
         Columns(0).Name =   "Description"
         Columns(0).DataField=   "Column 0"
         Columns(0).DataType=   8
         Columns(0).FieldLen=   256
         Columns(1).Width=   3200
         Columns(1).Caption=   "Code"
         Columns(1).Name =   "Code"
         Columns(1).DataField=   "Column 1"
         Columns(1).DataType=   8
         Columns(1).FieldLen=   256
         _ExtentX        =   4233
         _ExtentY        =   556
         _StockProps     =   93
         BackColor       =   -2147483643
      End
      Begin VB.Label lbl_Recipients 
         Caption         =   "Recipient(s)"
         Height          =   300
         Left            =   -74835
         TabIndex        =   30
         Top             =   480
         Width           =   1500
      End
      Begin VB.Label Label1 
         Caption         =   "Remarks"
         Height          =   255
         Left            =   180
         TabIndex        =   28
         Top             =   2340
         Width           =   1275
      End
      Begin VB.Label lblDesc 
         Caption         =   "Condition"
         Height          =   315
         Index           =   7
         Left            =   4080
         TabIndex        =   27
         Top             =   1470
         Width           =   1500
      End
      Begin VB.Label lblDesc 
         Caption         =   "Stock #"
         Height          =   315
         Index           =   6
         Left            =   180
         TabIndex        =   26
         Top             =   1470
         Width           =   1300
      End
      Begin VB.Label lblUser 
         BackColor       =   &H00FFFFC0&
         BorderStyle     =   1  'Fixed Single
         ForeColor       =   &H00FF0000&
         Height          =   315
         Left            =   5580
         TabIndex        =   10
         Top             =   810
         Width           =   1425
      End
      Begin VB.Label lblDesc 
         Caption         =   "User"
         Height          =   315
         Index           =   1
         Left            =   4080
         TabIndex        =   25
         Top             =   810
         Width           =   1500
      End
      Begin VB.Label lblDesc 
         Caption         =   "Company"
         Height          =   315
         Index           =   3
         Left            =   180
         TabIndex        =   24
         Top             =   480
         Width           =   1300
      End
      Begin VB.Label lblType 
         BackColor       =   &H00FFFFC0&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "SAP ADJUSTMENT"
         ForeColor       =   &H00FF0000&
         Height          =   315
         Left            =   1440
         TabIndex        =   11
         Top             =   1140
         Width           =   1560
      End
      Begin VB.Label lblDesc 
         Caption         =   "Type"
         Height          =   315
         Index           =   4
         Left            =   180
         TabIndex        =   23
         Top             =   1140
         Width           =   1300
      End
      Begin VB.Label lblDate 
         BackColor       =   &H00FFFFC0&
         BorderStyle     =   1  'Fixed Single
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "MM/dd/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   315
         Left            =   5580
         TabIndex        =   12
         Top             =   1140
         Width           =   1425
      End
      Begin VB.Label lblDesc 
         Caption         =   "Date"
         Height          =   315
         Index           =   5
         Left            =   4080
         TabIndex        =   22
         Top             =   1140
         Width           =   1500
      End
      Begin VB.Label lblDesc 
         Caption         =   "Transac #"
         Height          =   315
         Index           =   2
         Left            =   4080
         TabIndex        =   21
         Top             =   450
         Width           =   1500
      End
      Begin VB.Label lblDesc 
         Caption         =   "Warehouse"
         Height          =   315
         Index           =   0
         Left            =   180
         TabIndex        =   20
         Top             =   840
         Width           =   1300
      End
      Begin VB.Label lblDesc 
         AutoSize        =   -1  'True
         Caption         =   "Current Sap"
         Height          =   195
         Index           =   11
         Left            =   4080
         TabIndex        =   19
         Top             =   1800
         Width           =   1500
      End
      Begin VB.Label lblCurrSap 
         BackColor       =   &H00FFFFC0&
         BorderStyle     =   1  'Fixed Single
         ForeColor       =   &H00FF0000&
         Height          =   315
         Left            =   5580
         TabIndex        =   13
         Top             =   1800
         Width           =   1425
      End
      Begin VB.Label lblDesc 
         Caption         =   "New Sap"
         Height          =   315
         Index           =   12
         Left            =   4080
         TabIndex        =   18
         Top             =   2160
         Width           =   1500
      End
      Begin VB.Label lblEntyNumb 
         BackColor       =   &H00FFFFC0&
         BorderStyle     =   1  'Fixed Single
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "MM/dd/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   315
         Left            =   1440
         TabIndex        =   7
         Top             =   1800
         Width           =   2385
      End
      Begin VB.Label lblDesc 
         Caption         =   "Entry #"
         Height          =   315
         Index           =   10
         Left            =   180
         TabIndex        =   17
         Top             =   1800
         Width           =   1300
      End
   End
End
Attribute VB_Name = "frmAuditSap"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim Transnumb As String
Dim CompCode As String
Dim rsReceptList As ADODB.Recordset

Dim SaveEnabled As Boolean
'populate warehouse data grids

Private Sub AddWhareHouses(rst As ADODB.Recordset)
    
    If rst Is Nothing Then Exit Sub
    If rst.State And adStateOpen = adStateClosed Then Exit Sub
    
    If rst.RecordCount = 0 Then GoTo CleanUp
    
    rst.MoveFirst
    
    ssdcboWarehouse.RemoveAll
    
    Do While ((Not rst.EOF))

        ssdcboWarehouse.AddItem rst!loc_name & "" & ";" & rst!loc_locacode & ""
        rst.MoveNext
    Loop

CleanUp:
    rst.Close
    Set rst = Nothing
End Sub



Private Sub cbo_Transaction_Change()
    If NavBar1.SaveEnabled = False Then Call ClearScreen
End Sub

'set transaction data combo bottum

Private Sub cbo_Transaction_Click()

Dim bl As Boolean

    Transnumb = Trim$(cbo_Transaction)
    
    bl = CBool(Len(Transnumb))
    
    Imsmail.Enabled = bl
    cmd_Add.Enabled = bl
    cmd_Remove.Enabled = bl
    NavBar1.PrintEnabled = bl
    'NavBar1.SaveEnabled = False
    ssdbRecepientList.Enabled = bl
'    NavBar1.EMailEnabled = ssdbRecepientList.Rows
    NavBar1.EMailEnabled = True
    
  
    
End Sub

'call function get issue number and populate data grid

Private Sub cbo_Transaction_GotFocus()

On Error Resume Next

Dim rst As ADODB.Recordset

    Set rst = deIms.rsIssueNumber
    If rst.State And adStateOpen = adStateOpen Then rst.Close
    Call deIms.IssueNumber(deIms.NameSpace, CompCode, "SI")
    
    Call PopuLateFromRecordSet(cbo_Transaction, rst, rst.Fields(0).Name, False)
    
    rst.Close
    Set rst = Nothing
    If Err Then Err.Clear
    Call HighlightBackground(cbo_Transaction)

End Sub

'do not allow enter data to transaction combo

Private Sub cbo_Transaction_KeyPress(KeyAscii As Integer)
    If NavBar1.NewEnabled = False Then
        KeyAscii = 0
    End If
End Sub

Private Sub cbo_Transaction_LostFocus()
    cbo_Transaction.Clear
    Call NormalBackground(cbo_Transaction)
    ssdcboCompany.SetFocus
End Sub

'call function add current reciptient to recipien list

Private Sub cmd_Add_Click()
    Imsmail.AddCurrentRecipient
End Sub

'delete recipient form recipient list

Private Sub cmd_Remove_Click()
On Error Resume Next

    rsReceptList.Delete
    rsReceptList.Update
    
    If Err Then Err.Clear
End Sub

'call function get data grids datas and set navbar button

Private Sub Form_Load()
Dim fComp As String


Dim np As String, cn As ADODB.Connection
    SaveEnabled = Getmenuuser(deIms.NameSpace, CurrentUser, Me.Tag, deIms.cnIms)
    NavBar1.NewEnabled = SaveEnabled
    NavBar1.SaveEnabled = SaveEnabled

    'Added by Juan (9/27/2000) for Multilingual
    Call translator.Translate_Forms("frmSapAdjustment")
    '------------------------------------------

    np = deIms.NameSpace
    Set cn = deIms.cnIms
    fComp = GetCompany(np, "PE", cn)
    ssdcboStockNumb.FieldSeparator = Chr(1)
    'CompCode = GetCompanyCode(np, fComp, cn)
    
    AddCompanies
    Imsmail.NameSpace = deIms.NameSpace
    
    'IMSMail.Connected = True 'M
    Imsmail.SetActiveConnection deIms.cnIms   'M
    Imsmail.Language = Language 'M
    Call DisableButtons(Me, NavBar1)
    NavBar1.CloseEnabled = True
    
    frmSapAdjustment.Caption = frmSapAdjustment.Caption + " - " + frmSapAdjustment.Tag
    
    sstbSapAdjustment.TabVisible(1) = False
    NavBar1.EMailVisible = False
    
    cbo_Transaction.locked = False
    cbo_Transaction.Enabled = True
    
    Me.Left = Round((Screen.Width - Me.Width) / 2)
    Me.Top = Round((Screen.Height - Me.Height) / 2)
End Sub

'populate condition data grid

Public Sub AddConditions(rst As ADODB.Recordset)
    
    If rst Is Nothing Then Exit Sub
    If rst.RecordCount = 0 Then Exit Sub
    If rst.EOF And rst.BOF Then Exit Sub
    
    rst.MoveFirst
    ssdcboCondition.RemoveAll
    ssdcboCondition.FieldSeparator = Chr(1)
    
    Do While (Not rst.EOF)
    
        ssdcboCondition.AddItem rst.Fields(0) & "" & Chr(1) & rst.Fields(1) & ""
        
        rst.MoveNext
    Loop
    
    rst.Close
    Set rst = Nothing
End Sub

'populate stock master numbers data grid

Public Sub AddStockNumbers(rst As ADODB.Recordset)
    
    If rst Is Nothing Then Exit Sub
    If rst.RecordCount = 0 Then Exit Sub
    If rst.EOF And rst.BOF Then Exit Sub
    
    rst.MoveFirst
    ssdcboStockNumb.RemoveAll
    
    Do While (Not rst.EOF)
    
        ssdcboStockNumb.AddItem rst.Fields(0) & "" & Chr(1) & rst.Fields(1) & ""
        
        rst.MoveNext
        
    Loop
    
    rst.Close
    Set rst = Nothing
End Sub

'unload form

Private Sub Form_Unload(Cancel As Integer)
On Error Resume Next
Dim closing
'    If txtNewSap <> "" Or ssdcboStockNumb <> "" Then
'        closing = MsgBox("Do you really want to close and lose your last record?", vbYesNo)
'        If closing = vbNo Then
'            Cancel = True
'            Exit Sub
'        End If
'    End If


    Imsmail.Enabled = False
    If open_forms <= 5 Then ShowNavigator

End Sub

'call function add current recipient to recipient list

Private Sub IMSMail_OnAddClick(ByVal address As String)
On Error Resume Next

    If IsNothing(rsReceptList) Then
        Set rsReceptList = New ADODB.Recordset
        Call rsReceptList.Fields.Append("Recipients", adVarChar, 60, adFldUpdatable)
        
        rsReceptList.Open
    End If
    
       'Modified by Muzammil 08/14/00
'Reason - To Add "INTERNET!" before email.
If (InStr(1, address, "@") > 0) And InStr(1, UCase(address), "INTERNET!") = 0 Then address = "INTERNET!" & UCase(address)
    
    
    If Not IsInList(address, "Recipients", rsReceptList) Then _
        Call rsReceptList.AddNew(Array("Recipients"), Array(address))

    Set ssdbRecepientList.DataSource = rsReceptList
    ssdbRecepientList.Columns(0).DataField = "Recipients"
    
End Sub

'close form

Private Sub NavBar1_OnCloseClick()
    Unload Me
End Sub

'call function to print crystal report

Private Sub NavBar1_OnPrintClick()
On Error Resume Next
    BeforePrint
    MDI_IMS.CrystalReport1.Action = 1
    MDI_IMS.CrystalReport1.Reset
    If Err Then MsgBox Err.Description: Err.Clear
End Sub

'get parmeters for crystal report

Public Sub BeforePrint()
On Error GoTo ErrHandler

     With MDI_IMS.CrystalReport1
        .Reset
        .ReportFileName = reportPath + "wareSISE.rpt"
        .ParameterFields(0) = "transnumb;" & cbo_Transaction & ";TRUE"
        .ParameterFields(1) = "namespace;" & deIms.NameSpace & ";TRUE"
        
        'Modified by Juan (9/27/2000) for Multilingual
        msg1 = translator.Trans("M00161") 'J Added
        .WindowTitle = IIf(msg1 = "", "SAP Adjustment", msg1) 'J Modified
        Call translator.Translate_Reports("wareSISE.rpt") 'J added
        Call translator.Translate_SubReports 'J added
        '---------------------------------------------
        
    End With
    Exit Sub
    
ErrHandler:
    If Err Then
        MsgBox Err.Description
        Err.Clear
    End If
End Sub

'validate data format before save

Private Sub NavBar1_OnSaveClick()

NavBar1.SaveEnabled = SaveEnabled
MDI_IMS.StatusBar1.Panels(1).Text = "Saving"
Screen.MousePointer = 11



On Error Resume Next

Dim Cancel As Boolean

    If Len(txtNewSap) Then
        MDI_IMS.StatusBar1.Panels(1).Text = "Validation"
        Call txtNewSap_Validate(Cancel)
    Else
        Cancel = True
        Screen.MousePointer = 0
        'Modified by Juan (9/27/2000) for Multilingual
        msg1 = translator.Trans("M00393") 'J added
        MsgBox IIf(msg1 = "", "New SAP cannot be left empty", msg1) 'J modified
        '---------------------------------------------
        Screen.MousePointer = 11
    End If
    
    If Cancel Then
        Screen.MousePointer = 0
        MDI_IMS.StatusBar1.Panels(1).Text = ""
        Exit Sub
    End If
    
    
    'Modified by Muzammil 08/11/00
       'Reason - VBCRLFs before the text would block Email Generation.
'          MDI_IMS.StatusBar1.Panels(1).text = "Saving Remarks"
'          Do While InStr(1, txtRemarks, vbCrLf) = 1                   'M
'             txtRemarks = Mid(txtRemarks, 3, Len(txtRemarks))         'M
'          Loop                                                        'M
'             txtRemarks = LTrim$(txtRemarks)                          'M
        
    
    If Len(txtRemarks) = 0 Then
        Screen.MousePointer = 0
        'Modified by Juan (9/27/2000) for Multilingual
        msg1 = translator.Trans("M00394") 'J added
        MsgBox IIf(msg1 = "", "Remarks cannot be empty", msg1) 'J modified
        '---------------------------------------------
        MDI_IMS.StatusBar1.Panels(1).Text = ""
        NavBar1.SaveEnabled = SaveEnabled
        Exit Sub
    End If
        Screen.MousePointer = 11
        'NavBar1.SaveEnabled = False
        
    
    If SapAdjustment Then
        
        'doevents
        MDI_IMS.StatusBar1.Panels(1).Text = "Saving Items"
        Call cbo_Transaction.AddItem(Transnumb, cbo_Transaction.ListCount)
        cbo_Transaction.ListIndex = IndexOf(cbo_Transaction, Transnumb)
        
'        BeforePrint
'        Call SendWareHouseMessage(deIms.NameSpace, "Automatic Distribution", _
'                                  lblType, deIms.cnIms, CreateRpti)
    End If
        
         'NavBar1.SaveEnabled = False
    
    If Err Then
        MsgBox Err.Description
        Call LogErr(Name & "::NavBar1_OnSaveClick", Err.Description, Err)
    End If
    MDI_IMS.StatusBar1.Panels(1).Text = ""
    NavBar1.SaveEnabled = False
    Screen.MousePointer = 0
End Sub

'call function get company recordset and populate data grid

Private Sub ssdcboCompany_Click()
    cbo_Transaction.ListIndex = CB_ERR
    CompCode = ssdcboCompany.Columns("Code").Text
    
    ssdcboWarehouse = ""
    ssdcboWarehouse.RemoveAll
    Call AddWhareHouses(GetLocation(deIms.NameSpace, "OTHER", CompCode, deIms.cnIms, False))

    NavBar1.SaveEnabled = SaveEnabled
    
    ssdcboCompany.SelLength = 0
    ssdcboCompany.SelStart = 0
    
End Sub

Private Sub ssdcboCompany_GotFocus()
Call HighlightBackground(ssdcboCompany)
End Sub

Private Sub ssdcboCompany_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 40 Then
        ssdcboCompany.DroppedDown = True
    End If
End Sub


Private Sub ssdcboCompany_LostFocus()
Call NormalBackground(ssdcboCompany)
End Sub

'call function sap stock values and format tofour decimal digit

Private Sub ssdcboCondition_Click()
Dim db As Double
Dim stckNumb As String, condCond As String

    stckNumb = ssdcboStockNumb.Text
    cbo_Transaction.ListIndex = CB_ERR
    condCond = ssdcboCondition.Columns("Code").Text
    Call Get_Sap_Stock_Values(stckNumb, condCond, db)
    
    lblCurrSap = FormatNumber((db), 4)
    txtNewSap.Enabled = True
    
    ssdcboCondition.SelLength = 0
    ssdcboCondition.SelStart = 0

End Sub

Private Sub ssdcboCondition_GotFocus()
Call HighlightBackground(ssdcboCondition)
End Sub

Private Sub ssdcboCondition_LostFocus()
Call NormalBackground(ssdcboCondition)
End Sub

'call function to get condition  values and fill data grid

Private Sub ssdcboStockNumb_Click()
Dim str As String

    ClearFields
    
    Call AddConditions(Get_Sap_Stock_Values(ssdcboStockNumb.Columns(0).Text))
    
    If ssdcboCondition.Rows Then
        str = ssdcboStockNumb.Columns(1).Text
        Call FindInGrid(ssdcboCondition, str, True, 1)
        ssdcboCondition.Text = ssdcboCondition.Columns(0).Text
        Call ssdcboCondition_Click: ssdcboCondition.Enabled = True
    End If
    
    ssdcboStockNumb.SelLength = 0
    ssdcboStockNumb.SelStart = 0
End Sub

Private Sub ssdcboStockNumb_GotFocus()
Call HighlightBackground(ssdcboStockNumb)
End Sub

Private Sub ssdcboStockNumb_KeyDown(KeyCode As Integer, Shift As Integer)
If Not ssdcboStockNumb.DroppedDown Then ssdcboStockNumb.DroppedDown = True

End Sub

Private Sub ssdcboStockNumb_LostFocus()
Call NormalBackground(ssdcboStockNumb)
End Sub

Private Sub ssdcboStockNumb_Validate(Cancel As Boolean)
If Len(Trim$(ssdcboStockNumb)) > 0 Then
         If Not ssdcboStockNumb.IsItemInList Then
                ssdcboStockNumb.Text = ""
            End If
            If Len(Trim$(ssdcboStockNumb)) = 0 Then
           ssdcboStockNumb.SetFocus
            Cancel = True
            End If
            End If
End Sub

'assign values to lables and get stock number

Private Sub ssdcboWarehouse_Click()
    ClearFields
    lblUser = CurrentUser
    cbo_Transaction.ListIndex = CB_ERR
    lblDate = Format$(Date, "mm/dd/yyyy")
    Call AddStockNumbers(Get_Sap_Stock_Values)
    ssdcboStockNumb.Enabled = ssdcboStockNumb.Rows
    
    If Len(ssdcboWarehouse) <> 0 Then
        NavBar1.SaveEnabled = SaveEnabled
    End If
    
    ssdcboWarehouse.SelStart = 0
    ssdcboWarehouse.SelLength = 0
End Sub

'call class function to get sap stock values

Private Function Get_Sap_Stock_Values(Optional StockNumb = Null, Optional Cond = Null, Optional value As Double) As ADODB.Recordset
Dim WH As String
Dim cl As imsspInt

    
    Set cl = New imsspInt
    WH = ssdcboWarehouse.Columns("Code").Text
    
    With deIms
        Set Get_Sap_Stock_Values = cl.Get_Sap_Stock_Values(.NameSpace, CompCode, WH, .cnIms, StockNumb, Cond, value)
    End With
    
    Set cl = Nothing
    
End Function

Private Sub ssdcboWarehouse_GotFocus()
Call HighlightBackground(ssdcboWarehouse)
End Sub

Private Sub ssdcboWarehouse_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 40 Then
        ssdcboWarehouse.DroppedDown = True
    End If
End Sub

Private Sub ssdcboWarehouse_LostFocus()
Call NormalBackground(ssdcboWarehouse)
End Sub

'set navbar buttoms

Private Sub sstbSapAdjustment_Click(PreviousTab As Integer)
Dim blFlag As Boolean


    blFlag = 1
    
    If sstbSapAdjustment.Tab = 0 Then 'This line was modifed by Juan (9/27/2000) for Multilingual
        NavBar1.SaveEnabled = SaveEnabled
        If Len(cbo_Transaction) <> 0 Then
            NavBar1.PrintEnabled = True
            NavBar1.SaveEnabled = SaveEnabled
        End If
        
        With NavBar1
    '        .SaveEnabled = 0
            .CloseEnabled = True
            .PrintEnabled = .SaveEnabled And cbo_Transaction.ListIndex <> CB_ERR
            .EMailEnabled = ((ssdbRecepientList.Rows) And (.PrintEnabled))
        End With
    Else
        NavBar1.SaveEnabled = False
        NavBar1.PrintEnabled = False
        NavBar1.CloseEnabled = False
    End If

End Sub

Private Sub txtNewSap_GotFocus()
Call HighlightBackground(txtNewSap)
End Sub

Private Sub txtNewSap_LostFocus()
Call NormalBackground(txtNewSap)
End Sub

'validate new SAP value and format, set to four digit

Private Sub txtNewSap_Validate(Cancel As Boolean)
    
 
    If Len(txtNewSap) Then
    
        If Not IsNumeric(txtNewSap) Then
        
            'Modified by Juan (9/27/2000) for Multilingual
            msg1 = translator.Trans("M00122") 'J added
            MsgBox IIf(msg1 = "", "Invalid Value", msg1) 'J modified
            '---------------------------------------------
            
        ElseIf txtNewSap <= 0 Then
                
            'Modified by Juan (9/27/2000) for Multilingual
            msg1 = translator.Trans("M00394") 'J added
            MsgBox IIf(msg1 = "", "SAP can not be less than or equal to zero", msg1) 'J modified
            '---------------------------------------------
                
                
        ElseIf txtNewSap = lblCurrSap Then
        
            'Modified by Juan (9/27/2000) for Multilingual
            msg1 = translator.Trans("M00395") 'J added
            MsgBox IIf(msg1 = "", "SAP can not be equal to current sap", msg1) 'J modified
            '---------------------------------------------
        
        Else
            txtNewSap = FormatNumber((txtNewSap), 4)
            Exit Sub
            
        End If
        
        Cancel = True
    Else
    
'        txtNewSap = FormatNumber((txtNewSap), 4)
        Cancel = False: Exit Sub
    End If
        
    
    
    Cancel = True
End Sub

'set parameters and call function send email and fax

Private Sub NavBar1_OnEMailClick()
Dim Filename As String
BeforePrint
    Call WriteRPTIFile(CreateRpti, Filename)
    Call SendEmailAndFax(rsReceptList, "Recipients", "Sap Adjustment", "", Filename)

    Set rsReceptList = Nothing
    Set ssdbRecepientList.DataSource = Nothing

End Sub

'set store procedure parameters and format data digit

Private Function SapAdjustment() As Boolean
On Error Resume Next

Dim db As Double
Dim cmd As New ADODB.Command
Dim Params As ADODB.parameters

' Set command properties
    Set Params = cmd.parameters
    cmd.CommandText = "SAPADJUSTMENT"
    cmd.CommandType = adCmdStoredProc
    Set cmd.ActiveConnection = deIms.cnIms
    
    SapAdjustment = False
  
    ' Define stored procedure parameters
    ' and append to command.
    
    db = 0
    db = CDbl(Trim$(txtNewSap))
    
    If Err Then Err.Clear
    
    If db = 0 Then
    
        'Modified by Juan (9/27/2000) for Multilingual
        msg1 = translator.Trans("M00396") 'J added
        MsgBox IIf(msg1 = "", "New SAP contains an invalid value", msg1) 'J modified
        '---------------------------------------------
        
        Exit Function
    End If
    
'    If Len(Trim$(txtRemarks)) > 1000 Then
'
'        'Modified by Juan (9/27/2000) for Multilingual
'        msg1 = translator.Trans("M00397") 'J added
'        MsgBox IIf(msg1 = "", "Remarks is too large", msg1) 'J modified
'        '---------------------------------------------
'
'        Exit Function
'    End If
            
    If Params.Count = 0 Then
        'Params.Refresh
        Params.Append cmd.CreateParameter("@NAMESPACE", adVarChar, adParamInput, 5)
        Params.Append cmd.CreateParameter("@USER", adVarChar, adParamInput, 20)
        Params.Append cmd.CreateParameter("@COMPCODE", adVarChar, adParamInput, 10)
        Params.Append cmd.CreateParameter("@REMARKS", adVarChar, adParamInput, 7000)
        Params.Append cmd.CreateParameter("@LOCATION", adVarChar, adParamInput, 10)
        Params.Append cmd.CreateParameter("@NEWSAP", adDouble, adParamInput, 20)
        Params.Append cmd.CreateParameter("@STOCKNUMBER", adVarChar, adParamInput, 20)
        Params.Append cmd.CreateParameter("@CONDITION", adVarChar, adParamInput, 2)
        
        Params.Append cmd.CreateParameter("@SETRANSNUMB", adVarChar, adParamOutput, 15)
        Params.Append cmd.CreateParameter("@SITRANSNUMB", adVarChar, adParamOutput, 15)
    End If
    
    Params("@USER") = CurrentUser
    Params("@NAMESPACE") = deIms.NameSpace

    Params("@NEWSAP") = db
    Params("@COMPCODE") = Trim$(CompCode)
    Params("@REMARKS") = Trim$(txtRemarks)
    Params("@LOCATION") = Trim$(ssdcboWarehouse.Columns(1).Text)
    Params("@CONDITION") = Trim$(ssdcboCondition.Columns(1).Text)
    Params("@STOCKNUMBER") = Trim$(ssdcboStockNumb.Columns(0).Text)
    
    
    
    'doevents
    ' Execute the command
    Call cmd.Execute(Options:=adExecuteNoRecords)
    Transnumb = Trim$(Params("@SITRANSNUMB") & "")
    
    If Len(Transnumb) > 0 Then
        DisableControls
        SapAdjustment = True
        'doevents: 'doevents: 'doevents
        lblEntyNumb = cmd.parameters("@SETRANSNUMB") & ""
        Call cbo_Transaction.AddItem(Transnumb)
        cbo_Transaction.ListIndex = IndexOf(cbo_Transaction, Transnumb)
        
        'Modified by Juan (9/27/2000) for Multilingual
        msg1 = translator.Trans("M00018") + " " 'J added
        msg2 = " " + translator.Trans("M00398") + " " 'J added
        MsgBox IIf(msg1 = "", "Please note that your transaction number is ", msg1) & Transnumb & IIf(msg2 = "", " and ", msg2) & lblEntyNumb
        '---------------------------------------------
        
    End If

    Set cmd = Nothing
    Set Params = Nothing
    
  
    If Err Then
        MsgBox Err.Description
        Call LogErr(Name & "::SapAdjustment", Err.Description, Err)
    End If
End Function

'clear data fields

Private Sub ClearFields()
    txtNewSap = ""
    txtRemarks = ""
    lblEntyNumb = ""
    ssdcboCondition.Text = ""
    'ssdcboStockNumb.Text = ""
    cbo_Transaction.ListIndex = CB_ERR
End Sub

'disable controls

Private Sub DisableControls()
    txtNewSap.Enabled = False
    txtRemarks.Enabled = False
    ssdcboCondition.Enabled = False
    ssdcboStockNumb.Enabled = False
End Sub

'get company data recordset and populate data grid

Private Sub AddCompanies()
On Error Resume Next
Dim rs As ADODB.Recordset

    If deIms.rsCOMPANY.State Then
        Set rs = deIms.rsCOMPANY.Clone
    Else
        deIms.Company (deIms.NameSpace)
        
        Set rs = deIms.rsCOMPANY.Clone
        deIms.rsCOMPANY.Close
    End If
    
    rs.Filter = "com_actvflag <> 0"
    ssdcboCompany.FieldSeparator = Chr$(1)
    
    rs.MoveFirst
    If rs.RecordCount = 0 Then Exit Sub
    
    Do Until rs.EOF
        ssdcboCompany.AddItem rs("com_name") & Chr$(1) & rs("com_compcode")
        
        rs.MoveNext
    Loop
    
End Sub

'get crystal report parameters

Private Function CreateRpti() As RPTIFileInfo

    With CreateRpti
        ReDim .parameters(1)
        .ReportFileName = reportPath & "wareSISE.rpt"
        .parameters(0) = "transnumb=" & cbo_Transaction
        .parameters(1) = "namespace=" & deIms.NameSpace
        
        'Modified by Juan (8/28/2000) for Multilingual
        Call translator.Translate_Reports("wareSISE.rpt") 'J added
        Call translator.Translate_SubReports 'J added
        '---------------------------------------------
    
    End With

End Function


Private Sub ClearScreen()
        
        ssdcboCompany = ""
        ssdcboWarehouse = ""
        LblType = ""
        ssdcboStockNumb = ""
        lblEntyNumb = ""
        ssdcboCondition = ""
        lblCurrSap = ""
        txtNewSap = ""
        txtRemarks = ""
        
End Sub

Private Sub txtRemarks_GotFocus()
Call HighlightBackground(txtRemarks)
End Sub

Private Sub txtRemarks_LostFocus()
Call NormalBackground(txtRemarks)

End Sub
