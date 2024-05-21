`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2023 13:20:16
// Design Name: 
// Module Name: reducer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: reduce 325 bit input to 163 bit using polynomial x^163+x^80+x^47+x^9+1
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module reducer(
    input [324:0] in,
    output [162:0] out
    );
    assign out[162] = in[162] ^ in[245] ^ in[278] ^ in[316];
	assign out[161] = in[161] ^ in[244] ^ in[277] ^ in[315] ^ in[324];
	assign out[160] = in[160] ^ in[243] ^ in[276] ^ in[314] ^ in[323];
	assign out[159] = in[159] ^ in[242] ^ in[275] ^ in[313] ^ in[322];
	assign out[158] = in[158] ^ in[241] ^ in[274] ^ in[312] ^ in[321] ^ in[324];
	assign out[157] = in[157] ^ in[240] ^ in[273] ^ in[311] ^ in[320] ^ in[323];
	assign out[156] = in[156] ^ in[239] ^ in[272] ^ in[310] ^ in[319] ^ in[322];
	assign out[155] = in[155] ^ in[238] ^ in[271] ^ in[309] ^ in[318] ^ in[321];
	assign out[154] = in[154] ^ in[237] ^ in[270] ^ in[308] ^ in[317] ^ in[320];
	assign out[153] = in[153] ^ in[236] ^ in[269] ^ in[307] ^ in[316] ^ in[319];
	assign out[152] = in[152] ^ in[235] ^ in[268] ^ in[306] ^ in[315] ^ in[318];
	assign out[151] = in[151] ^ in[234] ^ in[267] ^ in[305] ^ in[314] ^ in[317];
	assign out[150] = in[150] ^ in[233] ^ in[266] ^ in[304] ^ in[313] ^ in[316];
	assign out[149] = in[149] ^ in[232] ^ in[265] ^ in[303] ^ in[312] ^ in[315];
	assign out[148] = in[148] ^ in[231] ^ in[264] ^ in[302] ^ in[311] ^ in[314];
	assign out[147] = in[147] ^ in[230] ^ in[263] ^ in[301] ^ in[310] ^ in[313];
	assign out[146] = in[146] ^ in[229] ^ in[262] ^ in[300] ^ in[309] ^ in[312];
	assign out[145] = in[145] ^ in[228] ^ in[261] ^ in[299] ^ in[308] ^ in[311];
	assign out[144] = in[144] ^ in[227] ^ in[260] ^ in[298] ^ in[307] ^ in[310];
	assign out[143] = in[143] ^ in[226] ^ in[259] ^ in[297] ^ in[306] ^ in[309];
	assign out[142] = in[142] ^ in[225] ^ in[258] ^ in[296] ^ in[305] ^ in[308];
	assign out[141] = in[141] ^ in[224] ^ in[257] ^ in[295] ^ in[304] ^ in[307];
	assign out[140] = in[140] ^ in[223] ^ in[256] ^ in[294] ^ in[303] ^ in[306];
	assign out[139] = in[139] ^ in[222] ^ in[255] ^ in[293] ^ in[302] ^ in[305];
	assign out[138] = in[138] ^ in[221] ^ in[254] ^ in[292] ^ in[301] ^ in[304];
	assign out[137] = in[137] ^ in[220] ^ in[253] ^ in[291] ^ in[300] ^ in[303];
	assign out[136] = in[136] ^ in[219] ^ in[252] ^ in[290] ^ in[299] ^ in[302];
	assign out[135] = in[135] ^ in[218] ^ in[251] ^ in[289] ^ in[298] ^ in[301];
	assign out[134] = in[134] ^ in[217] ^ in[250] ^ in[288] ^ in[297] ^ in[300];
	assign out[133] = in[133] ^ in[216] ^ in[249] ^ in[287] ^ in[296] ^ in[299];
	assign out[132] = in[132] ^ in[215] ^ in[248] ^ in[286] ^ in[295] ^ in[298];
	assign out[131] = in[131] ^ in[214] ^ in[247] ^ in[285] ^ in[294] ^ in[297];
	assign out[130] = in[130] ^ in[213] ^ in[246] ^ in[284] ^ in[293] ^ in[296];
	assign out[129] = in[129] ^ in[212] ^ in[245] ^ in[283] ^ in[292] ^ in[295];
	assign out[128] = in[128] ^ in[211] ^ in[244] ^ in[282] ^ in[291] ^ in[294];
	assign out[127] = in[127] ^ in[210] ^ in[243] ^ in[281] ^ in[290] ^ in[293];
	assign out[126] = in[126] ^ in[209] ^ in[242] ^ in[280] ^ in[289] ^ in[292];
	assign out[125] = in[125] ^ in[208] ^ in[241] ^ in[279] ^ in[288] ^ in[291];
	assign out[124] = in[124] ^ in[207] ^ in[240] ^ in[278] ^ in[287] ^ in[290];
	assign out[123] = in[123] ^ in[206] ^ in[239] ^ in[277] ^ in[286] ^ in[289];
	assign out[122] = in[122] ^ in[205] ^ in[238] ^ in[276] ^ in[285] ^ in[288];
	assign out[121] = in[121] ^ in[204] ^ in[237] ^ in[275] ^ in[284] ^ in[287];
	assign out[120] = in[120] ^ in[203] ^ in[236] ^ in[274] ^ in[283] ^ in[286];
	assign out[119] = in[119] ^ in[202] ^ in[235] ^ in[273] ^ in[282] ^ in[285];
	assign out[118] = in[118] ^ in[201] ^ in[234] ^ in[272] ^ in[281] ^ in[284];
	assign out[117] = in[117] ^ in[200] ^ in[233] ^ in[271] ^ in[280] ^ in[283];
	assign out[116] = in[116] ^ in[199] ^ in[232] ^ in[270] ^ in[279] ^ in[282];
	assign out[115] = in[115] ^ in[198] ^ in[231] ^ in[269] ^ in[278] ^ in[281];
	assign out[114] = in[114] ^ in[197] ^ in[230] ^ in[268] ^ in[277] ^ in[280];
	assign out[113] = in[113] ^ in[196] ^ in[229] ^ in[267] ^ in[276] ^ in[279];
	assign out[112] = in[112] ^ in[195] ^ in[228] ^ in[266] ^ in[275] ^ in[278];
	assign out[111] = in[111] ^ in[194] ^ in[227] ^ in[265] ^ in[274] ^ in[277];
	assign out[110] = in[110] ^ in[193] ^ in[226] ^ in[264] ^ in[273] ^ in[276];
	assign out[109] = in[109] ^ in[192] ^ in[225] ^ in[263] ^ in[272] ^ in[275];
	assign out[108] = in[108] ^ in[191] ^ in[224] ^ in[262] ^ in[271] ^ in[274];
	assign out[107] = in[107] ^ in[190] ^ in[223] ^ in[261] ^ in[270] ^ in[273];
	assign out[106] = in[106] ^ in[189] ^ in[222] ^ in[260] ^ in[269] ^ in[272];
	assign out[105] = in[105] ^ in[188] ^ in[221] ^ in[259] ^ in[268] ^ in[271];
	assign out[104] = in[104] ^ in[187] ^ in[220] ^ in[258] ^ in[267] ^ in[270];
	assign out[103] = in[103] ^ in[186] ^ in[219] ^ in[257] ^ in[266] ^ in[269];
	assign out[102] = in[102] ^ in[185] ^ in[218] ^ in[256] ^ in[265] ^ in[268];
	assign out[101] = in[101] ^ in[184] ^ in[217] ^ in[255] ^ in[264] ^ in[267];
	assign out[100] = in[100] ^ in[183] ^ in[216] ^ in[254] ^ in[263] ^ in[266];
	assign out[99] = in[99] ^ in[182] ^ in[215] ^ in[253] ^ in[262] ^ in[265];
	assign out[98] = in[98] ^ in[181] ^ in[214] ^ in[252] ^ in[261] ^ in[264];
	assign out[97] = in[97] ^ in[180] ^ in[213] ^ in[251] ^ in[260] ^ in[263];
	assign out[96] = in[96] ^ in[179] ^ in[212] ^ in[250] ^ in[259] ^ in[262];
	assign out[95] = in[95] ^ in[178] ^ in[211] ^ in[249] ^ in[258] ^ in[261];
	assign out[94] = in[94] ^ in[177] ^ in[210] ^ in[248] ^ in[257] ^ in[260];
	assign out[93] = in[93] ^ in[176] ^ in[209] ^ in[247] ^ in[256] ^ in[259];
	assign out[92] = in[92] ^ in[175] ^ in[208] ^ in[246] ^ in[255] ^ in[258] ^ in[324];
	assign out[91] = in[91] ^ in[174] ^ in[207] ^ in[245] ^ in[254] ^ in[257] ^ in[323];
	assign out[90] = in[90] ^ in[173] ^ in[206] ^ in[244] ^ in[253] ^ in[256] ^ in[322];
	assign out[89] = in[89] ^ in[172] ^ in[205] ^ in[243] ^ in[252] ^ in[255] ^ in[321];
	assign out[88] = in[88] ^ in[171] ^ in[204] ^ in[242] ^ in[251] ^ in[254] ^ in[320];
	assign out[87] = in[87] ^ in[170] ^ in[203] ^ in[241] ^ in[250] ^ in[253] ^ in[319];
	assign out[86] = in[86] ^ in[169] ^ in[202] ^ in[240] ^ in[249] ^ in[252] ^ in[318];
	assign out[85] = in[85] ^ in[168] ^ in[201] ^ in[239] ^ in[248] ^ in[251] ^ in[317];
	assign out[84] = in[84] ^ in[167] ^ in[200] ^ in[238] ^ in[247] ^ in[250] ^ in[316];
	assign out[83] = in[83] ^ in[166] ^ in[199] ^ in[237] ^ in[246] ^ in[249] ^ in[315];
	assign out[82] = in[82] ^ in[165] ^ in[198] ^ in[236] ^ in[245] ^ in[248] ^ in[314];
	assign out[81] = in[81] ^ in[164] ^ in[197] ^ in[235] ^ in[244] ^ in[247] ^ in[313];
	assign out[80] = in[80] ^ in[163] ^ in[196] ^ in[234] ^ in[243] ^ in[246] ^ in[312];
	assign out[79] = in[79] ^ in[195] ^ in[233] ^ in[242] ^ in[278] ^ in[311] ^ in[316];
	assign out[78] = in[78] ^ in[194] ^ in[232] ^ in[241] ^ in[277] ^ in[310] ^ in[315] ^ in[324];
	assign out[77] = in[77] ^ in[193] ^ in[231] ^ in[240] ^ in[276] ^ in[309] ^ in[314] ^ in[323];
	assign out[76] = in[76] ^ in[192] ^ in[230] ^ in[239] ^ in[275] ^ in[308] ^ in[313] ^ in[322];
	assign out[75] = in[75] ^ in[191] ^ in[229] ^ in[238] ^ in[274] ^ in[307] ^ in[312] ^ in[321];
	assign out[74] = in[74] ^ in[190] ^ in[228] ^ in[237] ^ in[273] ^ in[306] ^ in[311] ^ in[320];
	assign out[73] = in[73] ^ in[189] ^ in[227] ^ in[236] ^ in[272] ^ in[305] ^ in[310] ^ in[319];
	assign out[72] = in[72] ^ in[188] ^ in[226] ^ in[235] ^ in[271] ^ in[304] ^ in[309] ^ in[318];
	assign out[71] = in[71] ^ in[187] ^ in[225] ^ in[234] ^ in[270] ^ in[303] ^ in[308] ^ in[317];
	assign out[70] = in[70] ^ in[186] ^ in[224] ^ in[233] ^ in[269] ^ in[302] ^ in[307] ^ in[316];
	assign out[69] = in[69] ^ in[185] ^ in[223] ^ in[232] ^ in[268] ^ in[301] ^ in[306] ^ in[315];
	assign out[68] = in[68] ^ in[184] ^ in[222] ^ in[231] ^ in[267] ^ in[300] ^ in[305] ^ in[314];
	assign out[67] = in[67] ^ in[183] ^ in[221] ^ in[230] ^ in[266] ^ in[299] ^ in[304] ^ in[313];
	assign out[66] = in[66] ^ in[182] ^ in[220] ^ in[229] ^ in[265] ^ in[298] ^ in[303] ^ in[312];
	assign out[65] = in[65] ^ in[181] ^ in[219] ^ in[228] ^ in[264] ^ in[297] ^ in[302] ^ in[311];
	assign out[64] = in[64] ^ in[180] ^ in[218] ^ in[227] ^ in[263] ^ in[296] ^ in[301] ^ in[310];
	assign out[63] = in[63] ^ in[179] ^ in[217] ^ in[226] ^ in[262] ^ in[295] ^ in[300] ^ in[309];
	assign out[62] = in[62] ^ in[178] ^ in[216] ^ in[225] ^ in[261] ^ in[294] ^ in[299] ^ in[308];
	assign out[61] = in[61] ^ in[177] ^ in[215] ^ in[224] ^ in[260] ^ in[293] ^ in[298] ^ in[307];
	assign out[60] = in[60] ^ in[176] ^ in[214] ^ in[223] ^ in[259] ^ in[292] ^ in[297] ^ in[306];
	assign out[59] = in[59] ^ in[175] ^ in[213] ^ in[222] ^ in[258] ^ in[291] ^ in[296] ^ in[305];
	assign out[58] = in[58] ^ in[174] ^ in[212] ^ in[221] ^ in[257] ^ in[290] ^ in[295] ^ in[304];
	assign out[57] = in[57] ^ in[173] ^ in[211] ^ in[220] ^ in[256] ^ in[289] ^ in[294] ^ in[303];
	assign out[56] = in[56] ^ in[172] ^ in[210] ^ in[219] ^ in[255] ^ in[288] ^ in[293] ^ in[302];
	assign out[55] = in[55] ^ in[171] ^ in[209] ^ in[218] ^ in[254] ^ in[287] ^ in[292] ^ in[301];
	assign out[54] = in[54] ^ in[170] ^ in[208] ^ in[217] ^ in[253] ^ in[286] ^ in[291] ^ in[300];
	assign out[53] = in[53] ^ in[169] ^ in[207] ^ in[216] ^ in[252] ^ in[285] ^ in[290] ^ in[299];
	assign out[52] = in[52] ^ in[168] ^ in[206] ^ in[215] ^ in[251] ^ in[284] ^ in[289] ^ in[298];
	assign out[51] = in[51] ^ in[167] ^ in[205] ^ in[214] ^ in[250] ^ in[283] ^ in[288] ^ in[297];
	assign out[50] = in[50] ^ in[166] ^ in[204] ^ in[213] ^ in[249] ^ in[282] ^ in[287] ^ in[296];
	assign out[49] = in[49] ^ in[165] ^ in[203] ^ in[212] ^ in[248] ^ in[281] ^ in[286] ^ in[295];
	assign out[48] = in[48] ^ in[164] ^ in[202] ^ in[211] ^ in[247] ^ in[280] ^ in[285] ^ in[294];
	assign out[47] = in[47] ^ in[163] ^ in[201] ^ in[210] ^ in[246] ^ in[279] ^ in[284] ^ in[293];
	assign out[46] = in[46] ^ in[200] ^ in[209] ^ in[283] ^ in[292] ^ in[316];
	assign out[45] = in[45] ^ in[199] ^ in[208] ^ in[282] ^ in[291] ^ in[315] ^ in[324];
	assign out[44] = in[44] ^ in[198] ^ in[207] ^ in[281] ^ in[290] ^ in[314] ^ in[323];
	assign out[43] = in[43] ^ in[197] ^ in[206] ^ in[280] ^ in[289] ^ in[313] ^ in[322];
	assign out[42] = in[42] ^ in[196] ^ in[205] ^ in[279] ^ in[288] ^ in[312] ^ in[321];
	assign out[41] = in[41] ^ in[195] ^ in[204] ^ in[278] ^ in[287] ^ in[311] ^ in[320];
	assign out[40] = in[40] ^ in[194] ^ in[203] ^ in[277] ^ in[286] ^ in[310] ^ in[319];
	assign out[39] = in[39] ^ in[193] ^ in[202] ^ in[276] ^ in[285] ^ in[309] ^ in[318];
	assign out[38] = in[38] ^ in[192] ^ in[201] ^ in[275] ^ in[284] ^ in[308] ^ in[317];
	assign out[37] = in[37] ^ in[191] ^ in[200] ^ in[274] ^ in[283] ^ in[307] ^ in[316];
	assign out[36] = in[36] ^ in[190] ^ in[199] ^ in[273] ^ in[282] ^ in[306] ^ in[315];
	assign out[35] = in[35] ^ in[189] ^ in[198] ^ in[272] ^ in[281] ^ in[305] ^ in[314];
	assign out[34] = in[34] ^ in[188] ^ in[197] ^ in[271] ^ in[280] ^ in[304] ^ in[313];
	assign out[33] = in[33] ^ in[187] ^ in[196] ^ in[270] ^ in[279] ^ in[303] ^ in[312];
	assign out[32] = in[32] ^ in[186] ^ in[195] ^ in[269] ^ in[278] ^ in[302] ^ in[311];
	assign out[31] = in[31] ^ in[185] ^ in[194] ^ in[268] ^ in[277] ^ in[301] ^ in[310];
	assign out[30] = in[30] ^ in[184] ^ in[193] ^ in[267] ^ in[276] ^ in[300] ^ in[309];
	assign out[29] = in[29] ^ in[183] ^ in[192] ^ in[266] ^ in[275] ^ in[299] ^ in[308];
	assign out[28] = in[28] ^ in[182] ^ in[191] ^ in[265] ^ in[274] ^ in[298] ^ in[307];
	assign out[27] = in[27] ^ in[181] ^ in[190] ^ in[264] ^ in[273] ^ in[297] ^ in[306];
	assign out[26] = in[26] ^ in[180] ^ in[189] ^ in[263] ^ in[272] ^ in[296] ^ in[305];
	assign out[25] = in[25] ^ in[179] ^ in[188] ^ in[262] ^ in[271] ^ in[295] ^ in[304];
	assign out[24] = in[24] ^ in[178] ^ in[187] ^ in[261] ^ in[270] ^ in[294] ^ in[303];
	assign out[23] = in[23] ^ in[177] ^ in[186] ^ in[260] ^ in[269] ^ in[293] ^ in[302];
	assign out[22] = in[22] ^ in[176] ^ in[185] ^ in[259] ^ in[268] ^ in[292] ^ in[301];
	assign out[21] = in[21] ^ in[175] ^ in[184] ^ in[258] ^ in[267] ^ in[291] ^ in[300];
	assign out[20] = in[20] ^ in[174] ^ in[183] ^ in[257] ^ in[266] ^ in[290] ^ in[299];
	assign out[19] = in[19] ^ in[173] ^ in[182] ^ in[256] ^ in[265] ^ in[289] ^ in[298];
	assign out[18] = in[18] ^ in[172] ^ in[181] ^ in[255] ^ in[264] ^ in[288] ^ in[297];
	assign out[17] = in[17] ^ in[171] ^ in[180] ^ in[254] ^ in[263] ^ in[287] ^ in[296];
	assign out[16] = in[16] ^ in[170] ^ in[179] ^ in[253] ^ in[262] ^ in[286] ^ in[295] ^ in[324];
	assign out[15] = in[15] ^ in[169] ^ in[178] ^ in[252] ^ in[261] ^ in[285] ^ in[294] ^ in[323];
	assign out[14] = in[14] ^ in[168] ^ in[177] ^ in[251] ^ in[260] ^ in[284] ^ in[293] ^ in[322];
	assign out[13] = in[13] ^ in[167] ^ in[176] ^ in[250] ^ in[259] ^ in[283] ^ in[292] ^ in[321];
	assign out[12] = in[12] ^ in[166] ^ in[175] ^ in[249] ^ in[258] ^ in[282] ^ in[291] ^ in[320];
	assign out[11] = in[11] ^ in[165] ^ in[174] ^ in[248] ^ in[257] ^ in[281] ^ in[290] ^ in[319];
	assign out[10] = in[10] ^ in[164] ^ in[173] ^ in[247] ^ in[256] ^ in[280] ^ in[289] ^ in[318];
	assign out[9] = in[9] ^ in[163] ^ in[172] ^ in[246] ^ in[255] ^ in[279] ^ in[288] ^ in[317];
	assign out[8] = in[8] ^ in[171] ^ in[254] ^ in[287];
	assign out[7] = in[7] ^ in[170] ^ in[253] ^ in[286] ^ in[324];
	assign out[6] = in[6] ^ in[169] ^ in[252] ^ in[285] ^ in[323];
	assign out[5] = in[5] ^ in[168] ^ in[251] ^ in[284] ^ in[322];
	assign out[4] = in[4] ^ in[167] ^ in[250] ^ in[283] ^ in[321];
	assign out[3] = in[3] ^ in[166] ^ in[249] ^ in[282] ^ in[320];
	assign out[2] = in[2] ^ in[165] ^ in[248] ^ in[281] ^ in[319];
	assign out[1] = in[1] ^ in[164] ^ in[247] ^ in[280] ^ in[318];
	assign out[0] = in[0] ^ in[163] ^ in[246] ^ in[279] ^ in[317];
endmodule
