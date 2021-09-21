function fmp=pmfLetrasPT(ficheiros,alpha)
%  esta fun��o devolve a fun��o massa probabilidade
%  dos caracteres em alpha
%  processa os ficheiros no cellarray ficheiros
%
%  VER teste.m para um exemplo de utiliza��o

  
 

%%   para contagem  ...
contador=zeros(1,length(alpha));


debug=0;  %  para controlar a informa��o que � mostrada
         % debug = 1 mostra detalhes do funcionamento   

totalLetras=0;  %  para contar as letras


%  para todos os ficheiros no array ficheiros...
for fich=1:length(ficheiros)

    
    fprintf(1,'Processando %s\n',ficheiros{fich});
    % NOTA: aten��o ao uso de {} por ficheiros ser um cell array

    % abrir um dos ficheiros para leitura
    fid=fopen(ficheiros{fich});

    %  enquanto n�o terminar o ficheiro
    while 1
    
        % ler uma linha do ficheiro
        linha=fgetl(fid);
    
        % se n�o for um caractere termina
        if ~ischar(linha), break, end
    
        if debug 
            fprintf(1,'lido = |%s|  length= %d \n',linha,length(linha));    
        end
        
        %contar sempre os carriage return
        if length(linha)>0
            linha=[linha sprintf('\n')];
        end
    
        %  linha sem nada
        if length(linha)==1
            fprintf (1, 'length =1  !!! \n');
        end
    
        
        totalLetras=totalLetras+ length(linha);
    
        %  para cada s�mbolo em alpha
        for k=1:length(alpha)
            % ver onde ocorre o s�mbolo na linha
            resul=find(linha==alpha(k));
            
            %  incrementar o contador desse s�mbolo
            contador(k)=contador(k)+length(resul);
        end
   
        if debug
            fprintf(1,'letras processadas = %d \n',totalLetras);
        end
  
    end

    fclose(fid);  %  n�o esquecer de fechar o ficheiro

end  % do ciclo for

fprintf(1,'Terminado.\n')
  
  

%%  Guardar para aulas seguintes
  
fmp=contador / (sum(contador)) ;  


