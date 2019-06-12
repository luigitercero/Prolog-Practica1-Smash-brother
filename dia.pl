digraph finite_state_machine {
	rankdir=LR;
    node [shape = circle];


humano[label="humano"];
mario[label="mario"];
mono[label="mono"];
link[label="link"];
samus[label="samus"];
dinosaurio[label="dinosaurio"];
yoshi[label="yoshi"];
pelota[label="pelota"];
kirby[label="kirby"];
zorro[label="zorro"];
fox[label="fox"];
rata[label="rata"];
pikachu[label="pikachu"];
luigi[label="luigi"];
ness[label="ness"];
captain_falcon[label="captain_falcon"];
jigglypuff[label="jigglypuff"];
super_mario[label="super_mario"];
legend_of_zelda[label="legend_of_zelda"];
metroid[label="metroid"];
dark_samus[label="dark_samus"];
star_fox[label="star_fox"];
pokemon[label="pokemon"];
pikachu[label="pikachu"];
earth_boulind[label="earth_boulind"];
f_zero[label="f_zero"];


humano->mario[ label = "" ];
mono->donkey_kong[ label = "" ];
humano->link[ label = "" ];
humano->samus[ label = "" ];
metroid->samus[ label = "" ];
dinosaurio->yoshi[ label = "" ];
pelota->kirby[ label = "" ];
zorro->fox[ label = "" ];
rata->pikachu[ label = "" ];
humano->luigi[ label = "" ];
humano->ness[ label = "" ];
humano->captain_falcon[ label = "" ];
pelota->jigglypuff[ label = "" ];

super_mario->mario [ label = "" ];
donkey_kong->donkey_kong[ label = "" ];
legend_of_zelda->link[ label = "" ];
metroid->samus[ label = "" ];
metroid->dark_samus[ label = "" ];
yoshi->yoshi[ label = "" ];
kirby->kirby[ label = "" ];
star_fox->fox[ label = "" ];
pokemon->pikachu[ label = "" ];
super_mario->luigi[ label = "" ];
earth_boulind->ness[ label = "" ];
f_zero->captain_falcon[ label = "" ];
pokemon->jigglypuff[ label = "" ];

smash->super_mario[ label = "" ];
smash->donkey_kong[ label = "" ];
smash->legend_of_zelda[ label = "" ];
smash->metroid[ label = "" ];
smash->yoshi[ label = "" ];
smash->kirby[ label = "" ];
smash->pokemon[ label = "" ];
smash->earth_boulind[ label = "" ];
smash->f_zero[ label = "" ];

humano->piernas[ label = "tiene" ];
humano->brazos[ label = "tiene" ];
humano->pelo[ label = "tiene" ];
humano->nariz[ label = "tiene" ];
humano->dinero[ label = "no_tiene" ];

metroid->piernas[ label = "tiene" ];
metroid->brazos[ label = "tiene" ];
metroid->pelo[ label = "tiene" ];
metroid->nariz[ label = "tiene" ];
metroid->dinero[ label = "otro_planeta" ];

dinosaurio->piernas[ label = "tiene" ];
dinosaurio->reptiles[ label = "tiene" ];

zorro->pelos[ label = "tiene" ];
pelota->redonda[ label = "tiene" ];
pokemon->pokebolas[ label = "tiene" ];

mario->narizota[ label = "tiene" ];
luigi->narizota[ label = "tiene" ];
donkey_kong->manotas[ label = "tiene" ];
link->espada[ label = "tiene" ];
link->escudo[ label = "tiene" ];
samus->traje[ label = "tiene" ];
yoshi->zapatos[ label = "tiene" ];
ness->niño[ label = "tiene" ];
captain_falcon-> vehiculo[ label = "tiene" ];


mario->manotas[ label = "no_tiene" ];
luigi->manotas[ label = "no_tiene" ];
mario->vehiculo[ label = "no_tiene" ];
luigi->vehiculo[ label = "no_tiene" ];
mario->espada[ label = "no_tiene" ];
luigi->escudo[ label = "no_tiene" ];
luigi->traje[ label = "no_tiene" ];
mario->traje[ label = "no_tiene" ];

donkey_kong->narizota[ label = "no_tiene" ];
donkey_kong->vehiculo[ label = "no_tiene" ];
donkey_kong->espada[ label = "no_tiene" ];
donkey_kong->escudo[ label = "no_tiene" ];
donkey_kong->traje[ label = "no_tiene" ];

link->narizota[ label = "no_tiene" ];
link->vehiculo[ label = "no_tiene" ];
link->manotas[ label = "no_tiene" ];
link->traje[ label = "no_tiene" ];


samus->traje[ label = "no_tiene" ];


samus->narizota[ label = "no_tiene" ];
samus->vehiculo[ label = "no_tiene" ];
samus->espada[ label = "no_tiene" ];
samus->escudo[ label = "no_tiene" ];



yoshi->narizota[ label = "no_tiene" ];
yoshi->vehiculo[ label = "no_tiene" ];
yoshi->espada[ label = "no_tiene" ];
yoshi->escudo[ label = "no_tiene" ];
yoshi->traje[ label = "no_tiene" ];

ness->narizota[ label = "no_tiene" ];
ness->vehiculo[ label = "no_tiene" ];
ness->espada[ label = "no_tiene" ];
ness->escudo[ label = "no_tiene" ];
ness->traje[ label = "no_tiene" ];


mario->bola_de_fuego[ label = "neutral" ];
donkey_kong->super_puño[ label = "neutral" ];
link->bumerang[ label = "neutral" ];
samus->bola_de_electricidad[ label = "neutral" ];
yoshi->convirte_en_huevo[ label = "neutral" ];
kirby->traga[ label = "neutral" ];
fox->dispara[ label = "neutral" ];
pikachu->trueno[ label = "neutral" ];
luigi->bola_de_fuego[ label = "neutral" ];
ness->ike_fire[ label = "neutral" ];
captain_falcon->super_puño[ label = "neutral" ];
jigglypuff->rodar[ label = "neutral" ];

es_proyectil->bola_de_fuego[ label = "neutral" ];
es_proyectil->super_puño[ label = "neutral" ];
es_proyectil->bumerang[ label = "neutral" ];
es_proyectil->bola_de_electricidad[ label = "neutral" ];
es_proyectil->convirte_en_huevo[ label = "neutral" ];
es_proyectil->traga[ label = "neutral" ];
es_proyectil->dispara[ label = "neutral" ];
es_proyectil->trueno[ label = "neutral" ];
es_proyectil->ike_fire[ label = "neutral" ];
es_proyectil->rodar[ label = "neutral" ];

}