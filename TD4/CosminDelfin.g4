grammar CosminDelfin;

start: 
	(propozitie) (propif) ? end	;
	





propozitie:
	(declarare sfarsitlinie)+;

declarare: 
	var '=' var	|	var '=' nr;






propif:
	(if)+;

if:
	'iff' cond da (nu) ? ifendl;

cond:
	'<' ifvar '>';

ifvar:	ifconditie	|	nu ifconditie;

ifconditie:	(nr|var) op (nr|var);


da:'true' (declarare sfarsitlinie);
	
nu:'false' (declarare sfarsitlinie);
	





	
var: lit*;
	
nr: '-'? INT	| 	'-'? INT '.' INT;
	
fragment INT: [0-9]+;

nu: '!';

op:'<'	|	'>'	;


sfarsitlinie:'endl'
;

ifendl: 'endlif'
;
	
lit: [a-zA-Z]
;

spatii: [\t\r\n]+ -> skip
;

end: 'end'
;






end
