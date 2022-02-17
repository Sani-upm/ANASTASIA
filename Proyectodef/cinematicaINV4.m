%% Funcion definitiva

function[angulo1,angulo2,angulo3,angulo4,Hipotenusa,ejeIMG,alfa,beta]=cinematicaINV4(x,y,z,Altura,LongBrazo,LongAntebrazo,LongMuneca)

%%funcion que a partir de un punto del espacio nos devuelve los angulos que
%%deben tener los servos del brazo para llegar a ese punto

%% Calculo del angulo de la Base

ro= atan2(x,y)*180/pi;

ejeIMG=sqrt(y.^2+x.^2);

angulo1=ro;

%% Calculo del angulo del Brazo

Hipotenusa=sqrt((z-Altura).^2+(ejeIMG-LongMuneca).^2);


alfa=atan2((z-Altura),(ejeIMG-LongMuneca))*180/pi;

beta=acos((LongBrazo.^2+Hipotenusa.^2-LongAntebrazo.^2)/(2*LongBrazo*Hipotenusa))*180/pi;

angulo2=alfa+beta;

%% Calculo del angulo del Antebrazo

gamma=acos(((LongBrazo.^2)+(LongAntebrazo.^2)-(Hipotenusa.^2))/(2*LongBrazo*LongAntebrazo))*180/pi;

angulo3=gamma;

%% Calculo del angulo de la Muñeca

theta=-90+gamma+beta+alfa;

angulo4=180-theta;







