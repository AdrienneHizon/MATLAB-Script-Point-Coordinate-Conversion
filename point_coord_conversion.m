function vector = point_coord_conversion(orig,option,mat)
% point_coord_conversion - Point Coordinate Conversion
% Convert point coordinates into another coordinate system
% orig - original point coordinate
% option - coordinate system conversion of choice
% mat - given coordinate

if length(mat) > 3
    disp('vector must only contain 3 elements')
    return;
end

orig = upper(orig);
option = upper(option);

a = mat(1);
b = mat(2);
c = mat(3);
x = 0;
y = 0;
z = 0;
p = 0;
az = 0;
r = 0;
zen = 0;
angle = 0;

switch orig
    case 'RCS'
        x = a;
        y = b;
        z = c;
        switch option
            case 'CCS'
                disp('RCS -> CCS')
                disp('Coordinate Format: [radius, azimuthal angle, height]')
                p = sqrt(x^2 + y^2);
                angle = atand(y/x);
                if y > 0 && x < 0
                    az = angle + 180;
                elseif y < 0 && x < 0
                    az = angle + 180;
                elseif y < 0 && x > 0
                    az = angle + 360;
                else
                    az = angle;
                end
                vector = [p, az, z];
            case 'SCS'
                disp('Coordinate Format: [radius, zenith angle, azimuthal angle]')
                disp('RCS -> SCS')
                r = sqrt(x^2 + y^2 + z^2);
                zen = acosd(z/sqrt(x^2 + y^2 + z^2));
                angle = atand(y/x);
                if y > 0 && x < 0
                    az = angle + 180;
                elseif y < 0 && x < 0
                    az = angle + 180;
                elseif y < 0 && x > 0
                    az = angle + 360;
                else
                    az = angle;
                end
                vector = [r, zen, az];
            otherwise
                disp('Please choose a valid target coordinate option')
        end
    case 'CCS'
        p = a;
        az = b;
        z = c;
        switch option
            case 'RCS'
                disp('CCS -> RCS')
                disp('Coordinate Format: [x, y, z]')
                x = p*cosd(az);
                y = p*sind(az);
                vector = [x,y,z];
            case 'SCS'
                disp('CCS -> SCS')
                disp('Coordinate Format: [radius, zenith angle, azimuthal angle]')
                r = sqrt(p^2 + z^2);
                zen = acosd(z/sqrt(p^2 + z^2));
                vector = [r, zen, az];
            otherwise
                disp('Please choose a valid target coordinate option')
        end
    case 'SCS'
        r = a;
        zen = b;
        az = c;
        switch option
            case 'RCS'
                disp('SCS -> RCS')
                disp('Coordinate Format: [x, y, z]')
                x = r*sind(zen)*cosd(az);
                y = r*sind(zen)*sind(az);
                z = r*cosd(zen);
                vector = [x,y,z];
            case 'CCS'
                disp('SCS -> CCS')
                disp('Coordinate Format: [radius, azimuthal angle, height]')
                p = r*sind(zen);
                z = r*cosd(zen);
                vector = [p, az, z];
            otherwise
                disp('Please choose a valid target coordinate option')
        end
    otherwise
        disp('Please choose a valid original coordinate option')
end