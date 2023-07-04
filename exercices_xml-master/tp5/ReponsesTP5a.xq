(: Exercice 3.1 : Longueur de la Tamise "Thames" :)
(:
/river[@name='Thames']/@length

:)


(: Exercice 3.2 : Capitale du Mali :)
(:
/country[@name='Mali']/@capital

:)


(: Exercice 3.3 : Îles du Japon :)
(:
/sea[@name='Sea of Japan']/located[@country='f0_358']/@province
:)


(: Exercice 3.4 : Mer la plus profonde :)
(:
/sea[not(../sea/@depth > @depth)]/@name

:)


(: Exercice 3.5 : Pays qui n'appartiennent à aucune organisation :)
(:
//country[not(//@country = current()/@country)]

:)


(: Exercice 3.6 : Classement des pays par mortalité infantile :)
(:
//country
  [infant_mortality]
  [not(infant_mortality = 'NaN')]
  [not(infant_mortality = 'N.A.')]
  [not(infant_mortality = 'unknown')]
  [not(infant_mortality = 'unavailable')]
  [not(infant_mortality = 'NA')]
  [not(infant_mortality = 'n.a.')]
  [not(infant_mortality = 'na')]
  [not(infant_mortality = 'N/A')]
  [not(infant_mortality = 'Unknown')]
  [not(infant_mortality = 'Unavailable')]
  [not(infant_mortality = 'UNAVAILABLE')]
  [not(infant_mortality = 'NULL')]
  [not(infant_mortality = 'Null')]
  [not(infant_mortality = '')]
order by number(infant_mortality)

:)


(: Exercice 3.7 : Pays bordés par au moins 3 océans ou mers :)
(:
//country
  [count(//border[@type='sea']) >= 3]

:)

