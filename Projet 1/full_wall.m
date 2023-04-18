function [ result ] = full_wall( initial_position )

    way = zeros(1,11);
    way(1) = initial_position;
    
    
    for i=2 : 11
        if mod(i-1,2) == 1
            if way(i-1) == 1
                way(i) = 1;
            elseif way(i-1) == 9
                way(i) = 8;
            else
                way(i) = randi([way(i-1)-1,way(i-1)]);
            end
            
        else
            way(i) = randi([way(i-1),way(i-1)+1]);
        end
        
    end
    
    result = way(11);

end

