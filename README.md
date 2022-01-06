A branch master contém os testes de front,já a branch teste_API contém os cenários de back.

Comando para rodar os testes de API

npm install && npx newman run ./Web.postman_collection.json -e ./DesafioOnline.postman_environment.json -r cli,htmlextra
