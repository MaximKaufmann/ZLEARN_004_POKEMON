*&---------------------------------------------------------------------*
*& Include zlearn_004_schiggy
*&---------------------------------------------------------------------*

DATA(pokemon_schiggy) = NEW zlearn_004_wasser_pokemon( ).

pokemon_schiggy->set_id( iv_id = 3 ).
pokemon_schiggy->set_name( iv_name = 'Shiggy' ).
pokemon_schiggy->set_element( iv_element = 'Wasser' ).
pokemon_schiggy->set_hp( iv_hp = 44 ).
pokemon_schiggy->set_attack( iv_attack = 48 ).
pokemon_schiggy->set_defense( iv_defense = 48 ).


DATA(lv_id3) = pokemon_schiggy->get_id( ).
DATA(lv_name3) = pokemon_schiggy->get_name( ).
DATA(lv_element3) = pokemon_schiggy->get_element(  ).
DATA(lv_hp3) = pokemon_schiggy->get_hp( ).
DATA(lv_attack3) = pokemon_schiggy->get_attack( ).
DATA(lv_defense3) = pokemon_schiggy->get_defense( ).


WRITE: 'Hallo ich bin ein', pokemon_schiggy->lv_name ,  'und habe folgende Attribute:',
/, 'Pokemon ID:', pokemon_schiggy->lv_id,/,'Element:', pokemon_schiggy->lv_element,
/, 'Lebenspunkte' COLOR 6, 'Angriffspunkte' COLOR 3,'Verteidigungswert' COLOR 5,
/, pokemon_schiggy->lv_hp COLOR 6,' ', pokemon_schiggy->lv_attack COLOR 3,'   ', pokemon_schiggy->lv_defense COLOR 5.


ULINE.
