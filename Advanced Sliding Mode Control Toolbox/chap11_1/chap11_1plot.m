clc;close all
%%
sim('chap11_1sim.slx')
figure(1);
subplot(211);
plot(t,qd(:,1),'k',t,q(:,1),'r:','linewidth',2);
xlabel('time(s)');ylabel('Position tracking of link 1');
legend('Ideal position signal','Tracking position signal');
subplot(212);
plot(t,qd(:,2),'k',t,q(:,2),'r:','linewidth',2);
xlabel('time(s)');ylabel('Speed tracking of link 1');
legend('Ideal speed signal','Tracking speed signal');
figure(2);
subplot(211);
plot(t,qd(:,4),'k',t,q(:,3),'r:','linewidth',2);
xlabel('time(s)');ylabel('Position tracking of link 2');
legend('Ideal position signal','Tracking position signal');
subplot(212);
plot(t,qd(:,5),'k',t,q(:,4),'r:','linewidth',2);
xlabel('time(s)');ylabel('Speed tracking of link 2');
legend('Ideal speed signal','Tracking speed signal');
figure(3);
subplot(211);
plot(t,ut(:,1),'k','linewidth',2);
xlabel('time(s)');ylabel('Control input of link 1');
subplot(212);
plot(t,ut(:,2),'k','linewidth',2);
xlabel('time(s)');ylabel('Control input of link 2');