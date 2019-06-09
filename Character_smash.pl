
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

poder_de(Mario,neutral,bola_de_fuego)
poder_de(Donkey_Kong,neutral,super_puño)
poder_de(Link,neutral,bumerang)
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
