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
          "id": "ac2c6202-a1f9-45ca-93ad-100384ddc879",
          "type": "basic.output",
          "data": {
            "name": "DEBUG",
            "pins": [
              {
                "index": "0",
                "name": "D12",
                "value": "143"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": -104,
            "y": -384
          }
        },
        {
          "id": "896d9415-78dc-4235-bffd-73078cbd4b29",
          "type": "basic.output",
          "data": {
            "name": "DEBUG_E",
            "pins": [
              {
                "index": "0",
                "name": "D8",
                "value": "138"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 640,
            "y": -352
          }
        },
        {
          "id": "826a741f-fa1b-4c58-9a44-43deb4331414",
          "type": "basic.output",
          "data": {
            "name": "E",
            "pins": [
              {
                "index": "0",
                "name": "D11",
                "value": "142"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 640,
            "y": -224
          }
        },
        {
          "id": "e34477de-e4d0-4355-8b68-88da20ed82e2",
          "type": "basic.output",
          "data": {
            "name": "DEBUG_CLK",
            "pins": [
              {
                "index": "0",
                "name": "D0",
                "value": "119"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 600,
            "y": -104
          }
        },
        {
          "id": "cc32eb13-43a0-4cbe-a7f1-0e83fd046a6d",
          "type": "basic.input",
          "data": {
            "name": "start",
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
            "x": -504,
            "y": -80
          }
        },
        {
          "id": "caebc70c-17ad-41d4-8904-749c8b038039",
          "type": "basic.output",
          "data": {
            "name": "LCD_RS",
            "pins": [
              {
                "index": "0",
                "name": "D13",
                "value": "144"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1304,
            "y": 456
          }
        },
        {
          "id": "038a305b-f303-452c-aa00-571efb014bdd",
          "type": "basic.output",
          "data": {
            "name": "DB",
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
            "x": 1320,
            "y": 600
          }
        },
        {
          "id": "b29b84a3-8eca-4b23-88e4-1a9dff0455de",
          "type": "basic.code",
          "data": {
            "code": "//-- Al activarse la señal de enable, se cuentan 3 ciclos\n//-- de reloj y se activa la señal tic durante 1 ciclo, para indicar\n//-- que han transcurrido 250ms\n\nwire rst;\n\n//-- Registro de 2 bits\nreg [1:0] q = 0;\n\n//-- Contador de 2 bits, con reset síncrono\nalways @(posedge clk)\n  if (rst)\n    q <= 0;\n  else if (ena)\n    q <= q + 1;\n    \n//-- Comparador    \nassign rst = (q==2);\n\nassign tic = rst;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "ena"
                }
              ],
              "out": [
                {
                  "name": "tic"
                }
              ]
            }
          },
          "position": {
            "x": -8,
            "y": 200
          },
          "size": {
            "width": 400,
            "height": 328
          }
        },
        {
          "id": "161da4c5-aa2d-479b-b604-3c785ca21923",
          "type": "basic.code",
          "data": {
            "code": "reg [8:0] q=0;\n\nalways @(posedge clk)\n  if (load)\n    q <= d;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "load"
                },
                {
                  "name": "d",
                  "range": "[8:0]",
                  "size": 9
                }
              ],
              "out": [
                {
                  "name": "q",
                  "range": "[8:0]",
                  "size": 9
                }
              ]
            }
          },
          "position": {
            "x": 672,
            "y": 584
          },
          "size": {
            "width": 216,
            "height": 104
          }
        },
        {
          "id": "aa520fb5-7f3b-4592-a049-d8cf4b142bef",
          "type": "basic.code",
          "data": {
            "code": "assign o8 = i[8];\nassign o = i[7:0];",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "i",
                  "range": "[8:0]",
                  "size": 9
                }
              ],
              "out": [
                {
                  "name": "o8"
                },
                {
                  "name": "o",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 1008,
            "y": 576
          },
          "size": {
            "width": 192,
            "height": 128
          }
        },
        {
          "id": "4568ec17-7579-451f-931e-734271964e2a",
          "type": "basic.code",
          "data": {
            "code": "assign k = 9'h0C0;",
            "params": [],
            "ports": {
              "in": [],
              "out": [
                {
                  "name": "k",
                  "range": "[8:0]",
                  "size": 9
                }
              ]
            }
          },
          "position": {
            "x": -376,
            "y": 640
          },
          "size": {
            "width": 216,
            "height": 64
          }
        },
        {
          "id": "1f863dcf-b613-41cc-bd0c-588b4afc5851",
          "type": "basic.info",
          "data": {
            "info": "**cmd**",
            "readonly": true
          },
          "position": {
            "x": -296,
            "y": 592
          },
          "size": {
            "width": 112,
            "height": 32
          }
        },
        {
          "id": "e1ae3bfb-4823-439d-8bf3-56f2c94f41b2",
          "type": "basic.code",
          "data": {
            "code": "localparam IDLE = 2'b00;\nlocalparam LOAD = 2'b01;\nlocalparam E1 = 2'b10;\nlocalparam E0 = 2'b11;\n\n//-- señales de control\nreg ton = 0;\nreg load = 0;\nreg e = 0;\n\n//-- fsm states\nreg [1:0] state = IDLE;\nreg [1:0] next_state = IDLE;//-- Control signals\n\n//-- Transition between states\nalways @(posedge clk)\n    state <= next_state;\n    \n//-- Control signal generation and next states\nalways @(*) begin\n\n  //-- Default values\n  next_state = state;      //-- Stay in the same state by default\n  ton = 0;\n  load = 0;\n  e = 0;\n  \n case(state)\n\n    //-- Idle state\n    IDLE: begin\n      if (start)\n        next_state = LOAD;\n    end\n\n    LOAD: begin\n      load = 1;\n      next_state = E1;\n    end\n\n    \n    E1: begin\n      ton = 1;\n      e=1;\n      \n      if (t250ns)\n        next_state = E0;\n    end\n\n    E0: begin\n       ton = 1;\n       if (t250ns)\n        next_state = IDLE;\n    end\n    \n\n    default: begin\n      load = 0;\n      ton = 0;\n      e = 0;\n    end\n\n  endcase \n end\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "start"
                },
                {
                  "name": "t250ns"
                }
              ],
              "out": [
                {
                  "name": "e"
                },
                {
                  "name": "load"
                },
                {
                  "name": "ton"
                }
              ]
            }
          },
          "position": {
            "x": 0,
            "y": -256
          },
          "size": {
            "width": 368,
            "height": 360
          }
        },
        {
          "id": "9efc8d3a-dbb5-44a6-9180-c3ba7821b0ae",
          "type": "b734f60cce5a9de8621cbbd63cf95b689e40512c",
          "position": {
            "x": -200,
            "y": -104
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
            "block": "b29b84a3-8eca-4b23-88e4-1a9dff0455de",
            "port": "tic"
          },
          "target": {
            "block": "e1ae3bfb-4823-439d-8bf3-56f2c94f41b2",
            "port": "t250ns"
          },
          "vertices": [
            {
              "x": 456,
              "y": 168
            },
            {
              "x": -48,
              "y": 160
            }
          ]
        },
        {
          "source": {
            "block": "e1ae3bfb-4823-439d-8bf3-56f2c94f41b2",
            "port": "load"
          },
          "target": {
            "block": "161da4c5-aa2d-479b-b604-3c785ca21923",
            "port": "load"
          },
          "vertices": [
            {
              "x": 512,
              "y": 448
            }
          ]
        },
        {
          "source": {
            "block": "161da4c5-aa2d-479b-b604-3c785ca21923",
            "port": "q"
          },
          "target": {
            "block": "aa520fb5-7f3b-4592-a049-d8cf4b142bef",
            "port": "i"
          },
          "size": 9
        },
        {
          "source": {
            "block": "aa520fb5-7f3b-4592-a049-d8cf4b142bef",
            "port": "o8"
          },
          "target": {
            "block": "caebc70c-17ad-41d4-8904-749c8b038039",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "aa520fb5-7f3b-4592-a049-d8cf4b142bef",
            "port": "o"
          },
          "target": {
            "block": "038a305b-f303-452c-aa00-571efb014bdd",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "4568ec17-7579-451f-931e-734271964e2a",
            "port": "k"
          },
          "target": {
            "block": "161da4c5-aa2d-479b-b604-3c785ca21923",
            "port": "d"
          },
          "size": 9
        },
        {
          "source": {
            "block": "e1ae3bfb-4823-439d-8bf3-56f2c94f41b2",
            "port": "ton"
          },
          "target": {
            "block": "b29b84a3-8eca-4b23-88e4-1a9dff0455de",
            "port": "ena"
          },
          "vertices": [
            {
              "x": 488,
              "y": 568
            },
            {
              "x": -48,
              "y": 544
            }
          ]
        },
        {
          "source": {
            "block": "e1ae3bfb-4823-439d-8bf3-56f2c94f41b2",
            "port": "e"
          },
          "target": {
            "block": "826a741f-fa1b-4c58-9a44-43deb4331414",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "e1ae3bfb-4823-439d-8bf3-56f2c94f41b2",
            "port": "e"
          },
          "target": {
            "block": "896d9415-78dc-4235-bffd-73078cbd4b29",
            "port": "in"
          },
          "vertices": [
            {
              "x": 512,
              "y": -272
            }
          ]
        },
        {
          "source": {
            "block": "e1ae3bfb-4823-439d-8bf3-56f2c94f41b2",
            "port": "load"
          },
          "target": {
            "block": "e34477de-e4d0-4355-8b68-88da20ed82e2",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "9efc8d3a-dbb5-44a6-9180-c3ba7821b0ae",
            "port": "3d584b0a-29eb-47af-8c43-c0822282ef05"
          },
          "target": {
            "block": "e1ae3bfb-4823-439d-8bf3-56f2c94f41b2",
            "port": "start"
          }
        }
      ]
    }
  },
  "dependencies": {
    "b734f60cce5a9de8621cbbd63cf95b689e40512c": {
      "package": {
        "name": "1",
        "version": "0.1",
        "description": "Un bit constante a 1",
        "author": "Jesus Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2233.632%22%20height=%2269.34%22%20viewBox=%220%200%2031.530464%2065.006656%22%3E%3Cpath%20d=%22M3.517%2012.015L19%200l12.53%202.863-10.012%2043.262-9.746-2.227%207.7-34.532L8.03%2016.38z%22%20fill=%22#00f%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M17.593%2043.464l7.822%2010.472-6.56%207.919%202.27%202.043M15.985%2043.719l-4.542%2010.473-10.345%202.043.757%203.32%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222.196%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
              "type": "basic.code",
              "data": {
                "code": "//-- Bit constante a 1\nassign q = 1'b1;\n\n",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 168,
                "y": 112
              },
              "size": {
                "width": 256,
                "height": 160
              }
            },
            {
              "id": "3d584b0a-29eb-47af-8c43-c0822282ef05",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 512,
                "y": 160
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
                "port": "q"
              },
              "target": {
                "block": "3d584b0a-29eb-47af-8c43-c0822282ef05",
                "port": "in"
              }
            }
          ]
        }
      }
    }
  }
}