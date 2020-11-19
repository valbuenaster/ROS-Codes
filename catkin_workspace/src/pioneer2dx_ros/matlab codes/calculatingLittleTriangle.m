function cos_beta = calculatingLittleTriangle(Angle,Radii,Indexes)
    da = sqrt( ( Angle(Indexes(2)) - Angle(Indexes(1)) )^2 +...
               ( Radii(Indexes(2)) - Radii(Indexes(1)) )^2 );
    db = sqrt( ( Angle(Indexes(3)) - Angle(Indexes(2)) )^2 +...
               ( Radii(Indexes(3)) - Radii(Indexes(2)) )^2 );
    dc = sqrt( ( Angle(Indexes(3)) - Angle(Indexes(1)) )^2 +...
               ( Radii(Indexes(3)) - Radii(Indexes(1)) )^2 );
           
    cos_beta = ( (da^2) + (db^2) - (dc^2) )/(2*da*db);
end