#include "pioneer2dx_ros/customfunctions.h"

std::list<int> findSlopeSignchange(pioneer2dx_ros::myHokuyoMessage::_ranges_type &msg, double angRes, unsigned int Size)
{
    std::list<int> indexes;
    double previous_slope = msg[1] - msg[0];
    double current_slope = 0.0;
    double cos_beta = 0.0;

    for(unsigned int ii = 1; ii < Size-2;ii++)
    {
        current_slope = msg[ii+1] - msg[ii];
        cos_beta = calculatingLittleTriangle(current_slope,previous_slope,angRes);
        if( ( sign(current_slope)!=sign(previous_slope) ) &&( (1 - abs(cos_beta)) > TOL_1 ) )
        {
            indexes.push_back(ii);
        }
        previous_slope = current_slope;
    }

    return indexes;
}


std::list<int> findSlopechange(pioneer2dx_ros::myHokuyoMessage::_ranges_type &msg, double angRes, unsigned int Size)
{
    std::list<int> indexes;
    double previous_slope = setVPrec(abs(msg[1] - msg[0]),2);
    double current_slope = 0.0;
    double cos_beta = 0.0;

    for(unsigned int ii = 1; ii < Size-2;ii++)
    {
        current_slope = setVPrec(abs(msg[ii+1] - msg[ii]),2);
        if( current_slope > 10*previous_slope )
        {
            indexes.push_back(ii);
        }
        previous_slope = current_slope;
    }

    return indexes;
}


double setVPrec(double val,int OrdMag)
{
    double oprt = pow(10,OrdMag);
    return round(oprt*(val))/oprt;
}


double sign(double val)
{
    return (val)/abs(val);
}

template <class T>
std::list<T> vector2list(std::vector<T> &vect)
{
    std::list<T> retLista;
    for(unsigned int ii = 0; ii< vect.size();ii++) retLista.push_back(vect[ii]);
    return retLista;
}

template <class T> 
std::vector<T> list2vector(std::list<T> &lst)
{
    std::vector<T> retVector;

    //for(std::list<T>::iterator it=lst->begin();it != lst->end();it++) retVector.push_back(*it);
    while(lst.size()>0)
    {
        retVector.push_back(lst.front());
        lst.pop_front();
    }

    return retVector;
}

double calculatingLittleTriangle(double c_slope,double p_slope,double angRes)
{
    double tempAR = pow(angRes,2);
    double da = sqrt( tempAR + pow(c_slope,2) );
    double db = sqrt( tempAR + pow(p_slope,2) );
    double dc = sqrt( tempAR + pow(c_slope + p_slope,2) );

    return ( pow(da,2) + pow(db,2) - pow(dc,2) )/( 2*da*db );
}


std::vector<int> findEndOfObstacle(const std::vector<int> &index,pioneer2dx_ros::myHokuyoMessage::_ranges_type &vRadii)
{
    unsigned int Size = index.size();
    std::vector<int> returnVector;

    for(unsigned int ii = 0;ii<(Size-2);ii++)
    {
        if(index[ii]+1!=index[ii+1])
        {
            continue;
        }
        if( vRadii[index[ii]] > vRadii[index[ii+1]] )
        {
                returnVector.push_back(index[ii+1]);
        }else{
                returnVector.push_back(index[ii]);
        }
    }
    return returnVector;
}


std::list<int> returnIndexesLandmarksFeatures(std::vector<int> &Is,std::vector<int> &Im)
{
    std::list<int> Ind;
    unsigned int Nis = Is.size();
    unsigned int Nim = Im.size();

    for(unsigned int ii = 0;ii<Nis;ii++)
    {
        for(unsigned int jj = 0;jj<Nim;jj++)
        {
            if(ii>=Nis) break;
            if( (Is[ii]+1==Im[jj]) || (Is[ii]-1==Im[jj]) || (Is[ii]==Im[jj]) )
            {
                std::vector<int> tempV;
                for(unsigned int kk = 1;kk<Nis;kk++)
                {
                    if(kk==ii) continue;
                    tempV.push_back(Is[kk]);
                }
                Is.swap(tempV);
                Nis = Is.size();
                ii = ii - 1;
                break;
            }
        }
    }
    while(Is.size()>0)
    {
        Im.push_back(Is[Is.size()-1]);
        Is.pop_back();
    }
    Ind = vector2list<int>(Is);
    Ind.sort();
    return Ind;
}


std::vector<int> Landmaks_Indexes(const pioneer2dx_ros::myHokuyoMessage::ConstPtr &hkyReading)
{
    std::list<int> indS;
    std::list<int> indM1;
    std::list<int> indM2;
    std::list<int> indM12;
    std::vector<int> indM12v;
    std::vector<int> indSv;
    std::vector<int> indM;

    std::list<int> returnedList;

    pioneer2dx_ros::myHokuyoMessage::_ranges_type arrRanges = hkyReading->ranges;
    double aRes = hkyReading->angleRes;
    int NR = hkyReading->NRays;

    indS = findSlopeSignchange(arrRanges,hkyReading->angleRes,hkyReading->NRays);
    indM1 = findSlopechange(arrRanges,hkyReading->angleRes,hkyReading->NRays);
    indM2 = findSlopechange(arrRanges,hkyReading->angleRes,hkyReading->NRays);
/*
    indS = findSlopeSignchange(arrRanges, aRes, NR);
    indM1 = findSlopechange(arrRanges, aRes, NR);
    indM2 = findSlopechange(arrRanges, aRes, NR);
*/
    while(indM2.size()>0)
    {
        indM12.push_back( (hkyReading->NRays -1) - indM2.front() );
        indM2.pop_front();
    }
    while(indM1.size()>0)
    {
        indM12.push_back( indM1.front() );
        indM1.pop_front();
    }

    indM12.sort();

    indM12v = list2vector<int>(indM12);

    indM = findEndOfObstacle(indM12v,arrRanges);
    indSv = list2vector<int>(indS);
    returnedList = returnIndexesLandmarksFeatures(indSv,indM);

    return list2vector<int>(returnedList);
}

