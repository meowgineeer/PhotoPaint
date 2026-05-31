; --------------------------------------------------------------------------------
; PhotoPaint Inno Setup Installer Script
; Designed for PhotoPaint - A Premium, Professional Photo Editor
; --------------------------------------------------------------------------------

[Setup]
AppName=PhotoPaint
AppVersion=2025.12
AppPublisher=photopaint.org
AppPublisherURL=http://photopaint.org
AppSupportURL=http://photopaint.org
AppUpdatesURL=http://photopaint.org
DefaultDirName={autopf}\PhotoPaint
DefaultGroupName=PhotoPaint
OutputDir=.
OutputBaseFilename=PhotoPaint-Setup
SetupIconFile=Photoshop.ico
UninstallDisplayIcon={app}\PhotoPaint.exe
Compression=lzma2/max
SolidCompression=yes
WizardStyle=modern
VersionInfoVersion=2025.12.0.0
VersionInfoCompany=photopaint.org
VersionInfoDescription=PhotoPaint Installer
VersionInfoProductName=PhotoPaint
ArchitecturesInstallIn64BitMode=x64

[Files]
; Main Executable
Source: "PhotoPaint.exe"; DestDir: "{app}"; Flags: ignoreversion

; Desktop Photoshop-style Icon (stored in app directory for shortcut creation)
Source: "Photoshop.ico"; DestDir: "{app}"; Flags: ignoreversion

; Dynamic Runtime Logo (Gimp.ico loaded by Modules/IconsAndCursors.bas)
Source: "Gimp.ico"; DestDir: "{app}"; Flags: ignoreversion

; Documentation
Source: "LICENSE.md"; DestDir: "{app}"; Flags: ignoreversion
Source: "README.md"; DestDir: "{app}"; Flags: ignoreversion
Source: "AUTHORS.md"; DestDir: "{app}"; Flags: ignoreversion

; Portable Application Folder tree (Plugins, Themes, Languages, etc.)
Source: "App\*"; DestDir: "{app}\App"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\PhotoPaint"; Filename: "{app}\PhotoPaint.exe"; IconFilename: "{app}\Photoshop.ico"
Name: "{autodesktop}\PhotoPaint"; Filename: "{app}\PhotoPaint.exe"; IconFilename: "{app}\Photoshop.ico"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Run]
Filename: "{app}\PhotoPaint.exe"; Description: "{cm:LaunchProgram,PhotoPaint}"; Flags: nowait postinstall skipifsilent
