{
  "version": "1.2",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "22fc2a6a-4a2f-44c8-9574-00e110120c10",
          "type": "basic.output",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "GP2",
                "value": "39"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 168,
            "y": -184
          }
        },
        {
          "id": "a40bbe37-9b01-4380-9239-41319715d8e6",
          "type": "basic.input",
          "data": {
            "name": "QA",
            "pins": [
              {
                "index": "0",
                "name": "GP0",
                "value": "37"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 16,
            "y": -72
          }
        },
        {
          "id": "faa218b5-75c3-43ff-82ac-f3110211a798",
          "type": "basic.output",
          "data": {
            "name": "debug",
            "pins": [
              {
                "index": "0",
                "name": "LED0",
                "value": "95"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 736,
            "y": -56
          }
        },
        {
          "id": "21d52b20-a237-4387-9efa-80adff91a653",
          "type": "basic.input",
          "data": {
            "name": "QB",
            "pins": [
              {
                "index": "0",
                "name": "GP1",
                "value": "38"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 16,
            "y": 0
          }
        },
        {
          "id": "ae1c6158-5a92-4a5f-b03e-0491a16cef50",
          "type": "basic.input",
          "data": {
            "name": "rst",
            "pins": [
              {
                "index": "0",
                "name": "SW1",
                "value": "10"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 360,
            "y": 48
          }
        },
        {
          "id": "dc334f62-7873-4f89-ba14-6144549bb4b2",
          "type": "basic.output",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "GP4",
                "value": "42"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 176,
            "y": 80
          }
        },
        {
          "id": "85ac2f63-4304-4f6b-aa61-120ef0451439",
          "type": "basic.memory",
          "data": {
            "name": "",
            "list": "0\n0\n1\n0",
            "local": false
          },
          "position": {
            "x": 336,
            "y": -200
          },
          "size": {
            "width": 96,
            "height": 104
          }
        },
        {
          "id": "7032c074-367a-4345-a943-b289ef6f96e5",
          "type": "6a5c56f36da0efd7fd7e723fa67129b84689036a",
          "position": {
            "x": 568,
            "y": -72
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "89bf0a98-c988-4f74-840f-2b393b8573a8",
          "type": "132a1513942301e2dd65111ad66fae1501604c3a",
          "position": {
            "x": 336,
            "y": -56
          },
          "size": {
            "width": 96,
            "height": 64
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "a40bbe37-9b01-4380-9239-41319715d8e6",
            "port": "out"
          },
          "target": {
            "block": "89bf0a98-c988-4f74-840f-2b393b8573a8",
            "port": "ace53645-b2e3-46be-beae-4ada8d69586e"
          }
        },
        {
          "source": {
            "block": "21d52b20-a237-4387-9efa-80adff91a653",
            "port": "out"
          },
          "target": {
            "block": "89bf0a98-c988-4f74-840f-2b393b8573a8",
            "port": "561eb4e1-8d5e-48ed-be5f-2e0009ca1648"
          }
        },
        {
          "source": {
            "block": "85ac2f63-4304-4f6b-aa61-120ef0451439",
            "port": "memory-out"
          },
          "target": {
            "block": "89bf0a98-c988-4f74-840f-2b393b8573a8",
            "port": "c71c44ac-0500-4eb5-9c1c-4ea21cd78377"
          }
        },
        {
          "source": {
            "block": "89bf0a98-c988-4f74-840f-2b393b8573a8",
            "port": "a27d660d-90c7-4b16-9727-ea799771b851"
          },
          "target": {
            "block": "7032c074-367a-4345-a943-b289ef6f96e5",
            "port": "3ae2d46d-7981-497a-899f-b60bfae0f43e"
          }
        },
        {
          "source": {
            "block": "ae1c6158-5a92-4a5f-b03e-0491a16cef50",
            "port": "out"
          },
          "target": {
            "block": "7032c074-367a-4345-a943-b289ef6f96e5",
            "port": "86eb8c81-17fc-4371-bd21-51f429191f3c"
          }
        },
        {
          "source": {
            "block": "7032c074-367a-4345-a943-b289ef6f96e5",
            "port": "1cb167a4-9e2a-416b-803e-da7b6151eaa5"
          },
          "target": {
            "block": "faa218b5-75c3-43ff-82ac-f3110211a798",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "a40bbe37-9b01-4380-9239-41319715d8e6",
            "port": "out"
          },
          "target": {
            "block": "22fc2a6a-4a2f-44c8-9574-00e110120c10",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "21d52b20-a237-4387-9efa-80adff91a653",
            "port": "out"
          },
          "target": {
            "block": "dc334f62-7873-4f89-ba14-6144549bb4b2",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {
    "6a5c56f36da0efd7fd7e723fa67129b84689036a": {
      "package": {
        "name": "Biestable-Set-Reset",
        "version": "0.1",
        "description": "Biestable con entradas de Set y Reset síncronas, para poner y quitar notaficaciones de eventos",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22143.011%22%20height=%22226.268%22%20viewBox=%220%200%20134.0729%20212.12584%22%3E%3Cdefs%3E%3ClinearGradient%20xlink:href=%22#a%22%20id=%22b%22%20gradientUnits=%22userSpaceOnUse%22%20gradientTransform=%22matrix(1%200%200%20-1%20-106%20605)%22%20x1=%22311.42%22%20y1=%22199.72%22%20x2=%22331.42%22%20y2=%22199.72%22/%3E%3ClinearGradient%20xlink:href=%22#a%22%20id=%22d%22%20gradientUnits=%22userSpaceOnUse%22%20gradientTransform=%22matrix(1%200%200%20-1%20-106%20605)%22%20x1=%22311.42%22%20y1=%22199.72%22%20x2=%22331.42%22%20y2=%22199.72%22/%3E%3C/defs%3E%3Cg%20transform=%22translate(-248.226%20-180.19)%22%3E%3Cg%20transform=%22matrix(.34452%200%200%20.29577%20177.455%20168.399)%22%3E%3ClinearGradient%20x1=%22311.42%22%20y1=%22199.72%22%20gradientTransform=%22matrix(1%200%200%20-1%20-106%20605)%22%20x2=%22331.42%22%20gradientUnits=%22userSpaceOnUse%22%20y2=%22199.72%22%20id=%22a%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#a6a6a6%22/%3E%3Cstop%20offset=%22.385%22%20stop-color=%22#fff%22/%3E%3Cstop%20offset=%22.914%22%20stop-color=%22#999%22/%3E%3C/linearGradient%3E%3Cpath%20d=%22M225.42%2053.506v665.97c0%205.523-4.477%2037.582-10%2037.582-5.522%200-10-32.059-10-37.582V53.506h20z%22%20fill=%22url(#b)%22/%3E%3ClinearGradient%20x1=%22311.42%22%20y1=%22437.03%22%20gradientTransform=%22matrix(1%200%200%20-1%20-106%20605)%22%20x2=%22700.58%22%20gradientUnits=%22userSpaceOnUse%22%20y2=%22437.03%22%20id=%22c%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#ef0000%22/%3E%3Cstop%20offset=%22.431%22%20stop-color=%22#ff4000%22/%3E%3Cstop%20offset=%22.914%22%20stop-color=%22#ef0000%22/%3E%3C/linearGradient%3E%3Cpath%20d=%22M225.42%2053.506c122.84%2021.956%20246.32-35.422%20369.16-4.003v236.99c-129.72-33.179-259.44%2033.179-389.16%200V53.513%22%20fill=%22url(#c)%22/%3E%3Cpath%20d=%22M225.42%2053.506v665.97c0%205.523-4.477%2037.582-10%2037.582-5.522%200-10-32.059-10-37.582V53.506h20z%22%20opacity=%22.5%22%20fill=%22url(#d)%22/%3E%3C/g%3E%3Ccircle%20cx=%22316.787%22%20cy=%22306.556%22%20r=%2229.398%22%20fill=%22red%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22304.228%22%20y=%22319.954%22%20font-weight=%22400%22%20font-size=%2237.661%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22304.228%22%20y=%22319.954%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22#fff%22%3E1%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "9f09a4af-8f7a-45c3-af7b-293a244e76d9",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 200,
                "y": 64
              }
            },
            {
              "id": "3ae2d46d-7981-497a-899f-b60bfae0f43e",
              "type": "basic.input",
              "data": {
                "name": "set",
                "clock": false
              },
              "position": {
                "x": 200,
                "y": 152
              }
            },
            {
              "id": "1cb167a4-9e2a-416b-803e-da7b6151eaa5",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 720,
                "y": 152
              }
            },
            {
              "id": "86eb8c81-17fc-4371-bd21-51f429191f3c",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 200,
                "y": 232
              }
            },
            {
              "id": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
              "type": "basic.code",
              "data": {
                "code": "reg q = 0;\n\nalways @(posedge clk)\n  if (set)\n    q <= 1'b1;\n  else if (rst)\n    q<=1'b0;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "set"
                    },
                    {
                      "name": "rst"
                    }
                  ],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 400,
                "y": 120
              },
              "size": {
                "width": 224,
                "height": 128
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "9f09a4af-8f7a-45c3-af7b-293a244e76d9",
                "port": "out"
              },
              "target": {
                "block": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
                "port": "clk"
              },
              "vertices": [
                {
                  "x": 336,
                  "y": 104
                }
              ]
            },
            {
              "source": {
                "block": "3ae2d46d-7981-497a-899f-b60bfae0f43e",
                "port": "out"
              },
              "target": {
                "block": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
                "port": "set"
              }
            },
            {
              "source": {
                "block": "86eb8c81-17fc-4371-bd21-51f429191f3c",
                "port": "out"
              },
              "target": {
                "block": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
                "port": "rst"
              },
              "vertices": [
                {
                  "x": 344,
                  "y": 248
                }
              ]
            },
            {
              "source": {
                "block": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
                "port": "q"
              },
              "target": {
                "block": "1cb167a4-9e2a-416b-803e-da7b6151eaa5",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "132a1513942301e2dd65111ad66fae1501604c3a": {
      "package": {
        "name": "Tabla 2x1",
        "version": "0.1",
        "description": "Circuito combinacional de 2 entradas y 1 salida",
        "author": "Juan González Gómez y Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22184.803%22%20height=%22197.944%22%20viewBox=%220%200%20173.25325%20185.57257%22%3E%3Cg%20transform=%22translate(-181.933%20-240.254)%22%20stroke=%22#000%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22%3E%3Crect%20width=%22170.253%22%20height=%22182.573%22%20x=%22183.433%22%20y=%22241.754%22%20ry=%2219.969%22%20fill=%22#3e8db8%22%20stroke-width=%223%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22196.408%22%20y=%22274.019%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22246.344%22%20y=%22274.413%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22296.415%22%20y=%22274.413%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22196.408%22%20y=%22309.826%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22246.344%22%20y=%22310.219%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22296.415%22%20y=%22310.219%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22196.408%22%20y=%22346.025%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22246.344%22%20y=%22346.419%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22296.415%22%20y=%22346.419%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22196.408%22%20y=%22381.832%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22246.344%22%20y=%22382.225%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22296.415%22%20y=%22382.225%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "ace53645-b2e3-46be-beae-4ada8d69586e",
              "type": "basic.input",
              "data": {
                "name": "i1",
                "clock": false
              },
              "position": {
                "x": 16,
                "y": 288
              }
            },
            {
              "id": "a27d660d-90c7-4b16-9727-ea799771b851",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 640,
                "y": 336
              }
            },
            {
              "id": "561eb4e1-8d5e-48ed-be5f-2e0009ca1648",
              "type": "basic.input",
              "data": {
                "name": "i0",
                "clock": false
              },
              "position": {
                "x": 16,
                "y": 392
              }
            },
            {
              "id": "c71c44ac-0500-4eb5-9c1c-4ea21cd78377",
              "type": "basic.memory",
              "data": {
                "name": "",
                "list": "0\n0\n0\n0",
                "local": false
              },
              "position": {
                "x": 280,
                "y": 72
              },
              "size": {
                "width": 192,
                "height": 128
              }
            },
            {
              "id": "48c38eba-4e12-44d9-a55b-a93def6a27db",
              "type": "basic.code",
              "data": {
                "code": "wire q;\nreg [0:0] tabla[0:3];\n\nwire [1:0] i = {i1, i0};\n\n//-- Read the table\nassign q = tabla[i];\n\n//-- Init table from DATA parameters\ninitial begin\n  if (DATA) $readmemh(DATA, tabla);\nend",
                "params": [
                  {
                    "name": "DATA"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "i1"
                    },
                    {
                      "name": "i0"
                    }
                  ],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 184,
                "y": 264
              },
              "size": {
                "width": 384,
                "height": 208
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "48c38eba-4e12-44d9-a55b-a93def6a27db",
                "port": "q"
              },
              "target": {
                "block": "a27d660d-90c7-4b16-9727-ea799771b851",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "c71c44ac-0500-4eb5-9c1c-4ea21cd78377",
                "port": "memory-out"
              },
              "target": {
                "block": "48c38eba-4e12-44d9-a55b-a93def6a27db",
                "port": "DATA"
              }
            },
            {
              "source": {
                "block": "ace53645-b2e3-46be-beae-4ada8d69586e",
                "port": "out"
              },
              "target": {
                "block": "48c38eba-4e12-44d9-a55b-a93def6a27db",
                "port": "i1"
              }
            },
            {
              "source": {
                "block": "561eb4e1-8d5e-48ed-be5f-2e0009ca1648",
                "port": "out"
              },
              "target": {
                "block": "48c38eba-4e12-44d9-a55b-a93def6a27db",
                "port": "i0"
              }
            }
          ]
        }
      }
    }
  }
}