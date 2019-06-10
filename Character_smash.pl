
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


subclase_de(mario,super_mario) .
subclase_de(donkey_kong,donkey_kong) .
subclase_de(link,legend_of_zelda) .
subclase_de(samus,metroid) .
subclase_de(dark_samus,metroid) .
subclase_de(yoshi,yoshi) .
subclase_de(kirby,kirby) .
subclase_de(fox,star_fox) .
subclase_de(pikachu,pokemon) .
subclase_de(luigi,super_mario) .
subclase_de(ness,earth_boulind) .
subclase_de(captain_falcon,f-zero) .
subclase_de(jigglypuff,pokemon) .




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

es(Clase,Obj):- instancia_de(Obj,Clase).
es(Clase,Obj):- instancia_de(Obj,Clasep),
                subc(Clasep,Clase).

subc(C1,C2):- subclase_de(C1,C2).
subc(C1,C2):- subclase_de(C1,C3),
              subc(C3,C2).
propiedad(Obj,Prop):-
tiene_propiedad(Clase,Fun,Arg),
Prop =.. [Fun,Arg].



