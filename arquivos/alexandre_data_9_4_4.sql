SELECT PONTOTURISTICO.NOME_PONTOTURISTICO, PONTOTURISTICO.TIPO_PONTOTURISTICO, PONTOTURISTICO.PUBLICO_ALVO, PONTOTURISTICO.TIPO_AMBIENTE, AGE(CURRENT_DATE, EVENTO.DT_EVENTO) AS PROXIMO_EVENTO FROM PONTOTURISTICO INNER JOIN EVENTO ON EVENTO.IDPONTOTURISTICO = PONTOTURISTICO.IDPONTOTURISTICO;