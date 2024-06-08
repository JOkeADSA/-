%计算AQI缺失值
clc
clear
% PM10 O3 SO2 PM2.5 NO2 CO
data = [33  31  13	168	61  2  ;5   30  4   32	59	2;
        25  30	7	64	57	2  ;58  29	10	83	56	2;
        89	29	13	132	55	2  ;0   93	12	0	63	1;
        0	57	13	0	38	1  ;0	46	7	0	28	1;
        0	87	5	0	22	1  ;0	89	5	0	51	1;
        0	108	7	0	64	1  ;0	128	9	0	54	1;
        0	122	5	0	30	1  ;0	122	5	0	28	1;
        0	99	7	0	57	1];
%PM10 O3 SO2 PM2.5 NO2 CO
standard=[0   0   0   0   0   0   0;
          50  160 50  35  40  2   50;
          150 200 150 75  80  4   100;
          250 300 475 115 180 14  150;
          350 400 800 150 280 24  200];
%划分污染等级
for i = 1:6
    for j = 1:15
        for k = 2:5
            if data(j,i)<standard(k,i)&&data(j,i)>=standard(k-1,i)
                level(j,i) = k-1;
            end
            if data(j,i)>=standard(5,i)
                level(j,i) = 5;
            end
        end
    end
end
%计算AQI
%计算IAQIL
for i = 1:6
    for j = 1:15
        if level(j,i)<5
            iaqia(j,i) = ((standard(level(j,i)+1,7) - standard(level(j,i),7)) / (standard(level(j,i)+1,i) - standard(level(j,i),i)))*(data(j,i)-standard(level(j,i),i));
        end
    end
end
%计算IAQI
for i = 1:6
    for j = 1:15
        IAQI(j,i) = iaqia(j,i) + standard(level(j,i),7);
    end
end
%计算AQI
total_AQI = max(IAQI,[],2);