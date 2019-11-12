Select nome_pontoturistico, evento.descricao_evento,evento.dt_evento, evento.link_evento, publico_alvo, tipo_ambiente from pontoturistico left outer join evento on (pontoturistico.idpontoturistico = evento.idpontoturistico) where pontoturistico.tipo_ambiente ilike '%praia%' or pontoturistico.tipo_ambiente ilike '%parque%' or pontoturistico.tipo_ambiente ilike '%farol%' and pontoturistico.municipio ilike '%Vitoria%';
