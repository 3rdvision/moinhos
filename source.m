%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% DIMENSIONADOR DE MOINHOS DE BARRAS E MOINHOS DE BOLAS %%%%
%%%%%%%%%           %%%%%%%%%%%%%%%%%%%%%            %%%%%%%%%%
%%%%%%%%%                 Autor:                     %%%%%%%%%%
%%%%%%%%%%%%%%%%%   Daniel Vieira Azevedo   %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%       FEUP-DEM        %%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%  v0.2a22.11.16  %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%        %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%           $$$$$$$$\ $$$$$$$$\ $$\   $$\ $$$$$$$\
%           $$  _____|$$  _____|$$ |  $$ |$$  __$$\
%           $$ |      $$ |      $$ |  $$ |$$ |  $$ |
%           $$$$$\    $$$$$\    $$ |  $$ |$$$$$$$  |
%           $$  __|   $$  __|   $$ |  $$ |$$  ____/
%           $$ |      $$ |      $$ |  $$ |$$ |
%           $$ |      $$$$$$$$\ \$$$$$$  |$$ |
%           \__|      \________| \______/ \__|
% % % %
% % %                     `.:+so/-`
% % %                 -hdNMMMNdmmMNy/`
% % %                 :MMMMMMhdNhdsymNy:
% % %                  .m+MMMhmMMMyNdyhNs
% % %                   mo/ymhdmhmys:odh`
% % %                   mo- :h+` yho :dy
% % %                  -m+/shNds+hds -do
% % %                 .NMosMNNmNNhdmyomy
% % %                 .NMNNMMMNhdhhdhMNNo
% % %                  .yMmomMm:mMdhyyddd
% % %                   oMy-dMm`mMyyyomd/
% % %                   yd+ydNy-hmdyhomd`
% % %                  +h+dNNM:sNMh+yhdy.
% % %                 shoms-hN.dMMhys/yy.
% % %                sh+oNhsmy-dMMhohyNh.
% % %              `sh+.:MNMM/sMMMhsyoyy.
% % %             `yhs+/sMNMN`oymMdhs/yh.
% % %            `yNNMMMNMNNy-mhshd+hhmm.
% % %           `yys:/shdMNN/+MMMMdoy+oy.
% % %          `yo+.    /Mdm.ydyyhds/-yh-
% % %         .hs+`     :Mmy-mddmNdoyydd:
% % %        .ho+`      :MM/oMNMMMd/sssy:
% % %       -h++`       :MN.yNNmdddso/yy:
% % %      `y//`        :My:sdyosyds/.oy:
% % %                   :M/sdMmdMdm:dmmh:
% % %        ` `.`..--`--oosmNMMMMN:o++o:
% % %       ..`..````    `+ .yyyysmo/:ym:
% % %                    `o `+yoy+ho:-+m:
% % %                    `s `/shyod- `.y+:`
% % %                    `s ....-:o-   shh:/--`
% % %                     s `----..    s+o. :+`
% % %                     + `..-.--`   y`    s
% % %                     `      `--/  y-/:. /
% % %                              `-  .   y .-
% % %                                      -
% % % Feito no âmbito da disciplina Tratamento de Matérias Primas e Resíduos I
% % % do curso de Licenciatura em Ciências de Engenharia - Engenharia de Minas de Geo-Ambiente
clc
MWi=[17.9000000000000 12.2000000000000;27.4000000000000 11.4000000000000;10.8000000000000 12.5000000000000;19.6000000000000 7;10.1000000000000 13.4000000000000;5.80000000000000 5.70000000000000;14.5000000000000 10.8000000000000;9.90000000000000 13.7000000000000;11 -1;15.4000000000000 9.80000000000000;18 15.9000000000000;15.1000000000000 17.6000000000000;13.6000000000000 12.1000000000000;33.5000000000000 16.9000000000000;11.6000000000000 17.5000000000000;13.9000000000000 14.2000000000000;17.2000000000000 16;18.3000000000000 10.1000000000000;12.7000000000000 11;11.7000000000000 11;20.4000000000000 8.40000000000000;7.20000000000000 -1;7.90000000000000 7.60000000000000;17.9000000000000 7.10000000000000;16.5000000000000 -1;9.90000000000000 16.3000000000000;11.1000000000000 12.5000000000000;9 9.30000000000000;14.5000000000000 15.9000000000000;13.2000000000000 11.4000000000000;10.2000000000000 10.6000000000000;10 12.3000000000000;10.3000000000000 12.6000000000000;12.5000000000000 12.4000000000000;12.8000000000000 14.3000000000000;15.5000000000000 19.2000000000000;9.80000000000000 11;13.4000000000000 7.90000000000000;11.8000000000000 14.1000000000000;12.4000000000000 11.3000000000000;13.9000000000000 10.9000000000000;11.6000000000000 11.8000000000000;12.5000000000000 14.9000000000000;14.6000000000000 15.2000000000000;17 17.5000000000000;11.4000000000000 10.9000000000000;11 12.8000000000000;14.6000000000000 13.3000000000000;10.9000000000000 12.9000000000000;27.4000000000000 18.1000000000000;10.1000000000000 8.70000000000000;11.2000000000000 12.3000000000000;14.4000000000000 14.4000000000000;14 -1;28.4000000000000 9.80000000000000;14.3000000000000 8.90000000000000;13.6000000000000 12.8000000000000;10.4000000000000 -1;23.8000000000000 13;22.1000000000000 -1;12 19.3000000000000;15.3000000000000 -1;38.2000000000000 27];
% /\ nota: para os valores -1, não há dados
muro=sprintf ( '_|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|\n___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|__\n_|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|\n___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|__\n_|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|\n___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|__\n');
MICIRPbar=[0.910000000000000 0.760000000000000 6 1.07000000000000;1.22000000000000 1.07000000000000 19 1.68000000000000;1.52000000000000 1.37000000000000 45 2.29000000000000;1.83000000000000 1.68000000000000 91 2.90000000000000;2.13000000000000 1.98000000000000 145 3.20000000000000;2.44000000000000 2.29000000000000 220 3.51000000000000;2.59000000000000 2.44000000000000 254 3.51000000000000;2.74000000000000 2.55000000000000 275 3.51000000000000;2.89000000000000 2.70000000000000 332 3.81000000000000;3.05000000000000 2.85000000000000 405 4.11000000000000;3.20000000000000 3 486 4.42000000000000;3.35000000000000 3.15000000000000 587 4.72000000000000;3.51000000000000 3.31000000000000 654 4.72000000000000;346 3.46000000000000 724 4.72000000000000;3.81000000000000 3.61000000000000 874 5.34000000000000;3.96000000000000 3.76000000000000 1010 5.64000000000000;4.12000000000000 3.92000000000000 1107 5.64000000000000;4.27000000000000 4.07000000000000 1263 5.94000000000000;4.42000000000000 4.22000000000000 1371 5.94000000000000;4.57000000000000 4.37000000000000 1481 5.94000000000000];
MICIRPbol=[0.910000000000000 0.910000000000000 5;1.22000000000000 1.22000000000000 15;1.52000000000000 1.52000000000000 34;1.83000000000000 1.83000000000000 63;2.13000000000000 2.13000000000000 108;2.44000000000000 2.44000000000000 170;2.59000000000000 2.44000000000000 198;2.74000000000000 2.74000000000000 255;2.89000000000000 2.74000000000000 291;3.05000000000000 3.05000000000000 366;3.20000000000000 3.05000000000000 411;3.35000000000000 3.35000000000000 484;3.51000000000000 3.35000000000000 535;3.66000000000000 3.66000000000000 644;3.81000000000000 3.66000000000000 711;3.96000000000000 3.96000000000000 842;4.12000000000000 3.96000000000000 943;4.27000000000000 4.27000000000000 1090;4.42000000000000 4.27000000000000 1183;4.57000000000000 4.57000000000000 1354;4.72000000000000 4.57000000000000 1457;4.88000000000000 4.88000000000000 1652;5.03000000000000 4.88000000000000 1766;5.18000000000000 5.18000000000000 2059;5.33000000000000 5.18000000000000 2182;5.49000000000000 5.49000000000000 2441];
s_MICIRPbar=length(MICIRPbar);
s_MICIRPbol=length(MICIRPbol);
Descricao={'Ambiente húmido ou seco';'Circuito aberto ou fechado';'Diâmetro';'Oversize';'Apenas para calibres muito finos';'Apenas para monhos de barras';'Apenas para baixa RR';'Apenas para moinhos de barras'};
EFs=['EF1';'EF2';'EF3';'EF4';'EF5';'EF6';'EF7';'EF8'];

Material={'Alumina';'Arenito';'Argila';'Argila calcinada';'Argilito';'Barita';'Bauxita';'Calcário';'Calcário queimado';'Carvão';'Cascalho';'Cascos de ostras';'Clínquer';'Coque';'Diorito';'Dolomita';'Escória';'Escória forno';'Espatoflúor';'Feldspato';'Ferro-cromo';'Ferro-magnésio';'Ferro-manganês';'Ferro-sílica';'Fosfatos fertilizantes';'Granito';'Hematita';'Limonita';'Magnesita';'Magnetita concentrada';'Marga';'Matéria-prima para cimento';'Minério de chumbo';'Minério de chumbo-zinco';'Minério de cobre';'Minério de cobre-níquel';'Minério de cobre-zinco';'Minério de cromo';'Minério de estanho';'Minério de ferro';'Minério de manganês';'Minério de molibdênio';'Minério de níquel';'Minério de ouro';'Minério de prata';'Minério de titânio';'Minério de tungstênio';'Minério de urânio';'Minério de zinco';'Pederneira';'Pirita';'Quartzito';'Quartzo';'Rejeitos';'Resíduo de níquel';'Rocha sílica';'Rochas fosfáticas';'Siderita';'Sílica';'Sucata de aço';'Taconita';'Talco';'Xisto oleoso'};
n=[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34;35;36;37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;54;55;56;57;58;59;60;61;62;63];

while 1
    
    
    
    % Dimensionamento de um moinho para máxima eficiência
    disp('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
    disp('~~~~~~~Dimensionador de moinhos de barras e de bolas~~~~~~~~');
    disp('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
    disp('                             \/');
    disp('');
    disp('Introduza os valores apenas no formato numérico ou decimal.');
    disp(' ');
    moinho=input('Deseja um moinho com barras (1) ou com bolas (2)? ');
    Q=input('Introduza a capacidade desejada em ton/h: ');
    Feed=input('Introduza o valor em micron do calibre k80 à alimentação: ');
    PF=input('Introduza o valor em micron do calibre k80 desejado para o produto final: ');
    RR=Feed/PF; % Relação redução
    %     S=[id,Material];
    tabelamat=table(n,Material);disp(tabelamat) %mostrar tabela dos materiais
    id=input('De acordo com a tabela cima, introduza o nr. correspondente ao material desejado: ');
    %     fprintf('\nMaterial selecionado:'); disp(S(id,:))
    if moinho==1 %barras
        fprintf('\nWork index do respetivo material no moinho de barras:\n');
        disp(MWi(id,2));
    else %bolas
        fprintf('\nWork index do respetivo material no moinho de bolas:\n');
        disp(MWi(id,1));
    end
    seco=input('Moagem a seco (1) ou moagem a húmido (2)? ');
    circuito=input('Circuito aberto (1) ou fechado (2)? ');
    if moinho==1 % se barras
        pcircuito=input('A alimentação do moinho é proveniente de um circuito de britagem em circuito aberto (1) ou em circuito fechado (2)? '); % circuito que antecede - para o cálculo do fator de correcção
    end
    
    disp(muro);
    % 1- ir à tabela e escolher Wi baseado no id do material selecionado pelo
    % utilizador
    
    if moinho==2 % bolas
        
        Wi=MWi(id,1);
        
    else % barras
        
        if MWi(id,2)<0 % caso não existam dados na experiência
            disp('Não há dados registados deste material no moinho de barras.'); input('O programa não pode proseguir. Pressione enter para terminar.'); return;
        else
            Wi=MWi(id,1);
        end
        
    end
    
    % 2- aplicar a fórmula de bond e calcular W
    
    Wb=10*(Wi/0.907)*((1/sqrt(PF))-(1/sqrt(Feed))) ;
    
    
    disp('Wb=');disp(Wb);
    
    % 3 - Cálculo da potência P - necessária para garantir a capac desejada
    
    P=Q*Wb;
    disp('Potênca necessária para garantir a capacidade desejada:');disp(P)
    
    
    
    flag=0; idm=1;
    while flag~=1 % 4 - Pré seleção do moinho - um que tenha a potência mais baixa mas que seja pelo menos > 3.2
        if moinho==1 % barras
            if MICIRPbar(idm,3)>=(P/2)
                flag=1;
            else
                idm=idm+1;
            end
        else %bolas
            if MICIRPbol(idm,3)>=(P/2)
                flag=1;
            else
                idm=idm+1;
            end
        end
    end
    
    
    disp('Pré-selecção do moinho, tendo em conta o fator P/2:');fprintf('\n    Diâmetro  Compr.  Potência  \n');;if moinho==1;disp(MICIRPbar(idm,:));else;disp(MICIRPbol(idm,:));end;
    
   
    
    flag=0;
    while flag~=1
        
        EF=[];
        % 5 - calcular fatores de correcção EF1,EF2,EF3...
        
        % EF(1) - Fator correcção para a húmidade
        if seco==1
            EF=[EF,1.3];
        else
            EF=[EF,1];
        end
        
        
        % EF(2) - Fator correcção para o tipo de circuito no moinho de bolas - aberto ou fechado
        if moinho~=1 %bolas
            if circuito==1 % aberto
                EF=[EF,1.20];
            else % fechado
                EF=[EF,1];
            end
        else %barras
            EF=[EF,1];
        end
        
        
        % EF(3) - Fator correccao para o diametro
        if moinho==1
            D=MICIRPbar(idm,1);
        else
            D=MICIRPbol(idm,1);
        end
        if D<=3.81
            EF=[EF,(2.44/D)^0.2];
        else
            EF=[EF,0.914];
        end
        
        
        % EF(4) - Fator correcção oversize
        if moinho==1 % barras
            F0=16000*((13/Wi)^0.5);
            EF4=(RR+(Wi-7)*((Feed-F0)/F0))/RR;
            EF=[EF,EF4];
        else % bolas
            F0=4000*((13/Wi)^0.5);
            EF4=(RR+(Wi-7)*((Feed-F0)/F0))/RR;
            EF=[EF,EF4];
        end
        
        
        % EF(5) - Fator correcção para material fino
        if PF<74
            EF5=(PF+10.3)/(1.145*P);
            EF=[EF,EF5];
        else
            EF=[EF,1];
        end
        
        
        % EF(6) - Fator correcção para barras
        if moinho==1 % barrras
            %%% calcular o RR0 perto do RR em cima e ver onde está estipulado o
            %%% comprimento das barras
            L=MICIRPbar(idm,4); % comprimento das barras
            RR0=8+(5*L)/D;
            if (RR0-2)<=RR && (RR0+2)>=RR % barras dentro do intervalo
                EF6=1+((RR-RR0)^2)/150;
                EF=[EF,EF6];
            else % barras fora do intervalo
                EF=[EF,1];
            end
        else % bolas
            EF=[EF,1];
        end
        
        
        % EF(7) - Fator correcção para baixa relação redução
        if RR<7
            EF6=(2*(RR-1.35)+0.26)/(2*(RR-1.35));
            EF=[EF,EF6];
        else
            EF=[EF,1];
        end
        
        
        % EF(8) - Fator correcção para moagem em moinho de barras
        % Fazer de acordo com as condições pag 31
        if moinho==1 % barras
            if circuito==1 % aberto
                if pcircuito==1
                    EF=[EF,1.4];
                else
                    EF=[EF,1.2];
                end
            else % fechado
                if pcircuito==1
                    EF=[EF,1.2];
                else
                    EF=[EF,1];
                end
            end
        else % bolas
            EF=[EF,1];
        end
        
        EFn=EF';
        fprintf('\nFactores de correcção para o moinho acima selecionado:\n')
        tabelaEF=table(EFs,EFn,Descricao);disp(tabelaEF);
        disp('Feito. Aplicando os factores de correcção, a potência (W) necessária para garantir a fragmentação dessa quantidade de material é de: ');
        
        Pc=P*prod(EF);  % multiplicar por todos os EF(i)
        disp(Pc);
        
        % 6 - Determinar comprimento L
        
        if moinho==1
            L=Pc/(MICIRPbar(idm,3)/MICIRPbar(idm,1));
        else
            L=Pc/(MICIRPbol(idm,3)/MICIRPbol(idm,1));
        end
        
        % Verificar relação L/D < 1.5
        disp('L/D= '); disp(L/D)
        
        if idm>s_MICIRPbar && moinho==1 || idm>s_MICIRPbol && moinho~=1  % se exceder limite de iterações mostrar erro
            disp('Erro de ciclo infinito - dados errados e/ou não concordantes.');
            return
            
        end
        
        if L/D<1.5
            flag=1;
        else
            idm=idm+1;
            if idm>s_MICIRPbar && moinho==1 || idm>s_MICIRPbol && moinho~=1  % se exceder limite de iterações mostrar erro
                disp('Final do Ciclo - Moinho na relação L/D<1.5 não encontrado para os dados fornecidos');
                return
            end
            disp('L/D é maior que 1.5, escolhendo o próximo moinho e reaplicando os cálculos...');
            disp('Próximo moinho selecionado:');fprintf('\n    Diâmetro  Compr.  Potência  \n\n');;if moinho==1;disp(MICIRPbar(idm,:));else;disp(MICIRPbol(idm,:));end;
        end
        
        
    end
    
    %     if idm>s_MICIRPbar && moinho==1 || idm>s_MICIRPbol && moinho~=1 % se exceder limite de iterações mostrar erro
    %         disp('Erro de ciclo infinito - dados errados e/ou não concordantes.');
    %         return
    %     end
    
    disp(muro);
    fprintf(2,'SOLUÇÃO ENCONTADA!\n');
    %     disp('id do moinho IDEAL:');disp(idm)
    %     disp('Potência do moinho:');disp(Pc)
    %     disp('Diâmetro interno ao revestimento do moinho:');disp(D)
    %     disp('L:');disp(L)
    disp('Moinho ideal:');fprintf('\n    Diâmetro  Compr.  Potência  \n');;if moinho==1;disp(MICIRPbar(idm,:));else;disp(MICIRPbol(idm,:));end;
    fprintf('Sendo que o comprimento deste moinho terá de ser ajustado para %g metros.\n',L);
    input('Pressione enter para dimensionar outro moinho ou aperte as teclas Ctrl+C para sair.'); %%% em vez disto meter enter para repetir e Ctrl+C para sair
    
end
