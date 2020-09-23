Attribute VB_Name = "Module1"
Declare Function sndPlaySound Lib "winmm.dll" Alias _
        "sndPlaySoundA" (ByVal lpszSoundName As String, ByVal _
        uFlags As Long) As Long

