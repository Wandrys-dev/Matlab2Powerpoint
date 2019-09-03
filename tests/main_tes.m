figure(1);clf
Fx=gcf;Fx.UserData.Scale=1;
X=linspace(2,16,100);
plot(X,sin(X),'linewidth',3);
hold on
plot(X,cos(X),'linewidth',3);
TXYL('Hi','X [um]','Y [um]','OK','No!')
%%
system_dependent('COM_SafeArraySingleDim', 1)
figure1 = Powerpoint_Tunnel(gca);
figure1.Resize;
figure1.BackupFigure;
figure1.DrawLabes;
 figure1.DrawTitle;
figure1.DrawBox;
figure1.DrawTickValues;
figure1.DrawAllCurves;
figure1.RestoreFigure;
figure1.GeneratePNG;
figure1.UnHide;
figure1.InjectPNG;
% figure1.Slide.Shapes.Range({'Rectangle 87';'Rectangle 85';'Rectangle 84'}).Group
%%
Ax.Children(1)