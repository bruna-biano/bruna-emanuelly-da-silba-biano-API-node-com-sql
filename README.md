# API REST com Node.js e MySQL

**Aluna:** Bruna Emanuelly Da Silva Biano
**Turma:** 3 DS-N

Projeto desenvolvido para a atividade prática de Programação Web III (PW3). A aplicação disponibiliza operações CRUD (criar, listar, atualizar e excluir) para usuários, utilizando Node.js, Express e MySQL, com consultas SQL parametrizadas e sem ORM.

## Tecnologias utilizadas

- Node.js
- Express
- MySQL
- mysql2 (driver com suporte a Promises)
- dotenv
- cors

## Requisitos

- Node.js e npm instalados
- MySQL Server instalado e em execução
- Um cliente MySQL, como MySQL Workbench (opcional)

## 1. Baixar o projeto e instalar dependências

Clone o repositório e entre na pasta:

```bash
git clone URL_DO_SEU_REPOSITORIO
cd NOME_DA_PASTA
npm install
```

## 2. Criar o banco de dados

Abra o MySQL Workbench ou o terminal do MySQL e execute todo o conteúdo do arquivo `schema.sql`. O script cria o banco `atividade_api`, a tabela `usuarios` e dois registros de exemplo.

## 3. Configurar as variáveis de ambiente

Faça uma cópia do arquivo `.env.example`, renomeie a cópia para `.env` e informe os dados do seu MySQL:

```env
PORT=3000
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=sua_senha
DB_NAME=atividade_api
DB_PORT=3306
```

Substitua `sua_senha` pela senha configurada no seu MySQL. O arquivo `.env` não deve ser enviado ao GitHub, pois contém credenciais. Ele já está protegido pelo `.gitignore`.

## 4. Executar a API

Para iniciar o servidor:

```bash
npm start
```

A API ficará disponível em `http://localhost:3000`.

Para desenvolvimento com reinicialização automática:

```bash
npm run dev
```

## 5. Rotas disponíveis

| Método | Rota | Função |
|---|---|---|
| GET | `/usuarios` | Lista todos os usuários |
| POST | `/usuarios` | Cadastra um usuário |
| PUT | `/usuarios/:id` | Atualiza um usuário pelo ID |
| DELETE | `/usuarios/:id` | Exclui um usuário pelo ID |

### Exemplo de cadastro (POST)

Envie uma requisição para `http://localhost:3000/usuarios`, com o cabeçalho `Content-Type: application/json` e o corpo:

```json
{
  "nome": "Maria Oliveira",
  "email": "maria@example.com",
  "idade": 20
}
```

### Exemplo de atualização (PUT)

Envie para `http://localhost:3000/usuarios/1`:

```json
{
  "nome": "Maria Oliveira",
  "email": "maria.novo@example.com",
  "idade": 21
}
```

### Exemplo de exclusão (DELETE)

Envie uma requisição DELETE para `http://localhost:3000/usuarios/1`.

## Segurança e tratamento de erros

Todas as consultas que recebem dados da requisição utilizam placeholders (`?`) e parâmetros separados, evitando interpolação direta de valores no SQL. As rotas utilizam `try/catch` e retornam códigos HTTP adequados, incluindo `200`, `201`, `404` e `500`. Também há validação básica dos campos obrigatórios e do ID.

## Estrutura de pastas

```text
.
├── src/
│   ├── db.js
│   └── server.js
├── .env.example
├── .gitignore
├── package.json
├── README.md
└── schema.sql
```
