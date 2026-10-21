# Lunar Lander Vetorial

Jogo de pouso de nave no estilo do Lunar Lander (Atari, 1979), em um único arquivo HTML ([lunar-lander.html](lunar-lander.html)), feito com Canvas 2D e JavaScript puro. Não usa bibliotecas nem assets externos: gráficos vetoriais, fonte e sons são todos gerados por código.

## Como jogar

Abra `lunar-lander.html` no navegador. Não precisa de servidor.

Pouse numa plataforma plana com velocidade vertical abaixo de 16, horizontal abaixo de 9 e a nave quase na vertical (menos de 8°). Plataformas menores valem mais (x2, x3, x5). Pontos = multiplicador × combustível ÷ 4 + bônus de pouso suave.

## Controles

- **Modo clássico:** ← → giram a nave; ↑ ou Espaço liga o propulsor.
- **Modo arcade:** ← → dão empuxo lateral; ↑ ou Espaço sobe ou freia a queda.
- **Teclas:** P pausa, R reinicia, M liga e desliga o som, G troca a cor (branco ou verde fósforo), Esc volta ao menu.
- **Celular:** botões de toque para esquerda, direita e propulsor, que aparecem no primeiro toque.

## Fases

Os relevos se alternam em ciclo e, a cada volta, a gravidade aumenta e as plataformas encolhem:

1. Lua: planície
2. Lua: crateras
3. Marte: cânions com paredes e torres
4. Marte: montanhas
5. Daí em diante, "Planeta X", com o ciclo recomeçando mais difícil

O combustível é recarregado em parte a cada fase. Destruir a nave custa 200 de combustível, e o jogo acaba quando ele zera. O recorde fica salvo no navegador.

## Planos

Veja [PLANO-PUBLICACAO.md](PLANO-PUBLICACAO.md) para a ideia de uma página única com todos os jogos.
