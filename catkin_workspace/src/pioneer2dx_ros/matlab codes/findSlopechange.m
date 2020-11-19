function [indd radd] = findSlopechange(ang,vector,NRays)
    previous_slope = round(100*abs(vector(2,1) - vector(1,1)))/100;
    current_slope = 0;
    indd = [];
    radd = [];
    for ii = 2:(NRays-1)
        current_slope =  round(100*abs(vector(ii+1,1) - vector(ii,1)))/100;
        if(current_slope>10*previous_slope)
            indd = [indd ii];%[indd ang(ii,1)];
            radd = [radd vector(ii,1)];
        end
        previous_slope = current_slope;
    end
end