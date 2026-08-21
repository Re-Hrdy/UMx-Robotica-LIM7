P1 = [2,2,0,1]';
P2 = [2,5,0,1]';
P3 = [5,5,0,1]';
P4 = [5,2,0,1]';
dy = 4;


for i=0:0.1:dy

    clf

    %Plottting axes.
    line([0 10],[0 0],[0 0],"Color","red","LineWidth",2)
    line([0 0],[0 10],[0 0],"Color","green","LineWidth",2)

    hold on

    % Plotting P1
    scatter(P1(1),P1(2),"filled","red");
    scatter(P2(1),P2(2),"filled","red");
    scatter(P3(1),P3(2),"filled","red");
    scatter(P4(1),P4(2),"filled","red");

    hold on

    punto1 = Traslacion(0, i, 0, P1);
    scatter(punto1(1),punto1(2),"filled","green")
    punto2 = Traslacion(0, i, 0, P2);
    scatter(punto2(1),punto2(2),"filled","green")
    punto3 = Traslacion(0, i, 0, P3);
    scatter(punto3(1),punto3(2),"filled","green")
    punto4 = Traslacion(0, i, 0, P4);
    scatter(punto4(1),punto4(2),"filled","green")

    line([punto1(1) punto2(1)],[punto1(2) punto2(2)])'
    line([punto2(1) punto3(1)],[punto2(2) punto3(2)])'
    line([punto3(1) punto4(1)],[punto3(2) punto4(2)])'
    line([punto4(1) punto1(1)],[punto4(2) punto1(2)])'

    pause(0.1)

end