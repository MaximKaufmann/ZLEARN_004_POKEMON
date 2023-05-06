CLASS zlearn_004_wasser_pokemon DEFINITION
  PUBLIC
  INHERITING FROM zlearn_004_basic_pokemon
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    METHODS:
      aquaknarre IMPORTING chosen_pokemon TYPE REF TO zlearn_004_basic_pokemon.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zlearn_004_wasser_pokemon IMPLEMENTATION.
  METHOD aquaknarre.

    DATA:
      lv_damage TYPE i,
      lv_result TYPE i.

    lv_result = 3 + me->lv_attack - chosen_pokemon->lv_defense.

    """"""""""""""""""Schadenmodifikation"""""""""""""""""""""""""
    IF

      lv_result < 0.
      lv_result = 0.
    ELSEIF chosen_pokemon->lv_element = 'Feuer'.
      lv_damage = 1 + lv_result * 2.
    ELSEIF chosen_pokemon->lv_element = 'Pflanze'.
      lv_damage = 1 + lv_result / 2.
    ELSE.
      lv_damage = 1 + lv_result.
    ENDIF.


    """"""""""""""""Schaden wird berechnet""""""""""""""""""""""""

    chosen_pokemon->lv_hp = chosen_pokemon->lv_hp - lv_damage.

    """"""""""""""""""Ausgabe der Werte"""""""""""""""""""""""""""
    WRITE:
    me->lv_name, 'greift', chosen_pokemon->lv_name, 'mit Aquaknarre an!',/.

    """"""""""""""""" Effektivität mit IF-Statement"""""""""""""""
    IF
      lv_result = 0.
      WRITE: 'Es ist nichts passiert',/.
    ELSEIF
     chosen_pokemon->lv_element = 'Feuer'.
      WRITE: 'Es ist sehr effektiv.',/.
    ELSEIF chosen_pokemon->lv_element = 'Pflanze'.
      WRITE: 'Es ist nicht effektiv.',/.
    ELSE.
      WRITE: 'Es ist normal effektiv',/.
    ENDIF.

    WRITE:chosen_pokemon->lv_name,'erhält', lv_damage, 'Schaden',/

    ,chosen_pokemon->lv_name, 'hat verbleibende Lebenspunkte:',chosen_pokemon->lv_hp,/,

    'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx' COLOR 2,/.

    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  ENDMETHOD.
ENDCLASS.
