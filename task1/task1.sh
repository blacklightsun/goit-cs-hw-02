#!/bin/bash

# призначаємо змінні
log_file_name="website_status.log"
link_array=("https://google.com" "https://noname123.com" "https://facebook.com" "https://twitter.com")

# додаємо дату для красоти (якщо в файлі логів збережеться декілька викликів скрипту
date >> $log_file_name

# обробка масиву лівнків
for link in ${link_array[@]}; do
    curl -o /dev/null -s -L -w "%{http_code}\\n" $link | grep -q '200' && (echo "<$link> is UP" >> $log_file_name) || (echo "<$link> is DOWN" >> $log_file_name)
done

# додаємо відступ для наступної дати
echo "" >> $log_file_name
echo "" >> $log_file_name

# інформуємо щодо місця збереження файлу логу
echo "Результати збережені в файл <$log_file_name>"
