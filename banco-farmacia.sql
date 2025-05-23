# banco-farmacia.sql -- Tabela FARMACIA
CREATE TABLE IF NOT EXISTS FARMACIA (
    id_farmacia INTEGER PRIMARY KEY AUTOINCREMENT
);

-- Tabela FARMACEUTICO
CREATE TABLE IF NOT EXISTS FARMACEUTICO (
    RG_farmaceutico VARCHAR(15) PRIMARY KEY,
    nome_farmaceutico VARCHAR(100) NOT NULL,
    id_farmacia INTEGER,
    FOREIGN KEY (id_farmacia) REFERENCES FARMACIA(id_farmacia) ON DELETE SET NULL ON UPDATE CASCADE
);

-- Tabela PRODUTO
CREATE TABLE IF NOT EXISTS PRODUTO (
    cod_produto INTEGER PRIMARY KEY,
    qtd_produto INTEGER NOT NULL,
    valor_produto DECIMAL(10, 2) NOT NULL,
    id_farmacia INTEGER,
    FOREIGN KEY (id_farmacia) REFERENCES FARMACIA(id_farmacia) ON DELETE CASCADE ON UPDATE CASCADE
);
