coor = [out.lon_coor out.lat_coor];

T = array2table(coor, 'VariableNames', {'latitude', 'longitude'});
writetable(T, 'coot_to_kml_input.xlsx');