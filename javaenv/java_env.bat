@echo off
title һ������Java 8/Java11���������ű�

REM ����Ƿ��Թ���ԱȨ������
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo ���Թ���ԱȨ�����д˽ű���������Ҽ�-ѡ��"�Թ���Ա�������"��
    pause
    exit /b
)

REM �ֶ�����JAVA_HOME·��
echo ��һ�� ����Ҫ���õ�JAVA_HOME·��:(As example: C:\Program Files\Java\jdk1.8.0_321)
set /p input="������JAVA_HOME·����"
echo.

REM ����JAVA_HOME·��
echo �ڶ��� ����JAVA_HOME·��
setx JAVA_HOME "%input%" /M
echo.

REM ����PATH
echo ������ ����PATH
setx path "%path%;%%JAVA_HOME%%\bin" /M
echo.

REM ����classpath
echo ���Ĳ� ����classpath
setx classpath .;%%JAVA_HOME%%\lib\dt.jar;%%JAVA_HOME%%\lib\tools.jar /M
echo.

echo ��ִ����ɡ�
pause

