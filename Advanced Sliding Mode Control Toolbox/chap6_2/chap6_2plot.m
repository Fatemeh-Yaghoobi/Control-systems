clc;clear;close all;
sim('chap6_2sim.slx')
figure(1);
subplot(211);
plot(t,y(:,1),'k',t,y(:,2),'r:','linewidth',2);
xlabel('time(s)');ylabel('Position tracking');
legend('Ideal position signal','Position signal tracking');
subplot(212);
plot(t,y(:,1)-y(:,2),'r','linewidth',2);
xlabel('time(s)');ylabel('Position tracking error');
figure(2);
plot(t,ut(:,1),'r','linewidth',2);
xlabel('time(s)');ylabel('Control input');
figure(3);
subplot(311);
plot(t,fai(:,1),'k',t,fai(:,4),'r','linewidth',2);
xlabel('time(s)');ylabel('fai1 estimation');
subplot(312);
plot(t,fai(:,2),'k',t,fai(:,5),'r','linewidth',2);
xlabel('time(s)');ylabel('fai2 estimation');
subplot(313);
plot(t,fai(:,3),'k',t,fai(:,6),'r','linewidth',2);
xlabel('time(s)');ylabel('fai3 estimation');