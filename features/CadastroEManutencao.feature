Scenario: Cadastro de Usuario Nao Realizado (campo obrigatorio vazio)
   Given que o usuario esta na pagina de cadastro
   And seja escolhida a opção de entregador
   When o usuário preenche os dados CNH "12345678910" e Nome completo ""
   Then o cadastro nao é realizado e aparece a mensagem "campo obrigatorio vazio"
 
Scenario: Atualizacao de Usuario Realizada
   Given que o usuario esta na pagina de perfil
   And seja escolhida a opção editar
   When o usuário altera o telefone para "81123456789"
   And o usuario confima a senha "senhacorreta"
   Then telefone é alterado e aparece a mensagem "informacoes atualizadas com sucesso"

