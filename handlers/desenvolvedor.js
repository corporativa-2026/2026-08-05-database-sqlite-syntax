// eslint-disable-next-line id-length
import db from '../db/Database.js';

export async function create(request, response) {
  const body = await readBody(request);

  const { nome } = JSON.parse(body);

  const stmt = db.prepare('INSERT INTO desenvolvedor (nome) VALUES (?)');

  const ret = stmt.run(nome);

  console.log(ret);

  response.statusCode = 201;
  response.writeHead(201, {
    'Content-Type': 'application/json',
  });
  response.end();
}

async function readBody(request) {
  return new Promise((resolve, reject) => {
    let body = '';
    request.on('data', (chunk) => body += chunk);
    request.on('end', () => resolve(body));
    request.on('error', reject);
  });
}
