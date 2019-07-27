%%不规则图形
%pv=[-0.4 -0.5;0.4 -0.2;0.4 -0.7;1.5 -0.4;0.9 0.1;
%        1.6 0.8;0.5 0.5;0.2 1;0.1 0.4;-0.7 0.7;-0.4 -0.5];
% pv=[1,1;1,3;2,3;2,2;3,2;3,1;1,1];
% [p,t]=distmesh2d(@dpoly,@huniform,0.1,[0,0; 4,4],pv,pv);
 
fd=@(p) ddiff(drectangle(p,-1,1,-1,1),drectangle(p,-0.5,0.5,-0.5,0.5));
fh=@(p) 0.05+0.03*drectangle(p,-0.5,0.5,-0.5,0.5);
[p,t]=distmesh2d(fd,fh,0.05,[-1,-1;1,1],[-1,-1;-1,1;1,-1;1,1;...
    -0.5,-0.5;-0.5,0.5;0.5,-0.5;0.5,0.5]);