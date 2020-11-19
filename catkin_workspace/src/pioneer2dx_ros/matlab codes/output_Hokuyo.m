%%
clear,clc,close all
% load readingHokuyo
load readingHokuyoV2
% load readingHokuyoV3
% load readingHokuyoV3

angleSpan = linspace(angMin,angMax,NRays)';

figureUsual = figure
hold on
grid on
plot(angleSpan, ranges)
set(gcf,'windowstyle','docked')

figurePolar = figure
polarplot(angleSpan,ranges)
set(gcf,'windowstyle','docked')

%%Put it on plot instead of polarplot

x_comp = ranges.*cos(angleSpan);
y_comp = ranges.*sin(angleSpan);

figureRect = figure
hold on
plot(x_comp,y_comp)
plot(0,0,'ks')
axis equal
grid on
set(gca,'box','on')
set(gcf,'windowstyle','docked')

figureRectClean = figure
hold on
plot(x_comp,y_comp)
plot(0,0,'ks')
axis equal
grid on
set(gca,'box','on')
set(gcf,'windowstyle','docked')
%% finding features
% [anglesS radiiS] = findSlopeSignchange(angleSpan,ranges,NRays)
% [anglesM1 radiiM1] = findSlopechange(angleSpan,ranges,NRays)
% [anglesM2 radiiM2] = findSlopechange(flip(angleSpan),flip(ranges),NRays)
[indS, radiiS] = findSlopeSignchange(angleSpan,ranges,NRays);
[indM1, radiiM1] = findSlopechange(angleSpan,ranges,NRays);
[indM2, radiiM2] = findSlopechange(flip(angleSpan),flip(ranges),NRays);
indM2 = NRays - (indM2 -1);%flipping the indexes

indM12 = sort([indM1 indM2]);

[indM radiiM] = findEndOfObstacle(indM12,ranges);

indLMs = returnIndexesLandmarksFeatures(indS,indM );

x_posS = radiiS.*cos(angleSpan(indS)');
y_posS = radiiS.*sin(angleSpan(indS)');

x_posM1 = radiiM1.*cos(angleSpan(indM1)');
y_posM1 = radiiM1.*sin(angleSpan(indM1)');

x_posM2 = radiiM2.*cos(angleSpan(indM2)');
y_posM2 = radiiM2.*sin(angleSpan(indM2)');

x_posM = radiiM.*cos(angleSpan(indM)');
y_posM = radiiM.*sin(angleSpan(indM)');

x_posLMs = ranges(indLMs,1).*cos(angleSpan(indLMs));
y_posLMs = ranges(indLMs,1).*sin(angleSpan(indLMs));

figure(figureUsual)
plot(angleSpan(indS),radiiS,'ro')
plot(angleSpan(indM1),radiiM1,'g*')
plot(angleSpan(indM2),radiiM2,'g*')

figure(figureRect)
plot(x_posS,y_posS,'ro')%My features
% plot(x_posM1,y_posM1,'g*')
% plot(x_posM2,y_posM2,'g*')
plot(x_posM,y_posM,'ks')%My features

figure(figureRectClean)
plot(x_posLMs,y_posLMs,'ks')%My features