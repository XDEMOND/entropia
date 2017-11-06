//RODRIGUEZAPARICIOYAIR
fid = fopen('class.txt');
ari = fscanf(fid,'%c');
fclose(fid);



entrop=0;
for(j=32:255)
    dato=char(j);
eventos=length(strfind(ari,dato));
probabilidad=eventos/length(ari);

    if(eventos~=0)
        fprintf('%c-%d veces- &f\n', dato,eventos,probabilidad);
        entrop = entrop + probabilidad*log2(1/probabilidad);
    end
    
end
fprintf('\t\tH(s)= %f bit/sibolo\n',entrop);