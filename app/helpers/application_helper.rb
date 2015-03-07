module ApplicationHelper
  def notificacoes_arquivo(arquivo)
    texto_notificacao = ''
    if arquivo.notificacao != nil
      texto_notificacao = "#{arquivo.notificacao.texto}"
    end
    return texto_notificacao
  end

  def nav_status(controller)
    if params[:controller] == controller
      'active'
    end
  end

  def prazo_label(data)
     "Prazo: #{data.strftime('%d / %m')}"
  end

  def estilo_nota(nota)
    if nota < 50
      return "text-danger"
    elseif nota < 70
      return "text-warning"
    elseif nota < 100
      return "text-success"
    end
  end

  def desempenho_total_acao
    acao = Acao.all
    score_max_acao = 0
    score_total_acao = 0
    acao.each do |acao|
      score_max_acao += acao.documentos.size * 100
      acao.documentos.each do |documento|
        score_total_acao += score_total_documento(documento)
      end
    end
    return {score_max: score_max_acao, score_total: score_total_acao.to_f, porcentagem: score_total_acao.to_f / score_max_acao.to_f * 100}
  end

  def estilo_arquivo(arquivo)
    if (arquivo.cancelado?)
      return "bg-danger text-danger"
    end
  end

  def titulo_arquivo(arquivo)
    if (arquivo.cancelado?)
      "- ARQUIVO CANCELADO - #{arquivo.observacao}"
    end
  end
  #Apresenta a nota maxima que um componente pode alcancar
  #ou seja: quantos documentos tem * 100
  def score_max_documento(documento)
    score_max = documento.arquivos.size * 100
  end

  #Apresenta quanto foi alcancado de todos os documentos
  def score_total_documento(documento)
    score_total = 0
    if documento.arquivos.any?
      documento.arquivos.each do |arquivo|
        if !(arquivo.score.nil?)
          score_total =  score_total + arquivo.score
        end
      end
    end
    return score_total
  end

  def porcentagem_total_documento(documento)
    score_max = score_max_documento(documento)
    score_total = score_total_documento(documento)
    score_total.to_f / score_max.to_f * 100
  end
end
