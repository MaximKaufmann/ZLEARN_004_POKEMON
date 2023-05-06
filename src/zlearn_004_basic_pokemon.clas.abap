""""Autor: Duy Khang Hoang alias zlearn-004

CLASS zlearn_004_basic_pokemon DEFINITION
 PUBLIC
 CREATE PUBLIC.
  PUBLIC SECTION.

    DATA:
      lv_id      TYPE i,
      lv_name    TYPE string,
      lv_element TYPE string,
      lv_hp      TYPE i,
      lv_attack  TYPE i,
      lv_defense TYPE i.


    METHODS:

      "Setter and Getter"

      set_id IMPORTING iv_id TYPE i,
      set_name IMPORTING iv_name TYPE string,
      set_element IMPORTING iv_element TYPE string,
      set_hp IMPORTING iv_hp TYPE i,
      set_attack IMPORTING iv_attack TYPE i,
      set_defense IMPORTING iv_defense TYPE i,


      get_id RETURNING VALUE(rv_id) TYPE i,
      get_name RETURNING VALUE(rv_name) TYPE string,
      get_element RETURNING VALUE(rv_element) TYPE string,
      get_hp RETURNING VALUE(rv_hp) TYPE i,
      get_attack RETURNING VALUE(rv_attack) TYPE i,
      get_defense RETURNING VALUE(rv_defense) TYPE i,


      tackle IMPORTING chosen_pokemon TYPE REF TO zlearn_004_basic_pokemon.


  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS zlearn_004_basic_pokemon IMPLEMENTATION.

  "Setter-Methoden werden implementiert"

  METHOD set_id.
    lv_id = iv_id.
  ENDMETHOD.

  METHOD set_name.
    lv_name = iv_name.
  ENDMETHOD.

  METHOD set_element.
    lv_element = iv_element.
  ENDMETHOD.

  METHOD set_hp.
    lv_hp = iv_hp.
  ENDMETHOD.

  METHOD set_attack.
    lv_attack = iv_attack.
  ENDMETHOD.

  METHOD set_defense.
    lv_defense = iv_defense.
  ENDMETHOD.


  "Getter-Methoden werden implementiert"


  METHOD get_id.
    rv_id = lv_id.
  ENDMETHOD.

  METHOD get_name.
    rv_name = lv_name.
  ENDMETHOD.

  METHOD get_element.
    rv_element = lv_element.
  ENDMETHOD.

  METHOD get_hp.
    rv_hp = lv_hp.
  ENDMETHOD.

  METHOD get_attack.
    rv_attack = lv_attack.
  ENDMETHOD.

  METHOD get_defense.
    rv_defense = lv_defense.
  ENDMETHOD.


  "Angriffe werden implementiert"

  METHOD tackle.
    "lv_result ist nur ein Dummy um Schadensmodifikation zu betreiben"
    DATA:
      lv_damage TYPE int1,
      lv_result TYPE int1.

      lv_result = me->lv_attack - chosen_pokemon->lv_defense.
      lv_damage = lv_result.

    IF
      lv_damage < 0.
      lv_damage = 0.
    ENDIF.


    "Schaden wird berechnet"
    chosen_pokemon->lv_hp = chosen_pokemon->lv_hp - lv_damage.


    "Ausgabe der Werte"
    WRITE:
    me->lv_name, 'greift', chosen_pokemon->lv_name, 'mit Tackle an!',/

    , 'Es ist normal effektiv',/

    ,chosen_pokemon->lv_name,'erhält', lv_damage, 'Schaden',/

    ,chosen_pokemon->lv_name, 'hat verbleibende Lebenspunkte:',chosen_pokemon->lv_hp,/.

  ENDMETHOD.

ENDCLASS.
