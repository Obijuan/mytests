{
  "version": "1.1",
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
          "id": "7822c7fc-61ce-4312-838f-e1e3186c420b",
          "type": "basic.output",
          "data": {
            "name": "CH2",
            "pins": [
              {
                "index": "0",
                "name": "D1",
                "value": "118"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1144,
            "y": -128
          }
        },
        {
          "id": "21e48046-642f-4531-8ebb-a584a33ba974",
          "type": "basic.input",
          "data": {
            "name": "Boton",
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
            "x": 56,
            "y": -48
          }
        },
        {
          "id": "91f10cfc-fafb-47c1-88ee-127b10bca7bf",
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
            "x": 1360,
            "y": -32
          }
        },
        {
          "id": "e0dcb44f-85de-4e21-957a-8caeeba66220",
          "type": "basic.output",
          "data": {
            "name": "CH3",
            "pins": [
              {
                "index": "0",
                "name": "D2",
                "value": "117"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1184,
            "y": -8
          }
        },
        {
          "id": "cedb3583-19c2-429e-a3e4-7e71f72b1e73",
          "type": "basic.input",
          "data": {
            "name": "SDA",
            "pins": [
              {
                "index": "0",
                "name": "ADC_SDA",
                "value": "90"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 56,
            "y": 112
          }
        },
        {
          "id": "210a60c4-f5ae-48eb-97d5-b15396773fd0",
          "type": "basic.output",
          "data": {
            "name": "CH4",
            "pins": [
              {
                "index": "0",
                "name": "D3",
                "value": "116"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1256,
            "y": 248
          }
        },
        {
          "id": "0a489929-0d21-4d7a-8ff5-83d31aa42ed5",
          "type": "basic.output",
          "data": {
            "name": "SCL",
            "pins": [
              {
                "index": "0",
                "name": "ADC_SCL",
                "value": "91"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1048,
            "y": 328
          }
        },
        {
          "id": "4a797869-6ee5-46f4-a3c4-e5be43c6d8d7",
          "type": "basic.output",
          "data": {
            "name": "SCL_debug",
            "pins": [
              {
                "index": "0",
                "name": "DD4",
                "value": "88"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1048,
            "y": 416
          }
        },
        {
          "id": "cc4bcebe-f7e9-4f70-86c9-1aa0be709c36",
          "type": "basic.output",
          "data": {
            "name": "SDA_debug",
            "pins": [
              {
                "index": "0",
                "name": "DD4",
                "value": "88"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1048,
            "y": 496
          }
        },
        {
          "id": "2ae8caa0-da46-4922-9585-adc05aeb2cf1",
          "type": "basic.output",
          "data": {
            "name": "CH1",
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
            "x": 1160,
            "y": 688
          }
        },
        {
          "id": "80d04c3a-039f-439a-aa8b-d2f23f9ce3ef",
          "type": "basic.constant",
          "data": {
            "name": "ADDR",
            "value": "7'b1001000",
            "local": false
          },
          "position": {
            "x": -88,
            "y": 152
          }
        },
        {
          "id": "bb5c2aa7-df76-49f1-a685-18f04cf99703",
          "type": "basic.constant",
          "data": {
            "name": "Data",
            "value": "8'h2",
            "local": false
          },
          "position": {
            "x": -80,
            "y": 416
          }
        },
        {
          "id": "25411a3a-9079-4264-8ee7-be466dae70bb",
          "type": "21cfcc19a4ad14c5fb5e8cfebd018ec356fe7542",
          "position": {
            "x": 64,
            "y": 672
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "2ee844e8-200f-4a80-8330-26cdcc9c6394",
          "type": "a750489117f7e24590a9148d68db6b3228be8a08",
          "position": {
            "x": -88,
            "y": 312
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "7ecce34d-c8d4-4776-ab7a-297ac5ab7217",
          "type": "36d45a23315e6b3fcb068d28cf621902ea41ad80",
          "position": {
            "x": -80,
            "y": 528
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "cefba7a3-90d2-4a57-8b1f-339495652020",
          "type": "basic.code",
          "data": {
            "code": "parameter  BUS_CLK_400  = 400_000;\nparameter  BUS_CLK_100  = 100_000;\nparameter  CLK_FREQ = 12_000_000;  //-- 100_000_000 Initial value\nlocalparam DIVIDER_400  = (CLK_FREQ/BUS_CLK_400/4);\nlocalparam DIVIDER_100  = (CLK_FREQ/BUS_CLK_100/4);\n\nlocalparam IDLE      = 4'b0000;\nlocalparam START     = 4'b0001;\nlocalparam COMMAND   = 4'b0010;\nlocalparam SLV_ACK1  = 4'b0011;\nlocalparam WR        = 4'b0100;\nlocalparam RD        = 4'b0101;\nlocalparam SLV_ACK2  = 4'b0110;\nlocalparam MSTR_ACK  = 4'b0111;\nlocalparam STOP      = 4'b1000;\n\nreg [3:0] state = IDLE;\nreg       stretch;\nreg [9:0] count;\nreg [9:0] pre_div;\nreg       ack_error;\nreg       data_clk;\nreg       data_clk_prev;\nwire      scl_in;\nreg       scl_clk;\nreg       scl_enable = 0;\nwire      sda_in;\nwire       sda_enable;\nreg       sda_int = 1'b1;\nreg [7:0] data_rx;\nreg [3:0] bit_cnt = 4'h7;\nreg [7:0] data_tx;\nreg [7:0] addr_rw;\n\n\n\nreg busy;\nreg [7:0] data_rd;\n\n\nalways @ (posedge clk or posedge rst)\nbegin\n    if (rst) begin\n        stretch <= 0;\n        count <= 0;\n    end else begin\n        data_clk_prev <= data_clk;\n\n        if (fast_mode)\n            pre_div <= DIVIDER_400;\n        else\n            pre_div <= DIVIDER_100;\n\n        if (count == pre_div*4-1) begin\n            count <= 0;\n        end else if (stretch == 1'b0) begin\n            count <= count + 1;\n        end\n\n        if (count > 0 && count <= pre_div-1) begin\n            scl_clk <= 1'b0;\n            data_clk <= 1'b0;\n        end else if (count >= pre_div && count <= pre_div*2-1) begin\n            scl_clk <= 1'b0;\n            data_clk <= 1'b1;\n        end else if (count >= pre_div*2 && count <= pre_div*3-1) begin\n            scl_clk <= 1'b1;\n            if (scl_in == 1'b0)\n                stretch <= 1'b1;\n            else\n                stretch <= 1'b0;\n            data_clk <= 1'b1;\n        end else begin\n            scl_clk <= 1'b1;\n            data_clk <= 1'b0;\n        end\n    end\nend\n\nalways @ (posedge clk or posedge rst)\nbegin\n    if (rst) begin\n        busy <= 1'b0;\n        scl_enable <= 1'b0;\n        sda_int <= 1'b1;\n        ack_error <= 1'b0;\n        bit_cnt <= 4'h7;\n        state <= IDLE;\n        data_rd <= 8'b00000000;\n    end else begin\n        if (data_clk == 1'b1 && data_clk_prev == 1'b0) begin\n            case (state)\n                IDLE: begin\n                    if (enable == 1'b1) begin\n                        busy <= 1'b1;\n                        addr_rw <= {addr, rw};\n                        state <= START;\n                    end else begin\n                        busy <= 1'b0;\n                        state <= IDLE;\n                    end\n                end\n\n                START: begin\n                    busy <= 1'b1;\n                    sda_int <= addr_rw[bit_cnt];\n                    state <= COMMAND;\n                end\n\n                COMMAND: begin\n                    if (bit_cnt == 4'b0000) begin\n                        sda_int <= 1'b1;\n                        bit_cnt <= 4'h7;\n                        state<= SLV_ACK1;\n                    end else begin\n                        bit_cnt <= bit_cnt - 1;\n                        sda_int <= addr_rw[bit_cnt-1];\n                        state <= COMMAND;\n                    end\n                end\n\n                SLV_ACK1: begin\n                    if (addr_rw[0] == 1'b0) begin\n                        sda_int <= data_tx[bit_cnt];\n                        state <= WR;\n                        data_tx <= data_wr;\n                    end else begin\n                        sda_int <= 1'b1;\n                        state <= RD;\n                    end\n                end\n\n                WR: begin\n                    if (bit_cnt == 4'b0000) begin\n                        sda_int <= 1'b1;\n                        bit_cnt <= 4'h7;\n                        state <= SLV_ACK2;\n                        busy <= 1'b0;\n                    end else begin\n                        bit_cnt <= bit_cnt - 1;\n                        sda_int <= data_tx[bit_cnt-1];\n                        state <= WR;\n                        busy <= 1'b1;\n                    end\n                end\n\n                RD: begin\n                    if (bit_cnt == 4'b0000) begin\n                        if (enable == 1'b1 && addr_rw == {addr, rw})\n                            sda_int <= 1'b0;\n                        else\n                            sda_int <= 1'b1;\n                        bit_cnt <= 4'h7;\n                        data_rd <= data_rx;\n                        state <= MSTR_ACK;\n                        busy <= 1'b0;\n                    end else begin\n                        bit_cnt <= bit_cnt - 1;\n                        state <= RD;\n                        busy <= 1'b1;\n                    end\n                end\n\n                SLV_ACK2: begin\n                    if (enable == 1'b1) begin\n                        addr_rw <= {addr, rw};\n                        data_tx <= data_wr;\n                        if (addr_rw == {addr, rw}) begin\n                            sda_int <= data_wr[bit_cnt];\n                            state <= WR;\n                        end else begin\n                            state <= START;\n                        end\n                    end else begin\n                        state <= STOP;\n                    end\n                end\n\n                MSTR_ACK: begin\n                    if (enable == 1'b1) begin\n                        addr_rw <= {addr, rw};\n                        data_tx <= data_wr;\n                        if (addr_rw == {addr, rw}) begin\n                            sda_int <= 1'b1;\n                            state <= RD;\n                        end else begin\n                            state <= START;\n                        end\n                    end else begin\n                        state <= STOP;\n                    end\n                end\n\n                STOP: begin\n                    busy <= 1'b0;\n                    state <= IDLE;\n                end\n\n            endcase\n        end else if (data_clk == 1'b0 && data_clk_prev == 1'b1) begin\n            case (state)\n                START: begin\n                    if (scl_enable == 1'b0) begin\n                        scl_enable <= 1'b1;\n                        ack_error <= 1'b0;\n                    end\n                end\n\n                SLV_ACK1: begin\n                    if (sda_in != 1'b0 || ack_error == 1'b1)\n                        ack_error <= 1'b1;\n                end\n\n                RD: begin\n                    data_rx[bit_cnt] <= sda_in;\n                end\n\n                SLV_ACK2: begin\n                    if (sda_in != 1'b0 || ack_error == 1'b1)\n                        ack_error <= 1'b1;\n                end\n\n                STOP: begin\n                    scl_enable <= 1'b0;\n                end\n            endcase\n        end\n    end\nend\n\nassign sda_enable = (state == START) ? data_clk_prev :\n                    (state == STOP) ? !data_clk_prev : sda_int;\n                    \nassign ready = (state == IDLE);\n\n//Tri-State buffer controll\nSB_IO # (\n    .PIN_TYPE(6'b1010_01),\n    .PULLUP(1'b0)\n) scl_io (\n    .PACKAGE_PIN(scl),\n    .OUTPUT_ENABLE(scl_enable == 1'b1 && scl_clk == 1'b0),\n    .D_OUT_0(1'b0),\n    .D_IN_0(scl_in)\n);\n\n//Tri-State buffer controll\nSB_IO # (\n    .PIN_TYPE(6'b1010_01),\n    .PULLUP(1'b0)\n) sda_io (\n    .PACKAGE_PIN(sda),\n    .OUTPUT_ENABLE(sda_enable == 1'b0),\n    .D_OUT_0(1'b0),\n    .D_IN_0(sda_in)\n);\n\nassign scl2 = scl_in;\nassign sda2 = sda_in;\n\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "rst"
                },
                {
                  "name": "sda"
                },
                {
                  "name": "enable"
                },
                {
                  "name": "addr",
                  "range": "[6:0]",
                  "size": 7
                },
                {
                  "name": "rw"
                },
                {
                  "name": "data_wr",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "fast_mode"
                }
              ],
              "out": [
                {
                  "name": "busy"
                },
                {
                  "name": "ack_error"
                },
                {
                  "name": "data_rd",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "ready"
                },
                {
                  "name": "scl"
                },
                {
                  "name": "scl2"
                },
                {
                  "name": "sda2"
                }
              ]
            }
          },
          "position": {
            "x": 296,
            "y": -8
          },
          "size": {
            "width": 656,
            "height": 576
          }
        },
        {
          "id": "d8292cdc-7e3e-4d24-a29a-e8883d303988",
          "type": "basic.code",
          "data": {
            "code": "\n\nlocalparam IDLE = 3'b000;\nlocalparam WR1 = 3'b001;\nlocalparam WR2 = 3'b010;\nlocalparam RD1 = 3'b011;\nlocalparam RD2 = 3'b100;\n\n\n//-- Control signals\nreg enable = 0;\nreg rw = 0;\n\n//-- fsm states\nreg [2:0] state = IDLE;\nreg [2:0] next_state = IDLE;\n\n//-- Transition between states\nalways @(posedge clk)\n    state <= next_state;\n    \n//-- Control signal generation and next states\nalways @(*) begin\n\n  //-- Default values\n  next_state = state;      //-- Stay in the same state by default\n  enable = 0;\n  rw = 0;\n  \n case(state)\n\n    //-- Idle state\n    //-- Remain in this state until the start is activated\n    IDLE: begin\n      if (start == 1)\n        next_state = WR1;\n    end\n\n    //-- Writting 1 state\n    //-- The writting phase is started\n    //-- Remains in this state until ready is 0 \n    WR1: begin\n      enable = 1;\n      rw = 0;\n      if (ready == 0)\n        next_state = WR2;\n    end\n\n    //-- Writting 2 phase: Seleccting the Reg 0x01 by writting 0x01\n    //-- Wait until ready is 1\n    WR2: begin\n      if (ready == 1)\n        next_state = RD1;\n    end\n\n    //-- Reading 1: Prepare for reading the reg 0x01\n    //-- Wait until ready is 0\n    RD1: begin\n      enable = 1;\n      rw = 1;\n      if (ready == 0)\n        next_state = RD2;\n    end\n    \n    //-- Reading 2: Read the 0x01 register\n    //-- Wait until ready is 1\n    RD2: begin\n      rw = 1;\n      if (ready == 1)\n        next_state = IDLE;\n    end\n    \n\n    default: begin\n      enable = 0;\n      rw = 0;\n    end\n\n  endcase \n  \n  \nend\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "ready"
                },
                {
                  "name": "start"
                }
              ],
              "out": [
                {
                  "name": "enable"
                },
                {
                  "name": "rw"
                }
              ]
            }
          },
          "position": {
            "x": 1320,
            "y": 328
          },
          "size": {
            "width": 720,
            "height": 592
          }
        },
        {
          "id": "2e949c3c-a32b-471b-b4d7-958f0e92cb83",
          "type": "basic.code",
          "data": {
            "code": "//-- module bomba_x4(input wire clk, output wire clk_4hz)\n\n//-- Bombeo de bits a 4Hz (4 pulsaciones por segundo)\n\n//-- Constante para dividir y obtener una frecuencia de 8Hz\nlocalparam M = 350000;\n\n//-- Calcular el numero de bits para almacenar M\nlocalparam N = $clog2(M);\n\n//-- Registro del divisor\nreg [N-1:0] divcounter;\n\n//-- Contador modulo M. tras M pulsos de relog vuelve a 0\nalways @(posedge clk)\n  divcounter <= (divcounter == M - 1) ? 0 : divcounter + 1;\n\n//-- Obtener la señal de 8Hz. La señal no tiene ciclo del 50%\nwire clk_8hz;\nassign clk_8hz = divcounter[N-1]; \n\n//-- Usamos un biestable T para dividir entre 2 y obtener una señal\n//-- de 4Hz y ciclo del 50%\nreg T = 0;\nalways @(posedge clk_8hz)\n  T <= ~T;\n  \n//-- Señal de salida de 4Hz y ciclo del 50%\nassign clk_4hz = T;\n  \n//endmodule\n \n\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                }
              ],
              "out": [
                {
                  "name": "clk_4hz"
                }
              ]
            }
          },
          "position": {
            "x": 648,
            "y": 752
          },
          "size": {
            "width": 432,
            "height": 256
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "cedb3583-19c2-429e-a3e4-7e71f72b1e73",
            "port": "out"
          },
          "target": {
            "block": "cefba7a3-90d2-4a57-8b1f-339495652020",
            "port": "sda"
          },
          "vertices": [
            {
              "x": 184,
              "y": 176
            }
          ]
        },
        {
          "source": {
            "block": "25411a3a-9079-4264-8ee7-be466dae70bb",
            "port": "3d584b0a-29eb-47af-8c43-c0822282ef05"
          },
          "target": {
            "block": "cefba7a3-90d2-4a57-8b1f-339495652020",
            "port": "fast_mode"
          }
        },
        {
          "source": {
            "block": "cefba7a3-90d2-4a57-8b1f-339495652020",
            "port": "data_rd"
          },
          "target": {
            "block": "91f10cfc-fafb-47c1-88ee-127b10bca7bf",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "cefba7a3-90d2-4a57-8b1f-339495652020",
            "port": "busy"
          },
          "target": {
            "block": "7822c7fc-61ce-4312-838f-e1e3186c420b",
            "port": "in"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "cefba7a3-90d2-4a57-8b1f-339495652020",
            "port": "ack_error"
          },
          "target": {
            "block": "e0dcb44f-85de-4e21-957a-8caeeba66220",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "21e48046-642f-4531-8ebb-a584a33ba974",
            "port": "out"
          },
          "target": {
            "block": "cefba7a3-90d2-4a57-8b1f-339495652020",
            "port": "rst"
          },
          "vertices": [
            {
              "x": 240,
              "y": 16
            }
          ]
        },
        {
          "source": {
            "block": "80d04c3a-039f-439a-aa8b-d2f23f9ce3ef",
            "port": "constant-out"
          },
          "target": {
            "block": "2ee844e8-200f-4a80-8330-26cdcc9c6394",
            "port": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4"
          }
        },
        {
          "source": {
            "block": "2ee844e8-200f-4a80-8330-26cdcc9c6394",
            "port": "78bc33e5-9309-4ca6-96b2-f6f35df3a477"
          },
          "target": {
            "block": "cefba7a3-90d2-4a57-8b1f-339495652020",
            "port": "addr"
          },
          "size": 7
        },
        {
          "source": {
            "block": "bb5c2aa7-df76-49f1-a685-18f04cf99703",
            "port": "constant-out"
          },
          "target": {
            "block": "7ecce34d-c8d4-4776-ab7a-297ac5ab7217",
            "port": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4"
          }
        },
        {
          "source": {
            "block": "7ecce34d-c8d4-4776-ab7a-297ac5ab7217",
            "port": "32038fb9-c309-483d-a68c-de6fd7ab6a0f"
          },
          "target": {
            "block": "cefba7a3-90d2-4a57-8b1f-339495652020",
            "port": "data_wr"
          },
          "vertices": [
            {
              "x": 128,
              "y": 520
            }
          ],
          "size": 8
        },
        {
          "source": {
            "block": "cefba7a3-90d2-4a57-8b1f-339495652020",
            "port": "ready"
          },
          "target": {
            "block": "210a60c4-f5ae-48eb-97d5-b15396773fd0",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "cefba7a3-90d2-4a57-8b1f-339495652020",
            "port": "scl"
          },
          "target": {
            "block": "0a489929-0d21-4d7a-8ff5-83d31aa42ed5",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "cefba7a3-90d2-4a57-8b1f-339495652020",
            "port": "ready"
          },
          "target": {
            "block": "d8292cdc-7e3e-4d24-a29a-e8883d303988",
            "port": "ready"
          },
          "vertices": [
            {
              "x": 1240,
              "y": 472
            }
          ]
        },
        {
          "source": {
            "block": "cefba7a3-90d2-4a57-8b1f-339495652020",
            "port": "scl2"
          },
          "target": {
            "block": "4a797869-6ee5-46f4-a3c4-e5be43c6d8d7",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "cefba7a3-90d2-4a57-8b1f-339495652020",
            "port": "sda2"
          },
          "target": {
            "block": "cc4bcebe-f7e9-4f70-86c9-1aa0be709c36",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "d8292cdc-7e3e-4d24-a29a-e8883d303988",
            "port": "rw"
          },
          "target": {
            "block": "cefba7a3-90d2-4a57-8b1f-339495652020",
            "port": "rw"
          },
          "vertices": [
            {
              "x": 2080,
              "y": 1048
            },
            {
              "x": 208,
              "y": 1064
            }
          ]
        },
        {
          "source": {
            "block": "d8292cdc-7e3e-4d24-a29a-e8883d303988",
            "port": "enable"
          },
          "target": {
            "block": "cefba7a3-90d2-4a57-8b1f-339495652020",
            "port": "enable"
          },
          "vertices": [
            {
              "x": 2136,
              "y": 1168
            },
            {
              "x": -112,
              "y": 1216
            }
          ]
        },
        {
          "source": {
            "block": "2e949c3c-a32b-471b-b4d7-958f0e92cb83",
            "port": "clk_4hz"
          },
          "target": {
            "block": "d8292cdc-7e3e-4d24-a29a-e8883d303988",
            "port": "start"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 24.2357,
        "y": 43.1904
      },
      "zoom": 0.574
    }
  },
  "dependencies": {
    "21cfcc19a4ad14c5fb5e8cfebd018ec356fe7542": {
      "package": {
        "name": "0",
        "version": "0.1",
        "description": "Un bit constante a 0",
        "author": "Jesus Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2233.563%22%20height=%2257.469%22%20viewBox=%220%200%2031.465601%2053.876499%22%3E%3Cpath%20d=%22M21.822%2032.843l4.092%208.992-3.772%209.727%204.181%201.31m-12.967-19.26s-1.091%208.253-2.585%208.919C9.278%2043.198%201%2049.389%201%2049.389l2.647%203.256%22%20fill=%22none%22%20stroke=%22green%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-.863%22%20y=%2230.575%22%20transform=%22scale(.90756%201.10186)%22%20font-weight=%22400%22%20font-size=%2254.594%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22green%22%3E%3Ctspan%20x=%22-.863%22%20y=%2230.575%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold%20Italic'%22%20font-style=%22italic%22%20font-weight=%22700%22%3Eo%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
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
            },
            {
              "id": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
              "type": "basic.code",
              "data": {
                "code": "//-- Bit constante a 0\nassign q = 1'b0;\n\n",
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
        },
        "state": {
          "pan": {
            "x": 62,
            "y": 71.5
          },
          "zoom": 1
        }
      }
    },
    "a750489117f7e24590a9148d68db6b3228be8a08": {
      "package": {
        "name": "Constante-7bits",
        "version": "0.0.1",
        "description": "Valor constante generico para bus de 7 bits",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2247.997%22%20height=%2230.109%22%20viewBox=%220%200%2044.997735%2028.227376%22%3E%3Ctext%20style=%22line-height:125%25;-inkscape-font-specification:sans-serif%22%20x=%22-1.706%22%20y=%2213.545%22%20font-weight=%22400%22%20font-size=%2218.58%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-1.706%22%20y=%2213.545%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22green%22%3ENum%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%223.746%22%20y=%2228.044%22%20font-weight=%22400%22%20font-size=%2212.972%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%223.746%22%20y=%2228.044%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22green%22%3E7%20bits%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "78bc33e5-9309-4ca6-96b2-f6f35df3a477",
              "type": "basic.output",
              "data": {
                "name": "K",
                "range": "[6:0]",
                "size": 7
              },
              "position": {
                "x": 960,
                "y": 248
              }
            },
            {
              "id": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4",
              "type": "basic.constant",
              "data": {
                "name": "V",
                "value": "7'h00",
                "local": false
              },
              "position": {
                "x": 728,
                "y": 128
              }
            },
            {
              "id": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
              "type": "basic.code",
              "data": {
                "code": "assign k = V;",
                "params": [
                  {
                    "name": "V"
                  }
                ],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "k",
                      "range": "[6:0]",
                      "size": 7
                    }
                  ]
                }
              },
              "position": {
                "x": 672,
                "y": 248
              },
              "size": {
                "width": 208,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4",
                "port": "constant-out"
              },
              "target": {
                "block": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
                "port": "V"
              }
            },
            {
              "source": {
                "block": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
                "port": "k"
              },
              "target": {
                "block": "78bc33e5-9309-4ca6-96b2-f6f35df3a477",
                "port": "in"
              },
              "size": 7
            }
          ]
        },
        "state": {
          "pan": {
            "x": -414,
            "y": 43.5
          },
          "zoom": 1
        }
      }
    },
    "36d45a23315e6b3fcb068d28cf621902ea41ad80": {
      "package": {
        "name": "AA_8bits",
        "version": "0.0.1",
        "description": "Valor constante 0xAA para bus de 8 bits",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2247.997%22%20height=%2230.109%22%20viewBox=%220%200%2044.997735%2028.227376%22%3E%3Ctext%20style=%22line-height:125%25;-inkscape-font-specification:sans-serif%22%20x=%22-1.706%22%20y=%2213.545%22%20font-weight=%22400%22%20font-size=%2218.58%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-1.706%22%20y=%2213.545%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22green%22%3ENum%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%223.746%22%20y=%2228.044%22%20font-weight=%22400%22%20font-size=%2212.972%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%223.746%22%20y=%2228.044%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22green%22%3E8%20bits%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "32038fb9-c309-483d-a68c-de6fd7ab6a0f",
              "type": "basic.output",
              "data": {
                "name": "K",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 960,
                "y": 248
              }
            },
            {
              "id": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4",
              "type": "basic.constant",
              "data": {
                "name": "V",
                "value": "8'h00",
                "local": false
              },
              "position": {
                "x": 728,
                "y": 128
              }
            },
            {
              "id": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
              "type": "basic.code",
              "data": {
                "code": "assign k = V;",
                "params": [
                  {
                    "name": "V"
                  }
                ],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "k",
                      "range": "[7:0]",
                      "size": 8
                    }
                  ]
                }
              },
              "position": {
                "x": 672,
                "y": 248
              },
              "size": {
                "width": 208,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
                "port": "k"
              },
              "target": {
                "block": "32038fb9-c309-483d-a68c-de6fd7ab6a0f",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4",
                "port": "constant-out"
              },
              "target": {
                "block": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
                "port": "V"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": -414,
            "y": 43.5
          },
          "zoom": 1
        }
      }
    }
  }
}