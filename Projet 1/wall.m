function [result] = wall(initial_position, nb_in, nb_row)

    way = zeros(1,nb_row + 1);
    way(1) = initial_position;
    
    
    for i=2 : nb_row+1
        if mod(i-1,2) == 1
            if way(i-1) == 1
                way(i) = 1;
            elseif way(i-1) == nb_in
                way(i) = nb_in-1;
            else
                way(i) = randi([way(i-1)-1,way(i-1)]);
            end
        else
            way(i) = randi([way(i-1),way(i-1)+1]);
        end        
    end
    
    result = way(end);

end

