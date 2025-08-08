version: '3.8'

services:
  postgres:
    image: postgres:14
    container_name: postgres_cadastro
    restart: always
    environment:
      POSTGRES_USER: postgres
      POSTGRES_PASSWORD: 123456
      POSTGRES_DB: cadastro_pessoas
    ports:
      - "5432:5432"
    volumes:
      - postgres_data:/var/lib/postgresql/data

volumes:
  postgres_data:
