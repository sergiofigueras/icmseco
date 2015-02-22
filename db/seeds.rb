Usuario.destroy_all
Meioambiente.destroy_all
Documento.destroy_all
Arquivo.destroy_all

Usuario.create!({nome: 'Sergio', sobrenome: 'Figueras', email: 'sergio@sergio.com', password: '123123123', password_confirmation: '123123123', admin: true})
Usuario.create!({nome: 'Naturals', sobrenome: 'Consultorias', email: 'naturalsconsultorias@gmail.com', password: '123123123', password_confirmation: '123123123', admin: false, avaliacao: true})


meioambiente1 = Meioambiente.create!({nome: 'Instituição da COMDEC', desc: 'Criar ou apresentar Lei que institui a COMDEC. Também deve ser apresentado a nomeação do coordenador da mesma, em caráter de exclusividade. Também deve ser apresentado o Decreto que destina uma sala e um automóvel para uso exclusivo da COMDEC.', prazo: Time.local(Time.now.year, 1,15)})
  documento1 = Documento.create!({nome: 'Lei de Criação da COMDEC', score: '0', meioambiente: meioambiente1})
  documento2 = Documento.create!({nome: 'Ato de Nomeação do Coordenador (em Exclusividade)', score: '0', meioambiente: meioambiente1})
  documento3 = Documento.create!({nome: 'Decreto de Destinação de Sala e Automóvel (Exclusivos para a COMDEC)', score: '0', meioambiente: meioambiente1})

meioambiente2 = Meioambiente.create!({nome: 'Instituição da Brigada de Incêndio', desc: 'Devem ser apresentados os dados de constituição da Brigada.', prazo: Time.local(Time.now.year, 1,15)})
  documento1 = Documento.create!({nome: 'Regimento Interno da Brigada', score: '0', meioambiente: meioambiente2})
  documento2 = Documento.create!({nome: 'Termo de Cooperação com o IBAMA', score: '0', meioambiente: meioambiente2})

 meioambiente3 = Meioambiente.create!({nome: 'Contratação de Brigadistas', desc: 'Devem ser apresentados os contratos individuais dos brigadistas.', prazo: Time.local(Time.now.year, 5,1)})
  documento1 = Documento.create!({nome: 'Contratos Individuais dos Brigadistas', score: '0', meioambiente: meioambiente3})
  documento2 = Documento.create!({nome: 'Recibo de Aquisição dos equipamentos de EPI', score: '0', meioambiente: meioambiente3})
  documento3 = Documento.create!({nome: 'Cópia do Termo de Responsabilidade', score: '0', meioambiente: meioambiente3})
  documento4 = Documento.create!({nome: 'Termo de Recebimento dos EPI assinado pelos Brigadistas', score: '0', meioambiente: meioambiente3})

meioambiente4 = Meioambiente.create!({nome: 'Eventos de Capacitação dos Brigadistas', desc: 'Realizar eventos de capacitação dos brigadistas.', prazo: Time.local(Time.now.year, 7,1)})
  documento1 = Documento.create!({nome: 'Programação dos Eventos', score: '0', meioambiente: meioambiente4})
  documento2 = Documento.create!({nome: 'Listas de Presença dos Eventos', score: '0', meioambiente: meioambiente4})
  documento3 = Documento.create!({nome: 'Notas Fiscais dos Eventos', score: '0', meioambiente: meioambiente4})
  documento4 = Documento.create!({nome: 'Certificados de Participação Emitidos', score: '0', meioambiente: meioambiente4})
  documento5 = Documento.create!({nome: 'Relatório com fotos datadas dos Eventos', score: '0', meioambiente: meioambiente4})

meioambiente5 = Meioambiente.create!({nome: 'Protocolo do Fogo', desc: 'Solicitar Protocolo do Fogo junto ao Naturatins.', prazo: Time.local(Time.now.year, 1,15)})
  documento1 = Documento.create!({nome: 'Documento Final do protocolo do Fogo assinado pelos partícipes', score: '0', meioambiente: meioambiente5})
  documento2 = Documento.create!({nome: 'Atas de Reuniões', score: '0', meioambiente: meioambiente5})
  documento3 = Documento.create!({nome: 'Listas de Presença', score: '0', meioambiente: meioambiente5})
  documento4 = Documento.create!({nome: 'Fotos datadas das atividades', score: '0', meioambiente: meioambiente5})
  documento5 = Documento.create!({nome: 'Material Educativo Distribuido em ações educativas/preventivas', score: '0', meioambiente: meioambiente5})

meioambiente6 = Meioambiente.create!({nome: 'Instituição do Conselho Municipal de Meio Ambiente', desc: 'Apresentar a instituição do Conselho Municipal de Meio Ambiente, apresentando a instituição por meio de Lei e também o Decreto de nomeação dos conselheiros e membros.', prazo: Time.local(Time.now.year, 8, 1)})
  documento1 = Documento.create!({nome: 'Ato de criação do CMMA', score: '0', meioambiente: meioambiente6})
  documento2 = Documento.create!({nome: 'Decreto de nomeação dos membros do conselho', score: '0', meioambiente: meioambiente6})
  documento3 = Documento.create!({nome: 'Termo de posse dos membros do conselho', score: '0', meioambiente: meioambiente6})
  documento4 = Documento.create!({nome: 'Regimento Interno do CMMA', score: '0', meioambiente: meioambiente6})

meioambiente7 = Meioambiente.create!({nome: 'Realização de Parcerias Ambientais', desc: 'Procurar firmar parcerias com instituições locais, bem como também organizações da sociedade civil, para o desenvolvimento de atividades culturais e ambientais. Ex: Naturatins, Ruraltins, Embrapa, Senac, Sebrae, Escolas, etc.', prazo: Time.local(Time.now.year, 3, 1)})
  documento1 = Documento.create!({nome: 'Cópia de projetos, convênios, termos de parceria, termo de cooperação técnica, relatórios com fotos datadas', score: '0', meioambiente: meioambiente7})

meioambiente8 = Meioambiente.create!({nome: 'Instituição da Agenda 21', desc: 'Criar ou apresentar Lei que institui a Agenda 21.', prazo: Time.local(Time.now.year, 2, 1)})
  documento1 = Documento.create!({nome: 'Cópias da lei ou decreto de Criação', score: '0', meioambiente: meioambiente8})
  documento2 = Documento.create!({nome: 'Atas de Reuniões', score: '0', meioambiente: meioambiente8})
  documento3 = Documento.create!({nome: 'Fotos Datadas', score: '0', meioambiente: meioambiente8})
  documento4 = Documento.create!({nome: 'Programação do Evento', score: '0', meioambiente: meioambiente8})
  documento5 = Documento.create!({nome: 'Relatório do planejamento participativo', score: '0', meioambiente: meioambiente8})

meioambiente9 = Meioambiente.create!({nome: 'Regulamentação da Política Municipal do Meio Ambiente', desc: 'Apresentar a documentação comprobatória da instituição da Política Municipal de Meio Ambiente.', prazo: Time.local(Time.now.year, 1, 15)})
  documento1 = Documento.create!({nome: 'Decreto que regulamenta a PMMA', score: '0', meioambiente: meioambiente9})
  documento2 = Documento.create!({nome: 'Plano de Trabalho da PMMA', score: '0', meioambiente: meioambiente9})

meioambiente10 = Meioambiente.create!({nome: 'Eventos de Capacitação Ambiental', desc: 'Realizar eventos de capacitação e treinamento ambiental; Os gestores da área ambiental devem participar de eventos de capacitação e treinamento, podendo ser no município ou fora deste. Devendo ter certificados, programação do evento, fotos, notas fiscais e lista de presença.', prazo: Time.local(Time.now.year, 2, 1)})
  documento1 = Documento.create!({nome: 'Listas de Presença dos Eventos', score: '0', meioambiente: meioambiente10})
  documento2 = Documento.create!({nome: 'Programação do Evento', score: '0', meioambiente: meioambiente10})
  documento3 = Documento.create!({nome: 'Notas Fiscais', score: '0', meioambiente: meioambiente10})
  documento4 = Documento.create!({nome: 'Cópia de Certificados', score: '0', meioambiente: meioambiente10})
  documento5 = Documento.create!({nome: 'Fotos Datadas', score: '0', meioambiente: meioambiente10})

meioambiente11 = Meioambiente.create!({nome: 'Instituição da Secretaria Municipal de Meio Ambiente', desc: 'Apresentar toda a documentação que comprove a instituição da Secretaria Municipal de Meio Ambiente do Município.', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Lei de Criação da Secretaria Municipal de Meio Ambiente', score: '0', meioambiente: meioambiente11})
  documento2 = Documento.create!({nome: 'Decreto de Nomeação do Secretário', score: '0', meioambiente: meioambiente11})
  documento3 = Documento.create!({nome: 'Decreto de Nomeação dos demais técnicos', score: '0', meioambiente: meioambiente11})

meioambiente12 = Meioambiente.create!({nome: 'Criação das Unidades de Conservação', desc: 'Se o Município apresenta áreas de conservação, devem ser apresentados os dados das mesmas.', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Lei de Criação da UC Municipal', score: '0', meioambiente: meioambiente12})
  documento2 = Documento.create!({nome: 'Decreto de Desapropriação (quando se tratar de UC de Proteção Integral)', score: '0', meioambiente: meioambiente12})
  documento3 = Documento.create!({nome: 'Plano de Regularização Fundiária', score: '0', meioambiente: meioambiente12})
  documento4 = Documento.create!({nome: 'Mapa da UC', score: '0', meioambiente: meioambiente12})
  documento5 = Documento.create!({nome: 'Comprovante de Parceria Estabelecida para Implementação do RPPN', score: '0', meioambiente: meioambiente12})

meioambiente13 = Meioambiente.create!({nome: 'Plano Municipal de Saneamento Básico', desc: 'Apresentar o Plano Municipal de Saneamento Básico. Criar ou apresentar a Lei que aprova o plano. \n É importante apresentar também todos os documentos do processo participativo de elaboração do plano, tais como: contratos, convocações com pautas, atas das audiências / consultas públicas, listas de presença, fotos datadas, notas fiscais, entre outros.', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Plano Municipal de Saneamento Básico', score: '0', meioambiente: meioambiente13})
  documento2 = Documento.create!({nome: 'Outros Documentos', score: '0', meioambiente: meioambiente13})

meioambiente14 = Meioambiente.create!({nome: 'Esgotamento Sanitário', desc: 'Apresentar os documentos que comprovem a existência de alguma infraestrutura de esgotamento sanitário.', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Projetos de Esgotamento Sanitário', score: '0', meioambiente: meioambiente14})
  documento2 = Documento.create!({nome: 'Diagnósticos de saneamento ambiental', score: '0', meioambiente: meioambiente14})
  documento3 = Documento.create!({nome: 'Licenças Ambientais', score: '0', meioambiente: meioambiente14})
  documento4 = Documento.create!({nome: 'Laudo técnico com Responsabilidade Técnica, atestando o funcionamento e eficiência de CADA infraestrutura', score: '0', meioambiente: meioambiente14})

meioambiente15 = Meioambiente.create!({nome: 'Micro e Macrodrenagem', desc: 'Caso exista projeto executivo de micro e macrodrenagem urbana, apresentar documentos comprobatórios', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Projeto Executivo', score: '0', meioambiente: meioambiente15})
  documento2 = Documento.create!({nome: 'Laudos de medição com RT, atestando o funcionamento e eficiência de CADA infraestrutura, com relatório do percentual de execução da micro e macrodrenagem', score: '0', meioambiente: meioambiente15})
  documento3 = Documento.create!({nome: 'Fotos Datadas', score: '0', meioambiente: meioambiente15})
  documento4 = Documento.create!({nome: 'Laudo técnico com Responsabilidade Técnica, atestando o funcionamento e eficiência de CADA infraestrutura', score: '0', meioambiente: meioambiente15})

meioambiente16 = Meioambiente.create!({nome: 'Aterramento Sanitário', desc: 'Apresentar documentos comprobatórios do funcionamento correto do aterro.', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Documentos', score: '0', meioambiente: meioambiente16})

meioambiente17 = Meioambiente.create!({nome: 'Coleta de Resíduos Sólidos', desc: 'Apresentar os documentos que comprovem a realização da coleta de resíduos sólidos urbanos no município.', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Programa de rotina da coleta dos resíduos sólidos e limpeza de áreas públicas com horários e itinerários', score: '0', meioambiente: meioambiente17})
  documento2 = Documento.create!({nome: 'Cópia de contrato de terceirizado', score: '0', meioambiente: meioambiente17})
  documento3 = Documento.create!({nome: 'Fotos com datas da limpeza e das áreas limpas', score: '0', meioambiente: meioambiente17})
  documento4 = Documento.create!({nome: 'Cópia de 5 contracheques de pessoal da limpeza', score: '0', meioambiente: meioambiente17})
  documento5 = Documento.create!({nome: 'Cópia de contrato de prestação de serviço ou de aluguel dos veículos de coleta', score: '0', meioambiente: meioambiente17})
  documento6 = Documento.create!({nome: 'Cópia do documento do veículo', score: '0', meioambiente: meioambiente17})
  documento7 = Documento.create!({nome: 'Fotos datadas dos veículos que realizam o transporte dos resíduos coletado', score: '0', meioambiente: meioambiente17})


meioambiente18 = Meioambiente.create!({nome: 'Educação Ambiental para Resíduos Sólidos', desc: 'Desenvolver projetos com a comunidade sobre a Educação Ambiental com foco nos resíduos sólidos.', prazo: Time.local(Time.now.year, 1, 1)})
  documento1 = Documento.create!({nome: 'Cópia dos projetos', score: '0', meioambiente: meioambiente18})
  documento2 = Documento.create!({nome: 'Relatório das ações desenvolvidas, com fotos datadas', score: '0', meioambiente: meioambiente18})
  documento3 = Documento.create!({nome: 'Certificados', score: '0', meioambiente: meioambiente18})
  documento4 = Documento.create!({nome: 'Listas de presença', score: '0', meioambiente: meioambiente18})
  documento5 = Documento.create!({nome: 'Outros documentos', score: '0', meioambiente: meioambiente18})

meioambiente19 = Meioambiente.create!({nome: 'Associação dos Catadores', desc: 'Apresentar documentos que comprovem a existência de um PEV (Ponto de Entrega Voluntária), bem como o apoio do município a criação e funcionamento de associações e/ou cooperativas de catadores de materiais recicláveis, como doação de área, disponibilização de infraestrutura física, equipamentos (caminhão, prensa, esteira, EPI, etc.), doação de materiais recicláveis.', prazo: Time.local(Time.now.year, 1, 1)})
  documento2 = Documento.create!({nome: 'Relatório das ações desenvolvidas, com fotos datadas', score: '0', meioambiente: meioambiente19})
  documento5 = Documento.create!({nome: 'Outros documentos', score: '0', meioambiente: meioambiente19})
