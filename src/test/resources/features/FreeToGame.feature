@Regresion
Feature: Servicio de Prueba
  Background:
    Given la URL_BASE del Servicio es "https://www.freetogame.com/api/games"

  @Escenario1
  Scenario: Consulta del Servicio
    Given la URL_BASE del Servicio responde 200
    When consulto el Servicio con el Path "/?category=shooter&platform=pc"
    Then el codigo de respuesta es 200
    And valido el resultado


  @Escenario2
  Scenario: Consulta del Servicio con respuesta 400
    Given  la URL_BASE del Servicio responde 400
    When consulto el Servicio con el Path "?category=shooter&platform =pc"
    Then el codigo de respuesta es 400
    And valido el resultado
