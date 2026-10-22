# Plano: página única para os jogos

Situação (22/10/2026): implementada a opção A, com o tênis no repositório próprio. A página inicial está em `D:\dev\jogos` (repositório `jusgador/jogos`) e publicada em https://jusgador.github.io/jogos/. Para atualizar os jogos, rode `./publicar.sh --push` naquela pasta. Falta o teste num celular de verdade (passo 5 e pendências abaixo).

## Objetivo

Ter uma página inicial onde se escolhe o jogo (Campos Tennis, Lunar Lander e os próximos), publicada no GitHub Pages, sem dar aos jogos destaque na conta `jusgador`, que reúne projetos de trabalho. É um projeto paralelo, para diversão: a estrutura deve ser pequena e fácil de mudar.

## Como está hoje

| Jogo | Pasta local | Repositório | Publicação |
|---|---|---|---|
| Campos Tennis | `D:\dev\Jogo 01` (`tenis.html`, three.js por CDN) | `jusgador/campos-tennis` (público) | Pages, branch `main`, raiz: https://jusgador.github.io/campos-tennis/ |
| Lunar Lander | `D:\dev\Jogo 02` (`lunar-lander.html`, sem dependências) | cópia em `jusgador/jogos` | https://jusgador.github.io/jogos/lander/ |
| Asas de Aço | `D:\dev\Jogo 03` (`index.html`, sem dependências) | cópia em `jusgador/jogos` | https://jusgador.github.io/jogos/asas/ |
| Bruce Lee 64 - A Fortaleza | `D:\dev\Jogo 04` (`index.html`, sem dependências) | cópia em `jusgador/jogos` | https://jusgador.github.io/jogos/fortaleza/ |

- A conta não tem site principal (`jusgador.github.io` na raiz). Outros repositórios públicos já usam Pages de projeto, como as páginas de privacidade.
- O navegador guarda os dados (`localStorage`) por domínio. Todo Pages em `jusgador.github.io/...` tem o mesmo domínio. As chaves não colidem: o tênis usa `bt-*`, o lander usa `lander-*`, Asas de Aço usa `asasDeAco.*` e A Fortaleza usa `bl64_*`. Cada jogo novo deve usar um prefixo próprio.

## Opções

### A. Repositório `jogos` na conta (recomendada)

- O novo repositório público `jusgador/jogos` publica a página inicial em `https://jusgador.github.io/jogos/`, como mais um projeto da conta. A raiz da conta continua livre.
- Estrutura sugerida:
  ```
  jogos/
    index.html          página inicial com um cartão por jogo
    lander/index.html   Lunar Lander
    <proximo>/index.html
  ```
- O tênis pode continuar no repositório dele, com o cartão apontando para `jusgador.github.io/campos-tennis/`. Se um dia quiser tudo junto, dá para levá-lo para `jogos/tenis/` e deixar no `campos-tennis` um `index.html` que redireciona.
- Os dados salvos continuam valendo, porque o domínio é o mesmo.
- No perfil aparece só um repositório novo.

### B. Organização gratuita só para jogos

- Uma organização (por exemplo `campos-jogos`) com site próprio em `campos-jogos.github.io`, separada da conta pessoal.
- Separa tudo, mas o domínio muda. Se o tênis for para lá, os títulos, o histórico e o campeonato salvos no navegador ficam para trás, a menos que se faça uma exportação. É também mais uma coisa para administrar.

### C. Tudo dentro de `campos-tennis`

- Copiar os jogos para o repositório do tênis e trocar o redirecionamento do `index.html` por um menu.
- É o caminho mais rápido, mas o nome e o endereço continuam "campos-tennis" e os projetos se misturam. Descartado, salvo se a pressa pesar.

### Descartado: jogos em `iframe`

O tênis usa WebGPU, tela cheia e toque, que funcionam pior dentro de um quadro. A página inicial deve ter links diretos.

## Página inicial

- Arquivo único, no mesmo estilo dos jogos: HTML, CSS e JS puros, sem dependências.
- Um cartão por jogo, com nome, uma imagem ou um desenho vetorial, uma frase de descrição e um aviso de compatibilidade ("melhor no computador", "funciona no celular").
- A lista de jogos fica num array no topo do arquivo, para que acrescentar um jogo seja editar uma linha.
- Tem que funcionar no celular, com os cartões empilhados.
- Opcional: um link "voltar aos jogos" dentro de cada jogo, só quando o jogo estiver aberto pela página inicial (por exemplo com `?hub=1`), para que cada jogo continue funcionando sozinho.

## Passos para implementar (opção A)

1. Criar o repositório `jusgador/jogos` no GitHub (público) e clonar em `D:\dev\jogos`.
2. Escrever `index.html` com os cartões.
3. Copiar `lunar-lander.html` para `lander/index.html`. O desenvolvimento continua em `D:\dev\Jogo 02`. Para publicar, basta copiar o arquivo, ou criar um script `publicar.sh` que copia e faz o commit.
4. Ligar o Pages no repositório `jogos` (branch `main`, raiz).
5. Testar no computador e no celular: abrir cada jogo, salvar dados, voltar.
6. Atualizar o README do `campos-tennis` com o link para a página inicial (opcional).

## Pendências antes de publicar o Lunar Lander

- Testar num celular de verdade: tamanho do texto, botões cobrindo o terreno, desempenho do brilho.
- Talvez adaptar a ajuda do menu para o toque e pedir tela cheia no celular.
- Jogar as quatro fases à mão para ajustar a dificuldade, principalmente o x5 nos cânions.

## Decisões em aberto

- Opção A ou B.
- Levar ou não o tênis para dentro do `jogos`.
- Nome e endereço da página inicial (`jogos`, `arcade`, `fliperama`...).
