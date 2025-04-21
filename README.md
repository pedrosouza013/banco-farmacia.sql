CREATE TABLE clientes 
( 
); 

CREATE TABLE festas 
( 
 idclientes INT,  
); 

CREATE TABLE pix_cartaocredito_boleto_pagamento 
( 
 codigo-pix INT,  
 endereco INT,  
 cpf INT,  
 nome do cartão INT,  
 data_vencimento INT,  
 cod_barras INT,  
 idclientes INT,  
 idfestas INT,  
); 

ALTER TABLE festas ADD FOREIGN KEY(idclientes) REFERENCES clientes (idclientes)
ALTER TABLE pix_cartaocredito_boleto_pagamento ADD FOREIGN KEY(idclientes) REFERENCES clientes (idclientes)
ALTER TABLE pix_cartaocredito_boleto_pagamento ADD FOREIGN KEY(idfestas) REFERENCES festas (idfestas)
