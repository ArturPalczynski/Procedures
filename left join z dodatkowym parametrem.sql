
--zapytanie które laczy status ze slownikow z statusem wykrojnika po przez dodatkowy parametr  "and sl.slsymbol = 'wystatus'"
Select w.wyknumer, w.wystatus, sl.sldane from wykrojnik w
left join slowniki sl on sl.slsymbnr =  w.wystatus and sl.slsymbol = 'wystatus'
