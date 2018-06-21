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
          "id": "64b29f40-03f5-466d-b57e-f6f3cef2cb8e",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "LED7",
                "value": "104"
              },
              {
                "index": "6",
                "name": "LED6",
                "value": "102"
              },
              {
                "index": "5",
                "name": "LED5",
                "value": "101"
              },
              {
                "index": "4",
                "name": "LED4",
                "value": "99"
              },
              {
                "index": "3",
                "name": "LED3",
                "value": "98"
              },
              {
                "index": "2",
                "name": "LED2",
                "value": "97"
              },
              {
                "index": "1",
                "name": "LED1",
                "value": "96"
              },
              {
                "index": "0",
                "name": "LED0",
                "value": "95"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1792,
            "y": -432
          }
        },
        {
          "id": "6e35df4e-561d-444d-86ef-e0883eed97b6",
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
            "x": -496,
            "y": -280
          }
        },
        {
          "id": "1559acf0-eb94-4372-9696-c4e3a12f9596",
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
            "x": -496,
            "y": -168
          }
        },
        {
          "id": "497b35a1-5d3e-4033-9157-edbe82616868",
          "type": "basic.input",
          "data": {
            "name": "Reset",
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
            "x": 968,
            "y": -48
          }
        },
        {
          "id": "5ad5dc9f-feae-471b-a750-eeb785691bfd",
          "type": "basic.memory",
          "data": {
            "name": "",
            "list": "01\n02\n04\n08\n10\n20\n40\n80",
            "local": false
          },
          "position": {
            "x": 1592,
            "y": -544
          },
          "size": {
            "width": 96,
            "height": 176
          }
        },
        {
          "id": "bb715926-f9e4-4af6-8dd5-ac4097ed216c",
          "type": "basic.code",
          "data": {
            "code": "reg [2:0] o=0;\n\nalways @(posedge clk)\nbegin\n  if (rst)\n    o <= 0;\n  else\n    if (cnt)\n      if (up) begin\n        if (o < 3'h7)\n          o <= o + 1;\n      end\n      else\n        if (o>0)\n          o <= o - 1;\nend",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "up"
                },
                {
                  "name": "cnt"
                },
                {
                  "name": "rst"
                }
              ],
              "out": [
                {
                  "name": "o",
                  "range": "[2:0]",
                  "size": 3
                }
              ]
            }
          },
          "position": {
            "x": 1184,
            "y": -400
          },
          "size": {
            "width": 304,
            "height": 224
          }
        },
        {
          "id": "1160b88b-a78d-4f19-af38-8b60898d2310",
          "type": "65eb8d7bb13d537b75a4beeee3134ae54dd4c376",
          "position": {
            "x": 1592,
            "y": -320
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "25e4d324-233c-4481-85c4-f74bbdff7a1c",
          "type": "8b89a54940796d87a750d07e9b511ed41621037e",
          "position": {
            "x": -120,
            "y": -312
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "3ec598d3-dc84-4c5f-b08d-33b64e6e2481",
          "type": "8b89a54940796d87a750d07e9b511ed41621037e",
          "position": {
            "x": -296,
            "y": -296
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "f27c26c3-e841-444a-842f-68677f341d65",
          "type": "8b89a54940796d87a750d07e9b511ed41621037e",
          "position": {
            "x": -120,
            "y": -200
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "07c9f035-dbe7-403f-8731-ebf82c82c41f",
          "type": "8b89a54940796d87a750d07e9b511ed41621037e",
          "position": {
            "x": -296,
            "y": -184
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "8b4fcd4e-eecd-4f07-a97f-27539c13c39f",
          "type": "basic.code",
          "data": {
            "code": "//-- Code taken from: https://github.com/mcmayer/iCE40/tree/master/rotary_enc\n//-- Mcmayer\n\n// decode the input from a rotary encoder\n// See http://www.eng.utah.edu/%7Ecs3710/xilinx-docs/examples/s3esk_rotary_encoder_interface.pdf\n//\n\n// debounce\n    wire [1:0] rot_in = {qa, qb};\n    reg q1, q2;\n    \n    always @(posedge clk) begin\n        case (rot_in)\n            'b00: q1 <= 0;\n            'b01: q2 <= 0;\n            'b10: q2 <= 1;\n            'b11: q1 <= 1;\n        endcase\n\n    end",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "qa"
                },
                {
                  "name": "qb"
                }
              ],
              "out": [
                {
                  "name": "q1"
                },
                {
                  "name": "q2"
                }
              ]
            }
          },
          "position": {
            "x": 64,
            "y": -456
          },
          "size": {
            "width": 320,
            "height": 344
          }
        },
        {
          "id": "b67686aa-c798-4f7c-a0ea-83d42fd1deab",
          "type": "basic.code",
          "data": {
            "code": "\n\n    // decode the (now debounced) rotary input into rot_dir and rot_event\n    // rot_dir = 1 means right rotations, and\n    // rot_event will go high for one cycle if a rotation occurs\n    reg rot_dir, rot_event;\n    reg rot_1_delay;\n\n    always @(posedge clk) begin\n        rot_1_delay <= q1;\n\n        if(q1 & ~rot_1_delay) begin\n            rot_event <= 1;\n            rot_dir <= q2;\n        end\n        else begin\n            rot_event <= 0;\n        end\n    end\n\n    assign rot_dir_o = rot_dir;\nassign rot_event_o = rot_event;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "q1"
                },
                {
                  "name": "q2"
                }
              ],
              "out": [
                {
                  "name": "rot_dir_o"
                },
                {
                  "name": "rot_event_o"
                }
              ]
            }
          },
          "position": {
            "x": 520,
            "y": -464
          },
          "size": {
            "width": 480,
            "height": 360
          }
        },
        {
          "id": "9605516d-2ea0-4a17-86c4-16df4a1c7d05",
          "type": "basic.info",
          "data": {
            "info": "//-- Estabilizacion señal (eliminar rebotes)",
            "readonly": true
          },
          "position": {
            "x": 64,
            "y": -528
          },
          "size": {
            "width": 352,
            "height": 96
          }
        },
        {
          "id": "3163baef-60a7-4cc8-bbad-4acdfab60e01",
          "type": "basic.info",
          "data": {
            "info": "Obtención de la dirección de rotación  \ny del evento (giro)",
            "readonly": true
          },
          "position": {
            "x": 616,
            "y": -544
          },
          "size": {
            "width": 328,
            "height": 72
          }
        },
        {
          "id": "df9b6563-01aa-4097-9604-6cb0773abc53",
          "type": "basic.info",
          "data": {
            "info": "Contador de 3 bits ascendete/descendente  \nCon limite superior (7) e inferior (0)",
            "readonly": true
          },
          "position": {
            "x": 1200,
            "y": -504
          },
          "size": {
            "width": 328,
            "height": 64
          }
        },
        {
          "id": "171e0adc-d351-4865-a326-dfd6f07d9b1a",
          "type": "basic.info",
          "data": {
            "info": "Decodificador de 3 a 8",
            "readonly": true
          },
          "position": {
            "x": 1552,
            "y": -568
          },
          "size": {
            "width": 232,
            "height": 48
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "497b35a1-5d3e-4033-9157-edbe82616868",
            "port": "out"
          },
          "target": {
            "block": "bb715926-f9e4-4af6-8dd5-ac4097ed216c",
            "port": "rst"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "b67686aa-c798-4f7c-a0ea-83d42fd1deab",
            "port": "rot_event_o"
          },
          "target": {
            "block": "bb715926-f9e4-4af6-8dd5-ac4097ed216c",
            "port": "cnt"
          },
          "vertices": [
            {
              "x": 1096,
              "y": -248
            }
          ]
        },
        {
          "source": {
            "block": "b67686aa-c798-4f7c-a0ea-83d42fd1deab",
            "port": "rot_dir_o"
          },
          "target": {
            "block": "bb715926-f9e4-4af6-8dd5-ac4097ed216c",
            "port": "up"
          },
          "vertices": [
            {
              "x": 1104,
              "y": -336
            }
          ]
        },
        {
          "source": {
            "block": "bb715926-f9e4-4af6-8dd5-ac4097ed216c",
            "port": "o"
          },
          "target": {
            "block": "1160b88b-a78d-4f19-af38-8b60898d2310",
            "port": "9b9aecfc-8fff-4f23-9dc1-ba9457b4fdfe"
          },
          "size": 3
        },
        {
          "source": {
            "block": "1160b88b-a78d-4f19-af38-8b60898d2310",
            "port": "27927cc7-8040-45ef-8324-a008cdaa056f"
          },
          "target": {
            "block": "64b29f40-03f5-466d-b57e-f6f3cef2cb8e",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "5ad5dc9f-feae-471b-a750-eeb785691bfd",
            "port": "memory-out"
          },
          "target": {
            "block": "1160b88b-a78d-4f19-af38-8b60898d2310",
            "port": "c71c44ac-0500-4eb5-9c1c-4ea21cd78377"
          }
        },
        {
          "source": {
            "block": "3ec598d3-dc84-4c5f-b08d-33b64e6e2481",
            "port": "ffdd9aa2-aea3-4aa9-8431-80e799226774"
          },
          "target": {
            "block": "25e4d324-233c-4481-85c4-f74bbdff7a1c",
            "port": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2"
          }
        },
        {
          "source": {
            "block": "6e35df4e-561d-444d-86ef-e0883eed97b6",
            "port": "out"
          },
          "target": {
            "block": "3ec598d3-dc84-4c5f-b08d-33b64e6e2481",
            "port": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2"
          }
        },
        {
          "source": {
            "block": "07c9f035-dbe7-403f-8731-ebf82c82c41f",
            "port": "ffdd9aa2-aea3-4aa9-8431-80e799226774"
          },
          "target": {
            "block": "f27c26c3-e841-444a-842f-68677f341d65",
            "port": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "1559acf0-eb94-4372-9696-c4e3a12f9596",
            "port": "out"
          },
          "target": {
            "block": "07c9f035-dbe7-403f-8731-ebf82c82c41f",
            "port": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2"
          }
        },
        {
          "source": {
            "block": "8b4fcd4e-eecd-4f07-a97f-27539c13c39f",
            "port": "q1"
          },
          "target": {
            "block": "b67686aa-c798-4f7c-a0ea-83d42fd1deab",
            "port": "q1"
          }
        },
        {
          "source": {
            "block": "8b4fcd4e-eecd-4f07-a97f-27539c13c39f",
            "port": "q2"
          },
          "target": {
            "block": "b67686aa-c798-4f7c-a0ea-83d42fd1deab",
            "port": "q2"
          }
        },
        {
          "source": {
            "block": "25e4d324-233c-4481-85c4-f74bbdff7a1c",
            "port": "ffdd9aa2-aea3-4aa9-8431-80e799226774"
          },
          "target": {
            "block": "8b4fcd4e-eecd-4f07-a97f-27539c13c39f",
            "port": "qa"
          }
        },
        {
          "source": {
            "block": "f27c26c3-e841-444a-842f-68677f341d65",
            "port": "ffdd9aa2-aea3-4aa9-8431-80e799226774"
          },
          "target": {
            "block": "8b4fcd4e-eecd-4f07-a97f-27539c13c39f",
            "port": "qb"
          }
        }
      ]
    }
  },
  "dependencies": {
    "65eb8d7bb13d537b75a4beeee3134ae54dd4c376": {
      "package": {
        "name": "Tabla 3x2",
        "version": "0.1",
        "description": "Circuito combinacional de 3 entradas y 2 salidas",
        "author": "Juan González Gómez y Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22184.803%22%20height=%22197.944%22%20viewBox=%220%200%20173.25325%20185.57257%22%3E%3Cg%20transform=%22translate(-181.933%20-240.254)%22%20stroke=%22#000%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22%3E%3Crect%20width=%22170.253%22%20height=%22182.573%22%20x=%22183.433%22%20y=%22241.754%22%20ry=%2219.969%22%20fill=%22#3e8db8%22%20stroke-width=%223%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22196.408%22%20y=%22274.019%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22246.344%22%20y=%22274.413%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22296.415%22%20y=%22274.413%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22196.408%22%20y=%22309.826%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22246.344%22%20y=%22310.219%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22296.415%22%20y=%22310.219%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22196.408%22%20y=%22346.025%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22246.344%22%20y=%22346.419%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22296.415%22%20y=%22346.419%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22196.408%22%20y=%22381.832%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22246.344%22%20y=%22382.225%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3Crect%20width=%2244.038%22%20height=%2231.478%22%20x=%22296.415%22%20y=%22382.225%22%20ry=%220%22%20fill=%22#e6e6e6%22%20stroke-width=%222%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "27927cc7-8040-45ef-8324-a008cdaa056f",
              "type": "basic.output",
              "data": {
                "name": "q",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 648,
                "y": 336
              }
            },
            {
              "id": "9b9aecfc-8fff-4f23-9dc1-ba9457b4fdfe",
              "type": "basic.input",
              "data": {
                "name": "i",
                "range": "[2:0]",
                "clock": false,
                "size": 3
              },
              "position": {
                "x": -16,
                "y": 336
              }
            },
            {
              "id": "c71c44ac-0500-4eb5-9c1c-4ea21cd78377",
              "type": "basic.memory",
              "data": {
                "name": "",
                "list": "01\n02\n04\n08\n10\n20\n40\n80",
                "local": false
              },
              "position": {
                "x": 320,
                "y": 32
              },
              "size": {
                "width": 96,
                "height": 176
              }
            },
            {
              "id": "48c38eba-4e12-44d9-a55b-a93def6a27db",
              "type": "basic.code",
              "data": {
                "code": "reg [7:0] tabla[0:7];\n\n//-- Read the table\nassign q = tabla[i];\n\n//-- Init table from DATA parameters\ninitial begin\n  if (DATA) $readmemh(DATA, tabla);\nend",
                "params": [
                  {
                    "name": "DATA"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "i",
                      "range": "[2:0]",
                      "size": 3
                    }
                  ],
                  "out": [
                    {
                      "name": "q",
                      "range": "[7:0]",
                      "size": 8
                    }
                  ]
                }
              },
              "position": {
                "x": 176,
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
                "block": "48c38eba-4e12-44d9-a55b-a93def6a27db",
                "port": "q"
              },
              "target": {
                "block": "27927cc7-8040-45ef-8324-a008cdaa056f",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "9b9aecfc-8fff-4f23-9dc1-ba9457b4fdfe",
                "port": "out"
              },
              "target": {
                "block": "48c38eba-4e12-44d9-a55b-a93def6a27db",
                "port": "i"
              },
              "size": 3
            }
          ]
        }
      }
    },
    "8b89a54940796d87a750d07e9b511ed41621037e": {
      "package": {
        "name": "Flip-flop D",
        "version": "1.0.0",
        "description": "Delay flip-flop",
        "author": "Carlos Diaz",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%2090%2040%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-231.121%22%20y=%22429.867%22%20font-weight=%22400%22%20font-size=%2224.601%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-231.121%22%20y=%22429.867%22%3EDFF%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "6855f64f-fa1c-4371-b2e1-a98970674a96",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 232,
                "y": 168
              }
            },
            {
              "id": "ffdd9aa2-aea3-4aa9-8431-80e799226774",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 864,
                "y": 232
              }
            },
            {
              "id": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 232,
                "y": 304
              }
            },
            {
              "id": "e5222a6e-4717-4f08-99d7-7cde897060ca",
              "type": "basic.code",
              "data": {
                "code": "// D flip-flop\n\nreg q = 1'b0;\n\nalways @(posedge clk)\nbegin\n  q <= d;\nend\n\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "d"
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
                "x": 432,
                "y": 128
              },
              "size": {
                "width": 368,
                "height": 272
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2",
                "port": "out"
              },
              "target": {
                "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
                "port": "d"
              }
            },
            {
              "source": {
                "block": "6855f64f-fa1c-4371-b2e1-a98970674a96",
                "port": "out"
              },
              "target": {
                "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
                "port": "q"
              },
              "target": {
                "block": "ffdd9aa2-aea3-4aa9-8431-80e799226774",
                "port": "in"
              }
            }
          ]
        }
      }
    }
  }
}