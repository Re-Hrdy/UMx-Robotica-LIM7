close all
clear
clf

l1 = 0.5;
a1 = pi/8;

l2 = 0.3;
a2 = -pi/4;

art1 = [0 0]';
art2 = [l1 a1 0 1]';

l1x = l1 * cos(a1);
l1y = l1 * sin(a1);

l2x = l2 * cos(a1 + a2);
l2y = l2 * sin(a1 + a2);

EFx = l1x + l2x;
EFy = l1y + l2y;
EF = [EFx EFy 0 1]';

art20 = [l1 0 0 1]';
EF0 = [EFx 0 0 1]';

EF1 = [EFx a1 0 1]';

dy = sin(a1);

for i = linspace(0, dy, 20)

    clf

    %Plottting axes.
    line([0 10],[0 0],[0 0],"Color","red","LineWidth",2)
    line([0 0],[0 2],[0 0],"Color","green","LineWidth",2)

    hold on

    %Plottting Finish Line.
    scatter(art1(1),art1(2),100,"filled","r");
    scatter(art2(1),art2(2),100,"filled","g");
    scatter(EF(1),EF(2),100,"filled","y");

    line([art1(1) art2(1)],[art1(2) art2(2)]);
    line([art2(1) EF(1)],[art2(2) EF(2)]);

    % Plotting Animacion
    punto1 = art1;
    scatter(punto1(1),punto1(2),60,"filled","green")
    punto2 = Traslacion(0, i, 0, art20);
    scatter(punto2(1),punto2(2),60,"filled","blue")
    punto3 = Traslacion(l2, i, 0, EF0);
    scatter(punto3(1),punto3(2),60,"filled","red")

    line([punto1(1) punto2(1)],[punto1(2) punto2(2)]);
    line([punto2(1) punto3(1)],[punto2(2) punto3(2)]);

    pause(0.000000005)

end

dy = sin(a2) + sin(a1);

for n = linspace(0, dy, 20)

    clf

    %Plottting axes.
    line([0 10],[0 0],[0 0],"Color","red","LineWidth",2)
    line([0 0],[0 2],[0 0],"Color","green","LineWidth",2)

    hold on

    %Plottting Finish Line.
    scatter(art1(1),art1(2),100,"filled","r");
    scatter(art2(1),art2(2),100,"filled","g");
    scatter(EF(1),EF(2),100,"filled","y");

    line([art1(1) art2(1)],[art1(2) art2(2)]);
    line([art2(1) EF(1)],[art2(2) EF(2)]);

    % Plotting Animacion
    punto1 = art1;
    scatter(punto1(1),punto1(2),60,"filled","green")
    punto2 = art2;
    scatter(punto2(1),punto2(2),60,"filled","blue")
    punto3 = Traslacion(0, n, 0, EF1);
    scatter(punto3(1),punto3(2),60,"filled","red")

    line([punto1(1) punto2(1)],[punto1(2) punto2(2)]);
    line([punto2(1) punto3(1)],[punto2(2) punto3(2)]);

    pause(0.000000005)

end