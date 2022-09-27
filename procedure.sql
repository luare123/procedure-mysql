DELIMITER //
CREATE PROCEDURE insere_dados()
BEGIN
	DECLARE erro_sql TINYINT DEFAULT FALSE;
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET erro_sql = TRUE;
START TRANSACTION;
  INSERT INTO produto (descricao, produto, estoque) VALUES ('Touca', 15.99, 24);
  INSERT INTO produto (descricao, produto, estoque) VALUES ('Sandalha', 20.99, 11);
  INSERT INTO produto (descricao, produto, estoque) VALUES ('Jaquela de couro', 99.99, 13);
  INSERT INTO produto (descricao, produto, estoque) VALUES ('Calça sarja', 79.99, 15);
  IF erro_sql = FALSE THEN
    COMMIT;
    SELECT 'Transação feita com sucesso.' AS Resultado;
  ELSE
    ROLLBACK;
    SELECT 'Erro na transação' AS Resultado;
  END IF;
END//
DELIMITER ;