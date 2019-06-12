es(Clase,Obj):- instancia_de(Obj,Clase).
es(Clase,Obj):- instancia_de(Obj,Clasep), subc(Clasep,Clase).

subc(C1,C2):- subclase_de(C1,C2).
subc(C1,C2):- subclase_de(C1,C3), subc(C3,C2).

propiedad(Obj,Prop):- es(Clase,Obj),
tiene_propiedad(Clase,Fun,Arg),
Prop =.. [Fun,Arg].



