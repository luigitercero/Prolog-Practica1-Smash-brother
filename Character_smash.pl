
instancia_de(mario,humano).
instancia_de(donkey_kong,mono).
instancia_de(link,humano) .
instancia_de(samus,humano) .
instancia_de(samus,metroid) .
instancia_de(yoshi,dinosaurio) .
instancia_de(kirby,pelota) .
instancia_de(fox,zorro) .
instancia_de(pikachu,rata) .
instancia_de(luigi,humano).
instancia_de(ness,humano) .
instancia_de(captain_falcon,humano) .
instancia_de(jigglypuff,pelota) .

instancia_de(mario,super_mario) .
instancia_de(donkey_kong,donkey_kong) .
instancia_de(link,legend_of_zelda) .
instancia_de(samus,metroid) .
instancia_de(dark_samus,metroid) .
instancia_de(yoshi,yoshi) .
instancia_de(kirby,kirby) .
instancia_de(fox,star_fox) .
instancia_de(pikachu,pokemon) .
instancia_de(luigi,super_mario) .
instancia_de(ness,earth_boulind) .
instancia_de(captain_falcon,f-zero) .
instancia_de(jigglypuff,pokemon) .

subclase_de(super_mario,smash) .
subclase_de(donkey_kong,smash) .
subclase_de(smash,legend_of_zelda) .
subclase_de(metroid,smash) .
subclase_de(smash,yoshi) .
subclase_de(smash,kirby) .
subclase_de(smash,pokemon) .
subclase_de(smash,earth_boulind) .
subclase_de(smash,f-zero) .


tiene_propiedad(humano,tiene,piernas) .
tiene_propiedad(humano,tiene,brazos) .
tiene_propiedad(humano,tiene,pelo) .
tiene_propiedad(humano,tiene,nariz) .

tiene_propiedad(metroid,tiene,piernas) .
tiene_propiedad(metroid,tiene,brazos) .
tiene_propiedad(metroid,tiene,pelo) .
tiene_propiedad(metroid,tiene,nariz) .
tiene_propiedad(metroid,tiene,otro_planeta) .

tiene_propiedad(dinosaurio,tiene,piernas) .
tiene_propiedad(dinosaurio,tiene,reptiles) .

tiene_propiedad(zorro,tiene,pelos) .

tiene_propiedad(pelota,tiene,redonda) .
tiene_propiedad(pokemon,tiene,pokebolas) .

tiene_propiedad(mario,tiene,narizota) .
tiene_propiedad(luigi,tiene,narizota) .
tiene_propiedad(donkey_kong,tiene,manotas) .
tiene_propiedad(link,tiene,espada) .
tiene_propiedad(link,tiene,escudo) .
tiene_propiedad(samus,tiene,traje) .
tiene_propiedad(yoshi,tiene,zapatos) .
tiene_propiedad(ness,tiene,niño) .
tiene_propiedad(captain_falcon,tiene, vehiculo) .


tiene_propiedad(mario,notiene,manotas) .
tiene_propiedad(luigi,notiene,manotas) .
tiene_propiedad(mario,notiene,vehiculo) .
tiene_propiedad(luigi,notiene,vehiculo) .
tiene_propiedad(mario,notiene,espada) .
tiene_propiedad(luigi,notiene,escudo) .
tiene_propiedad(luigi,notiene,traje) .
tiene_propiedad(mario,notiene,traje) .

tiene_propiedad(donkey_kong,notiene,narizota) .
tiene_propiedad(donkey_kong,notiene,vehiculo) .
tiene_propiedad(donkey_kong,notiene,espada) .
tiene_propiedad(donkey_kong,notiene,escudo) .
tiene_propiedad(donkey_kong,notiene,traje) .

tiene_propiedad(link,notiene,narizota) .
tiene_propiedad(link,notiene,vehiculo) .
tiene_propiedad(link,notiene,manotas) .
tiene_propiedad(link,notiene,traje) .


tiene_propiedad(samus,notiene,traje) .


tiene_propiedad(samus,notiene,narizota) .
tiene_propiedad(samus,notiene,vehiculo) .
tiene_propiedad(samus,notiene,espada) .
tiene_propiedad(samus,notiene,escudo) .



tiene_propiedad(yoshi,notiene,narizota) .
tiene_propiedad(yoshi,notiene,vehiculo) .
tiene_propiedad(yoshi,notiene,espada) .
tiene_propiedad(yoshi,notiene,escudo) .
tiene_propiedad(yoshi,notiene,traje) .

tiene_propiedad(ness,notiene,narizota) .
tiene_propiedad(ness,notiene,vehiculo) .
tiene_propiedad(ness,notiene,espada) .
tiene_propiedad(ness,notiene,escudo) .
tiene_propiedad(ness,notiene,traje) .

incompatible(tiene(X),notiene(X)).

poder_de(mario,neutral,bola_de_fuego) .
poder_de(donkey_kong,neutral,super_puño) .
poder_de(link,neutral,bumerang) .
poder_de(samus,neutral,bola_de_electricidad) .
poder_de(yoshi,neutral,convirte_en_huevo) .
poder_de(kirby,neutral,traga) .
poder_de(fox,neutral,dispara) .
poder_de(pikachu,neutral,trueno) .
poder_de(luigi,neutral,bola_de_fuego).
poder_de(ness,neutral,ike_fire) .
poder_de(captain_falcon,neutral,super_puño) .
poder_de(jigglypuff,neutral,rodar) .

neutral(bola_de_fuego,es_proyectil) .
neutral(super_puño,no_es_proyectil) .
neutral(bumerang,es_proyectil) .
neutral(bola_de_electricidad,es_proyectil) .
neutral(convirte_en_huevo,no_es_proyectil) .
neutral(traga,no_es_proyectil) .
neutral(dispara,es_proyectil) .
neutral(trueno,es_proyectil) .
neutral(ike_fire,es_proyectil) .
neutral(rodar,no_es_proyectil) .

%%%%%%%%%%% CONSULTA NO 1. %%%%%%%%%%%%%%% esta consulta muestra a que clase pertenece cada objeto
es(Clase,Obj):- instancia_de(Obj,Clase).

%%%%%%%%%%% CONSULTA NO 2. %%%%%%%%%%%%%%% esta ccosulta muestra a que clases y subclases pertenece cada objetos
es(Clase,Obj):- instancia_de(Obj,Clasep),
                subc(Clasep,Clase).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%% CONSULTA NO 3. %%%%%%%%%%%%%%% muestra la subclase
subc(C1,C2):- subclase_de(C1,C2).
%%%%%%%%%%% CONSULTA NO 4. %%%%%%%%%%%%%%% muestra las clases de las subclases
subc(C1,C2):- subclase_de(C1,C3),
              subc(C3,C2).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%% CONSULTA NO 5. %%%%%%%%%%%%%%% muestra las propiedades de las clases de un objeto

propiedad(Obj,Prop):- es(Clase,Obj),
tiene_propiedad(Clase,Fun,Arg),
Prop =.. [Fun,Arg].

%%%%%%%%%%% CONSULTA NO 6. %%%%%%%%%%%%%%% muestra los poderes de un objeto
hace(Obj,Lanza):-poder_de(Obj,Ty,Act),
    neutral(Act,Proye) ,
Lanza =.. [Ty,Act,Proye] .

%%%%%%%%%%% CONSULTA NO 7. %%%%%%%%%%%%%%% envia la clase y muestra las propieadades que tiene los objetos de la clase
caract(Clase,Pro):-es(Clase,Obj),
  tiene_propiedad(Obj,Fun,Prop) ,
Pro =.. [Obj,Fun,Prop].

%%%%%%%%%%% CONSULTA NO 8. %%%%%%%%%%%%%%% muestra quienes tienen una propiedad de un poder neutral de cada objeto
tipopoder(Form,Out):-neutral(Poder,Form),
  poder_de(Obj,Estado,Poder) ,
Out =.. [Obj,Poder,Estado].

%%%%%%%%%%% CONSULTA NO 9. %%%%%%%%%%%%%%% muestra quienes tienen una propiedad de un poder neutral de cada objeto

esd(Clase,Obj,0):- 
  instancia_de(Obj,Clase).
esd(Clase,Obj,Prio):- 
  instancia_de(Obj,Clasep),
  subcnd(Clasep,Clase,Prio).

subcnd(C1,C2,1):- subclase_de(C1,C2). 
subcn(C1,C2,N):- subclase_de(C1,C3),
subcnd(C3,C2,M), 
N is M+1.

propiedadd(Obj,Prop,Prio):-esd(Clase,Obj,Prio),
tiene_propiedad(Clase,Fun,Arg),
Prop =.. [Fun,Arg].

propiedadd(Obj,Prop):- 
propiedadd(Obj,Prop,Prio),
\+ incomp(Obj,Prop,Prio).

incomp(Obj,Prop,Prio):- 
incompatible(Prop,Propp),
propiedadd(Obj,Propp,Priop),
Priop =< Prio.


%%%%%%%%%%% CONSULTA NO 10. %%%%%%%%%%%%%%% muestra quienes tienen una propiedad de un poder neutral de cada objeto


propiedadm(Obj,Prop):- 
propiedadm(Obj,Prop,Prio),
\+ incomm(Obj,Prop,Prio).

incomm(Obj,Prop,Prio):- 
incompatible(Prop,Propp),
propiedadm(Obj,Propp,Priop),
Priop >= Prio.



