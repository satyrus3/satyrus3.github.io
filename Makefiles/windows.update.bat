IF EXIST ..\Satyrus3-docs\docs\build\html\ (
    RMDIR .\docs\ /S /Q
    MKDIR .\docs\
    XCOPY ..\Satyrus3-docs\docs\build\html\* .\docs\ /S /Q
    EXIT /B 0
) ELSE (
    EXIT /B 1   
)