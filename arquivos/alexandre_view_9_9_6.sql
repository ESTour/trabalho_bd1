CREATE VIEW BEST_MEDIA AS SELECT PONTOTURISTICO.NOME_PONTOTURISTICO, PONTOTURISTICO.TIPO_PONTOTURISTICO, PONTOTURISTICO.PUBLICO_ALVO, PONTOTURISTICO.TIPO_AMBIENTE, EVENTO.DESCRICAO_EVENTO, EVENTO.DT_EVENTO, EVENTO.LINK_EVENTO FROM PONTOTURISTICO INNER JOIN EVENTO ON EVENTO.IDPONTOTURISTICO = PONTOTURISTICO.IDPONTOTURISTICO WHERE EVENTO.DT_EVENTO > CURRENT_DATE ORDER BY EVENTO.DT_EVENTO;

SELECT *FROM BEST_MEDIA;