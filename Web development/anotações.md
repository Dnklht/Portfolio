# Anotações dos meus estudos de Django

## Passos importantes para um projeto web com Django:

1 -  Criar um ambiente virtual:

Importante para todas as dependências instaladas no projeto ficarem apenas internas, sem impactar em outros projetos.

**- Comando: python -m venv {nome do env}** 

2 - Criar um projeto Django

**- Comando: django-admin startproject {nome do projeto} .**

3 - Criar um app Django

**- Comando: django-admin startapp {nome do app}**

#### Nota: Sempre que criar um app, é necessário registrar ele nos INSTALLED_APPS no arquivo de configuração do **projeto**.
