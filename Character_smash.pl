
instancia_de(mario,humano).
instancia_de(donkey_kong,mono).
instancia_de(link,humano) .
instancia_de(smus,humano) .
instancia_de(smus,metroid) .
instancia_de(yoshi,dinosaurio) .
instancia_de(kirby,pelota) .
instancia_de(fox,zorro) .
instancia_de(pikachu,rata) .
instancia_de(luigi,humano).
instancia_de(ness,humano) .
instancia_de(captain_falcon,humano) .
instancia_de(jigglypuff,pelota) .

tiene_propiedad_de(mario,tiene,narizota) .
tiene_propiedad_de(luigi,tiene,narizota) .
tiene_propiedad_de(donkey_kong,tiene,manotas) .
tiene_propiedad_de(link,tiene,espada) .
tiene_propiedad_de(link,tiene,escudo) .
tiene_propiedad_de(smus,tiene,traje) .
tiene_propiedad_de(yoshi,tiene,zapatos) .
tiene_propiedad_de(ness,tiene,niño) .
tiene_propiedad_de(captain_falcon,tiene, vehiculo) .


tiene_propiedad_de(mario,notiene,manotas) .
tiene_propiedad_de(luigi,notiene,manotas) .
tiene_propiedad_de(mario,notiene,vehiculo) .
tiene_propiedad_de(luigi,notiene,vehiculo) .
tiene_propiedad_de(mario,notiene,espada) .
tiene_propiedad_de(luigi,notiene,escudo) .
tiene_propiedad_de(luigi,notiene,traje) .
tiene_propiedad_de(mario,notiene,traje) .

tiene_propiedad_de(donkey_kong,notiene,narizota) .
tiene_propiedad_de(donkey_kong,notiene,vehiculo) .
tiene_propiedad_de(donkey_kong,notiene,espada) .
tiene_propiedad_de(donkey_kong,notiene,escudo) .
tiene_propiedad_de(donkey_kong,notiene,traje) .

tiene_propiedad_de(link,notiene,narizota) .
tiene_propiedad_de(link,notiene,vehiculo) .
tiene_propiedad_de(link,notiene,manotas) .
tiene_propiedad_de(link,notiene,traje) .


tiene_propiedad_de(smus,notiene,traje) .


tiene_propiedad_de(smus,notiene,narizota) .
tiene_propiedad_de(smus,notiene,vehiculo) .
tiene_propiedad_de(smus,notiene,espada) .
tiene_propiedad_de(smus,notiene,escudo) .



tiene_propiedad_de(yoshi,notiene,narizota) .
tiene_propiedad_de(yoshi,notiene,vehiculo) .
tiene_propiedad_de(yoshi,notiene,espada) .
tiene_propiedad_de(yoshi,notiene,escudo) .
tiene_propiedad_de(yoshi,notiene,traje) .

tiene_propiedad_de(ness,notiene,narizota) .
tiene_propiedad_de(ness,notiene,vehiculo) .
tiene_propiedad_de(ness,notiene,espada) .
tiene_propiedad_de(ness,notiene,escudo) .
tiene_propiedad_de(ness,notiene,traje) .

incompatible(tiene(X),notiene(X)).


subclase_de(mario,super_mario) .
subclase_de(donkey_kong,donkey_kong) .
subclase_de(link,legend_of_zelda) .
subclase_de(smus,metroid) .
subclase_de(dark_smus,metroid) .
subclase_de(yoshi,yoshi) .
subclase_de(kirby,kirby) .
subclase_de(fox,star_fox) .
subclase_de(pikachu,pokemo) .
subclase_de(luigi,super_mario) .
subclase_de(ness,earth_boulind) .
subclase_de(captain_falcon,f-zero) .
subclase_de(jigglypuff,pokemo) .

subclase_de(super_mario,smash) .
subclase_de(donkey_kong,smash) .
subclase_de(legend_of_zelda,smash) .
subclase_de(metroid,smash) .
subclase_de(metroid,smash) .
subclase_de(yoshi,smash) .
subclase_de(kirby,smash) .
subclase_de(star_fox,smash) .
subclase_de(pokemo,smash) .
subclase_de(super_mario,smash) .
subclase_de(earth_boulind,smash) .
subclase_de(f-zero,smash) .
subclase_de(pokemo,smash) .



poder_de(mario,neutral,bola_de_fuego) .
poder_de(donkey_kong,neutral,super_puño) .
poder_de(link,neutral,bumerang) .
poder_de(smus,neutral,bola_de_electricidad) .
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

