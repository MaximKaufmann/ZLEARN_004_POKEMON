*&---------------------------------------------------------------------*
*& Include zlearn_004_bisasam
*&---------------------------------------------------------------------*
*&---------------------------------------------------------------------*

"Klasse wird als Blaupause genutzt um ein Objekt zu erstellen
DATA(pokemon_bisasam) = NEW zlearn_004_pflanzen_pokemon( ).

pokemon_bisasam->set_id( iv_id = 1 ).
pokemon_bisasam->set_name( iv_name = 'Bisasam' ).
pokemon_bisasam->set_element( iv_element = 'Pflanze' ).
pokemon_bisasam->set_hp( iv_hp = 45 ).
pokemon_bisasam->set_attack( iv_attack = 49 ).
pokemon_bisasam->set_defense( iv_defense = 47 ).


DATA(lv_id) = pokemon_bisasam->get_id( ).
DATA(lv_name) = pokemon_bisasam->get_name( ).
DATA(lv_element) = pokemon_bisasam->get_element(  ).
DATA(lv_hp) = pokemon_bisasam->get_hp( ).
DATA(lv_attack) = pokemon_bisasam->get_attack( ).
DATA(lv_defense) = pokemon_bisasam->get_defense( ).


WRITE: 'Hallo ich bin ein', pokemon_bisasam->lv_name ,  'und habe folgende Attribute:',
/, 'Pokemon ID:', pokemon_bisasam->lv_id,/,'Element:', pokemon_bisasam->lv_element,
/, 'Lebenspunkte' COLOR 6, 'Angriffspunkte' COLOR 3,'Verteidigungswert' COLOR 5,
/, pokemon_bisasam->lv_hp COLOR 6,' ', pokemon_bisasam->lv_attack COLOR 3,'   ', pokemon_bisasam->lv_defense COLOR 5.


ULINE.
