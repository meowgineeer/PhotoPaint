Installing PhotoPaint
=====================

PhotoPaint is a portable application.  **It does not require installation.**  

To use PhotoPaint, simply [download the latest release](https://github.com/tannerhelland/PhotoPaint/releases), extract the full contents of the .zip file to your PC, then double-click `PhotoPaint.exe`.

System Requirements
===================

PhotoPaint supports all modern versions of Windows (Windows XP through the latest Windows 11 builds).

Beyond this, it has only one fixed hardware requirement: a minimum display resolution of at least 1024x768 pixels.  

As with any software, a faster processor and plenty of free RAM and disk space provides a better experience, but current PhotoPaint builds run very well on XP-era processors with 5400 RPM HDDs and < 1 GB of RAM.  (Yes, I still test these configurations!)

Besides `PhotoPaint.exe`, the program also requires access to an `App/PhotoPaint/Plugins` subfolder.  This folder ships with PhotoPaint and it contains a number of essential 3rd-party libraries.  PhotoPaint will not run if this folder is missing or broken.

If PhotoPaint fails to start on your PC, please ensure that the `App/PhotoPaint/Plugins` subfolder is intact.  Nearly all startup problems are caused by ancient ZIP software (e.g. WinZip) failing to extract PhotoPaint's folder tree correctly.  If you don't see an `/App` subfolder, or if you see any .dll files in the base PhotoPaint folder, please re-extract PhotoPaint and its dependencies using a different ZIP tool.

Building PhotoPaint
===================

PhotoPaint is written in Visual Basic 6.0.  Building it is as simple as:

1) Load PhotoPaint.vbp into the VB6 IDE
2) Click File > Make PhotoPaint.exe
3) Click OK

Your VB6 copy should be completely up-to-date, with the latest SP6 update(s) installed.  No support is provided for other configurations.

Feel free to modify most settings in the project's compile options, with the following caveats:

1) PhotoPaint is *extremely* slow when compiled to P-Code.  **Compile to native code only.**
2) Do **not** enable the `Assume No Aliasing` advanced optimization.  PhotoPaint uses many aliasing tricks to improve performance, and the `Assume No Aliasing` optimization will produce buggy code.  All other advanced optimizations can (and should) be enabled.
3) Optimizing for fast vs small code makes little difference.  Choose whichever option you like.

PhotoPaint doesn't reference any external OCX or ActiveX DLL files, so you *do not* need to run the VB6 IDE elevated when building or testing the project.  In fact, for security purposes I strongly recommend *not* running the VB6 IDE elevated when running or building open-source projects you have not manually vetted.

The OS used for compiling does not matter.  (For example, you can compile on Windows 11 and run the resulting PhotoPaint.exe file on XP without problems.)  PhotoPaint is primarily developed on current Windows 11 builds, and limited compatibility testing is still performed on XP, Windows 7, and Windows 10 PCs.  Vista and Windows 8/8.1 compatibility relies on user-submitted bug reports, as I no longer keep dedicated VMs around for testing.

Finally, despite being built in VB6, PhotoPaint never requires any special compatibility modes or other modifications.  (In fact, it may break if you apply compatibility shims.)  You should always simply build and run it as-is.
