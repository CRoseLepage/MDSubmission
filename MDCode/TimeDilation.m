function [dilStat] = TimeDilation(Fx, Fy)
global Fmax

firstRun = isempty(Fmax);
Fmag = sqrt(Fx.^2 + Fy.^2);

if firstRun
    Fmax = Fmag;
    dilStat = false;
else
    dilateLimit = 10*Fmax;
    if(Fmag > dilateLimit)
        fprintf("Halving time interval \n");
        dilStat = true;
    end
end

end

