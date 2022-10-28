Agua = readtable('agua.xlsx');
Sectores = readtable('sectores.xlsx');

%% Sector Industrial
Minero1 = Sectores(:,3);
Minero = table2array(Minero1);
EA1 = Sectores(:,4);
EA = table2array(EA1);
Cons1 = Sectores(:,5);
Cons = table2array(Cons1);
Man1 = Sectores(:,6);
Man = table2array(Man1);
ActS1 = Sectores(:,2);
ActS = table2array(ActS1);
t1 = Sectores(:,1);
t = table2array(t1);

%% Agua
Pot1 = Agua(:,3);
Pot = table2array(Pot1);
sinPot1 = Agua(:,6);
sinPot = table2array(sinPot1);
entd1 = Agua(:,6);
entd = table2array(entd1);
entf1 = Agua(:,6);
entf = table2array(entf1);
S1 = Agua(:,1);
S = table2array(S1);

%% Grafica Sector Industrial

figure
sgtitle("Sector Minero y de Construccion")
plot(Minero,'-','color',"black")
xlabel("2020")
ylabel("Indice")
hold on
plot(Cons,'-','color',"blue")
hold off
legend('Minero','Construccion')

figure
sgtitle("Sector Minero y de Manufactura")
plot(Minero,'-','color',"black")
xlabel("2020")
ylabel("Indice")
hold on
plot(Man,'-','color',"red")
hold off
legend('Minero','Manufactura')

figure
sgtitle("Sector Minero y de Generacion de energia electrica y suministro de agua y gas")
plot(Minero,'-','color',"black")
xlabel("2020")
ylabel("Indice")
hold on
plot(EA,'-','color',"green")
hold off
legend('Minero','Generacion de energia electrica y suministro de agua y gas')

figure
sgtitle("Sector Minero y de Actividades secundarias")
plot(Minero,'-','color',"green")
xlabel("2020")
ylabel("Indice")
hold on
plot(ActS,'-','color',"magenta")
hold off
legend('Minero','Actividades secundarias')


%% Grafica Sector Agua
mPot = mean(Pot);
SPot = mean(sinPot);
Entd = mean(entd);
Entf = mean(entf);
figure
sgtitle("Disponibilidad de Agua Potable en la Poblacion [2020]")
bar(mPot)
hold on
bar(SPot)
hold off
legend("Con Agua Potable","Sin Agua Potable")

figure
sgtitle("Disponibilidad de Agua entubada en la vivienda [2020]")
bar(Entd)
hold on
bar(Entf)
hold off
legend("Dentro de la Vivienda","Fuera de la Vivienda")

%% Analisis Estadistico Descriptivo
figure
histogram(EA)
sgtitle("Generacion de Energia Electrica y Suministro de Agua y Gas")
figure
histogram(Minero)
sgtitle("Sector Minero")
figure
histogram(Pot)
sgtitle("Poblacion con Agua Entubada")
figure
histogram(sinPot)
sgtitle("Poblacion Sin Agua Entubada")

%% Variacion Estandar
V_minero = var(Minero);
V_construccion = var(Cons);
V_manufactura = var(Man);
V_actsec = var(ActS);
vari = table(V_minero, V_construccion, V_manufactura, V_actsec);
disp(vari)

V_AguaEntubada = var(Pot);
V_SinAguaEntubada = var(sinPot);
V_DentroVivienda = var(entd);
V_FueraVivienda = var(entf);
vari2 = table(V_AguaEntubada,V_SinAguaEntubada,V_DentroVivienda,V_FueraVivienda);
disp(vari2)

%% Media
M_minero = mean(Minero);
M_construccion = mean(Cons);
M_manufactura = mean(Man);
M_actsec = mean(ActS);
med = table(M_minero,M_construccion,M_manufactura,M_actsec);
disp(med)

M_Con_Agua_Entubada = mean(Pot);
M_Sin_Agua_Entubada = mean(sinPot);
M_Dentro_Vivienda = mean(entd);
M_Fuera_Vivienda = mean(entf);
med2 = table(M_Con_Agua_Entubada,M_Sin_Agua_Entubada,M_Dentro_Vivienda,M_Fuera_Vivienda);
disp(med2)


