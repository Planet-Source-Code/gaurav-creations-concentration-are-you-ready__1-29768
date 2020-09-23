VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Concentration "
   ClientHeight    =   3345
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   2895
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3345
   ScaleWidth      =   2895
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   840
      Top             =   1440
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Click me and concentrate on the innermost rectangle for 10 seconds"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   675
      Left            =   0
      TabIndex        =   0
      Top             =   2640
      Width           =   2895
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   5000
      Left            =   840
      Top             =   1200
   End
   Begin VB.Shape Shape11 
      Height          =   135
      Left            =   1200
      Top             =   1200
      Width           =   495
   End
   Begin VB.Shape Shape10 
      Height          =   375
      Left            =   1080
      Top             =   1080
      Width           =   735
   End
   Begin VB.Shape Shape9 
      Height          =   615
      Left            =   960
      Top             =   960
      Width           =   975
   End
   Begin VB.Shape Shape8 
      Height          =   855
      Left            =   840
      Top             =   840
      Width           =   1215
   End
   Begin VB.Shape Shape7 
      Height          =   1095
      Left            =   720
      Top             =   720
      Width           =   1455
   End
   Begin VB.Shape Shape6 
      Height          =   1335
      Left            =   600
      Top             =   600
      Width           =   1695
   End
   Begin VB.Shape Shape5 
      Height          =   1575
      Left            =   480
      Top             =   480
      Width           =   1935
   End
   Begin VB.Shape Shape4 
      Height          =   1815
      Left            =   360
      Top             =   360
      Width           =   2175
   End
   Begin VB.Shape Shape3 
      Height          =   2055
      Left            =   240
      Top             =   240
      Width           =   2415
   End
   Begin VB.Shape Shape2 
      Height          =   2295
      Left            =   120
      Top             =   120
      Width           =   2655
   End
   Begin VB.Shape Shape1 
      Height          =   2535
      Left            =   0
      Top             =   0
      Width           =   2895
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim snd As CDAudio
Private Sub Command1_Click()
Timer1.Enabled = True
End Sub

Private Sub Form_Load()
 Set snd = New CDAudio
  snd.SetCDPlayerReady
  msg = MsgBox("Please Switch On The Speakers For An Effective Concentration", , "Concentration")
End Sub

Private Sub Timer1_Timer()
Form2.Show
Call sndPlaySound(App.Path & "\an.wav", &H1)
Timer1.Enabled = False
Timer2.Enabled = True
End Sub


Private Sub Timer2_Timer()
snd.EjectCD
Call sndPlaySound(App.Path & "\an.wav", &H1)
Timer2.Enabled = False
End Sub
