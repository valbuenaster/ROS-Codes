function [indd radd] = findSlopeSignchange(ang,vector,NRays)
    previous_slope = vector(2,1) - vector(1,1);
    current_slope = 0;
    indd = [];
    radd = [];
    for ii = 2:(NRays-1)
        current_slope =  vector(ii+1,1) - vector(ii,1);
        cos_beta = calculatingLittleTriangle(ang,vector,[(ii-1) ii (ii+1)]);
        if( (sign(current_slope)~=sign(previous_slope)) && ( (1 - abs(cos_beta)) > 0.1 ) )
            indd = [indd ii]; %[indd ang(ii,1)];
            radd = [radd vector(ii,1)];
        end
        previous_slope = current_slope;
    end
end