function [indd radd] = findEndOfObstacle(index,vector)
    N = size(index,2);
    indd = [];
    radd = [];
    for ii=1:(N-1)
        if(index(1,ii)+1 ~= index(1,ii+1))
            continue
        end
        if( vector(index(1,ii),1) > vector(index(1,ii+1),1) )
            indd = [indd index(1,ii+1)];
            radd = [radd vector(index(1,ii+1),1)];
        else
            indd = [indd index(1,ii)];
            radd = [radd vector(index(1,ii),1)];
        end
    end
end