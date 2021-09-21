# Introduction

Proyek ini merupakan proyek untuk menguji secara otomatis fitur *search* di website https://skillacademy.com/. *Tools* yang digunakan pada pengujian ini adalah *Robot Framework* dengan memanfaatkan 2 *library* yaitu *Selenium Library* dan *Requests Library*.


# Installation

*Install* terlebih dahulu *Robot Framework* dengan *command*:

    pip install robotframework

Kemudian, *install Selenium Library* dengan *command*:

    pip install --upgrade robotframework-seleniumlibrary

Terakhir, *install* *Requests Library* dengan *command*:

    pip install robotframework-requests
  
*Install* juga *webdriver* untuk *automation test* dengan menggunakan *Chrome*, install dengan menggunakan *command*:

    pip install webdriver
    webdrivermanager chrome --linkpath /usr/local/bin 


# Usage

File pengujian dapat dieksekusi dengan menggunakan perintah `robot` melalui *Command Line*, contoh eksekusi:

    robot <nama_file>


# Test Result

Setelah mengeksekusi masing-masing file, hasil pengujian dapat dilihat pada CLI tempat Anda mengeksekusi file tersebut.

