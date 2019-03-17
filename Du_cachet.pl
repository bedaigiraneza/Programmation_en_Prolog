nbtampon(2).
nbtampon(3).
nbtampon(4).
nbtampon(5).
nbtampon(6).

nbeffectif(3).
nbeffectif(4).
nbeffectif(5).
nbeffectif(6).
nbeffectif(7).

anneecreation(1990).
anneecreation(1995).
anneecreation(2000).
anneecreation(2010).

% les noms de societes
solution :- creation( Societes),
			% la creation de la liste de societes en "Societes"

			% indice 1

			nbtampon(NTsopy), nbtampon(NTaguigo), nbtampon(NTacfin),
			NTsopy is NTaguigo+2,
			NTsopy is NTacfin-1,
			membre(societe( sopy, NTsopy, 4,_),Societes),
			membre(societe( aguigo, NTaguigo, _, _),Societes),
			membre(societe( acfin, NTacfin, _,_),Societes),

			%indice 2

			nbtampon(NThimvest),
                        NThimvest is 4,5,6,

                        nbeffectif(DChimvest),
                        DChimvest is -5,
                        nbeffectif(NMsopy),nbeffectif(NMaguigo), nbeffectif(NMacfin),
                        nbeffectif(NMcolshop),nbeffectif(NMhimvest),

                        anneecreation is -5,
                        anneecreation is nbeffectif(5),
                        anneecreation is +10,
                        anneecreation is nbtampon(2),

			%indice 3

                        nbeffectif(NMcolshop) \=3,
                        beffectif(NMcolshop) \=7,

                        %indice 4

                        anneecreation(DTacfin),anneecreation(DTaguigo),
                        anneecreation(DTcolshop),anneecreation(DTsopy),
                        anneecreation(DThimvest),

                        anneecreation() is 1990,
                        nbtampon() is 6,

                        nbeffectif() \=3,


                        print_societes(Societes).


creation( [ societe(acfin, _, _, _),
	   societe(aguigo, _, _, _),
	   societe(colshop, _, _, _),
	   societe(himvest, _, _,  _),
	   societe(sopy, _, _, _) ]).

% la definition du predicat membre

membre(X, [X|_]).
membre(X, [_|Y]) :- membre(X, Y).

% la definition du predicat print_societes

print_societes([]).
print_societes([ T|Q]):-write(T),nl, print_societes(Q).
