 syms x y z
 
 z=sqrt(-x^2-y^2+49)
% % cuerpo
fsurf(z,[-15,15,-15,15],'FaceColor','black')
hold on  
fsurf(-z,[-15,15,-15,15],'FaceColor','red','EdgeColor','red')
axis([-20,20,-20,20,-20,20])
% oreja 1
z=sqrt(-(x+4.5)^2-y^2+16)+8
fsurf(z,[-15,15,-15,15],'FaceColor','black')
z=-sqrt(-(x+4.5)^2-y^2+16)+8
fsurf(z,[-15,15,-15,15],'FaceColor','black')
% oreja 2
z=sqrt(-(x-4.5)^2-y^2+16)+8
fsurf(z,[-15,15,-15,15],'FaceColor','black')
z=-sqrt(-(x-4.5)^2-y^2+16)+8
fsurf(z,[-15,15,-15,15],'FaceColor','black')

%pies
z=sqrt(-(x/0.5 -4.5)^2-(y/1)^2+16)-9
fsurf(z,[-20,20,-20,20],'FaceColor','yellow','EdgeColor','yellow')

z=sqrt(-(x/0.5 +4.5)^2-(y/1)^2+16)-9
fsurf(z,[-20,20,-20,20],'FaceColor','yellow','EdgeColor','yellow')

% %caja 
% 
% ev=ones(1,15)*10.5;
% [xc,yc,zc]=cylinder(ev,100);
% mesh(xc,yc,zc.*15)
% mesh(xc,yc,zc.*-10)


ev=ones(1,15);
[xc,yc,zc]=cylinder(ev,100);
surf(zc*10,yc,xc-2)
surf(zc*-10,yc,xc-2)




