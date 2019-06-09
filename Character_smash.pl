
instancia_de(Mario,humano).
instancia_de(Donkey_Kong,mono).
instancia_de(Link,humano) .
instancia_de(Samus,humano) .
instancia_de(Samus,metroid) .
instancia_de(Yoshi,dinosaurio) .
instancia_de(Kirby,pelota) .
instancia_de(Fox,zorro) .
instancia_de(Pikachu,rata) .
instancia_de(Luigi,humano).
instancia_de(Ness,humano) .
instancia_de(Captain_Falcon,humano) .
instancia_de(Jigglypuff,pelota) .

tiene_propiedad_de(Mario,tiene,Narizota) .
tiene_propiedad_de(Luigi,tiene,Narizota) .
tiene_propiedad_de(Donkey_Kong,tiene,Manotas) .
tiene_propiedad_de(Link,tiene,espada) .
tiene_propiedad_de(Link,tiene,escudo) .
tiene_propiedad_de(Samus,tiene,traje) .
tiene_propiedad_de(yoshi,tiene,zapatos) .
tiene_propiedad_de(Ness,tiene,niño) .
tiene_propiedad_de(Captain_Falcon,tiene, vehiculo) .


tiene_propiedad_de(Mario,notiene,Manotas) .
tiene_propiedad_de(Luigi,notiene,Manotas) .
tiene_propiedad_de(Mario,notiene,vehiculo) .
tiene_propiedad_de(Luigi,notiene,vehiculo) .
tiene_propiedad_de(Mario,notiene,espada) .
tiene_propiedad_de(Luigi,notiene,escudo) .
tiene_propiedad_de(Luigi,notiene,traje) .
tiene_propiedad_de(Mario,notiene,traje) .

tiene_propiedad_de(Donkey_Kong,notiene,Narizota) .
tiene_propiedad_de(Donkey_Kong,notiene,vehiculo) .
tiene_propiedad_de(Donkey_Kong,notiene,espada) .
tiene_propiedad_de(Donkey_Kong,notiene,escudo) .
tiene_propiedad_de(Donkey_Kong,notiene,traje) .

tiene_propiedad_de(Link,notiene,Narizota) .
tiene_propiedad_de(Link,notiene,vehiculo) .
tiene_propiedad_de(Link,notiene,Manotas) .
tiene_propiedad_de(Link,notiene,traje) .


tiene_propiedad_de(Samus,notiene,traje) .


tiene_propiedad_de(Samus,notiene,Narizota) .
tiene_propiedad_de(Samus,notiene,vehiculo) .
tiene_propiedad_de(Samus,notiene,espada) .
tiene_propiedad_de(Samus,notiene,escudo) .



tiene_propiedad_de(yoshi,notiene,Narizota) .
tiene_propiedad_de(yoshi,notiene,vehiculo) .
tiene_propiedad_de(yoshi,notiene,espada) .
tiene_propiedad_de(yoshi,notiene,escudo) .
tiene_propiedad_de(yoshi,notiene,traje) .

tiene_propiedad_de(Ness,notiene,Narizota) .
tiene_propiedad_de(Ness,notiene,vehiculo) .
tiene_propiedad_de(Ness,notiene,espada) .
tiene_propiedad_de(Ness,notiene,escudo) .
tiene_propiedad_de(Ness,notiene,traje) .

incompatible(tiene(X),notiene(X)).


subclase_de(Mario,super_mario) .
subclase_de(Donkey_Kong,donkey_kong) .
subclase_de(Link,legend_of_zelda) .
subclase_de(Samus,Metroid) .
subclase_de(Dark_Samus,Metroid) .
subclase_de(Yoshi,Yoshi) .
subclase_de(Kirby,Kirby) .
subclase_de(Fox,star_fox) .
subclase_de(Pikachu,pokemo) .
subclase_de(Luigi,super_mario) .
subclase_de(Ness,earth_boulind) .
subclase_de(Captain_Falcon,f-zero) .
subclase_de(Jigglypuff,pokemo) .

poder_de(Mario,neutral,bola_de_fuego) .
poder_de(Donkey_Kong,neutral,super_puño) .
poder_de(Link,neutral,bumerang) .
poder_de(Samus,neutral,bola_de_electricidad) .
poder_de(yoshi,neutral,Convirte_en_huevo) .
poder_de(Kirby,neutral,traga) .
poder_de(Fox,neutral,dispara) .
poder_de(Pikachu,neutral,trueno) .
poder_de(Luigi,neutral,bola_de_fuego).
poder_de(Ness,neutral,ike_fire) .
poder_de(Captain_Falcon,neutral,super_puño) .
poder_de(Jigglypuff,neutral,rodar) .

neutral(bola_de_fuego,es_proyectil) .
neutral(super_puño,no_es_proyectil) .
neutral(bumerang,es_proyectil) .
neutral(bola_de_electricidad,es_proyectil) .
neutral(Convirte_en_huevo,no_es_proyectil) .
neutral(traga,no_es_proyectil) .
neutral(dispara,es_proyectil) .
neutral(trueno,es_proyectil) .
neutral(ike_fire,es_proyectil) .
neutral(rodar,no_es_proyectil) .

