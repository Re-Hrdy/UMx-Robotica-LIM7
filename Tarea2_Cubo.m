clear
clf

Size = input("Ingresa el tamanio del cubo: ");

%Plottting axes.
line([0 10],[0 0],[0 0],"Color","red","LineWidth",2)
line([0 0],[0 10],[0 0],"Color","green","LineWidth",2)

hold on

%Plottting Finish Line.
scatter(0,0,100,"filled","r");
scatter(Size,0,100,"filled","g");
scatter(Size,Size,100,"filled","y");
scatter(0,Size,100,"filled","b");

scatter((Size/2),(Size/2),100,"filled","r");
scatter(((3*Size)/2),(Size/2),100,"filled","g");
scatter(((3*Size)/2),((3*Size)/2),100,"filled","y");
scatter((Size/2),((3*Size)/2),100,"filled","b");

%Esquinas del cubo
P1 = [0,0];
P2 = [Size,0];
P3 = [Size,Size];
P4 = [0,Size];

P5 = [(Size/2),(Size/2)];
P6 = [((3*Size)/2),(Size/2)];
P7 = [((3*Size)/2),((3*Size)/2)];
P8 = [(Size/2),((3*Size)/2)];

%Lineas/ Aristas
line([P1(1),P2(1)],[P1(2),P2(2)]);
line([P2(1),P3(1)],[P2(2),P3(2)]);
line([P3(1),P4(1)],[P3(2),P4(2)]);
line([P4(1),P1(1)],[P4(2),P1(2)]);

line([P5(1),P6(1)],[P5(2),P6(2)]);
line([P6(1),P7(1)],[P6(2),P7(2)]);
line([P7(1),P8(1)],[P7(2),P8(2)]);
line([P8(1),P5(1)],[P8(2),P5(2)]);

line([P1(1),P5(1)],[P1(2),P5(2)]);
line([P2(1),P6(1)],[P2(2),P6(2)]);
line([P3(1),P7(1)],[P3(2),P7(2)]);
line([P4(1),P8(1)],[P4(2),P8(2)]);

axis equal;
