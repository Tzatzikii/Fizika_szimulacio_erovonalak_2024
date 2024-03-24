% Töltések és pozíciók definiálása
charges = [1, -1, 0]; % Töltések
positions = [0, 0; 1, 0; 0.5, sqrt(3)/2]; % Pozíciók (x, y)

% Rács létrehozása
[x, y] = meshgrid(-2:0.1:2, -2:0.1:2);

% Elektromos erőtér inicializálása
Ex = zeros(size(x));
Ey = zeros(size(y));

% Minden töltésre
for i = 1:length(charges)
    % Távolság a töltéstől
    r = sqrt((x-positions(i, 1)).^2 + (y-positions(i, 2)).^2);
    
    % Elektromos erőtér hozzáadása
    Ex = Ex + charges(i)*(x-positions(i, 1))./r.^3;
    Ey = Ey + charges(i)*(y-positions(i, 2))./r.^3;
end

% Elektromos erőtér ábrázolása
quiver(x, y, Ex, Ey);

% Töltések ábrázolása
hold on;
scatter(positions(:, 1), positions(:, 2), 100, 'filled');
for i = 1:length(charges)
    if charges(i) > 0
        scatter(positions(i, 1), positions(i, 2), 100, 'r', 'filled');
    elseif charges(i) < 0
        scatter(positions(i, 1), positions(i, 2), 100, 'b', 'filled');
    else
        scatter(positions(i, 1), positions(i, 2), 100, [0.5 0.5 0.5], 'filled');
    end
end
hold off;
