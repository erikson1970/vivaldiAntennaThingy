function [Etheta,Ephi] = helperFieldInSphericalCoordinates(E,p,t)


[theta, phi] = meshgrid(t, p);
TH = theta(:).';
PH = phi(:).';
Etheta = E(1,:).*cosd(TH).*cosd(PH) + E(2,:).*cosd(TH).*sind(PH)-E(3,:).*sind(TH);
Ephi   = -E(1,:).*sind(PH) + E(2,:).*cosd(PH) ; 

end