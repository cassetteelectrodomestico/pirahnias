var preguntasIniciales = [
  {
    "texto":"Se le cambio la tierra a una no especial para plantas carnivoras",
    "opciones": [
      {
        "texto":"Mala tierra",
        "recomendacion":"Comprar tierra especial para plantas carnivoras (perlita con musgo sphagnum) se recomienda tambien ir con un especialista en estas plantas"
      }
    ]
  },
  {
    "texto": "Se le aplico abono normal para plantas",
    "opciones": [
      {
        "texto":"Se queman las raices",
        "recomendacion":"Las plantas carnivoras no necesitan abonos, se debe de retirar la planta de la maceta, lavar con cuidado las raices con agua de garrafon y volver a ponerla en la tierra"
      }
    ]
  }
];
var preguntas = {
  "texto":"Tiene polvo blanco",
  "opciones": [
    {
      "res":"si"
      "texto":"Tiene hongos"
      "recomendacion":"Aplicar fungicida"
    },
    {
      "res":"no"
      "texto":"¿Que planta es?"
      "opciones":[
        {
          "texto":"Drosera"
          "opciones":[
            {
              "texto":"Tiene las hojas o tallos muy alargados"
              "opciones":[
                {
                  "res":"si"
                  "texto":"No tiene o tiene muy poco mucilago"
                  "opciones":[
                    {
                      "res":"no"
                      "texto":"Le falta sol"
                      "recomendaciones":"Cambiarla a un lugar mas iluminado"
                    },
                    {
                      "res":"si"
                      "texto":"Le falta sol y humedad"
                      "recomendaciones":"Cambiarla a un lugar mas iluminado y darle mas humedad con un humificador"
                    }
                  ]
                },
                {
                  "res":"no",
                  "texto":"Sus hojas estan amarillas o quemadas"
                  "opciones":[
                    {
                      "res":"si",
                      "texto":"Esta en un mal lugar"
                      "recomendaciones":"Cambiarla a un lugar iluminado, con luz y sin corrientes de aire"
                    },
                    {
                      "res":"no",
                      "texto":"Tiene una trampampa diferene, como un tallo"
                      "opciones":[
                        {
                          "res":"si",
                          "texto":"Va a florear"
                          "recomendaciones":"No es malo, solo vera flores y quizá obtenga semillas"
                        },
                        {
                          "res":"no",
                          "texto":"Se puso transparentosa o aguada"
                          "opciones":[
                            {
                              "res":"si",
                              "texto":"Exeso de agua"
                              "recomendacion":"Quite el exeso de humedad y si se puede corte las partes podridas"
                            },
                            {
                              "res":"no",
                              "texto":"Esta bien"
                              "recomendacion":""
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
          "texto":"Dionea"
          "opciones":[
            {
              "texo":"Planta muy verde o hojas alargadas",
              "opciones":[
                {
                  "res":"si",
                  "texto":"Esta etiolada (le falta luz)"
                  "recomendacion":"Cambiar a un lugar mas iluminado"
                },
                {
                  "res":"no",
                  "texto":"Cenro de la planta café o flacido",
                  "opciones":[
                    {
                      "res":"si",
                      "texto":"Se esta pudriendo"
                      "recomendacion":"Quitar el exeso de agua y quitar las partes podridas"
                    },
                    {
                      "res":"no",
                      "texto":"Se le secan las trampas",
                      "opciones":[
                        {
                          "res":"no",
                          "texto":"Esta bien",
                          "recomendacion":""
                        },
                        {
                          "res":"si",
                          "texto":"Seleccione las opciones"
                          "opciones":[
                            {
                              "texto":"hojas caidas",
                              "recomendacion":"le falta agua",
                              "causa":"deshidratación"
                            },
                            {
                              "texto":"la temperatura llega a 10 grados o menos",
                              "recomendacion":"es normal que deje de crecer solo redusca el riego un poco y verifique que el centro no se ponga cafe o aguado",
                              "causa":"hibernacion"
                            },
                            {
                              "texto":"tiene todas o la mayoria de las trampas con insectos",
                              "recomendacion":"deje que caze naturalmente",
                              "causa":"sobrealimentacion"
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
          "texto":"Nepenthes"
          "opciones":[
            {
              "texto":"Hace frio y no esta protegida",
              "opciones":[
                {
                  "res":"si"
                  "texto":"Se congela",
                  "recomendaciones":"Protegerla del frio y si algunas hojas ya estan aguadas cortalas"
                },
                {
                  "res":"no",
                  "texto":"No se alcanzan a formar los jarros",
                  "opciones":[
                    {
                      "res":"si"
                      "texto": "hojas muy verdes"
                      "opciones":[
                        {
                          "res":"si",
                          "texto":"falta de luz y humedad",
                          "recomendacion":"cambiarla de lugar"
                        },
                        {
                          "res":"no",
                          "texto":"falta de humedad",
                          "recomendacion":"darle mas humedad"
                        }
                      ]
                    },
                    {
                      "res":"no",
                      "texto":"Perdida de jarros",
                      "opciones":[
                        {
                          "res":"si",
                          "texto":"seleccione sintomas",
                          "opciones":[
                            {
                              "texto":"hojas aguadas",
                              "recomendacion":"quitar el exeso de agua",
                              "causa":"exeso de agua"
                            },
                            {
                              "texto":"hizo mucho calor",
                              "recomendacion":"Cambiarla de lugar y aumentar la humedad",
                              "causa":"Golpe de calor"
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