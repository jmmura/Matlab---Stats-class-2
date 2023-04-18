function [ result ] = simple_wall( initial_position )

    way = zeros(1,4);
    way(1) = initial_position;
    

    for i=2 : 4
        if mod(i-1,2) == 1
            if way(i-1) == 1
                way(i) = 1;
            elseif way(i-1) == 4
                way(i) = 3;
            else
                way(i) = randi([way(i-1)-1,way(i-1)]);
            end
            
        else
            way(i) = randi([way(i-1),way(i-1)+1]);
        end
        
    end
    
    result = way(4);

end

