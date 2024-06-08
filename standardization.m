%数据标准化
clc
clear
%导入数据
[num1,doc1] = xlsread("附件1缺失值插补.xlsx");
[num2,doc2] = xlsread("附件二异常值插补.xlsx");
PM10 = num1(:,6);O3 = num1(:,7);SO2 = num1(:,8);
PM25 = num1(:,9);NO2 = num1(:,10);CO = num1(:,11);
PPT = num2(:,1);MAP = num2(:,2);AWS = num2(:,3);
T_avg = num2(:,4);RH = num2(:,5);
%均值与方差
m(1) = mean(PM10);m(2) = mean(O3);m(3) = mean(SO2);
m(4) = mean(PM25);m(5) = mean(NO2);m(6) = mean(CO);
m(7) = mean(PPT);m(8) = mean(MAP);m(9) = mean(AWS);
m(10) = mean(T_avg);m(11) = mean(RH);

s(1) = std(PM10,1);s(2) = std(O3,1);s(3) = std(SO2,1);
s(4) = std(PM25,1);s(5) = std(NO2,1);s(6) = std(CO,1);
s(7) = std(PPT,1);s(8) = std(MAP,1);s(9) = std(AWS,1);
s(10) = std(T_avg,1);s(11) = std(RH,1);
%标准化
z(:,1) = (PM10 - m(1))/s(1);z(:,2) = (O3 - m(2))/s(2);
z(:,3) = (SO2 - m(3))/s(3);z(:,4) = (PM25 - m(4))/s(4);
z(:,5) = (NO2 - m(5))/s(5);z(:,6) = (CO - m(6))/s(6);
z(:,7) = (PPT - m(7))/s(7);z(:,8) = (MAP - m(8))/s(8);
z(:,9) = (AWS - m(9))/s(9);z(:,10) = (T_avg - m(10))/s(10);
z(:,11) = (RH - m(11))/s(11);
fprintf("标准化已完成，具体结果见附件")