%% Programa brazo con cinematica inversa

clc,clear;

%%Limpiamos lo anterior y establecemos la conexion con arduino
%%declaramos las variables servos
a=arduino();

Base=servo(a,'D3');
Brazo=servo(a,'D4');
Antebrazo=servo(a,'D5');
Muneca=servo(a,'D6');
Pinza=servo(a,'D7');

%%longitudes de las distintas partes del brazo
LongBrazo=16;
LongAntebrazo=12;
LongMuneca=12;
Altura=9;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Primera cajita
%% Punto
x=21;
y=16;
z=4;

a1=readPosition(Base);
a2=readPosition(Brazo);
a3=readPosition(Antebrazo);
a4=readPosition(Muneca);
a5=readPosition(Pinza);

[angulo1,angulo2,angulo3,angulo4,Hipotenusa,ejeIMG,alfa,beta]=cinematicaINV4(x,y,z,Altura,LongBrazo,LongAntebrazo,LongMuneca);

Hipotenusa;
ejeIMG;
alfa;
beta;


%% Pinza Abrir

    writePosition(Pinza,0); 



%% servo Base
if(a1>((angulo1/180)))
    for i=a1:-0.005:((angulo1/180))
        writePosition(Base,i);
    end
else
    for i=a1:0.005:((angulo1/180))
        writePosition(Base,i);
    end
    
end
%% SERVO Muñeca
if(a4>(angulo4/180))    
    for i=a4:-0.005:(angulo4/180)
        writePosition(Muneca,i);
    end
else
    for i=a4:0.005:(angulo4/180)
        writePosition(Muneca,i);
    end
end

%% servo Brazo
if(a2<(angulo2/180))
    for i=a2:0.005:(angulo2/180)
        writePosition(Brazo,i);
    end
else
    for i=a2:-0.005:(angulo2/180)
        writePosition(Brazo,i);
    end
    
end
%% SERVO Antebrazo
if(a3>(angulo3/180))
    for i=a3:-0.005:((angulo3/180))
    writePosition(Antebrazo,(1-i));
    end
else
    for i=a3:0.005:((angulo3/180))
    writePosition(Antebrazo,(1-i));
    end
end

pause(1);
%% Pinza Cerrar
writePosition(Pinza,0.5);

%%%%%%%%%%Volver 
angulo1=0.35;
angulo2=0.62 ;
angulo3=0 ;
angulo4=0.300;


%% SERVO Antebrazo
if(a3>angulo3)
    for i=a3:-0.005:angulo3
    writePosition(Antebrazo,(1-i));
    end
else
    for i=a3:0.005:angulo
    writePosition(Antebrazo,(1-i));
    end
end
%% servo Brazo
if(a2<angulo2)
    for i=a2:0.005:angulo2
        writePosition(Brazo,i);
    end
else
    for i=a2:-0.005:angulo2
        writePosition(Brazo,i);
    end
    
end
%% servo Base
if(a1>angulo1)
    for i=a1:-0.005:angulo1
        writePosition(Base,i);
    end
else
    for i=a1:0.005:angulo1
        writePosition(Base,i);
    end
    
end


%% SERVO Muñeca
if(a4>angulo4)    
    for i=a4:-0.005:angulo4
        writePosition(Muneca,i);
    end
else
    for i=a4:0.005:angulo4
        writePosition(Muneca,i);
    end
end

%% Punto
x=25;
y=5;
z=8;

a1=readPosition(Base);
a2=readPosition(Brazo);
a3=readPosition(Antebrazo);
a4=readPosition(Muneca);
a5=readPosition(Pinza);

[angulo1,angulo2,angulo3,angulo4,Hipotenusa,ejeIMG,alfa,beta]=cinematicaINV4(x,y,z,Altura,LongBrazo,LongAntebrazo,LongMuneca);

Hipotenusa;
ejeIMG;
alfa;
beta;






%% servo Base
if(a1>((angulo1/180)))
    for i=a1:-0.005:((angulo1/180))
        writePosition(Base,i);
    end
else
    for i=a1:0.005:((angulo1/180))
        writePosition(Base,i);
    end
    
end
%% SERVO Muñeca
if(a4>(angulo4/180))    
    for i=a4:-0.005:(angulo4/180)
        writePosition(Muneca,i);
    end
else
    for i=a4:0.005:(angulo4/180)
        writePosition(Muneca,i);
    end
end
%% SERVO Antebrazo
if(a3>(angulo3/180))
    for i=a3:-0.005:((angulo3/180))
    writePosition(Antebrazo,(1-i));
    end
else
    for i=a3:0.005:((angulo3/180))
    writePosition(Antebrazo,(1-i));
    end
end

%% servo Brazo
if(a2<(angulo2/180))
    for i=a2:0.005:(angulo2/180)
        writePosition(Brazo,i);
    end
else
    for i=a2:-0.005:(angulo2/180)
        writePosition(Brazo,i);
    end
    
end


pause(1);

%% Pinza Abrir

    writePosition(Pinza,0); 
 %%%%%%%%%%Volver  
angulo1=0.35;
angulo2=0.62 ;
angulo3=0 ;
angulo4=0.300;
angulo5=0.65;

%% SERVO Antebrazo
if(a3>angulo3)
    for i=a3:-0.005:angulo3
    writePosition(Antebrazo,(1-i));
    end
else
    for i=a3:0.005:angulo
    writePosition(Antebrazo,(1-i));
    end
end
%% servo Brazo
if(a2<angulo2)
    for i=a2:0.005:angulo2
        writePosition(Brazo,i);
    end
else
    for i=a2:-0.005:angulo2
        writePosition(Brazo,i);
    end
    
end

%% servo Base
if(a1>angulo1)
    for i=a1:-0.005:angulo1
        writePosition(Base,i);
    end
else
    for i=a1:0.005:angulo1
        writePosition(Base,i);
    end
    
end
%% SERVO Muñeca
if(a4>angulo4)    
    for i=a4:-0.005:angulo4
        writePosition(Muneca,i);
    end
else
    for i=a4:0.005:angulo4
        writePosition(Muneca,i);
    end
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Segunda cajita
%% Punto
x=21;
y=-16;
z=4;

a1=readPosition(Base);
a2=readPosition(Brazo);
a3=readPosition(Antebrazo);
a4=readPosition(Muneca);
a5=readPosition(Pinza);

[angulo1,angulo2,angulo3,angulo4,Hipotenusa,ejeIMG,alfa,beta]=cinematicaINV4(x,y,z,Altura,LongBrazo,LongAntebrazo,LongMuneca);

Hipotenusa;
ejeIMG;
alfa;
beta;






%% servo Base
if(a1>((angulo1/180)))
    for i=a1:-0.005:((angulo1/180))
        writePosition(Base,i);
    end
else
    for i=a1:0.005:((angulo1/180))
        writePosition(Base,i);
    end
    
end
%% SERVO Muñeca
if(a4>(angulo4/180))    
    for i=a4:-0.005:(angulo4/180)
        writePosition(Muneca,i);
    end
else
    for i=a4:0.005:(angulo4/180)
        writePosition(Muneca,i);
    end
end
%% SERVO Antebrazo
if(a3>(angulo3/180))
    for i=a3:-0.005:((angulo3/180))
    writePosition(Antebrazo,(1-i));
    end
else
    for i=a3:0.005:((angulo3/180))
    writePosition(Antebrazo,(1-i));
    end
end
%% servo Brazo
if(a2<(angulo2/180))
    for i=a2:0.005:(angulo2/180)
        writePosition(Brazo,i);
    end
else
    for i=a2:-0.005:(angulo2/180)
        writePosition(Brazo,i);
    end
    
end



pause(1);

%% Pinza cerrar

writePosition(Pinza,0.5);

%%%%%%%%%volver
angulo1=0.35;
angulo2=0.62 ;
angulo3=0 ;
angulo4=0.300;
angulo5=0.65;

%% SERVO Antebrazo
if(a3>angulo3)
    for i=a3:-0.005:angulo3
    writePosition(Antebrazo,(1-i));
    end
else
    for i=a3:0.005:angulo
    writePosition(Antebrazo,(1-i));
    end
end
%% servo Brazo
if(a2<angulo2)
    for i=a2:0.005:angulo2
        writePosition(Brazo,i);
    end
else
    for i=a2:-0.005:angulo2
        writePosition(Brazo,i);
    end
    
end

%% servo Base
if(a1>angulo1)
    for i=a1:-0.005:angulo1
        writePosition(Base,i);
    end
else
    for i=a1:0.005:angulo1
        writePosition(Base,i);
    end
    
end
%% SERVO Muñeca
if(a4>angulo4)    
    for i=a4:-0.005:angulo4
        writePosition(Muneca,i);
    end
else
    for i=a4:0.005:angulo4
        writePosition(Muneca,i);
    end
end

%% Punto
x=25;
y=5;
z=8;

a1=readPosition(Base);
a2=readPosition(Brazo);
a3=readPosition(Antebrazo);
a4=readPosition(Muneca);
a5=readPosition(Pinza);

[angulo1,angulo2,angulo3,angulo4,Hipotenusa,ejeIMG,alfa,beta]=cinematicaINV4(x,y,z,Altura,LongBrazo,LongAntebrazo,LongMuneca);

Hipotenusa;
ejeIMG;
alfa;
beta;






%% servo Base
if(a1>((angulo1/180)))
    for i=a1:-0.005:((angulo1/180))
        writePosition(Base,i);
    end
else
    for i=a1:0.005:((angulo1/180))
        writePosition(Base,i);
    end
    
end
%% SERVO Muñeca
if(a4>(angulo4/180))    
    for i=a4:-0.005:(angulo4/180)
        writePosition(Muneca,i);
    end
else
    for i=a4:0.005:(angulo4/180)
        writePosition(Muneca,i);
    end
end
%% SERVO Antebrazo
if(a3>(angulo3/180))
    for i=a3:-0.005:((angulo3/180))
    writePosition(Antebrazo,(1-i));
    end
else
    for i=a3:0.005:((angulo3/180))
    writePosition(Antebrazo,(1-i));
    end
end

%% servo Brazo
if(a2<(angulo2/180))
    for i=a2:0.005:(angulo2/180)
        writePosition(Brazo,i);
    end
else
    for i=a2:-0.005:(angulo2/180)
        writePosition(Brazo,i);
    end
    
end


pause(1);

%% Pinza Abrir

writePosition(Pinza,0);

%%%%%%%%%%%%%%%volver
angulo1=0.35;
angulo2=0.62 ;
angulo3=0 ;
angulo4=0.300;
angulo5=0.65;

%% servo Brazo
if(a2<angulo2)
    for i=a2:0.005:angulo2
        writePosition(Brazo,i);
    end
else
    for i=a2:-0.005:angulo2
        writePosition(Brazo,i);
    end
    
end
%% SERVO Antebrazo
if(a3>angulo3)
    for i=a3:-0.005:angulo3
    writePosition(Antebrazo,(1-i));
    end
else
    for i=a3:0.005:angulo
    writePosition(Antebrazo,(1-i));
    end
end
%% servo Base
if(a1>angulo1)
    for i=a1:-0.005:angulo1
        writePosition(Base,i);
    end
else
    for i=a1:0.005:angulo1
        writePosition(Base,i);
    end
    
end
%% SERVO Muñeca
if(a4>angulo4)    
    for i=a4:-0.005:angulo4
        writePosition(Muneca,i);
    end
else
    for i=a4:0.005:angulo4
        writePosition(Muneca,i);
    end
end

