CREATE VIEW BEST_MEDIA AS SELECT PONTOTURISTICO.NOME_PONTOTURISTICO, AVG(PONTOTURISTICOAVALIACAO.NOTA) AS MEDIA_NOTA FROM PONTOTURISTICO INNER JOIN PONTOTURISTICOAVALIACAO ON PONTOTURISTICO.IDPONTOTURISTICO = PONTOTURISTICOAVALIACAO.IDPONTOTURISTICO GROUP BY PONTOTURISTICO.NOME_PONTOTURISTICO ORDER BY MEDIA_NOTA DESC;
SELECT *FROM BEST_MEDIA;
