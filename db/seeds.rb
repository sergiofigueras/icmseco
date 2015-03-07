Usuario.destroy_all
Acao.destroy_all
Documento.destroy_all
Arquivo.destroy_all

Usuario.create!({nome: 'Sergio', sobrenome: 'Figueras', email: 'sergio@sergio.com', password: '123123123', password_confirmation: '123123123', admin: true, agricultura: true, destinacao_residuos_solidos: true, saneamento_basico: true, unidades_conservacao: true, pmma: true, ccq: true})
Usuario.create!({nome: 'Naturals', sobrenome: 'Consultorias', email: 'naturalsconsultorias@gmail.com', password: '123123123', password_confirmation: '123123123', admin: false, avaliacao: true})

###################
# PMMA
###################
acao1 = Acao.create!({tipo: 'pmma', nome: 'Instituição da Secretaria Municipal de Meio Ambiente', desc: 'Elaborar uma lei que institui a Secretaria Municipal de Meio Ambiente. Fazer um decreto de nomeação do secretário e demais técnicos da área.', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Cópia da lei de criação da Secretaria Municipal de Meio Ambiente', acao: acao1})
  documento2 = Documento.create!({nome: 'Termo de nomeação do secretário de meio Ambiente', acao: acao1})
  documento3 = Documento.create!({nome: 'Termo de Nomeação dos demais técnicos', acao: acao1})

acao2 = Acao.create!({tipo: 'pmma', nome: 'Regulamentação da Política Municipal do Meio Ambiente', desc: 'Fazer um decreto que regulamenta a Lei da Política Municipal de Meio Ambiente. Elaborar Plano de Trabalho de execução da Política Municipal de Meio Ambiente.', prazo: Time.local(Time.now.year, 1, 15)})
  documento1 = Documento.create!({nome: 'Decreto que regulamenta a PMMA', acao: acao2})
  documento2 = Documento.create!({nome: 'Plano de Trabalho da PMMA', acao: acao2})

acao3 = Acao.create!({tipo: 'pmma', nome: 'Instituição do Conselho Municipal de Meio Ambiente', desc: 'Criar uma lei que institui o Conselho Municipal de Meio Ambiente; Fazer um decreto de nomeação dos membros do conselho (atual); Elaborar atas, lista de presença e fotos das reuniões do conselho; Publicar o Regimento Interno do CMMA.', prazo: Time.local(Time.now.year, 8, 1)})
  documento1 = Documento.create!({nome: 'Ato de criação do CMMA', acao: acao3})
  documento2 = Documento.create!({nome: 'Decreto de nomeação dos membros do conselho', acao: acao3})
  documento3 = Documento.create!({nome: 'Termo de posse dos conselheiros', acao: acao3})
  documento4 = Documento.create!({nome: 'Cópia de atas de reuniões (assinadas)', acao: acao3})
  documento5 = Documento.create!({nome: 'Fotos das reuniões datadas', acao: acao3})
  documento6 = Documento.create!({nome: 'Cópia da lista de presença das reuniões', acao: acao3})
  documento7 = Documento.create!({nome: 'Cópia das deliberações', acao: acao3})
  documento8 = Documento.create!({nome: 'Regimento Interno do CMMA', acao: acao3})

acao4 = Acao.create!({tipo: 'pmma', nome: 'Fundo Municipal do Meio Ambiente', desc: 'Criar lei que institui o Fundo Municipal de Meio Ambiental; Fazer decreto de regulamentação do Fundo; Fazer decreto de nomeação dos membros do Conselho Gestor.', prazo: Time.local(Time.now.year, 8, 1)})
  documento1 = Documento.create!({nome: 'Cópia da lei municipal de criação do fundo', acao: acao4})
  documento2 = Documento.create!({nome: 'Cópia de lei e/ou decreto de regulamentação do fundo', acao: acao4})
  documento3 = Documento.create!({nome: 'Cópia do termo de posse dos conselheiros', acao: acao4})

acao5 = Acao.create!({tipo: 'pmma', nome: 'Projeto Político Pedagógico', desc: 'Dentro do Projeto Político Pedagógico deve haver um capítulo ou até mesmo um tópico que discuta sobre Educação Ambiental; Dentro das ações do PPP devem ter atividades voltadas para a preservação do meio ambiente, conscientização ambiental, educação ambiental;', prazo: Time.local(Time.now.year, 8, 1)})
  documento1 = Documento.create!({nome: 'Projeto Político Pedagógico', acao: acao5})

acao6 = Acao.create!({tipo: 'pmma', nome: 'Plano Municipal de Educação Ambiental', desc: 'Criar uma lei que institui o Plano Municipal de Educação Ambiental', prazo: Time.local(Time.now.year, 8, 1)})
  documento1 = Documento.create!({nome: 'Ato legal de instituição do PMEA', acao: acao6})
  documento2 = Documento.create!({nome: 'Cópia do PMEA', acao: acao6})

acao7 = Acao.create!({tipo: 'pmma', nome: 'Educação Ambiental na Mídia', desc: 'Desenvolver campanhas de Educação Ambiental na mídia (TV’s, rádio, sites e jornais); Divulgar as ações desenvolvidas no município; Criar dentro do site da prefeitura uma pagina que divulgue as ações de educação ambiental, desenvolvidas; Anuncio em carros de som, rádio demais redes de comunicação sobre alguma atividade que será realizada, como por exemplo: mutirão de limpeza da cidade; semana do meio ambiente; semana da água; sobre resíduos sólidos, etc.', prazo: Time.local(Time.now.year, 3, 1)})
  documento1 = Documento.create!({nome: 'Materiais de divulgação produzidos para os meios de comunicação pela prefeitura', acao: acao7})
  documento2 = Documento.create!({nome: 'Notas Fiscais', acao: acao7})

acao8 = Acao.create!({tipo: 'pmma', nome: 'Atividades Ambientais', desc: 'Desenvolver dia de campo com os alunos sendo crianças, adolescentes ou adultos; Realizar a semana do meio ambiente; Realizar oficinas (reciclagem, reaproveitamento de materiais, artesanato, ervas medicinais, etc.), seminários abordando temas culturais e ambientais; Realizar mobilizações, passeatas, passeio ciclístico, atividades culturais; Realizar palestras sobre meio ambiente, preservação, educação ambiental, resíduos sólidos, etc.', prazo: Time.local(Time.now.year, 3, 1)})
  documento1 = Documento.create!({nome: 'Relatórios', acao: acao8})
  documento2 = Documento.create!({nome: 'Fotos datadas', acao: acao8})
  documento3 = Documento.create!({nome: 'Notas Fiscais', acao: acao8})

acao9 = Acao.create!({tipo: 'pmma', nome: 'Parcerias', desc: 'Procurar firmar parcerias com instituições locais, bem como também organizações da sociedade civil, para o desenvolvimento de atividades culturais e ambientais. Ex: Naturatins, Ruraltins, Embrapa, Senac, Sebrae, Escolas, etc.', prazo: Time.local(Time.now.year, 3, 1)})
  documento1 = Documento.create!({nome: 'Projetos', acao: acao9})
  documento2 = Documento.create!({nome: 'Convênios', acao: acao9})
  documento3 = Documento.create!({nome: 'Termos de Parceria', acao: acao9})
  documento3 = Documento.create!({nome: 'Termos de Cooperação Técnica', acao: acao9})
  documento3 = Documento.create!({nome: 'Relatórios e registros fotográficos', acao: acao9})

acao10 = Acao.create!({tipo: 'pmma', nome: 'Instituição da Agenda 21', desc: 'Criar ou apresentar Lei que institui a Agenda 21; Realizar o Fórum de discussão da Agenda 21; Caso não tenha pessoal para realizar essas atividades, solicitar ajuda externa, ex: Naturals.', prazo: Time.local(Time.now.year, 2, 1)})
  documento1 = Documento.create!({nome: 'Cópias da lei ou decreto de Criação', acao: acao10})
  documento1 = Documento.create!({nome: 'Listas de Presença', acao: acao10})
  documento2 = Documento.create!({nome: 'Atas de Reuniões', acao: acao10})
  documento3 = Documento.create!({nome: 'Fotos Datadas', acao: acao10})
  documento4 = Documento.create!({nome: 'Programação do Evento', acao: acao10})
  documento5 = Documento.create!({nome: 'Relatório do planejamento participativo', acao: acao10})

acao11 = Acao.create!({tipo: 'pmma', nome: 'Instituição da Agenda 21', desc: 'Criar ou apresentar Lei que institui a Agenda 21; Realizar o Fórum de discussão da Agenda 21; Caso não tenha pessoal para realizar essas atividades, solicitar ajuda externa, ex: Naturals.', prazo: Time.local(Time.now.year, 2, 1)})
  documento1 = Documento.create!({nome: 'Cópias da lei ou decreto de Criação', acao: acao11})
  documento1 = Documento.create!({nome: 'Listas de Presença', acao: acao11})
  documento2 = Documento.create!({nome: 'Atas de Reuniões', acao: acao11})
  documento3 = Documento.create!({nome: 'Fotos Datadas', acao: acao11})
  documento4 = Documento.create!({nome: 'Programação do Evento', acao: acao11})
  documento5 = Documento.create!({nome: 'Relatório do planejamento participativo', acao: acao11})

acao12 = Acao.create!({tipo: 'pmma', nome: 'Plano de Desenvolvimento Local Sustentável', desc: 'Elaborar e/ou revisar o Plano de Desenvolvimento Local Sustentável.', prazo: Time.local(Time.now.year, 2, 1)})
  documento1 = Documento.create!({nome: 'Cópias da lista de presença da reunião de elaboração do Plano', acao: acao12})
  documento2 = Documento.create!({nome: 'Atas de Reuniões', acao: acao12})
  documento3 = Documento.create!({nome: 'Fotos Datadas', acao: acao12})
  documento4 = Documento.create!({nome: 'Plano de Trabalho', acao: acao12})
  documento5 = Documento.create!({nome: 'Folders', acao: acao12})
  documento5 = Documento.create!({nome: 'Plano de Desenvolvimento Local Sustentável', acao: acao12})

acao13 = Acao.create!({tipo: 'pmma', nome: 'Plano Plurianual', desc: 'Elaborar o PPA.', prazo: Time.local(Time.now.year, 2, 1)})
  documento1 = Documento.create!({nome: 'Cópias do Plano', acao: acao13})

acao14 = Acao.create!({tipo: 'pmma', nome: 'Eventos de Capacitação Ambiental', desc: 'Realizar eventos de capacitação e treinamento ambiental; Os gestores da área ambiental devem participar de eventos de capacitação e treinamento, podendo ser no município ou fora deste. Devendo ter certificados, programação do evento, fotos, notas fiscais e lista de presença.', prazo: Time.local(Time.now.year, 2, 1)})
  documento1 = Documento.create!({nome: 'Listas de Presença dos Eventos', acao: acao14})
  documento2 = Documento.create!({nome: 'Programação do Evento', acao: acao14})
  documento3 = Documento.create!({nome: 'Notas Fiscais', acao: acao14})
  documento4 = Documento.create!({nome: 'Cópia de Certificados', acao: acao14})
  documento5 = Documento.create!({nome: 'Fotos Datadas', acao: acao14})

################################
# CONTROLE E COMBATE A QUEIMADAS
################################

acao1 = Acao.create!({tipo: 'ccq', nome: 'Instituição da COMDEC', desc: 'Criar ou apresentar Lei que institui a COMDEC. Também deve ser apresentado a nomeação do coordenador da mesma, em caráter de exclusividade. Também deve ser apresentado o Decreto que destina uma sala e um automóvel para uso exclusivo da COMDEC.', prazo: Time.local(Time.now.year, 1,15)})
  documento1 = Documento.create!({nome: 'Lei de Criação da COMDEC', acao: acao1})
  documento2 = Documento.create!({nome: 'Ato de Nomeação do Coordenador (em Exclusividade)', acao: acao1})
  documento3 = Documento.create!({nome: 'Decreto de Destinação de Sala e Automóvel (Exclusivos para a COMDEC)', acao: acao1})

acao2 = Acao.create!({tipo: 'ccq', nome: 'Instituição da Brigada de Incêndio', desc: 'Devem ser apresentados os dados de constituição da Brigada.', prazo: Time.local(Time.now.year, 1,15)})
  documento1 = Documento.create!({nome: 'Regimento Interno da Brigada', acao: acao2})
  documento2 = Documento.create!({nome: 'Termo de Cooperação com o IBAMA', acao: acao2})

 acao3 = Acao.create!({tipo: 'ccq', nome: 'Contratação de Brigadistas', desc: 'Devem ser apresentados os contratos individuais dos brigadistas.', prazo: Time.local(Time.now.year, 5,1)})
  documento1 = Documento.create!({nome: 'Contratos Individuais dos Brigadistas', acao: acao3})
  documento2 = Documento.create!({nome: 'Recibo de Aquisição dos equipamentos de EPI', acao: acao3})
  documento3 = Documento.create!({nome: 'Cópia do Termo de Responsabilidade', acao: acao3})
  documento4 = Documento.create!({nome: 'Termo de Recebimento dos EPI assinado pelos Brigadistas', acao: acao3})

acao4 = Acao.create!({tipo: 'ccq', nome: 'Eventos de Capacitação dos Brigadistas', desc: 'Realizar eventos de capacitação dos brigadistas.', prazo: Time.local(Time.now.year, 7,1)})
  documento1 = Documento.create!({nome: 'Programação dos Eventos', acao: acao4})
  documento2 = Documento.create!({nome: 'Listas de Presença dos Eventos', acao: acao4})
  documento3 = Documento.create!({nome: 'Notas Fiscais dos Eventos', acao: acao4})
  documento4 = Documento.create!({nome: 'Certificados de Participação Emitidos', acao: acao4})
  documento5 = Documento.create!({nome: 'Relatório com fotos datadas dos Eventos', acao: acao4})

acao5 = Acao.create!({tipo: 'ccq', nome: 'Protocolo do Fogo', desc: 'Solicitar Protocolo do Fogo junto ao Naturatins.', prazo: Time.local(Time.now.year, 1,15)})
  documento1 = Documento.create!({nome: 'Documento Final do protocolo do Fogo assinado pelos partícipes', acao: acao5})
  documento2 = Documento.create!({nome: 'Atas de Reuniões', acao: acao5})
  documento3 = Documento.create!({nome: 'Listas de Presença', acao: acao5})
  documento4 = Documento.create!({nome: 'Fotos datadas das atividades', acao: acao5})
  documento5 = Documento.create!({nome: 'Material Educativo Distribuido em ações educativas/preventivas', acao: acao5})


################################
# UNIDADES DE CONSERVACAO E TERRAS INDIGENAS
################################

acao1 = Acao.create!({tipo: 'unidades_conservacao', nome: 'Criação das Unidades de Conservação', desc: 'Se o Município apresenta áreas de conservação, devem ser apresentados os dados das mesmas.', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Lei de Criação da UC Municipal', acao: acao1})
  documento2 = Documento.create!({nome: 'Decreto de Desapropriação (quando se tratar de UC de Proteção Integral)', acao: acao1})
  documento3 = Documento.create!({nome: 'Plano de Regularização Fundiária', acao: acao1})
  documento4 = Documento.create!({nome: 'Mapa da UC', acao: acao1})
  documento4 = Documento.create!({nome: 'Publicação da composição do Conselho Gestor da UC', acao: acao1})
  documento5 = Documento.create!({nome: 'Comprovante de Parceria Estabelecida para Implementação do RPPN', acao: acao1})
  documento6 = Documento.create!({nome: 'Atas de Reuniões do conselho', acao: acao1})
  documento7 = Documento.create!({nome: 'Lista de presença de reuniões do conselho', acao: acao1})
  documento8 = Documento.create!({nome: 'Termo de Cooperação', acao: acao1})
  documento9 = Documento.create!({nome: 'Projetos', acao: acao1})
  documento10 = Documento.create!({nome: 'Plano de Trabalho', acao: acao1})

acao2 = Acao.create!({tipo: 'unidades_conservacao', nome: 'Planejamento e Co-gestão da UC', desc: 'Publicar a composição do Conselho Gestor da UC; Firmar termo de cooperação; Elaborar projetos e plano de trabalho; Estabelecer parceria para implementar RPPN.', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Comprovante de Parceria Estabelecida para Implementação do RPPN', acao: acao2})
  documento2 = Documento.create!({nome: 'Atas de Reuniões do conselho', acao: acao2})

acao3 = Acao.create!({tipo: 'unidades_conservacao', nome: 'Apoio do Município', desc: 'Realizar atividades educativas diretamente ou em parcerias; Executar práticas agroecológicas em parceria ou não.', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Relatório de atividade realizada contendo fotos datadas', acao: acao3})
  documento2 = Documento.create!({nome: 'Lista de presença', acao: acao3})
  documento3 = Documento.create!({nome: 'Folders', acao: acao3})
  documento4 = Documento.create!({nome: 'Termo de cooperação Técnica', acao: acao3})

acao4 = Acao.create!({tipo: 'unidades_conservacao', nome: 'Preservação Ambiental', desc: 'Elaborar projetos de preservação ambiental; Fotos.', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Fotos', acao: acao4})
  documento2 = Documento.create!({nome: 'Projetos', acao: acao4})

acao5 = Acao.create!({tipo: 'unidades_conservacao', nome: 'Controle e Combate a Queimadas', desc: 'Realizar treinamentos com indígenas; Construir aceiros; Disponibilizar brigadas; Fornecer EPI', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Relatório de atividade realizada contendo fotos datadas', acao: acao5})
  documento2 = Documento.create!({nome: 'Lista de presença', acao: acao5})
  documento2 = Documento.create!({nome: 'Folders', acao: acao5})
  documento2 = Documento.create!({nome: 'Certificados', acao: acao5})
  documento2 = Documento.create!({nome: 'Material educativo distribuído em ações educativas/preventivas', acao: acao5})
  documento2 = Documento.create!({nome: 'Notas fiscais', acao: acao5})
  documento2 = Documento.create!({nome: 'Outros', acao: acao5})

acao6 = Acao.create!({tipo: 'unidades_conservacao', nome: 'Resíduos Sólidos', desc: 'Realizar coleta de lixo nas aldeias; Elaborar um projeto', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Fotos datadas', acao: acao6})
  documento2 = Documento.create!({nome: 'Assinatura dos Indígenas atestando a coleta', acao: acao6})

##########################
# SANEAMENTO BASICO
##########################

acao1 = Acao.create!({tipo: 'saneamento_basico', nome: 'Plano Municipal de Saneamento Básico', desc: 'Apresentar o Plano Municipal de Saneamento Básico. Criar ou apresentar a Lei que aprova o plano. É importante apresentar também todos os documentos do processo participativo de elaboração do plano, tais como: contratos, convocações com pautas, atas das audiências / consultas públicas, listas de presença, fotos datadas, notas fiscais, entre outros.', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Plano Municipal de Saneamento Básico', acao: acao1})
  documento2 = Documento.create!({nome: 'Lei de Aprovação do Plano', acao: acao1})
  documento3 = Documento.create!({nome: 'Cópia de todos os documentos do processo participativo de elaboração do Plano (Decretos de nomeação, contratos, convocações com pautas, atas das audiências/consultas públicas, listas de presença, fotos datadas, notas fiscais e outros)', acao: acao1})

acao2 = Acao.create!({tipo: 'saneamento_basico', nome: 'Atividades Educativas', desc: 'Promover campanhas educativas e sanitárias junto à comunidade; Ex: campanha contra a dengue, de higiene pessoal, bucal, contra DST, drogas, zoonoses, etc.', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Relatórios', acao: acao2})
  documento2 = Documento.create!({nome: 'Fotos Datadas', acao: acao2})
  documento3 = Documento.create!({nome: 'Cópia dos materiais educativos (folders, cartilhas, cartazes, etc)', acao: acao2})
  documento4 = Documento.create!({nome: 'Notas Fiscais', acao: acao2})

acao3 = Acao.create!({tipo: 'saneamento_basico', nome: 'infraestrutura de Esgotamento Sanitário', desc: 'Promover campanhas educativas e sanitárias junto à comunidade; Ex: campanha contra a dengue, de higiene pessoal, bucal, contra DST, drogas, zoonoses, etc.', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Projetos de Esgotamento Sanitário', acao: acao3})
  documento2 = Documento.create!({nome: 'Diagnósticos de saneamento ambiental', acao: acao3})
  documento3 = Documento.create!({nome: 'Licenças Ambientais', acao: acao3})
  documento4 = Documento.create!({nome: 'Laudo técnico com Responsabilidade Técnica, atestando o funcionamento e eficiência de CADA infraestrutura', acao: acao3})

#########################
# AGUA
#########################

acao1 = Acao.create!({tipo: 'agua', nome: 'Qualidade da Água', desc: 'Qualidade da água bruta (laudo técnico); Cópia do termo de cooperação com a concessionária ou laboratório, certificado e os laudos de análise de água; Mapa hidrográfico do município, em escala 1:100.000, identificando os pontos de coleta; Projeto de preservação das APP dos mananciais da microbacia responsável pelo abastecimento (segue um modelo de projeto em anexo, caso queiram utiliza-lo, ou servir como base para fazer um novo e aplicar).', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Laudo técnico em conformidade com a Portaria nº. 2.914, 12 de dezembro de 2011', acao: acao1})
  documento2 = Documento.create!({nome: 'Cópia do termo de cooperação com a concessionária, ou laboratório certificado e os laudos de análise de água (contraprova do NATURATINS);', acao: acao1})
  documento3 = Documento.create!({nome: 'Cópia de Projetos', acao: acao1})
  documento4 = Documento.create!({nome: 'Plano de Trabalho', acao: acao1})
  documento5 = Documento.create!({nome: 'Relatório Físico-financeiro', acao: acao1})

#######################
# RS
#######################

acao1 = Acao.create!({tipo: 'destinacao_residuos_solidos', nome: 'PIGRS', desc: 'Elaborar e aprovar Plano de Gerenciamento de Resíduos Sólidos e Resíduos de Saúde.', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Cópia do Plano de Gerenciamento de Resíduos Sólidos e Resíduos de Saúde', acao: acao1})

acao2 = Acao.create!({tipo: 'destinacao_residuos_solidos', nome: 'Disposição Final', desc: 'Possui aterro licenciado? Possui Projeto de Aterro Sanitário em processo de licenciamento, sem pendências processuais? O aterro é operado em consonância com as normas técnicas?', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Licença de Operação do Aterro', acao: acao2})
  documento2 = Documento.create!({nome: 'Certidão de Tramitação Processual', acao: acao2})
  documento3 = Documento.create!({nome: 'Relatório de pendências processuais – NATURATINS', acao: acao2})
  documento4 = Documento.create!({nome: 'Fotos do destino final dos resíduos coletados', acao: acao2})
  documento5 = Documento.create!({nome: 'Evidência do uso de EPI no recolhimento dos resíduos', acao: acao2})
  documento6 = Documento.create!({nome: 'Relatório de monitoramento do aterro feito pelo órgão licenciador ou auditoria ambiental', acao: acao2})

acao3 = Acao.create!({tipo: 'destinacao_residuos_solidos', nome: 'Equipamentos de Proteção Individual', desc: 'Fornecer EPI para os funcionários de limpeza de pública adequado ao risco da atividade', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Fotos datadas dos equipamentos', acao: acao3})
  documento2 = Documento.create!({nome: 'Notas fiscais de aquisição', acao: acao3})
  documento3 = Documento.create!({nome: 'Termo de doação e de entrega de material dos EPI', acao: acao3})

acao4 = Acao.create!({tipo: 'destinacao_residuos_solidos', nome: 'Resíduos da Saúde', desc: 'Realizar coleta dos resíduos de serviço de saúde de acordo com as normas técnicas.', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Programa de rotina da coleta dos resíduos de saúde; Relatórios de procedimentos de vigilância em saúde', acao: acao4})
  documento2 = Documento.create!({nome: 'Evidências do recolhimento e destinação final dos resíduos (fotos datadas)', acao: acao4})
  documento3 = Documento.create!({nome: 'Cópia do contrato de prestação de serviço ou de aluguel dos veículos de coleta', acao: acao4})
  documento4 = Documento.create!({nome: 'Cópia do documento do veiculo (caso seja da prefeitura)', acao: acao4})
  documento5 = Documento.create!({nome: 'Fotos datadas dos veículos que realizam o transporte desses resíduos', acao: acao4})

acao5 = Acao.create!({tipo: 'destinacao_residuos_solidos', nome: 'Coleta Seletiva', desc: 'Realizar coleta seletiva de resíduos sólidos urbanos e destinar para a reciclagem os materiais coletados.', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Programa de rotina da coleta seletiva dos resíduos; Evidências do recolhimento e destinação dos materiais recicláveis às cooperativas ou associações de catadores (fotos, termo de entrega)', acao: acao5})
  documento2 = Documento.create!({nome: 'Cópia de contrato de prestação de serviço ou de aluguel do veículo da coleta', acao: acao5})
  documento3 = Documento.create!({nome: 'Fotos do veículo que realiza o transporte', acao: acao5})
  documento4 = Documento.create!({nome: 'Contrato de doação ou locação de área adequada para triagem e separação do material reciclável; Relatório com percentual das ações realizadas', acao: acao5})

acao6 = Acao.create!({tipo: 'destinacao_residuos_solidos', nome: 'Veículo de Coleta', desc: 'Disponibilizar veículo adequado e em quantidade suficiente para a coleta de resíduos sólidos urbanos em conformidade com as normas técnicas.', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Documentos comprobatórios da coleta', acao: acao6})
  documento2 = Documento.create!({nome: 'Cópia de contrato de prestação de serviço ou de aluguel dos veículos de coleta', acao: acao6})
  documento3 = Documento.create!({nome: 'Cópia do documento do veículo', acao: acao6})
  documento4 = Documento.create!({nome: 'Fotos datadas dos veículos que realizam o transporte dos resíduos coletados', acao: acao6})

acao7 = Acao.create!({tipo: 'destinacao_residuos_solidos', nome: 'Educação Ambiental', desc: 'Elaboração e execução de projetos de EA voltados à gestão dos resíduos sólidos.', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Lista de presença dos eventos', acao: acao7})
  documento2 = Documento.create!({nome: 'Fotos Datadas', acao: acao7})
  documento3 = Documento.create!({nome: 'Material de divulgação', acao: acao7})
  documento4 = Documento.create!({nome: 'Cartazes', acao: acao7})
  documento5 = Documento.create!({nome: 'Folders', acao: acao7})

acao8 = Acao.create!({tipo: 'destinacao_residuos_solidos', nome: 'Fórum do Lixo', desc: 'Solicitar ao Naturatins o Fórum do Lixo e realizá-lo. Criar lei que institui o Fórum.', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Ato legal de instituição do Fórum', acao: acao8})
  documento2 = Documento.create!({nome: 'Atas de reuniões', acao: acao8})
  documento3 = Documento.create!({nome: 'Lista de presença', acao: acao8})
  documento4 = Documento.create!({nome: 'Fotos Datadas', acao: acao8})

acao9 = Acao.create!({tipo: 'destinacao_residuos_solidos', nome: 'Associação de Catadores', desc: 'O município apoia a criação e o funcionamento de associação e cooperativas de catadores de materiais recicláveis? Disponibiliza infraestrutura física? Disponibiliza equipamentos (caminhão, prensa, esteira, EPI, etc)? Realiza doação de materiais recicláveis?', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Documentos para Comprovação', acao: acao9})
  documento2 = Documento.create!({nome: 'Fotos datadas', acao: acao9})

acao10 = Acao.create!({tipo: 'destinacao_residuos_solidos', nome: 'Ponto de Entrega Voluntária', desc: 'O município possui Ponto de Entrega Voluntária de materiais recicláveis?', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Termo de compromisso de doação de material firmado entre a prefeitura e a associação ou cooperativa de catadores', acao: acao10})
  documento2 = Documento.create!({nome: 'Fotos datadas', acao: acao10})

##########################
# AGRICULTURA
##########################

acao1 = Acao.create!({tipo: 'agricultura', nome: 'Secretaria', desc: 'Criar lei da Secretaria de Agricultura; Fazer a nomeação do secretário; Contratar um técnico agrícola ', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Cópia de lei que cria a secretária municipal de Agricultura', acao: acao1})
  documento2 = Documento.create!({nome: 'Decreto de nomeação do secretário', acao: acao1})
  documento3 = Documento.create!({nome: 'Diploma do Técnico Agrícola', acao: acao1})
  documento4 = Documento.create!({nome: 'Cópia do termo de posse', acao: acao1})

acao2 = Acao.create!({tipo: 'agricultura', nome: 'Eventos', desc: 'Realizar eventos de capacitação dos agricultores nas áreas de manejo e conservação do solo e água: Plantio Direto, Manejo e formação de pastagem, Integração lavoura e pecuária, uso de calcário, unidades demonstrativas tais como adubação verde e outros afins. Criar o banco de dados dos produtores rurais dos municípios, com o número de produtores que adotam novas tecnologias conservacionistas.', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Banco de dados dos produtores beneficiados', acao: acao2})
  documento2 = Documento.create!({nome: 'Folders', acao: acao2})
  documento3 = Documento.create!({nome: 'Lista de Presença', acao: acao2})
  documento4 = Documento.create!({nome: 'Fotos Datadas', acao: acao2})
  documento5 = Documento.create!({nome: 'Programação dos Eventos e Cursos', acao: acao2})

acao3 = Acao.create!({tipo: 'agricultura', nome: 'Estradas', desc: 'Realizar constante manutenção das estradas vicinais', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Fotos datadas das ações', acao: acao3})

acao4 = Acao.create!({tipo: 'agricultura', nome: 'Programa de Correção do Solo', desc: 'Firmar um acordo de cooperação com as associações dos agricultores, onde o órgão se compromete a fornecer o maquinário e pessoal necessário para que seja feita a distribuição de calcário, onde os agricultores se comprometam a adquirir o calcário; Banco de dados dos produtores beneficiados; Elaboras um Programa de Correção do Solo', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Banco de dados dos produtores beneficiados', acao: acao4})
  documento2 = Documento.create!({nome: 'Projeto', acao: acao4})
  documento3 = Documento.create!({nome: 'Notas Fiscais', acao: acao4})
  documento4 = Documento.create!({nome: 'Termo e/ou acordo de cooperação', acao: acao4})

acao5 = Acao.create!({tipo: 'agricultura', nome: 'APP', desc: 'Desenvolver ações de conservação e proteção em APP; Criação de um Projeto; Banco de dados dos produtores beneficiados.', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Cópia do projeto implantado', acao: acao5})
  documento2 = Documento.create!({nome: 'Banco de dados com os produtores beneficiados; Área e bacia hidrográfica beneficiada', acao: acao5})
  documento3 = Documento.create!({nome: 'Relatório técnico de execução', acao: acao5})


acao6 = Acao.create!({tipo: 'agricultura', nome: 'Patrulha', desc: 'Implantar um Projeto; Disponibilizar maquinário para que os agricultores façam a conservação do solo e da água; Banco de dados dos produtores beneficiados.', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Cópia do Projeto', acao: acao6})
  documento2 = Documento.create!({nome: 'Fotos datadas', acao: acao6})
  documento3 = Documento.create!({nome: 'Banco de dados dos produtores beneficiados', acao: acao6})
  documento4 = Documento.create!({nome: 'Relatório técnico de execução', acao: acao6})

acao7 = Acao.create!({tipo: 'agricultura', nome: 'Mudas', desc: 'Produção e distribuição de mudas nativas para recuperação de áreas degradadas (RAD); Projeto implantado; Banco de dados das áreas recuperadas e dos produtores beneficiados.', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Cópia do projeto implantado', acao: acao7})
  documento2 = Documento.create!({nome: 'Banco de dados dos produtores beneficiados', acao: acao7})
  documento3 = Documento.create!({nome: 'Documentação da implantação do viveiro de produção de mudas', acao: acao7})


