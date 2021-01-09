% [ANALISIS KEBAKARAN HUTAN MENGGUNAKAN FUZZY LOGIC]
% oleh Rafi Syah Akram
%
% Output berupa range dari 0 - 100 persen (%)
% Makin besar nilainya, makin besar kemungkinan terjadi kebakaran hutan
% Input berupa suhu, kelembapan, dan hari tanpa hujan
% yang didapatkan dari data stasiun
%
% Untuk mengetahui hasil analisis tersebut silahkan input nilai suhu, 
% kelembapan, dan hari tanpa hujan secara berurutan
%
% Contoh:
% analyze(30.23, 57.00, 12)

function [output] = analyze(t, h, hth)
    input = [t h hth]
    
    fisObject = readfis('Analisis Kebakaran Hutan.fis')
    output = (evalfis(input, fisObject))*100
end