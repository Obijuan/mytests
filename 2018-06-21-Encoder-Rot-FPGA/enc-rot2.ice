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
            "x": -96,
            "y": 208
          }
        },
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
            "x": 1752,
            "y": 216
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
            "x": -104,
            "y": 400
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
            "x": 592,
            "y": 672
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
            "x": 1480,
            "y": 96
          },
          "size": {
            "width": 96,
            "height": 176
          }
        },
        {
          "id": "b67686aa-c798-4f7c-a0ea-83d42fd1deab",
          "type": "basic.code",
          "data": {
            "code": "// debounce\n    wire [1:0] rot_in = {rot_1_i, rot_2_i};\n    reg rot_1, rot_2;\n    reg rot_1_delay;\n\n    always @(posedge clk) begin\n        case (rot_in)\n            'b00: rot_1 <= 0;\n            'b01: rot_2 <= 0;\n            'b10: rot_2 <= 1;\n            'b11: rot_1 <= 1;\n        endcase\n\n    end\n\n    // decode the (now debounced) rotary input into rot_dir and rot_event\n    // rot_dir = 1 means right rotations, and\n    // rot_event will go high for one cycle if a rotation occurs\n    reg rot_dir, rot_event;\n\n    always @(posedge clk) begin\n        rot_1_delay <= rot_1;\n\n        if(rot_1 & ~rot_1_delay) begin\n            rot_event <= 1;\n            rot_dir <= rot_2;\n        end\n        else begin\n            rot_event <= 0;\n        end\n    end\n\n    assign rot_dir_o = rot_dir;\nassign rot_event_o = rot_event;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "rot_1_i"
                },
                {
                  "name": "rot_2_i"
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
            "x": 192,
            "y": -56
          },
          "size": {
            "width": 608,
            "height": 584
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
            "x": 1112,
            "y": 256
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
            "x": 1480,
            "y": 328
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
            "block": "6e35df4e-561d-444d-86ef-e0883eed97b6",
            "port": "out"
          },
          "target": {
            "block": "b67686aa-c798-4f7c-a0ea-83d42fd1deab",
            "port": "rot_1_i"
          }
        },
        {
          "source": {
            "block": "1559acf0-eb94-4372-9696-c4e3a12f9596",
            "port": "out"
          },
          "target": {
            "block": "b67686aa-c798-4f7c-a0ea-83d42fd1deab",
            "port": "rot_2_i"
          }
        },
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
          }
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
              "x": 912,
              "y": 216
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
    }
  }
}