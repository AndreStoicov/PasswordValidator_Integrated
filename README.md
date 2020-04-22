# O que é

=====================

Password Validator Integrated - É o teste integrado para validar a API

Critérios:

- Nove ou mais caracteres
- Ao menos 1 dígito
- Ao menos 1 letra minúscula
- Ao menos 1 letra maiúscula
- Ao menos 1 caractere especial

## Tecnologias

- Ruby 2.5
- Cucumber

## Requisitos dev

- VS Code ou RubyMiner
- Ruby SDK

## Executando

- Execute a API Password Validator (pois o teste integrado está consumindo a API Localhost)
- Abra o diretório da aplicação de teste integrado e execute o comando

```sh
$ cucumber features --format html --out reports
```

Um relatorio HTML será gerado, caso não queira fazer todo o setup, o último relatorio está 
na raiz da solução de testes com o nome reports.html
