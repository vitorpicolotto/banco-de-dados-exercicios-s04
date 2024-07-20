--Criar tabela categorias com colunas: categoria_id (pk), nome_categoria (50)

create table categorias (
	categoria_id SERIAL primary key,
	nome_categoria VARCHAR(50)
);

-- Add coluna categoria_id à produtos e crie uma chave estrangeira para tabela categorias

ALTER TABLE produtos
ADD COLUMN categoria_id INT;

ALTER TABLE produtos
ADD CONSTRAINT fk_categoria
FOREIGN KEY (categoria_id)
REFERENCES categorias(id);

-- Excluir a tabela categorias

ALTER TABLE produtos
DROP CONSTRAINT fk_categoria; --remover a chave estrangeira para poder excluir

DROP TABLE categorias;