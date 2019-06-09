tiene_propiedad(animales,estan,vivos).
tiene_propiedad(animales,se,reproducen).
tiene_propiedad(animales,se,mueven).
tiene_propiedad(animales,son,simetricos).

tiene_propiedad(vertebrados,tienen,esqueleto).
tiene_propiedad(invertebrado,notiene,esqueleto).

tiene_propiedad(peces,son,acuaticos).
tiene_propiedad(peces,tienen,aletas).
tiene_propiedad(peces,tienen,escamas).
tiene_propiedad(peces,son,oviparos).
tiene_propiedad(peces,pueden,nadar).
tiene_propiedad(peces,tienen,branqueas).

tiene_propiedad(anfibios,son,oviparos).
tiene_propiedad(anfibios,son,ligosos).

tiene_propiedad(reptiles,son,oviparos).
tiene_propiedad(reptiles,se,arrastran).
tiene_propiedad(reptiles,tienen,escamas).
tiene_propiedad(reptiles,son,sangre_fria).
tiene_propiedad(reptiles,tienen,pulmones).

tiene_propiedad(aves,son,oviparos).
tiene_propiedad(aves,pueden,volar).
tiene_propiedad(aves,tienen,plumas).
tiene_propiedad(aves,tienen,pico).
tiene_propiedad(aves,tienen,alas).
tiene_propiedad(aves,tienen,pulmones).

tiene_propiedad(mamiferos,son,sangre_caliente).
tiene_propiedad(mamiferos,tienen,pelo).
tiene_propiedad(mamiferos,se,amamantan).
tiene_propiedad(mamiferos,son,viviparos).
tiene_propiedad(mamiferos,tienen,pulmones).

tiene_propiedad(insectos,tienen,exoesqueleto).
tiene_propiedad(insectos,tienen,antenas).

tiene_propiedad(moluscos,tienen,caparazon).
tiene_propiedad(moluscos,son,blandos).

tiene_propiedad(equinodermos,son,asperos).

tiene_propiedad(esponjas,no_son,simetricas).

tiene_propiedad(tiburon,son,carnivoros).
tiene_propiedad(tiburon,no_son,oviparos).
tiene_propiedad(tiburon,son,ovoviviparos).

tiene_propiedad(payaso,no_son,carnivoros).

tiene_propiedad(cirujano,no_son,carnivoros).


tiene_propiedad(rana,pueden,saltar).
tiene_propiedad(rana,son,insectivoros).
tiene_propiedad(rana,tienen,pulmones).

tiene_propiedad(cobra,son,venenosas).
tiene_propiedad(cobra,son,carnivoras).
tiene_propiedad(cobra,no_tienen,patas).

tiene_propiedad(piton,no_tienen,patas).
tiene_propiedad(piton,pueden,constructar).
tiene_propiedad(piton,son,carnivoras).

tiene_propiedad(iguana,son,herviboro).
tiene_propiedad(iguana,tienen,patas).

tiene_propiedad(halcon,son,carnivoros).

tiene_propiedad(pinguino,son,carnivoros).
tiene_propiedad(pinguino,no_pueden,volar).
tiene_propiedad(pinguino,pueden,nadar).

tiene_propiedad(loro,son,frutivoros).
tiene_propiedad(loro,son,herbivoros).
tiene_propiedad(loro,pueden,hablar).

tiene_propiedad(ballena,son,carnivoros).
tiene_propiedad(ballena,son,acuaticas).
tiene_propiedad(ballena,tienen,aletas).
tiene_propiedad(ballena,no_tienen,pelo).

tiene_propiedad(vaca,son,herviboras).
tiene_propiedad(vaca,tienen,patas).

tiene_propiedad(humano,pueden,hablar).
tiene_propiedad(humano,puede,leer).


incompatible(son(X),no_son(X)).
incompatible(pueden(X),no_pueden(X)).
incompatible(tienen(X),no_tienen(X)).

subclase_de(vertebrados,animales).
subclase_de(invertebrados,animales).

division_de(peces,vertebrados).
division_de(anfibios,vertebrados).
division_de(reptiles,vertebrados).
division_de(aves,vertebrados).
division_de(mamiferos,vertebrados).
division_de(insectos,invertebrados).
division_de(moluscos,invertebrados).
division_de(equinodermos,invertebrados).
division_de(esponjas,invertebrados).

especie_de_los(tiburon,peces).
especie_de_los(payaso,peces).
especie_de_los(cirujano,peces).
especie_de_los(rana,anfibios).
especie_de_los(cobra,reptiles).
especie_de_los(piton,reptiles).
especie_de_los(iguana,reptieles).
especie_de_los(pinguino,aves).
especie_de_los(loro,aves).
especie_de_los(ballena,mamiferos).
especie_de_los(humano,mamiferos).
especie_de_los(vaca,mamiferos).

instancia_de(tiburoncin,tiburon).
instancia_de(pingui,pinguino).
instancia_de(willi,pinguino).
instancia_de(nemo,payaso).
instancia_de(dory,cirujano).
instancia_de(rene,rana).
instancia_de(kaa,cobra).
instancia_de(niagini,piton).
instancia_de(pep,iguana).
instancia_de(moby_dick,ballena).
instancia_de(paco,loro).
instancia_de(eunice,vaca).
instancia_de(krillin,humano).

abarca_a(E,S):-especie_de_los(S,E).
puede_ser(C,S):-subclase_de(S,C).
incluye_a(S,D):-division_de(D,S).
especie_de(E,I):-instancia_de(I,E).

es(D,E,0):-instancia_de(E,D).
es(D,E,PR):-instancia_de(E,D1),
    sub(D,D1,PR).

sub(C1,C2,0):-especie_de_los(C2,C1).
sub(C1,C2,PR):-especie_de_los(C2,C3),
    sub2(C1,C3,PR).

sub2(C1,C2,0):-division_de(C2,C1).
sub2(C1,C2,PR):-division_de(C2,C3),
    sub3(C3,C1,PR).

sub3(C1,C2,1):-subclase_de(C1,C2).
sub3(C1,C2,N):-subclase_de(C1,C3),
    sub3(C3,C2,M),
    N is M+1.

propiedad(E,P,M):- es(D,E,M),
    tiene_propiedad(D,F,A),
    P=..[F,A].

propiedad(E,P):- propiedad(E,P,M),
    \+ incomp(E,P,M).

incomp(E,P,M):-incompatible(P,MM),
    propiedad(E,MM,MN),
    MN=<M.

propiedad2(E,P,M):- sub(D,E,M),
    tiene_propiedad(D,F,A),
    P=..[F,A].

propiedad2(E,P):- propiedad2(E,P,M),
    \+ incomp2(E,P,M).

incomp2(E,P,M):-incompatible(P,MM),
    propiedad2(E,MM,MN),
    MN=<M.

misma_familia(Obj,P):-abarca_a(X,Obj),
    especie_de_los(Y,X),
    P=..[Y],
    Y\=Obj.

misma_division(Obj,P):-incluye_a(X,Obj),
    division_de(Y,X),
    P=..[Y],
    Y\=Obj.

misma_especie(Obj,P):-especie_de(X,Obj),
    instancia_de(Y,X),
    P=..[Y],
    Y\=Obj.


