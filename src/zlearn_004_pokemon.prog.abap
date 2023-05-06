*&---------------------------------------------------------------------*
*& Report zlearn_004_pokemon
*&---------------------------------------------------------------------*
*& Autor: Duy Khang zlearn_004
*&---------------------------------------------------------------------*
REPORT zlearn_004_pokemon.




" Bisasam wird durch die Klasse erstellt und gibt Text aus"

INCLUDE zlearn_004_bisasam.
INCLUDE zlearn_004_glumanda.
INCLUDE zlearn_004_schiggy.

" Die Pokemons besitzen alle die Fähigkeit "Tackle"

" Bisasam besitzt die Fähigkeit "Rankenhieb"

" Glumanda besitzt die Fähigkeit "Glut"

" Schiggy besitzt die Fähigkeit "Aquaknarre"

" chosen_pokemon = pokemon_'Name' ist der Import Parameter


pokemon_glumanda->glut( chosen_pokemon = pokemon_schiggy ).
