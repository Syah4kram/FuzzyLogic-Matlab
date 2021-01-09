% [PENDETEKSI KEBAKARAN HUTAN MENGGUNAKAN FUZZY LOGIC]
% oleh Rafi Syah Akram
%
% Output berupa range dari 0 - 100 persen (%)
% Makin besar nilainya, makin besar kemungkinan terjadi kebakaran hutan
% Input dari sensor berupa suhu, kelembapan, dan kadar CO
% yang didapatkan dari sensor, dikirim melalui modul Wi-Fi
%
% Untuk mendeteksi cukup menggunakan fungsi detect()

function [output] = detect()
    data = parse_json(urlread('https://api.thingspeak.com/channels/1182846/feeds.json?results=1'))
    temp = str2num(data{1,1}.feeds{1,1}.field1)
    humid = str2num(data{1,1}.feeds{1,1}.field2)
    co = str2num(data{1,1}.feeds{1,1}.field5)
    
    input = [temp humid co]
    
    fisObject = readfis('Deteksi Kebakaran Hutan.fis')
    output = (evalfis(input, fisObject))*100
end