// Servidor de teste: serve a raiz do repositório, como o GitHub Pages, sem cache.
// POST com um data URL de PNG grava a imagem em %TEMP%/jogo-shot.png (capturas de tela nos testes).
// Uso: node .claude/servidor.js   →   http://localhost:8765/
const fs = require('fs');
const path = require('path');
const raiz = path.resolve(__dirname, '..');
const tipos = {
  '.html': 'text/html; charset=utf-8', '.js': 'text/javascript', '.css': 'text/css',
  '.json': 'application/json', '.webmanifest': 'application/manifest+json',
  '.png': 'image/png', '.svg': 'image/svg+xml', '.ico': 'image/x-icon',
};

require('http').createServer((req, res) => {
  if (req.method === 'POST') {
    let corpo = '';
    req.on('data', c => corpo += c);
    req.on('end', () => {
      fs.writeFileSync(path.join(process.env.TEMP || raiz, 'jogo-shot.png'), Buffer.from(corpo.split(',')[1], 'base64'));
      res.end('ok');
    });
    return;
  }
  const url = decodeURIComponent(req.url.split('?')[0]);
  let arq = path.join(raiz, url);
  if (!arq.startsWith(raiz)) { res.writeHead(403); return res.end(); }
  if (fs.existsSync(arq) && fs.statSync(arq).isDirectory()) {
    // Sem a barra no fim, os links relativos (../manifest.webmanifest) apontariam para o lugar errado
    if (!url.endsWith('/')) { res.writeHead(301, { Location: url + '/' }); return res.end(); }
    arq = path.join(arq, 'index.html');
  }
  fs.readFile(arq, (erro, dados) => {
    res.writeHead(erro ? 404 : 200, {
      'Content-Type': tipos[path.extname(arq)] || 'application/octet-stream',
      'Cache-Control': 'no-store',
    });
    res.end(erro ? 'Não encontrado' : dados);
  });
}).listen(8765);
