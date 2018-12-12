%% Read in Blast Queries 

% fileID = fopen("Thermophiles_Species_family.txt",'r');
% 
% therm = textscan(fileID, "%q",540,"whitespace","\n"); 
% therm = therm{1,1}; 
% 
% therm_family_species = cell(540,1); 
% for j = 1:540 
%     
%     info = therm{j,1}; 
%     
%     index = strfind(info,">"); 
%     
%     if (isempty(index) == 0)
%     
%         therm_family_species{j,1} = info(1:index(1)-1); 
%     else 
%         
%         therm_family_species{j,1} = info; 
%     end 
%     
% end 
% fileID = fopen("Thermophile_organized_data.txt","w"); 
% for j = 1:540 
% 
% fprintf(fileID,"%s\n ",therm_family_species{j,1}); 
% end 

%% Mesophiles Info 
fileID = fopen("mesophile_prot_species.txt",'r');

meso = textscan(fileID, "%q",540,"whitespace","\n"); 
meso = meso{1,1}; 

meso_family_species = cell(540,1); 
for j = 1:540 
    
    info = meso{j,1}; 
    
    index = strfind(info,">"); 
    
    if (isempty(index) == 0)
    
        meso_family_species{j,1} = info(1:index(1)-1); 
    else 
        
        meso_family_species{j,1} = info; 
    end 
    
end 
fileID = fopen("Mesophile_organized_data.txt","w"); 
for j = 1:540 

fprintf(fileID,"%s\n ",meso_family_species{j,1}); 
end 