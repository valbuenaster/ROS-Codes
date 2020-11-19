function ind = returnIndexesLandmarksFeatures(Is,Im)
    Nis = size(Is,2);
    Nim = size(Im,2);
    ind = [];

    for ii = 1:Nis
        for jj = 1:Nim
            if(ii>Nis)
                break;
            end
            if( (Is(1,ii)+1==Im(jj)) || (Is(1,ii)-1==Im(jj)) || (Is(1,ii)==Im(jj)) )
                if(ii == Nis)
                    Is = Is(1,1:end-1);
                end
                if(ii==1)
                    Is = Is(1,2:end);
                else
                    Is = [Is(1,1:ii-1) Is(1,ii+1:end)];
                end
                Nis = size(Is,2);
                ii = ii -1;
                break;
            end
    end
    ind = sort([Im Is]);
end