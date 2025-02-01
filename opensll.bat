@echo off
set OPENSSL_BIN="openssl64/bin/openssl.exe"
if not exist %OPENSSL_BIN% (
    echo openssl not found
    exit /b
)

echo Dang tao ssl tu ki, vui long dien thong tin de lay key va cert cua ssl...
%OPENSSL_BIN% req -new -x509 -days 730 -nodes -out cert.pem -keyout key.pem

echo done
pause