; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "YasenKrasen_FR"
#define MyAppVersion "9.4.4"
#define MyAppPublisher "Fekasatete"
#define MyAppURL "http://lcab.info/"
#define MyAppExeName "YasenKrasen_FR.exe"

[Setup]
AppId={{75F2337D-E4AE-4EC0-8B02-BC0D0B8D2A4E}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={sd}\Games\World_of_Tanks
DefaultGroupName={#MyAppName}
OutputBaseFilename=YasenKrasen_FR
InternalCompressLevel=ultra
WizardImageFile=C:\Users\sébastien\Downloads\YasenKrasen\image\image1.bmp
WizardSmallImageFile=C:\Users\sébastien\Downloads\YasenKrasen\image\image2.bmp
SetupIconFile=C:\Users\sébastien\Downloads\YasenKrasen\image\image2.ico
UninstallDisplayIcon=C:\Users\sébastien\Downloads\YasenKrasen\image\image2.ico
Compression=lzma2/ultra64
SolidCompression=yes


[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"
Name: fr; MessagesFile: "compiler:Languages\French.isl"
                                                            
[Types]
Name: "full"; Description: "Full installation"
Name: "compact"; Description: "Compact installation"
Name: "custom"; Description: "Custom installation"; Flags: iscustom

[Components]
Name: "YasenKrasen"; Description: "session et stat"  ;Flags: exclusive
Name: "YasenKrasen/YasenKrasen_V1_0_9_4_4"; Description: "YasenKrasen V1"  ;Flags: exclusive ; Types: full
Name: "YasenKrasen/YasenKrasen_V2_0_9_4_4"; Description: "YasenKrasen V2"  ;Flags: exclusive 
Name: "YasenKrasen/YasenKrasen_V3_0_9_4_4"; Description: "YasenKrasen V3"  ;Flags: exclusive
Name: "YasenKrasen/YasenKrasen_Vanilla_0_9_4_4"; Description: "YasenKrasen Vanilla"  ;Flags: exclusive
Name: "YasenKrasen_Graphical_0_9_4_1"; Description: "YasenKrasen Graphique"; Types: full
Name: "YasenKrasen_Ingame_Skulls_0_9_4_1"; Description: "YasenKrasen In Game Skull"; 

[Files]
Source: "C:\Users\sébastien\Downloads\YasenKrasen\mods\YasenKrasen_V1_0_9_4_4\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs ;Components: YasenKrasen/YasenKrasen_V1_0_9_4_4 ;
Source: "C:\Users\sébastien\Downloads\YasenKrasen\mods\YasenKrasen_V2_0_9_4_4\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs ;Components: YasenKrasen/YasenKrasen_V2_0_9_4_4 ;
Source: "C:\Users\sébastien\Downloads\YasenKrasen\mods\YasenKrasen_V3_0_9_4_4\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs ;Components: YasenKrasen/YasenKrasen_V3_0_9_4_4 ;
Source: "C:\Users\sébastien\Downloads\YasenKrasen\mods\YasenKrasen_Vanilla_0_9_4_4\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs ;Components: YasenKrasen/YasenKrasen_Vanilla_0_9_4_4 ;
Source: "C:\Users\sébastien\Downloads\YasenKrasen\mods\YasenKrasen_Graphical_0_9_4_1\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs ;Components: YasenKrasen_Graphical_0_9_4_1 ;
Source: "C:\Users\sébastien\Downloads\YasenKrasen\mods\YasenKrasen_Ingame_Skulls_0_9_4_1\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs ;Components: YasenKrasen_Ingame_Skulls_0_9_4_1 ;

[Run]
// User selected... these files are shown for launch after everything is done
Filename: {sd}\Games\World_of_Tanks\WOTLauncher.exe; Description: Demarrer World Of Tank; Flags: postinstall nowait skipifsilent unchecked


[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{sd}\Games\World_of_Tanks\{#MyAppExeName}"
[Code]
var
  LicenseLinkLabel: TLabel;

procedure LicenseLinkClick(Sender: TObject);
var
  ErrorCode: Integer;
begin
  ShellExec('', 'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=44VP8W6AW3SWU', '', '', SW_SHOW, ewNoWait, 
    ErrorCode);
end;

procedure CreateAboutButton(ParentForm: TSetupForm; CancelButton: TNewButton);
var
  AboutButton: TNewButton;
begin
  AboutButton := TNewButton.Create(ParentForm);
  AboutButton.Left := ParentForm.ClientWidth - CancelButton.Left - CancelButton.Width;
  AboutButton.Top := CancelButton.Top;
  AboutButton.Width := CancelButton.Width;
  AboutButton.Height := CancelButton.Height;
  AboutButton.Caption := '&Faire un dons';
  AboutButton.OnClick := @LicenseLinkClick;
  AboutButton.Parent := ParentForm;
end;


procedure InitializeWizard();
begin
  CreateAboutButton(WizardForm, WizardForm.CancelButton);
end;
