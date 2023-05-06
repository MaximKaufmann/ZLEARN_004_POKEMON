*&---------------------------------------------------------------------*
*& Include zlearn_004_glumanda
*&---------------------------------------------------------------------*

"Klasse wird als Blaupause genutzt um ein Objekt zu erstellen
DATA(pokemon_glumanda) = NEW zlearn_004_feuer_pokemon( ).

pokemon_glumanda->set_id( iv_id = 2 ).
pokemon_glumanda->set_name( iv_name = 'Glumanda' ).
pokemon_glumanda->set_element( iv_element = 'Feuer' ).
pokemon_glumanda->set_hp( iv_hp = 39 ).
pokemon_glumanda->set_attack( iv_attack = 52 ).
pokemon_glumanda->set_defense( iv_defense = 45 ).


DATA(lv_id2) = pokemon_glumanda->get_id( ).
DATA(lv_name2) = pokemon_glumanda->get_name( ).
DATA(lv_element2) = pokemon_glumanda->get_element(  ).
DATA(lv_hp2) = pokemon_glumanda->get_hp( ).
DATA(lv_attack2) = pokemon_glumanda->get_attack( ).
DATA(lv_defense2) = pokemon_glumanda->get_defense( ).


WRITE: 'Hallo ich bin ein', pokemon_glumanda->lv_name ,  'und habe folgende Attribute:',
/, 'Pokemon ID:', pokemon_glumanda->lv_id,/,'Element:', pokemon_glumanda->lv_element,
/, 'Lebenspunkte' COLOR 6, 'Angriffspunkte' COLOR 3,'Verteidigungswert' COLOR 5,
/, pokemon_glumanda->lv_hp COLOR 6,' ',
   pokemon_glumanda->lv_attack COLOR 3,'   ', pokemon_glumanda->lv_defense COLOR 5.



ULINE.
