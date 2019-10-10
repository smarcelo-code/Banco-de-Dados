IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'RetornarEnderecoEscola' AND xtype = 'FN')
    DROP FUNCTION RetornarEnderecoEscola

GO

CREATE FUNCTION RetornarEnderecoEscola
(
@IdEscola INT
)

RETURNS VARCHAR (100)

BEGIN 

DECLARE @EnderecoInsti VARCHAR(100)

SELECT @EnderecoInsti = ISNULL(Bairro, '') + ' ' + ISNULL(Rua,'')

FROM Escola WHERE IdEscola = @IdEscola

Return @EnderecoInsti

END

-- Para essa function foram criadas variáveis nela para que absorvesse os dados das
-- tabelas, bem como @EnderecoInsti possui 2 colunas da tabela Instituicao
-- compara o Id's e retorna a variável local
