CREATE SCHEMA IF NOT EXISTS BASEDATOS;
USE BASEDATOS;

DROP TABLE IF EXISTS agenda;
DROP TABLE IF EXISTS distrito;

CREATE TABLE distrito
 (codigodis                  VARCHAR(3)  NOT NULL,
  nombre                     VARCHAR(45) NOT NULL,
  CONSTRAINT distrito_codigodis_pk PRIMARY KEY (codigodis));
  
CREATE TABLE agenda
 (codigoper                  VARCHAR(3)  NOT NULL,
  nombre                     VARCHAR(45) NOT NULL,
  apellido                   VARCHAR(45) NOT NULL,
  codigodisA                 VARCHAR(30) NOT NULL,
  direccion                  VARCHAR(45),
  telefijo                   VARCHAR(9),
  telemovil                  VARCHAR(9),
  email                      VARCHAR(30),
  fbc                        VARCHAR(30),
  CONSTRAINT agenda_codigoper_pk PRIMARY KEY (codigoper),
  CONSTRAINT agenda_distrito FOREIGN KEY (codigodisA) references distrito(codigodis));

INSERT INTO distrito VALUES ('1', 'CHIMBOTE');
INSERT INTO distrito VALUES ('2', 'NUEVO CHIMBOTE');


INSERT INTO agenda VALUES ('1', 'carlos', 'serna','1','av. palmeras 145',
'043524875', '942587568','carlos@hotmail.com', 'carlos serna');
INSERT INTO agenda VALUES ('2', 'carmen', 'figueroa','2','av. alamos f-5',
'043154784', '943124578','carmen@hotmail.com', 'carmen figeroa');
INSERT INTO agenda VALUES ('3', 'juan', 'perez','1','av.pacaes',
'043758694', '943582674','juan@hotmail.com', 'juan perez');
INSERT INTO agenda VALUES ('4', 'jean', 'ramirez','1','av.pardo 580',
'043587469', '941748596','jean@hotmail.com', 'jean ramirez');
INSERT INTO agenda VALUES ('5', 'melisa', 'cavero','1','av.huaraz 220',
'043152648', '942121415','melisa@hotmail.com', 'melisa cavero');
INSERT INTO agenda VALUES ('6', 'klaus', 'arteaga','2','av.lima 145',
'048757686', '943332524','klaus@hotmail.com', 'klaus arteaga');
INSERT INTO agenda VALUES ('7', 'octavio', 'baldarrago','1','av.galvez 874',
'043584736', '941747485','octavio585@hotmail.com', 'octavio baldarrago');
INSERT INTO agenda VALUES ('8', 'angela', 'suarez','1','av.pardo 1894',
'043252526', '941741212','angela_humilde@hotmail.com', 'angela suarez');
INSERT INTO agenda VALUES ('9', 'antonhy', 'orbegozo','2','av.palmeras 456',
'043151919', '942321212','antonhyelgozo@hotmail.com', 'antonhy orbegozo');
INSERT INTO agenda VALUES ('10', 'giancarlo', 'sarrin','1','av.huaraz 123',
'043411742', '974410547','giancarlosarrines@hotmail.com', 'giancarlo sarrin');
COMMIT;
