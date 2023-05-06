*&---------------------------------------------------------------------*
*& Report ZLEARN_004_POKEMON_SQL
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zlearn_004_pokemon_sql.

DATA: lt_pokemon TYPE STANDARD TABLE OF zlearn_004_pk_db WITH KEY id,
     ls_pokemon TYPE zlearn_004_pk_db.
PARAMETERS: p_id type  zlearn_004_pk_db-id.

* Attribute fuer WHERE-Statement
* ID
* NAME
* ELEMENT
* HP
* ATTACK
* DEFENSE


 SELECT *
 INTO TABLE lt_pokemon
  FROM zlearn_004_pk_db
  WHERE
  id = p_id.

 cl_demo_output=>display( lt_pokemon ).
