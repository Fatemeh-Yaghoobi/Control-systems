clc;clear;close all;
sim('chap7_1sim.slx')
figure(1);
subplot(211);
plot(t,y(:,1),'k',t,y(:,2),'r:','linewidth',2);
xlabel('time(s)');ylabel('Position tracking');
legend('Ideal position signal','tracking signal');
subplot(212);
plot(t,y(:,1)-y(:,2),'r','linewidth',2);
xlabel('time(s)');ylabel('Position tracking error');
figure(2);
subplot(211);
plot(t,cos(t),'k',t,y(:,3),'r:','linewidth',2);
xlabel('time(s)');ylabel('Speed tracking');
legend('Ideal speed signal','tracking signal');
subplot(212);
plot(t,y(:,3)-cos(t),'r','linewidth',2);
xlabel('time(s)');ylabel('Speed tracking error');
figure(3);
plot(t,ut,'r','linewidth',2);
xlabel('time(s)');ylabel('control input');