class Opcion {
  String res = '';
  String texto = '';
  String imageURL = '';
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
    "imageURL":"gen_tierra.png",
    "res": "si",
    "texto": "Se le cambio la tierra a una no especial para plantas carnivoras",
    "opciones": [
      {
        "imageURL":"res_tierra.png",
        "res": "si",
        "texto": "Mala tierra",
        "recomendacion":
            "Comprar tierra especial para plantas carnivoras (perlita con musgo sphagnum) se recomienda tambien ir con un especialista en estas plantas"
      },
      {
        "imageURL":"gen_abono.png",
        "res": "no",
        "texto": "Se le aplico abono normal para plantas",
        "opciones": [
          {
            "imageURL":"res_raizquemada.png",
            "res": "si",
            "texto": "Se queman las raices",
            "recomendacion":
                "Las plantas carnivoras no necesitan abonos, se debe de retirar la planta de la maceta, lavar con cuidado las raices con agua de garrafon y volver a ponerla en la tierra"
          },
          {
            "imageURL":"res_polvoblanco.png",
            "res": "no",
            "texto": "Tiene polvo blanco",
            "opciones": [
              {
                "imageURL":"res_hongos.png",
                "res": "si",
                "texto": "Tiene hongos",
                "recomendacion": "Aplicar fungicida"
              },
              {
                "imageURL":"gen_tipos.png",
                "res": "no",
                "texto": "¿Que planta es?",
                "opciones": [
                  {
                    "res":"Drosera",
                    "texto":"Drosera",
                    "opciones":[
                      {
                        "imageURL":"drosera_tallos.png",
                        "res": "si",
                        "texto": "Tiene las hojas o tallos muy alargados",
                        "opciones": [
                          {
                            "imageURL":"drosera_mucilago.png",
                            "res": "si",
                            "texto": "No tiene o tiene muy poco mucilago",
                            "opciones": [
                              {
                                "imageURL":"drosera_trampa.png",
                                "res": "no",
                                "texto": "Le falta sol",
                                "recomendacion":
                                    "Cambiarla a un lugar mas iluminado"
                              },
                              {
                                "imageURL":"res_luzhumedad.png",
                                "res": "si",
                                "texto": "Le falta sol y humedad",
                                "recomendacion":
                                    "Cambiarla a un lugar mas iluminado y darle mas humedad con un humificador"
                              }
                            ]
                          },
                          {
                            "imageURL":"drosera_amarillas.png",
                            "res": "no",
                            "texto": "Sus hojas estan amarillas o quemadas",
                            "opciones": [
                              {
                                "imageURL":"res_luz.png",
                                "res": "si",
                                "texto": "Esta en un mal lugar",
                                "recomendacion":
                                    "Cambiarla a un lugar iluminado, con luz y sin corrientes de aire"
                              },
                              {
                                "imageURL":"drosera_tallos.png",
                                "res": "no",
                                "texto": "Tiene una trampampa diferene, como un tallo",
                                "opciones": [
                                  {
                                    "imageURL":"res_florear.png",
                                    "res": "si",
                                    "texto": "Va a florear",
                                    "recomendacion":
                                        "No es malo, solo vera flores y quizá obtenga semillas"
                                  },
                                  {
                                    "imageURL":"drosera_transparente.png",
                                    "res": "no",
                                    "texto": "Se puso transparentosa o aguada",
                                    "opciones": [
                                      {
                                        "imageURL":"drosera_trampa.png",
                                        "res": "si",
                                        "texto": "Exeso de agua",
                                        "recomendacion":
                                            "Quite el exeso de humedad y si se puede corte las partes podridas"
                                      },
                                      {
                                        "imageURL":"res_bien.png",
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
                    "res":"Dionea",
                    "texto":"Dionea",
                    "opciones":[
                      {
                        "imageURL":"dionea_hojas.png",
                        "res": "si",
                        "texto": "Planta muy verde o hojas alargadas",
                        "opciones": [
                          {
                            "imageURL":"dionea_hojas.png",
                            "res": "si",
                            "texto": "Esta etiolada (le falta luz)",
                            "recomendacion": "Cambiar a un lugar mas iluminado"
                          },
                          {
                            "imageURL":"dionea_cafe.png",
                            "res": "no",
                            "texto": "Cenro de la planta café o flacido",
                            "opciones": [
                              {
                                "imageURL":"res_cafe.png",
                                "res": "si",
                                "texto": "Se esta pudriendo",
                                "recomendacion":
                                    "Quitar el exeso de agua y quitar las partes podridas"
                              },
                              {
                                "imageURL":"dionea_trampa.png",
                                "res": "no",
                                "texto": "Se le secan las trampas",
                                "opciones": [
                                  {
                                    "imageURL":"res_bien.png",
                                    "res": "no",
                                    "texto": "Esta bien",
                                    "recomendacion": ""
                                  },
                                  {
                                    "imageURL":"dionea_insectos.png",
                                    "res": "si",
                                    "texto":"tiene todas o la mayoria de las trampas con insectos",
                                    "opciones": [
                                      {
                                        "imageURL":"dionea_insectos.png",
                                        "res": "si",
                                        "texto": "sobrealimentacion",
                                        "recomendacion": "deje que caze naturalmente",
                                      },
                                      {
                                        "imageURL":"dionea_caidas.png",
                                        "res": "no",
                                        "texto": "hojas caidas",
                                        "opciones": [
                                          {
                                            "imageURL":"res_regar.png",
                                            "res": "si",
                                            "texto": "deshidratación",
                                            "recomendacion": "Regar mas seguido"
                                          },
                                          {
                                            "imageURL":"dionea_temperatura.png",
                                            "res": "no",
                                            "texto": "la temperatura llega a 10 grados o menos",
                                            "opciones": [
                                              {
                                                "imageURL":"res_hibernacion.png",
                                                "res": "si",
                                                "recomendacion":"es normal que deje de crecer solo redusca el riego un poco y verifique que el centro no se ponga cafe o aguado",
                                                "texto": "hibernacion"
                                              },
                                              {
                                                "imageURL":"res_bien.png",
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
                    "res":"Nepenthes",
                    "texto":"Nepenthes",
                    "opciones":[
                      {
                        "imageURL":"nep_frio.png",
                        "res": "si",
                        "texto": "Hace frio y no esta protegida",
                        "opciones": [
                          {
                            "imageURL":"res_congela.png",
                            "res": "si",
                            "texto": "Se congela",
                            "recomendacion":
                                "Protegerla del frio y si algunas hojas ya estan aguadas cortalas"
                          },
                          {
                            "imageURL":"nep_jarros.png",
                            "res": "no",
                            "texto": "No se alcanzan a formar los jarros",
                            "opciones": [
                              {
                                "imageURL":"nep_verdes.png",
                                "res": "si",
                                "texto": "hojas muy verdes",
                                "opciones": [
                                  {
                                    "imageURL":"luzhumedad.png",
                                    "res": "si",
                                    "texto": "falta de luz y humedad",
                                    "recomendacion": "cambiarla de lugar"
                                  },
                                  {
                                    "imageURL":"res_humedad.png",
                                    "res": "no",
                                    "texto": "falta de humedad",
                                    "recomendacion": "darle mas humedad"
                                  }
                                ]
                              },
                              {
                                "imageURL":"nep_jarros.png",
                                "res": "no",
                                "texto": "Perdida de jarros",
                                "opciones": [
                                  {
                                    "imageURL":"nep_calor.png",
                                    "res": "si",
                                    "texto": "hizo mucho calor",
                                    "opciones": [
                                      {
                                        "imageURL":"res_riego.png",
                                        "res": "no",
                                        "texto": "Problemas en el reigo",
                                        "recomendacion":
                                            "Verificar la calidad del agua y la frecuencia de riegos, que se mantenga humeda la tierra siempre pero sin encharcar",
                                      },
                                      {
                                        "imageURL":"res_golpecalor.png",
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
    deci.imageURL = actual['imageURL'];
    return deci;
  }

  Pregunta getPre() {
    Pregunta pregu = new Pregunta();
    pregu.texto = actual['texto'];
    if (actual.containsKey('res')) pregu.res = actual['res'];
    pregu.opciones = actual['opciones'];
    pregu.imageURL = actual['imageURL'];
    return pregu;
  }

  void obtenerNuevoAcual(res) {
    if (res == 'si' || res == 'no') {
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
      actual = {'res': x.res, 'imageURL': x.imageURL, 'texto': x.texto, 'opciones': x.opciones};
      return 'pregunta';
    }
    if (actual.containsKey('recomendacion')) {
      var x = getDe();
      actual = {};
      actual = {
        'res': x.res,
        'imageURL': x.imageURL,
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
