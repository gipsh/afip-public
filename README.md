# afip-public
AFIP public API helper

## How to use it

```ruby
require 'afip-public'

padron = AfipPublic::Padron.new

persona = padron.get_persona('20131204699').to_json

=> "{\"success\":true,\"data\":{\"idPersona\":20131204699,\"tipoPersona\":\"FISICA\",\"tipoClave\":\"CUIT\",\"estadoClave\":\"ACTIVO\",\"nombre\":\"MACRI MAURICIO\",\"tipoDocumento\":\"DNI\",\"numeroDocumento\":\"13120469\",\"domicilioFiscal\":{\"direccion\":\"CORRIENTES AV. 545 Piso:10 Dpto:CF\",\"codPostal\":\"1043\",\"idProvincia\":0},\"idDependencia\":19,\"mesCierre\":12,\"fechaInscripcion\":\"1901-01-01\",\"impuestos\":[11,25,32],\"actividades\":[11,681098]}}"
```

## Install

```bash
git clone https://github.com/gipsh/afip-public
```

```bash
gem build afippublic.gemspec
```


```bash
gem install afip-public-x.x.x.gem
```


## Supported methods

From AFIP documentation:

/sr-padron/v2/persona/<cuit|cuil|cdi>

/sr-padron/v2/personas/<numeroDocumento>

/sr-padron/v1/constancia/<cuit|cuil|cdi>

/av/v1/vencimientos/<cuit|cuil|cdi>

/av/v1/vencimientos/<idImpuesto>/<cuit|cuil|cdi>

/parametros/v1/impuestos

/parametros/v1/conceptos

/parametros/v1/caracterizaciones

/parametros/v1/categoriasMonotributo

/parametros/v1/categoriasAutonomo

/parametros/v1/actividades

/parametros/v1/provincias

/parametros/v2/dependencias




