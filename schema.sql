-- schema é o código que gera as tabelas
-- e relacionamentos.
-- respeitar as minúsculas e maiúsculas, além
-- da indentação

PRAGMA foreign_keys = ON;
PRAGMA journal_mode = WAL;

CREATE TABLE desenvolvedor ( -- one dev
  id      INTEGER      PRIMARY KEY AUTOINCREMENT,
  nome    TEXT NOT NULL
);

CREATE TABLE jogo ( -- many jogos
  id        INTEGER      PRIMARY KEY AUTOINCREMENT,
  titulo    VARCHAR(100)   NOT NULL,
  jogadores INTEGER        NOT NULL DEFAULT 1,
  -- id_desenvolvedor INTEGER NOT NULL REFERENCES desenvolvedor (id),
  id_desenvolvedor INTEGER NOT NULL,
  CONSTRAINT dev FOREIGN KEY (id_desenvolvedor) REFERENCES desenvolvedor (id)
);

-- CDPR id Cyberpunk 1091500

-- relationships
-- one-to-one (um-para-um)
-- one-to-many (um-para-muitos)
-- many-to-many (muitos-para-muitos)
