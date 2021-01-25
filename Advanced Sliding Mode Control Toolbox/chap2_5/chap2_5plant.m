function [sys,x0,str,ts]=s_function(t,x,u,flag)
switch flag
    case 0
        [sys,x0,str,ts]=mdlInitializeSizes;
    case 1
        sys=mdlDerivatives(t,x,u);
    case 3
        sys=mdlOutputs(t,x,u);
    case {2, 4, 9 }
        sys = [];
    otherwise
        error(['Unhandled flag = ',num2str(flag)]);
end
function [sys,x0,str,ts]=mdlInitializeSizes
    global InitialStateVector ;
    sizes = simsizes;
    sizes.NumContStates = 3;
    sizes.NumDiscStates = 0;
    sizes.NumOutputs = 3;
    sizes.NumInputs = 1;
    sizes.DirFeedthrough = 1;
    sizes.NumSampleTimes = 0;
    sys=simsizes(sizes);
    x0=InitialStateVector;
    str=[];
    ts=[];
function sys=mdlDerivatives(t,x,u)
    global x1dot x2dot x3dot
    sys(1)=x1dot(t,x(1),x(2),x(3),u(1));
    sys(2)=x2dot(t,x(1),x(2),x(3),u(1));
    sys(3)=x3dot(t,x(1),x(2),x(3),u(1));
function sys=mdlOutputs(t,x,u)
    sys(1)=x(1);
    sys(2)=x(2);
    sys(3)=x(3);