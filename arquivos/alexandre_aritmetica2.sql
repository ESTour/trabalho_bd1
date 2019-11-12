Select pontoturistico.nome_pontoturistico as Ponto_Turistico, count(historicovisita.idturista) + count(pontoturisticoavaliacao.idturista) as Popularidade from pontoturistico inner join historicovisita on (pontoturistico.idpontoturistico = historicovisita.idpontoturistico) inner join pontoturisticoavaliacao on (pontoturistico.idpontoturistico = pontoturisticoavaliacao.idpontoturistico) inner join turista on(historicovisita.idturista = turista.idturista) where turista.sexo ilike '%feminino%' and (historicovisita.dt_visita < now() - '2 weeks'::interval or pontoturisticoavaliacao.dt_avaliacao < now() - '2 weeks'::interval) group by nome_pontoturistico order by count(historicovisita.idturista) + count(pontoturisticoavaliacao.idturista) desc