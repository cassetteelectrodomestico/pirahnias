class Opcion {
  String res = '';
  String texto = '';
}

class Decision extends Opcion {
  String recomendacion = '';
}

class Pregunta extends Opcion {
  List opciones = [];
}

///
///

class Motor {
  List historial = [];

  var actual;


  String tipo = '';

  Motor(){
    actual = datos;
    queEs();
  }

  Map<String, dynamic> datos = {
    "res": "si",
    "texto": "Se le cambio la tierra a una no especial para plantas carnivoras",
    "opciones": [
      {
        "res": "si",
        "texto": "Mala tierra",
        "recomendacion":
            "Comprar tierra especial para plantas carnivoras (perlita con musgo sphagnum) se recomienda tambien ir con un especialista en estas plantas"
      },
      {
        "res": "no",
        "texto": "Se le aplico abono normal para plantas",
        "opciones": [
          {
            "res": "si",
            "texto": "Se queman las raices",
            "recomendacion":
                "Las plantas carnivoras no necesitan abonos, se debe de retirar la planta de la maceta, lavar con cuidado las raices con agua de garrafon y volver a ponerla en la tierra"
          },
          {
            "res": "no",
            "texto": "Tiene polvo blanco",
            "opciones": [
              {
                "res": "si",
                "texto": "Tiene hongos",
                "recomendacion": "Aplicar fungicida"
              },
              {
                "res": "no",
                "texto": "¿Que planta es?",
                "opciones": [
                  {
                    "texto": "Drosera",
                    "opciones": [
                      {
                        "res": "si",
                        "texto": "Tiene las hojas o tallos muy alargados",
                        "opciones": [
                          {
                            "res": "si",
                            "texto": "No tiene o tiene muy poco mucilago",
                            "opciones": [
                              {
                                "res": "no",
                                "texto": "Le falta sol",
                                "recomendacion":
                                    "Cambiarla a un lugar mas iluminado"
                              },
                              {
                                "res": "si",
                                "texto": "Le falta sol y humedad",
                                "recomendacion":
                                    "Cambiarla a un lugar mas iluminado y darle mas humedad con un humificador"
                              }
                            ]
                          },
                          {
                            "res": "no",
                            "texto": "Sus hojas estan amarillas o quemadas",
                            "opciones": [
                              {
                                "res": "si",
                                "texto": "Esta en un mal lugar",
                                "recomendacion":
                                    "Cambiarla a un lugar iluminado, con luz y sin corrientes de aire"
                              },
                              {
                                "res": "no",
                                "texto":
                                    "Tiene una trampampa diferene, como un tallo",
                                "opciones": [
                                  {
                                    "res": "si",
                                    "texto": "Va a florear",
                                    "recomendacion":
                                        "No es malo, solo vera flores y quizá obtenga semillas"
                                  },
                                  {
                                    "res": "no",
                                    "texto": "Se puso transparentosa o aguada",
                                    "opciones": [
                                      {
                                        "res": "si",
                                        "texto": "Exeso de agua",
                                        "recomendacion":
                                            "Quite el exeso de humedad y si se puede corte las partes podridas"
                                      },
                                      {
                                        "res": "no",
                                        "texto": "Esta bien",
                                        "recomendacion": ""
                                      }
                                    ]
                                  }
                                ]
                              }
                            ]
                          }
                        ]
                      }
                    ]
                  },
                  {
                    "texto": "Dionea",
                    "opciones": [
                      {
                        "res": "si",
                        "texto": "Planta muy verde o hojas alargadas",
                        "opciones": [
                          {
                            "res": "si",
                            "texto": "Esta etiolada (le falta luz)",
                            "recomendacion": "Cambiar a un lugar mas iluminado"
                          },
                          {
                            "res": "no",
                            "texto": "Cenro de la planta café o flacido",
                            "opciones": [
                              {
                                "res": "si",
                                "texto": "Se esta pudriendo",
                                "recomendacion":
                                    "Quitar el exeso de agua y quitar las partes podridas"
                              },
                              {
                                "res": "no",
                                "texto": "Se le secan las trampas",
                                "opciones": [
                                  {
                                    "res": "no",
                                    "texto": "Esta bien",
                                    "recomendacion": ""
                                  },
                                  {
                                    "res": "si",
                                    "texto":
                                        "tiene todas o la mayoria de las trampas con insectos",
                                    "opciones": [
                                      {
                                        "res": "si",
                                        "texto": "sobrealimentacion",
                                        "recomendacion":
                                            "deje que caze naturalmente",
                                      },
                                      {
                                        "res": "no",
                                        "texto": "hojas caidas",
                                        "opciones": [
                                          {
                                            "res": "si",
                                            "texto": "deshidratación",
                                            "recomendacion": "Regar mas seguido"
                                          },
                                          {
                                            "res": "no",
                                            "texto":
                                                "la temperatura llega a 10 grados o menos",
                                            "opciones": [
                                              {
                                                "res": "si",
                                                "recomendacion":
                                                    "es normal que deje de crecer solo redusca el riego un poco y verifique que el centro no se ponga cafe o aguado",
                                                "texto": "hibernacion"
                                              },
                                              {
                                                "res": "no",
                                                "recomendacion": "",
                                                "texto": "esta bien"
                                              }
                                            ]
                                          }
                                        ]
                                      },
                                    ]
                                  }
                                ]
                              }
                            ]
                          }
                        ]
                      }
                    ]
                  },
                  {
                    "texto": "Nepenthes",
                    "opciones": [
                      {
                        "res": "si",
                        "texto": "Hace frio y no esta protegida",
                        "opciones": [
                          {
                            "res": "si",
                            "texto": "Se congela",
                            "recomendacion":
                                "Protegerla del frio y si algunas hojas ya estan aguadas cortalas"
                          },
                          {
                            "res": "no",
                            "texto": "No se alcanzan a formar los jarros",
                            "opciones": [
                              {
                                "res": "si",
                                "texto": "hojas muy verdes",
                                "opciones": [
                                  {
                                    "res": "si",
                                    "texto": "falta de luz y humedad",
                                    "recomendacion": "cambiarla de lugar"
                                  },
                                  {
                                    "res": "no",
                                    "texto": "falta de humedad",
                                    "recomendacion": "darle mas humedad"
                                  }
                                ]
                              },
                              {
                                "res": "no",
                                "texto": "Perdida de jarros",
                                "opciones": [
                                  {
                                    "res": "si",
                                    "texto": "hizo mucho calor",
                                    "opciones": [
                                      {
                                        "res": "no",
                                        "texto": "Problemas en el reigo",
                                        "recomendacion":
                                            "Verificar la calidad del agua y la frecuencia de riegos, que se mantenga humeda la tierra siempre pero sin encharcar",
                                      },
                                      {
                                        "res": "si",
                                        "recomendacion":
                                            "Cambiarla de lugar y aumentar la humedad",
                                        "texto": "Golpe de calor"
                                      }
                                    ]
                                  }
                                ]
                              }
                            ]
                          }
                        ]
                      }
                    ]
                  }
                ]
              }
            ]
          }
        ]
      }
    ]
  };

  Decision getDe() {
    Decision deci = new Decision();
    deci.texto = actual['texto'];
    deci.res = actual['res'];
    deci.recomendacion = actual['recomendacion'];
    return deci;
  }

  Pregunta getPre() {
    Pregunta pregu = new Pregunta();
    pregu.texto = actual['texto'];
    if (actual.containsKey('res')) pregu.res = actual['res'];
    pregu.opciones = actual['opciones'];
    return pregu;
  }

  void obtenerNuevoAcual(res) {
    if (actual.containsKey('res')) {
      if (res == 'si') historial.add(actual['texto']);
      if (actual['opciones'][0]['res'] == res)
        actual = actual['opciones'][0];
      else
        actual = actual['opciones'][1];
    } else {
      tipo = res;
      switch (res) {
        case 'Drosera':
          actual = actual['opciones'][0];
          break;
        case 'Dionea':
          actual = actual['opciones'][1];
          break;
        case 'Nepenthes':
          actual = actual['opciones'][2];
          break;
      }
    }
    queEs();
  }

  String queEs() {
    if (actual.containsKey('opciones')) {
      var x = getPre();
      actual = {};
      actual = {'res': x.res, 'texto': x.texto, 'opciones': x.opciones};
      return 'pregunta';
    }
    if (actual.containsKey('recomendacion')) {
      var x = getDe();
      actual = {};
      actual = {
        'res': x.res,
        'texto': x.texto,
        'recomendacion': x.recomendacion
      };
      return 'respuesta';
    }
    return 'x';
  }

  /*void main() {
    queEs();

    obtenerNuevoAcual('no');

    obtenerNuevoAcual('no');

    obtenerNuevoAcual('no');

    obtenerNuevoAcual('Drosera');
    actual = actual['opciones'][0];

    obtenerNuevoAcual('no');

    obtenerNuevoAcual('no');

    obtenerNuevoAcual('si');

    obtenerNuevoAcual('si');
    print(historial);
    if (queEs() == "pregunta") {
      print("sigue");
    } else {
      print("no sigue");
    }
  }*/
}
