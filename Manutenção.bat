@echo off
cls
:menu
cls
color 80

data /t

echo Computador: %computername%		Usuario: %username%

echo			MENU DE TAREFAS
echo =======================================================
echo *1.Esvaziar a lixeira				*
echo *2.Fazer backup					*
echo *3.Escanear Disco Local				*
echo *4.Painel de Controle				*
echo *5.Sair						*
echo =======================================================

set /p opcao= Escolha uma opcao:
echo -------------------------------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% equ 6 goto opcao6

 :opcao1
cls
rd /S /Q c:\$Recycle.bin
echo ========================
echo *   Lixeira Esvaziada     *
echo ========================
pause
goto menu

 :opcao2
cls
xcopy /T /C C:\Users\mariabatista\Documents\*.* C: Users\mariabatista/Desktop
echo ===========================
echo *    Backup concluído       *
echo ===========================
pause
goto menu

 :opcao3
cls
echo ==============================
echo *    Escaneamento de disco    *
echo ==============================
chkdsk c:
pause
goto menu

:opcao4
cls
control.exe
pause
goto menu

:opcao5
cls
exit

:opcao6
echo =================================================
echo * Opcao Invalida! Escolha outra opcao do menu *
echo =================================================
pause
goto menu
