%K_S检验
clc
clear
%导入数据
[num,doc]=xlsread("标准化数据.xlsx");
ZPM10 = num(:,6);ZO3 = num(:,7);ZSO2 = num(:,8);
ZPM25 = num(:,9);ZNO2 = num(:,10);ZCO = num(:,11);
ZPPT = num(:,12);ZMAP = num(:,13);ZAWS = num(:,14);
ZT_avg = num(:,15);ZRH = num(:,16);
%K_S
[H(1),P(1)] = kstest(ZPM10);[H(2),P(2)] = kstest(ZO3);
[H(3),P(3)] = kstest(ZSO2);[H(4),P(4)] = kstest(ZPM25);
[H(5),P(5)] = kstest(ZNO2);[H(6),P(6)] = kstest(ZCO);
[H(7),P(7)] = kstest(ZPPT);[H(8),P(8)] = kstest(ZMAP);
[H(9),P(9)] = kstest(ZAWS);[H(10),P(10)] = kstest(ZT_avg);
[H(11),P(11)] = kstest(ZRH);
%相关性分析
coeff(1,1) = corr(ZPM10,ZPM10,"type","Spearman");
coeff(1,2) = corr(ZPM10,ZO3,"type","Spearman");
coeff(1,3) = corr(ZPM10,ZSO2,"type","Spearman");
coeff(1,4) = corr(ZPM10,ZPM25,"type","Spearman");
coeff(1,5) = corr(ZPM10,ZNO2,"type","Spearman");
coeff(1,6) = corr(ZPM10,ZCO,"type","Spearman");
coeff(1,7) = corr(ZPM10,ZPPT,"type","Spearman");
coeff(1,8) = corr(ZPM10,ZMAP,"type","Spearman");
coeff(1,9) = corr(ZPM10,ZAWS,"type","Spearman");
coeff(1,10) = corr(ZPM10,ZT_avg,"type","Spearman");
coeff(1,11) = corr(ZPM10,ZRH,"type","Spearman");

coeff(2,2) = corr(ZO3,ZO3,"type","Spearman");
coeff(2,3) = corr(ZO3,ZSO2,"type","Spearman");
coeff(2,4) = corr(ZO3,ZPM25,"type","Spearman");
coeff(2,5) = corr(ZO3,ZNO2,"type","Spearman");
coeff(2,6) = corr(ZO3,ZCO,"type","Spearman");
coeff(2,7) = corr(ZO3,ZPPT,"type","Spearman");
coeff(2,8) = corr(ZO3,ZMAP,"type","Spearman");
coeff(2,9) = corr(ZO3,ZAWS,"type","Spearman");
coeff(2,10) = corr(ZO3,ZT_avg,"type","Spearman");
coeff(2,11) = corr(ZO3,ZRH,"type","Spearman");

coeff(3,3) = corr(ZSO2,ZSO2,"type","Spearman");
coeff(3,4) = corr(ZSO2,ZPM25,"type","Spearman");
coeff(3,5) = corr(ZSO2,ZNO2,"type","Spearman");
coeff(3,6) = corr(ZSO2,ZCO,"type","Spearman");
coeff(3,7) = corr(ZSO2,ZPPT,"type","Spearman");
coeff(3,8) = corr(ZSO2,ZMAP,"type","Spearman");
coeff(3,9) = corr(ZSO2,ZAWS,"type","Spearman");
coeff(3,10) = corr(ZSO2,ZT_avg,"type","Spearman");
coeff(3,11) = corr(ZSO2,ZRH,"type","Spearman");

coeff(4,4) = corr(ZPM25,ZPM25,"type","Spearman");
coeff(4,5) = corr(ZPM25,ZNO2,"type","Spearman");
coeff(4,6) = corr(ZPM25,ZCO,"type","Spearman");
coeff(4,7) = corr(ZPM25,ZPPT,"type","Spearman");
coeff(4,8) = corr(ZPM25,ZMAP,"type","Spearman");
coeff(4,9) = corr(ZPM25,ZAWS,"type","Spearman");
coeff(4,10) = corr(ZPM25,ZT_avg,"type","Spearman");
coeff(4,11) = corr(ZPM25,ZRH,"type","Spearman");

coeff(5,5) = corr(ZNO2,ZNO2,"type","Spearman");
coeff(5,6) = corr(ZNO2,ZCO,"type","Spearman");
coeff(5,7) = corr(ZNO2,ZPPT,"type","Spearman");
coeff(5,8) = corr(ZNO2,ZMAP,"type","Spearman");
coeff(5,9) = corr(ZNO2,ZAWS,"type","Spearman");
coeff(5,10) = corr(ZNO2,ZT_avg,"type","Spearman");
coeff(5,11) = corr(ZNO2,ZRH,"type","Spearman");

coeff(6,6) = corr(ZCO,ZCO,"type","Spearman");
coeff(6,7) = corr(ZCO,ZPPT,"type","Spearman");
coeff(6,8) = corr(ZCO,ZMAP,"type","Spearman");
coeff(6,9) = corr(ZCO,ZAWS,"type","Spearman");
coeff(6,10) = corr(ZCO,ZT_avg,"type","Spearman");
coeff(6,11) = corr(ZCO,ZRH,"type","Spearman");

coeff(7,7) = corr(ZPPT,ZPPT,"type","Spearman");
coeff(7,8) = corr(ZPPT,ZMAP,"type","Spearman");
coeff(7,9) = corr(ZPPT,ZAWS,"type","Spearman");
coeff(7,10) = corr(ZPPT,ZT_avg,"type","Spearman");
coeff(7,11) = corr(ZPPT,ZRH,"type","Spearman");

coeff(8,8) = corr(ZMAP,ZMAP,"type","Spearman");
coeff(8,9) = corr(ZMAP,ZAWS,"type","Spearman");
coeff(8,10) = corr(ZMAP,ZT_avg,"type","Spearman");
coeff(8,11) = corr(ZMAP,ZRH,"type","Spearman");

coeff(9,9) = corr(ZAWS,ZAWS,"type","Spearman");
coeff(9,10) = corr(ZAWS,ZT_avg,"type","Spearman");
coeff(9,11) = corr(ZAWS,ZRH,"type","Spearman");

coeff(10,10) = corr(ZT_avg,ZT_avg,"type","Spearman");
coeff(10,11) = corr(ZT_avg,ZRH,"type","Spearman");

coeff(11,11) = corr(ZRH,ZRH,"type","Spearman");
%相关系数矩阵
for i = 1:11
    for j = i:11
        coeff(j,i) = coeff(i,j);
    end
end