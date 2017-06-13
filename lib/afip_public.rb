require 'afip-public/version'
require 'httparty'

module AfipPublic

class AfipPublicService
  include HTTParty

  api_base = 'https://aws.afip.gov.ar'


  base_uri 'https://aws.afip.gov.ar'
  default_timeout 1 # hard timeout after 1 second

  def initialize()
    @options = { }
  end

  def handle_timeouts
    begin
      yield
    rescue Net::OpenTimeout, Net::ReadTimeout
      {}
    end
  end


end

class Padron < AfipPublicService 

  def base_path
    "/sr-padron/"
  end

  def get_persona(cuit)
    handle_timeouts do
     self.class.get("#{ base_path }v2/persona/#{ cuit }", @options)
    end
  end

  def get_personas(dni)
    handle_timeouts do
     self.class.get("#{ base_path }v2/personas/#{ dni }", @options)
    end
  end

  def get_constancia(cuit)
    handle_timeouts do
     self.class.get("#{ base_path }v1/constancia/#{ cuit }", @options)
    end
  end

end


class Vencimiento < AfipPublicService


  def base_path
    "/av/v1/vencimientos/"
  end

  def get_vencimientos(cuit)
    handle_timeouts do
     self.class.get("#{ base_path }#{ cuit }", @options)
    end
  end

  def get_personas(id_impuesto, cuit)
    handle_timeouts do
     self.class.get("#{ base_path }#{ id_impuesto }/#{ cuit }", @options)
    end
  end

end


class Parametros < AfipPublicService

  def base_path
    "/parametros/v1/"
  end

  def get_impuestos()
    handle_timeouts do
     self.class.get("#{ base_path }impuestos", @options)
    end
  end

  def get_conceptos()
    handle_timeouts do
     self.class.get("#{ base_path }conceptos", @options)
    end
  end

  def get_caracterizaciones()
    handle_timeouts do
     self.class.get("#{ base_path }caracterizaciones", @options)
    end
  end


  def get_categorias_monotributo()
    handle_timeouts do
     self.class.get("#{ base_path }categoriasMonotributo", @options)
    end
  end

  def get_categorias_autonomo()
    handle_timeouts do
     self.class.get("#{ base_path }categoriasAutonomo", @options)
    end
  end

  def get_actividades()
    handle_timeouts do
     self.class.get("#{ base_path }actividades", @options)
    end
  end

  def get_provincias()
    handle_timeouts do
     self.class.get("#{ base_path }provincias", @options)
    end
  end

  def get_dependencias()
    handle_timeouts do
     self.class.get("#{ base_path }dependencias", @options)
    end
  end

end
end
