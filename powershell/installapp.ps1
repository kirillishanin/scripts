# Проверяем, существует ли файл C:\Users\%UserName%\AppData\appname.txt
if (!(Test-Path -Path "C:\Users\$env:UserName\AppData\appname.txt)) {
    # Если файла нет, выполняем следующие действия

    # Получаем текущую дату и время
    $date = (Get-Date).ToString()
    $time = (Get-Date).ToUniversalTime().ToString()

    # Записываем дату и время в файл
    Add-Content -Path "C:\Users\$env:UserName\AppData\appname.txt" -Value $date
    Add-Content -Path "C:\Users\$env:UserName\AppData\appname.txt" -Value $time

    # Запускаем talk.exe с параметром /S
    & "\\IPSERVER\appname.exe"
}