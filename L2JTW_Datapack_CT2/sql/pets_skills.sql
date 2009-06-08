DROP TABLE IF EXISTS `pets_skills`;
CREATE TABLE `pets_skills` (
  `templateId` int(6) NOT NULL default '0',
  `minLvl` int(2) NOT NULL default '0',
  `skillId` int(5) NOT NULL default '0',
  `skillLvl` int(2) NOT NULL default '0',
  PRIMARY KEY (`templateId`,`skillId`,`skillLvl`)
);

INSERT INTO `pets_skills` VALUES

-- SUMMON HATCHLING OF THE WIND ACTIVE SKILLS
(12311,1,4710,0),
(12311,1,4711,0),

-- SUMMON HATCHLING OF THE STARS ACTIVE SKILLS
(12312,1,4712,0),
(12312,1,4713,0),

-- SUMMON WIND STRIDER ACTIVE SKILLS
(12526,1,4710,0),
(12526,1,4711,0),

-- SUMMON STAR STRIDER ACTIVE SKILLS
(12527,1,4712,0),
(12527,1,4713,0),

-- SUMMON BABY BUFFALO ACTIVE SKILLS
(12780,1,4717,0),
(12780,1,4718,0),

-- SUMMON BABY KOOKABURRA ACTIVE SKILLS
(12781,1,4717,0),
(12781,1,4718,0),

-- SUMMON BABY COUGAR ACTIVE SKILLS
(12782,1,4717,0),
(12782,1,4718,0),

-- SUMMON CORRUPTED MAN ACTIVE SKILLS
(14038,1,4260,0),
(14039,1,4260,0),
(14040,1,4260,0),
(14041,1,4260,0),
(14042,1,4260,0),
(14043,1,4260,0),
(14044,1,4260,0),
(14045,1,4260,0),
(14046,1,4260,0),
(14047,1,4260,0),
(14048,1,4260,0),
(14049,1,4260,0),
(14050,1,4260,0),
(14051,1,4260,0),
(14052,1,4260,0),
(14053,1,4260,0),
(14054,1,4260,0),
(14055,1,4260,0),
(14056,1,4260,0),
(14057,1,4260,0),
(14058,1,4260,0),
(14059,1,4260,0),
(14060,1,4260,0),
(14061,1,4260,0),
(14062,1,4260,0),
(14063,1,4260,0),
(14064,1,4260,0),
(14065,1,4260,0),
(14066,1,4260,0),
(14067,1,4260,0),
(14068,1,4260,0),
(14069,1,4260,0),
(14070,1,4260,0),
(14071,1,4260,0),
(14072,1,4260,0),
(14073,1,4260,0),

-- SUMMON CURSED MAN ACTIVE SKILLS
(14074,1,4708,0),
(14074,1,4709,0),
(14075,1,4708,0),
(14075,1,4709,0),
(14076,1,4708,0),
(14076,1,4709,0),
(14077,1,4708,0),
(14077,1,4709,0),
(14078,1,4708,0),
(14078,1,4709,0),
(14079,1,4708,0),
(14079,1,4709,0),
(14080,1,4708,0),
(14080,1,4709,0),
(14081,1,4708,0),
(14081,1,4709,0),
(14082,1,4708,0),
(14082,1,4709,0),
(14083,1,4708,0),
(14083,1,4709,0),
(14084,1,4708,0),
(14084,1,4709,0),
(14085,1,4708,0),
(14085,1,4709,0),
(14086,1,4708,0),
(14086,1,4709,0),
(14087,1,4708,0),
(14087,1,4709,0),
(14088,1,4708,0),
(14088,1,4709,0),
(14089,1,4708,0),
(14089,1,4709,0),
(14090,1,4708,0),
(14090,1,4709,0),
(14091,1,4708,0),
(14091,1,4709,0),
(14092,1,4708,0),
(14092,1,4709,0),
(14093,1,4708,0),
(14093,1,4709,0),
(14094,1,4708,0),
(14094,1,4709,0),
(14095,1,4708,0),
(14095,1,4709,0),
(14096,1,4708,0),
(14096,1,4709,0),
(14097,1,4708,0),
(14097,1,4709,0),
(14098,1,4708,0),
(14098,1,4709,0),
(14099,1,4708,0),
(14099,1,4709,0),
(14100,1,4708,0),
(14100,1,4709,0),
(14101,1,4708,0),
(14101,1,4709,0),
(14102,1,4708,0),
(14102,1,4709,0),
(14103,1,4708,0),
(14103,1,4709,0),
(14104,1,4708,0),
(14104,1,4709,0),
(14105,1,4708,0),
(14105,1,4709,0),
(14106,1,4708,0),
(14106,1,4709,0),
(14107,1,4708,0),
(14107,1,4709,0),
(14108,1,4708,0),
(14108,1,4709,0),
(14109,1,4708,0),
(14109,1,4709,0),
(14110,1,4708,0),
(14110,1,4709,0),

-- SUMMON KAT THE CAT ACTIVE SKILLS
(14111,1,4025,0),
(14112,1,4025,0),
(14113,1,4025,0),
(14114,1,4025,0),
(14115,1,4025,0),
(14116,1,4025,0),
(14117,1,4025,0),
(14118,1,4025,0),
(14119,1,4025,0),
(14120,1,4025,0),
(14121,1,4025,0),
(14122,1,4025,0),
(14123,1,4025,0),
(14124,1,4025,0),
(14125,1,4025,0),
(14126,1,4025,0),
(14127,1,4025,0),
(14128,1,4025,0),
(14129,1,4025,0),
(14130,1,4025,0),
(14131,1,4025,0),
(14132,1,4025,0),
(14133,1,4025,0),
(14134,1,4025,0),
(14135,1,4025,0),
(14136,1,4025,0),
(14137,1,4025,0),
(14138,1,4025,0),
(14139,1,4025,0),
(14140,1,4025,0),
(14141,1,4025,0),
(14142,1,4025,0),
(14143,1,4025,0),
(14144,1,4025,0),
(14145,1,4025,0),
(14146,1,4025,0),
(14147,1,4025,0),
(14148,1,4025,0),
(14149,1,4025,0),
(14150,1,4025,0),
(14151,1,4025,0),
(14152,1,4025,0),
(14153,1,4025,0),
(14154,1,4025,0),
(14155,1,4025,0),
(14156,1,4025,0),
(14157,1,4025,0),
(14158,1,4025,0),

-- SUMMON MEW THE CAT ACTIVE SKILLS
(14159,1,4261,0),
(14160,1,4261,0),
(14161,1,4261,0),
(14162,1,4261,0),
(14163,1,4261,0),
(14164,1,4261,0),
(14165,1,4261,0),
(14166,1,4261,0),
(14167,1,4261,0),
(14168,1,4261,0),
(14169,1,4261,0),
(14170,1,4261,0),
(14171,1,4261,0),
(14172,1,4261,0),
(14173,1,4261,0),
(14174,1,4261,0),
(14175,1,4261,0),
(14176,1,4261,0),
(14177,1,4261,0),
(14178,1,4261,0),
(14179,1,4261,0),
(14180,1,4261,0),
(14181,1,4261,0),
(14182,1,4261,0),
(14183,1,4261,0),
(14184,1,4261,0),
(14185,1,4261,0),
(14186,1,4261,0),
(14187,1,4261,0),
(14188,1,4261,0),
(14189,1,4261,0),
(14190,1,4261,0),
(14191,1,4261,0),
(14192,1,4261,0),
(14193,1,4261,0),
(14194,1,4261,0),
(14195,1,4261,0),
(14196,1,4261,0),
(14197,1,4261,0),
(14198,1,4261,0),
(14199,1,4261,0),
(14200,1,4261,0),
(14201,1,4261,0),
(14202,1,4261,0),
(14203,1,4261,0),
(14204,1,4261,0),
(14205,1,4261,0),
(14206,1,4261,0),

-- SUMMON KAI THE CAT ACTIVE SKILLS
(14207,1,4378,0),
(14208,1,4378,0),
(14209,1,4378,0),
(14210,1,4378,0),
(14211,1,4378,0),
(14212,1,4378,0),
(14213,1,4378,0),
(14214,1,4378,0),
(14215,1,4378,0),
(14216,1,4378,0),
(14217,1,4378,0),
(14218,1,4378,0),
(14219,1,4378,0),
(14220,1,4378,0),
(14221,1,4378,0),
(14222,1,4378,0),
(14223,1,4378,0),
(14224,1,4378,0),
(14225,1,4378,0),
(14226,1,4378,0),
(14227,1,4378,0),
(14228,1,4378,0),
(14229,1,4378,0),
(14230,1,4378,0),
(14231,1,4378,0),
(14232,1,4378,0),
(14233,1,4378,0),
(14234,1,4378,0),
(14235,1,4378,0),
(14236,1,4378,0),
(14237,1,4378,0),
(14238,1,4378,0),
(14239,1,4378,0),
(14240,1,4378,0),
(14241,1,4378,0),
(14242,1,4378,0),
(14243,1,4378,0),
(14244,1,4378,0),
(14245,1,4378,0),
(14246,1,4378,0),
(14247,1,4378,0),
(14248,1,4378,0),
(14249,1,4378,0),
(14250,1,4378,0),

-- SUMMON FELINE QUEEN ACTIVE SKILLS
(14251,1,4699,0),
(14251,1,4700,0),
(14251,1,4701,0),
(14251,1,5638,1),
(14251,1,5639,1),
(14251,1,5640,1),
(14252,1,4699,0),
(14252,1,4700,0),
(14252,1,4701,0),
(14252,1,5638,1),
(14252,1,5639,1),
(14252,1,5640,2),
(14253,1,4699,0),
(14253,1,4700,0),
(14253,1,4701,0),
(14253,1,5638,2),
(14253,1,5639,1),
(14253,1,5640,2),
(14254,1,4699,0),
(14254,1,4700,0),
(14254,1,4701,0),
(14254,1,5638,2),
(14254,1,5639,2),
(14254,1,5640,2),
(14255,1,4699,0),
(14255,1,4700,0),
(14255,1,4701,0),
(14255,1,5638,2),
(14255,1,5639,2),
(14255,1,5640,2),
(14256,1,4699,0),
(14256,1,4700,0),
(14256,1,4701,0),
(14256,1,5638,2),
(14256,1,5639,2),
(14256,1,5640,2),
(14257,1,4699,0),
(14257,1,4700,0),
(14257,1,4701,0),
(14257,1,5638,2),
(14257,1,5639,2),
(14257,1,5640,2),
(14258,1,4699,0),
(14258,1,4700,0),
(14258,1,4701,0),
(14258,1,5638,3),
(14258,1,5639,3),
(14258,1,5640,2),
(14259,1,4699,0),
(14259,1,4700,0),
(14259,1,4701,0),
(14259,1,5638,3),
(14259,1,5639,3),
(14259,1,5640,2),
(14260,1,4699,0),
(14260,1,4700,0),
(14260,1,4701,0),
(14260,1,5638,4),
(14260,1,5639,4),
(14260,1,5640,2),
(14261,1,4699,0),
(14261,1,4700,0),
(14261,1,4701,0),
(14261,1,5638,4),
(14261,1,5639,4),
(14261,1,5640,2),
(14262,1,4699,0),
(14262,1,4700,0),
(14262,1,4701,0),
(14262,1,5638,4),
(14262,1,5639,4),
(14262,1,5640,2),
(14263,1,4699,0),
(14263,1,4700,0),
(14263,1,4701,0),
(14263,1,5638,4),
(14263,1,5639,4),
(14263,1,5640,2),
(14264,1,4699,0),
(14264,1,4700,0),
(14264,1,4701,0),
(14264,1,5638,4),
(14264,1,5639,4),
(14264,1,5640,2),
(14265,1,4699,0),
(14265,1,4700,0),
(14265,1,4701,0),
(14265,1,5638,4),
(14265,1,5639,4),
(14265,1,5640,2),
(14266,1,4699,0),
(14266,1,4700,0),
(14266,1,4701,0),
(14266,1,5638,4),
(14266,1,5639,4),
(14266,1,5640,2),
(14267,1,4699,0),
(14267,1,4700,0),
(14267,1,4701,0),
(14267,1,5638,4),
(14267,1,5639,4),
(14267,1,5640,2),
(14268,1,4699,0),
(14268,1,4700,0),
(14268,1,4701,0),
(14268,1,5638,4),
(14268,1,5639,4),
(14268,1,5640,2),
(14269,1,4699,0),
(14269,1,4700,0),
(14269,1,4701,0),
(14269,1,5638,4),
(14269,1,5639,4),
(14269,1,5640,2),
(14270,1,4699,0),
(14270,1,4700,0),
(14270,1,4701,0),
(14270,1,5638,4),
(14270,1,5639,4),
(14270,1,5640,2),
(14271,1,4699,0),
(14271,1,4700,0),
(14271,1,4701,0),
(14271,1,5638,4),
(14271,1,5639,4),
(14271,1,5640,2),
(14272,1,4699,0),
(14272,1,4700,0),
(14272,1,4701,0),
(14272,1,5638,4),
(14272,1,5639,4),
(14272,1,5640,2),
(14273,1,4699,0),
(14273,1,4700,0),
(14273,1,4701,0),
(14273,1,5638,4),
(14273,1,5639,4),
(14273,1,5640,2),
(14274,1,4699,0),
(14274,1,4700,0),
(14274,1,4701,0),
(14274,1,5638,4),
(14274,1,5639,4),
(14274,1,5640,2),
(14275,1,4699,0),
(14275,1,4700,0),
(14275,1,4701,0),
(14275,1,5638,4),
(14275,1,5639,4),
(14275,1,5640,2),
(14276,1,4699,0),
(14276,1,4700,0),
(14276,1,4701,0),
(14276,1,5638,4),
(14276,1,5639,4),
(14276,1,5640,2),
(14277,1,4699,0),
(14277,1,4700,0),
(14277,1,4701,0),
(14277,1,5638,4),
(14277,1,5639,4),
(14277,1,5640,2),
(14278,1,4699,0),
(14278,1,4700,0),
(14278,1,4701,0),
(14278,1,5638,4),
(14278,1,5639,4),
(14278,1,5640,2),
(14279,1,4699,0),
(14279,1,4700,0),
(14279,1,4701,0),
(14279,1,5638,4),
(14279,1,5639,4),
(14279,1,5640,2),
(14280,1,4699,0),
(14280,1,4700,0),
(14280,1,4701,0),
(14280,1,5638,4),
(14280,1,5639,4),
(14280,1,5640,2),
(14281,1,4699,0),
(14281,1,4700,0),
(14281,1,4701,0),
(14281,1,5638,4),
(14281,1,5639,4),
(14281,1,5640,2),
(14282,1,4699,0),
(14282,1,4700,0),
(14282,1,4701,0),
(14282,1,5638,4),
(14282,1,5639,4),
(14282,1,5640,2),
(14283,1,4699,0),
(14283,1,4700,0),
(14283,1,4701,0),
(14283,1,5638,4),
(14283,1,5639,4),
(14283,1,5640,2),
(14284,1,4699,0),
(14284,1,4700,0),
(14284,1,4701,0),
(14284,1,5638,4),
(14284,1,5639,4),
(14284,1,5640,2),
(14285,1,4699,0),
(14285,1,4700,0),
(14285,1,4701,0),
(14285,1,5638,4),
(14285,1,5639,4),
(14285,1,5640,2),
(14286,1,4699,0),
(14286,1,4700,0),
(14286,1,4701,0),
(14286,1,5638,4),
(14286,1,5639,4),
(14286,1,5640,2),
(14287,1,4699,0),
(14287,1,4700,0),
(14287,1,4701,0),
(14287,1,5638,4),
(14287,1,5639,4),
(14287,1,5640,2),
(14288,1,4699,0),
(14288,1,4700,0),
(14288,1,4701,0),
(14288,1,5638,4),
(14288,1,5639,4),
(14288,1,5640,2),
(14289,1,4699,0),
(14289,1,4700,0),
(14289,1,4701,0),
(14289,1,5638,4),
(14289,1,5639,4),
(14289,1,5640,2),
(14290,1,4699,0),
(14290,1,4700,0),
(14290,1,4701,0),
(14290,1,5638,4),
(14290,1,5639,4),
(14290,1,5640,2),
(14291,1,4699,0),
(14291,1,4700,0),
(14291,1,4701,0),
(14291,1,5638,4),
(14291,1,5639,4),
(14291,1,5640,2),
(14292,1,4699,0),
(14292,1,4700,0),
(14292,1,4701,0),
(14292,1,5638,4),
(14292,1,5639,4),
(14292,1,5640,2),
(14293,1,4699,0),
(14293,1,4700,0),
(14293,1,4701,0),
(14293,1,5638,4),
(14293,1,5639,4),
(14293,1,5640,2),
(14294,1,4699,0),
(14294,1,4700,0),
(14294,1,4701,0),
(14294,1,5638,4),
(14294,1,5639,4),
(14294,1,5640,2),

-- SUMMON BOXER THE UNICORN ACTIVE SKILLS
(14295,1,4025,0),
(14296,1,4025,0),
(14297,1,4025,0),
(14298,1,4025,0),
(14299,1,4025,0),
(14300,1,4025,0),
(14301,1,4025,0),
(14302,1,4025,0),
(14303,1,4025,0),
(14304,1,4025,0),
(14305,1,4025,0),
(14306,1,4025,0),
(14307,1,4025,0),
(14308,1,4025,0),
(14309,1,4025,0),
(14310,1,4025,0),
(14311,1,4025,0),
(14312,1,4025,0),
(14313,1,4025,0),
(14314,1,4025,0),
(14315,1,4025,0),
(14316,1,4025,0),
(14317,1,4025,0),
(14318,1,4025,0),
(14319,1,4025,0),
(14320,1,4025,0),
(14321,1,4025,0),
(14322,1,4025,0),
(14323,1,4025,0),
(14324,1,4025,0),
(14325,1,4025,0),
(14326,1,4025,0),
(14327,1,4025,0),
(14328,1,4025,0),
(14329,1,4025,0),
(14330,1,4025,0),
(14331,1,4025,0),
(14332,1,4025,0),
(14333,1,4025,0),
(14334,1,4025,0),
(14335,1,4025,0),
(14336,1,4025,0),
(14337,1,4025,0),
(14338,1,4025,0),
(14339,1,4025,0),
(14340,1,4025,0),
(14341,1,4025,0),
(14342,1,4025,0),

-- SUMMON MIRAGE THE UNICORN ACTIVE SKILLS
(14343,1,4261,0),
(14344,1,4261,0),
(14345,1,4261,0),
(14346,1,4261,0),
(14347,1,4261,0),
(14348,1,4261,0),
(14349,1,4261,0),
(14350,1,4261,0),
(14351,1,4261,0),
(14352,1,4261,0),
(14353,1,4261,0),
(14354,1,4261,0),
(14355,1,4261,0),
(14356,1,4261,0),
(14357,1,4261,0),
(14358,1,4261,0),
(14359,1,4261,0),
(14360,1,4261,0),
(14361,1,4261,0),
(14362,1,4261,0),
(14363,1,4261,0),
(14364,1,4261,0),
(14365,1,4261,0),
(14366,1,4261,0),
(14367,1,4261,0),
(14368,1,4261,0),
(14369,1,4261,0),
(14370,1,4261,0),
(14371,1,4261,0),
(14372,1,4261,0),
(14373,1,4261,0),
(14374,1,4261,0),
(14375,1,4261,0),
(14376,1,4261,0),
(14377,1,4261,0),
(14378,1,4261,0),
(14379,1,4261,0),
(14380,1,4261,0),
(14381,1,4261,0),
(14382,1,4261,0),
(14383,1,4261,0),
(14384,1,4261,0),
(14385,1,4261,0),
(14386,1,4261,0),
(14387,1,4261,0),
(14388,1,4261,0),
(14389,1,4261,0),
(14390,1,4261,0),

-- SUMMON MERROW THE UNICORN ACTIVE SKILLS
(14391,1,4137,0),
(14392,1,4137,0),
(14393,1,4137,0),
(14394,1,4137,0),
(14395,1,4137,0),
(14396,1,4137,0),
(14397,1,4137,0),
(14398,1,4137,0),
(14399,1,4137,0),
(14400,1,4137,0),
(14401,1,4137,0),
(14402,1,4137,0),
(14403,1,4137,0),
(14404,1,4137,0),
(14405,1,4137,0),
(14406,1,4137,0),
(14407,1,4137,0),
(14408,1,4137,0),
(14409,1,4137,0),
(14410,1,4137,0),
(14411,1,4137,0),
(14412,1,4137,0),
(14413,1,4137,0),
(14414,1,4137,0),
(14415,1,4137,0),
(14416,1,4137,0),
(14417,1,4137,0),
(14418,1,4137,0),
(14419,1,4137,0),
(14420,1,4137,0),
(14421,1,4137,0),
(14422,1,4137,0),
(14423,1,4137,0),
(14424,1,4137,0),
(14425,1,4137,0),
(14426,1,4137,0),
(14427,1,4137,0),
(14428,1,4137,0),
(14429,1,4137,0),
(14430,1,4137,0),
(14431,1,4137,0),
(14432,1,4137,0),
(14433,1,4137,0),
(14434,1,4137,0),

-- SUMMON UNICORN SERAPHIM ACTIVE SKILLS
(14435,1,4702,0),
(14435,1,4703,0),
(14435,1,4704,0),
(14435,1,5643,1),
(14435,1,5648,1),
(14435,1,5647,1),
(14436,1,4702,0),
(14436,1,4703,0),
(14436,1,4704,0),
(14436,1,5643,1),
(14436,1,5648,2),
(14436,1,5647,1),
(14437,1,4702,0),
(14437,1,4703,0),
(14437,1,4704,0),
(14437,1,5643,1),
(14437,1,5648,2),
(14437,1,5647,1),
(14438,1,4702,0),
(14438,1,4703,0),
(14438,1,4704,0),
(14438,1,5643,1),
(14438,1,5648,2),
(14438,1,5647,1),
(14439,1,4702,0),
(14439,1,4703,0),
(14439,1,4704,0),
(14439,1,5643,1),
(14439,1,5648,2),
(14439,1,5647,1),
(14439,1,5646,1),
(14440,1,4702,0),
(14440,1,4703,0),
(14440,1,4704,0),
(14440,1,5643,1),
(14440,1,5648,2),
(14440,1,5647,1),
(14440,1,5646,1),
(14441,1,4702,0),
(14441,1,4703,0),
(14441,1,4704,0),
(14441,1,5643,1),
(14441,1,5648,2),
(14441,1,5647,1),
(14441,1,5646,1),
(14442,1,4702,0),
(14442,1,4703,0),
(14442,1,4704,0),
(14442,1,5643,1),
(14442,1,5648,2),
(14442,1,5647,2),
(14442,1,5646,1),
(14443,1,4702,0),
(14443,1,4703,0),
(14443,1,4704,0),
(14443,1,5643,1),
(14443,1,5648,2),
(14443,1,5647,2),
(14443,1,5646,1),
(14444,1,4702,0),
(14444,1,4703,0),
(14444,1,4704,0),
(14444,1,5643,1),
(14444,1,5646,2),
(14444,1,5647,3),
(14444,1,5648,2),
(14445,1,4702,0),
(14445,1,4703,0),
(14445,1,4704,0),
(14445,1,5643,1),
(14445,1,5646,2),
(14445,1,5647,3),
(14445,1,5648,2),
(14446,1,4702,0),
(14446,1,4703,0),
(14446,1,4704,0),
(14446,1,5643,1),
(14446,1,5646,2),
(14446,1,5647,3),
(14446,1,5648,2),
(14447,1,4702,0),
(14447,1,4703,0),
(14447,1,4704,0),
(14447,1,5643,1),
(14447,1,5646,2),
(14447,1,5647,3),
(14447,1,5648,2),
(14448,1,4702,0),
(14448,1,4703,0),
(14448,1,4704,0),
(14448,1,5643,1),
(14448,1,5646,2),
(14448,1,5647,3),
(14448,1,5648,2),
(14449,1,4702,0),
(14449,1,4703,0),
(14449,1,4704,0),
(14449,1,5643,1),
(14449,1,5646,2),
(14449,1,5647,3),
(14449,1,5648,2),
(14450,1,4702,0),
(14450,1,4703,0),
(14450,1,4704,0),
(14450,1,5643,1),
(14450,1,5646,2),
(14450,1,5647,3),
(14450,1,5648,2),
(14451,1,4702,0),
(14451,1,4703,0),
(14451,1,4704,0),
(14451,1,5643,1),
(14451,1,5646,2),
(14451,1,5647,3),
(14451,1,5648,2),
(14452,1,4702,0),
(14452,1,4703,0),
(14452,1,4704,0),
(14452,1,5643,1),
(14452,1,5646,2),
(14452,1,5647,3),
(14452,1,5648,2),
(14453,1,4702,0),
(14453,1,4703,0),
(14453,1,4704,0),
(14453,1,5643,1),
(14453,1,5646,2),
(14453,1,5647,3),
(14453,1,5648,2),
(14454,1,4702,0),
(14454,1,4703,0),
(14454,1,4704,0),
(14454,1,5643,1),
(14454,1,5646,2),
(14454,1,5647,3),
(14454,1,5648,2),
(14455,1,4702,0),
(14455,1,4703,0),
(14455,1,4704,0),
(14455,1,5643,1),
(14455,1,5646,2),
(14455,1,5647,3),
(14455,1,5648,2),
(14456,1,4702,0),
(14456,1,4703,0),
(14456,1,4704,0),
(14456,1,5643,1),
(14456,1,5646,2),
(14456,1,5647,3),
(14456,1,5648,2),
(14457,1,4702,0),
(14457,1,4703,0),
(14457,1,4704,0),
(14457,1,5643,1),
(14457,1,5646,2),
(14457,1,5647,3),
(14457,1,5648,2),
(14458,1,4702,0),
(14458,1,4703,0),
(14458,1,4704,0),
(14458,1,5643,1),
(14458,1,5646,2),
(14458,1,5647,3),
(14458,1,5648,2),
(14459,1,4702,0),
(14459,1,4703,0),
(14459,1,4704,0),
(14459,1,5643,1),
(14459,1,5646,2),
(14459,1,5647,3),
(14459,1,5648,2),
(14460,1,4702,0),
(14460,1,4703,0),
(14460,1,4704,0),
(14460,1,5643,1),
(14460,1,5646,2),
(14460,1,5647,3),
(14460,1,5648,2),
(14461,1,4702,0),
(14461,1,4703,0),
(14461,1,4704,0),
(14461,1,5643,1),
(14461,1,5646,2),
(14461,1,5647,3),
(14461,1,5648,2),
(14462,1,4702,0),
(14462,1,4703,0),
(14462,1,4704,0),
(14462,1,5643,1),
(14462,1,5646,2),
(14462,1,5647,3),
(14462,1,5648,2),
(14463,1,4702,0),
(14463,1,4703,0),
(14463,1,4704,0),
(14463,1,5643,1),
(14463,1,5646,2),
(14463,1,5647,3),
(14463,1,5648,2),
(14464,1,4702,0),
(14464,1,4703,0),
(14464,1,4704,0),
(14464,1,5643,1),
(14464,1,5646,2),
(14464,1,5647,3),
(14464,1,5648,2),
(14465,1,4702,0),
(14465,1,4703,0),
(14465,1,4704,0),
(14465,1,5643,1),
(14465,1,5646,2),
(14465,1,5647,3),
(14465,1,5648,2),
(14466,1,4702,0),
(14466,1,4703,0),
(14466,1,4704,0),
(14466,1,5643,1),
(14466,1,5646,2),
(14466,1,5647,3),
(14466,1,5648,2),
(14467,1,4702,0),
(14467,1,4703,0),
(14467,1,4704,0),
(14467,1,5643,1),
(14467,1,5646,2),
(14467,1,5647,3),
(14467,1,5648,2),
(14468,1,4702,0),
(14468,1,4703,0),
(14468,1,4704,0),
(14468,1,5643,1),
(14468,1,5646,2),
(14468,1,5647,3),
(14468,1,5648,2),
(14469,1,4702,0),
(14469,1,4703,0),
(14469,1,4704,0),
(14469,1,5643,1),
(14469,1,5646,2),
(14469,1,5647,3),
(14469,1,5648,2),
(14470,1,4702,0),
(14470,1,4703,0),
(14470,1,4704,0),
(14470,1,5643,1),
(14470,1,5646,2),
(14470,1,5647,3),
(14470,1,5648,2),
(14471,1,4702,0),
(14471,1,4703,0),
(14471,1,4704,0),
(14471,1,5643,1),
(14471,1,5646,2),
(14471,1,5647,3),
(14471,1,5648,2),
(14472,1,4702,0),
(14472,1,4703,0),
(14472,1,4704,0),
(14472,1,5643,1),
(14472,1,5646,2),
(14472,1,5647,3),
(14472,1,5648,2),
(14473,1,4702,0),
(14473,1,4703,0),
(14473,1,4704,0),
(14473,1,5643,1),
(14473,1,5646,2),
(14473,1,5647,3),
(14473,1,5648,2),
(14474,1,4702,0),
(14474,1,4703,0),
(14474,1,4704,0),
(14474,1,5643,1),
(14474,1,5646,2),
(14474,1,5647,3),
(14474,1,5648,2),
(14475,1,4702,0),
(14475,1,4703,0),
(14475,1,4704,0),
(14475,1,5643,1),
(14475,1,5646,2),
(14475,1,5647,3),
(14475,1,5648,2),
(14476,1,4702,0),
(14476,1,4703,0),
(14476,1,4704,0),
(14476,1,5643,1),
(14476,1,5646,2),
(14476,1,5647,3),
(14476,1,5648,2),
(14477,1,4702,0),
(14477,1,4703,0),
(14477,1,4704,0),
(14477,1,5643,1),
(14477,1,5646,2),
(14477,1,5647,3),
(14477,1,5648,2),
(14478,1,4702,0),
(14478,1,4703,0),
(14478,1,4704,0),
(14478,1,5643,1),
(14478,1,5646,2),
(14478,1,5647,3),
(14478,1,5648,2),

-- SUMMON SHADOW ACTIVE SKILLS
(14479,1,4233,1),
(14480,1,4233,1),
(14481,1,4233,1),
(14482,1,4233,1),
(14483,1,4233,1),
(14484,1,4233,1),
(14485,1,4233,1),
(14486,1,4233,1),
(14487,1,4233,1),
(14488,1,4233,1),
(14489,1,4233,1),
(14490,1,4233,1),
(14491,1,4233,1),
(14492,1,4233,1),
(14493,1,4233,1),
(14494,1,4233,1),
(14495,1,4233,1),
(14496,1,4233,1),
(14497,1,4233,1),
(14498,1,4233,1),
(14499,1,4233,1),
(14500,1,4233,1),
(14501,1,4233,1),
(14502,1,4233,1),
(14503,1,4233,1),
(14504,1,4233,1),
(14505,1,4233,1),
(14506,1,4233,1),
(14507,1,4233,1),
(14508,1,4233,1),
(14509,1,4233,1),
(14510,1,4233,1),
(14511,1,4233,1),
(14512,1,4233,1),
(14513,1,4233,1),
(14514,1,4233,1),
(14515,1,4233,1),
(14516,1,4233,1),
(14517,1,4233,1),
(14518,1,4233,1),
(14519,1,4233,1),
(14520,1,4233,1),
(14521,1,4233,1),
(14522,1,4233,1),
(14523,1,4233,1),
(14524,1,4233,1),
(14525,1,4233,1),
(14526,1,4233,1),

-- SUMMON SILHOUETTE ACTIVE SKILLS
(14527,1,4260,0),
(14528,1,4260,0),
(14529,1,4260,0),
(14530,1,4260,0),
(14531,1,4260,0),
(14532,1,4260,0),
(14533,1,4260,0),
(14534,1,4260,0),
(14535,1,4260,0),
(14536,1,4260,0),
(14537,1,4260,0),
(14538,1,4260,0),
(14539,1,4260,0),
(14540,1,4260,0),
(14541,1,4260,0),
(14542,1,4260,0),
(14543,1,4260,0),
(14544,1,4260,0),
(14545,1,4260,0),
(14546,1,4260,0),
(14547,1,4260,0),
(14548,1,4260,0),
(14549,1,4260,0),
(14550,1,4260,0),
(14551,1,4260,0),
(14552,1,4260,0),
(14553,1,4260,0),
(14554,1,4260,0),
(14555,1,4260,0),
(14556,1,4260,0),
(14557,1,4260,0),
(14558,1,4260,0),
(14559,1,4260,0),
(14560,1,4260,0),
(14561,1,4260,0),
(14562,1,4260,0),
(14563,1,4260,0),
(14564,1,4260,0),
(14565,1,4260,0),
(14566,1,4260,0),
(14567,1,4260,0),
(14568,1,4260,0),
(14569,1,4260,0),
(14570,1,4260,0),
(14571,1,4260,0),
(14572,1,4260,0),
(14573,1,4260,0),
(14574,1,4260,0),

-- SUMMON SOULLESS ACTIVE SKILLS
(14575,1,4138,0),
(14575,1,4140,0),
(14575,1,4259,0),
(14576,1,4138,0),
(14576,1,4140,0),
(14576,1,4259,0),
(14577,1,4138,0),
(14577,1,4140,0),
(14577,1,4259,0),
(14578,1,4138,0),
(14578,1,4140,0),
(14578,1,4259,0),
(14579,1,4138,0),
(14579,1,4140,0),
(14579,1,4259,0),
(14580,1,4138,0),
(14580,1,4140,0),
(14580,1,4259,0),
(14581,1,4138,0),
(14581,1,4140,0),
(14581,1,4259,0),
(14582,1,4138,0),
(14582,1,4140,0),
(14582,1,4259,0),
(14583,1,4138,0),
(14583,1,4140,0),
(14583,1,4259,0),
(14584,1,4138,0),
(14584,1,4140,0),
(14584,1,4259,0),
(14585,1,4138,0),
(14585,1,4140,0),
(14585,1,4259,0),
(14586,1,4138,0),
(14586,1,4140,0),
(14586,1,4259,0),
(14587,1,4138,0),
(14587,1,4140,0),
(14587,1,4259,0),
(14588,1,4138,0),
(14588,1,4140,0),
(14588,1,4259,0),
(14589,1,4138,0),
(14589,1,4140,0),
(14589,1,4259,0),
(14590,1,4138,0),
(14590,1,4140,0),
(14590,1,4259,0),
(14591,1,4138,0),
(14591,1,4140,0),
(14591,1,4259,0),
(14592,1,4138,0),
(14592,1,4140,0),
(14592,1,4259,0),
(14593,1,4138,0),
(14593,1,4140,0),
(14593,1,4259,0),
(14594,1,4138,0),
(14594,1,4140,0),
(14594,1,4259,0),
(14595,1,4138,0),
(14595,1,4140,0),
(14595,1,4259,0),
(14596,1,4138,0),
(14596,1,4140,0),
(14596,1,4259,0),
(14597,1,4138,0),
(14597,1,4140,0),
(14597,1,4259,0),
(14598,1,4138,0),
(14598,1,4140,0),
(14598,1,4259,0),
(14599,1,4138,0),
(14599,1,4140,0),
(14599,1,4259,0),
(14600,1,4138,0),
(14600,1,4140,0),
(14600,1,4259,0),
(14601,1,4138,0),
(14601,1,4140,0),
(14601,1,4259,0),
(14602,1,4138,0),
(14602,1,4140,0),
(14602,1,4259,0),
(14603,1,4138,0),
(14603,1,4140,0),
(14603,1,4259,0),
(14604,1,4138,0),
(14604,1,4140,0),
(14604,1,4259,0),
(14605,1,4138,0),
(14605,1,4140,0),
(14605,1,4259,0),
(14606,1,4138,0),
(14606,1,4140,0),
(14606,1,4259,0),
(14607,1,4138,0),
(14607,1,4140,0),
(14607,1,4259,0),
(14608,1,4138,0),
(14608,1,4140,0),
(14608,1,4259,0),
(14609,1,4138,0),
(14609,1,4140,0),
(14609,1,4259,0),
(14610,1,4138,0),
(14610,1,4140,0),
(14610,1,4259,0),
(14611,1,4138,0),
(14611,1,4140,0),
(14611,1,4259,0),
(14612,1,4138,0),
(14612,1,4140,0),
(14612,1,4259,0),
(14613,1,4138,0),
(14613,1,4140,0),
(14613,1,4259,0),
(14614,1,4138,0),
(14614,1,4140,0),
(14614,1,4259,0),
(14615,1,4138,0),
(14615,1,4140,0),
(14615,1,4259,0),
(14616,1,4138,0),
(14616,1,4140,0),
(14616,1,4259,0),
(14617,1,4138,0),
(14617,1,4140,0),
(14617,1,4259,0),
(14618,1,4138,0),
(14618,1,4140,0),
(14618,1,4259,0),

-- SUMMON NIGHTSHADE ACTIVE SKILLS
(14619,1,4705,0),
(14619,1,4706,0),
(14619,1,4707,0),
(14619,1,5652,0),
(14619,1,5653,0),
(14619,1,5654,0),
(14620,1,4705,0),
(14620,1,4706,0),
(14620,1,4707,0),
(14620,1,5652,2),
(14620,1,5653,2),
(14620,1,5654,1),
(14621,1,4705,0),
(14621,1,4706,0),
(14621,1,4707,0),
(14621,1,5652,2),
(14621,1,5653,2),
(14621,1,5654,1),
(14622,1,4705,0),
(14622,1,4706,0),
(14622,1,4707,0),
(14622,1,5652,3),
(14622,1,5653,2),
(14622,1,5654,2),
(14623,1,4705,0),
(14623,1,4706,0),
(14623,1,4707,0),
(14623,1,5652,3),
(14623,1,5653,2),
(14623,1,5654,3),
(14624,1,4705,0),
(14624,1,4706,0),
(14624,1,4707,0),
(14624,1,5652,3),
(14624,1,5653,2),
(14624,1,5654,3),
(14625,1,4705,0),
(14625,1,4706,0),
(14625,1,4707,0),
(14625,1,5652,3),
(14625,1,5653,2),
(14625,1,5654,3),
(14626,1,4705,0),
(14626,1,4706,0),
(14626,1,4707,0),
(14626,1,5652,3),
(14626,1,5653,2),
(14626,1,5654,3),
(14627,1,4705,0),
(14627,1,4706,0),
(14627,1,4707,0),
(14627,1,5652,3),
(14627,1,5653,2),
(14627,1,5654,3),
(14628,1,4705,0),
(14628,1,4706,0),
(14628,1,4707,0),
(14628,1,5652,3),
(14628,1,5653,2),
(14628,1,5654,3),
(14629,1,4705,0),
(14629,1,4706,0),
(14629,1,4707,0),
(14629,1,5652,3),
(14629,1,5653,2),
(14629,1,5654,3),
(14630,1,4705,0),
(14630,1,4706,0),
(14630,1,4707,0),
(14630,1,5652,2),
(14630,1,5653,2),
(14630,1,5654,1),
(14631,1,4705,0),
(14631,1,4706,0),
(14631,1,4707,0),
(14631,1,5652,2),
(14631,1,5653,2),
(14631,1,5654,1),
(14632,1,4705,0),
(14632,1,4706,0),
(14632,1,4707,0),
(14632,1,5652,3),
(14632,1,5653,2),
(14632,1,5654,2),
(14633,1,4705,0),
(14633,1,4706,0),
(14633,1,4707,0),
(14633,1,5652,3),
(14633,1,5653,2),
(14633,1,5654,3),
(14634,1,4705,0),
(14634,1,4706,0),
(14634,1,4707,0),
(14634,1,5652,3),
(14634,1,5653,2),
(14634,1,5654,3),
(14635,1,4705,0),
(14635,1,4706,0),
(14635,1,4707,0),
(14635,1,5652,3),
(14635,1,5653,2),
(14635,1,5654,3),
(14636,1,4705,0),
(14636,1,4706,0),
(14636,1,4707,0),
(14636,1,5652,3),
(14636,1,5653,2),
(14636,1,5654,3),
(14637,1,4705,0),
(14637,1,4706,0),
(14637,1,4707,0),
(14637,1,5652,3),
(14637,1,5653,2),
(14637,1,5654,3),
(14638,1,4705,0),
(14638,1,4706,0),
(14638,1,4707,0),
(14638,1,5652,3),
(14638,1,5653,2),
(14638,1,5654,3),
(14639,1,4705,0),
(14639,1,4706,0),
(14639,1,4707,0),
(14639,1,5652,3),
(14639,1,5653,2),
(14639,1,5654,3),
(14640,1,4705,0),
(14640,1,4706,0),
(14640,1,4707,0),
(14640,1,5652,2),
(14640,1,5653,2),
(14640,1,5654,1),
(14641,1,4705,0),
(14641,1,4706,0),
(14641,1,4707,0),
(14641,1,5652,2),
(14641,1,5653,2),
(14641,1,5654,1),
(14642,1,4705,0),
(14642,1,4706,0),
(14642,1,4707,0),
(14642,1,5652,3),
(14642,1,5653,2),
(14642,1,5654,2),
(14643,1,4705,0),
(14643,1,4706,0),
(14643,1,4707,0),
(14643,1,5652,3),
(14643,1,5653,2),
(14643,1,5654,3),
(14644,1,4705,0),
(14644,1,4706,0),
(14644,1,4707,0),
(14644,1,5652,3),
(14644,1,5653,2),
(14644,1,5654,3),
(14645,1,4705,0),
(14645,1,4706,0),
(14645,1,4707,0),
(14645,1,5652,3),
(14645,1,5653,2),
(14645,1,5654,3),
(14646,1,4705,0),
(14646,1,4706,0),
(14646,1,4707,0),
(14646,1,5652,3),
(14646,1,5653,2),
(14646,1,5654,3),
(14647,1,4705,0),
(14647,1,4706,0),
(14647,1,4707,0),
(14647,1,5652,3),
(14647,1,5653,2),
(14647,1,5654,3),
(14648,1,4705,0),
(14648,1,4706,0),
(14648,1,4707,0),
(14648,1,5652,3),
(14648,1,5653,2),
(14648,1,5654,3),
(14649,1,4705,0),
(14649,1,4706,0),
(14649,1,4707,0),
(14649,1,5652,3),
(14649,1,5653,2),
(14649,1,5654,3),
(14650,1,4705,0),
(14650,1,4706,0),
(14650,1,4707,0),
(14650,1,5652,2),
(14650,1,5653,2),
(14650,1,5654,1),
(14651,1,4705,0),
(14651,1,4706,0),
(14651,1,4707,0),
(14651,1,5652,2),
(14651,1,5653,2),
(14651,1,5654,1),
(14652,1,4705,0),
(14652,1,4706,0),
(14652,1,4707,0),
(14652,1,5652,3),
(14652,1,5653,2),
(14652,1,5654,2),
(14653,1,4705,0),
(14653,1,4706,0),
(14653,1,4707,0),
(14653,1,5652,3),
(14653,1,5653,2),
(14653,1,5654,3),
(14654,1,4705,0),
(14654,1,4706,0),
(14654,1,4707,0),
(14654,1,5652,3),
(14654,1,5653,2),
(14654,1,5654,3),
(14655,1,4705,0),
(14655,1,4706,0),
(14655,1,4707,0),
(14655,1,5652,3),
(14655,1,5653,2),
(14655,1,5654,3),
(14656,1,4705,0),
(14656,1,4706,0),
(14656,1,4707,0),
(14656,1,5652,3),
(14656,1,5653,2),
(14656,1,5654,3),
(14657,1,4705,0),
(14657,1,4706,0),
(14657,1,4707,0),
(14657,1,5652,3),
(14657,1,5653,2),
(14657,1,5654,3),
(14658,1,4705,0),
(14658,1,4706,0),
(14658,1,4707,0),
(14658,1,5652,3),
(14658,1,5653,2),
(14658,1,5654,3),
(14659,1,4705,0),
(14659,1,4706,0),
(14659,1,4707,0),
(14659,1,5652,3),
(14659,1,5653,2),
(14659,1,5654,3),
(14660,1,4705,0),
(14660,1,4706,0),
(14660,1,4707,0),
(14660,1,5652,2),
(14660,1,5653,2),
(14660,1,5654,1),
(14661,1,4705,0),
(14661,1,4706,0),
(14661,1,4707,0),
(14661,1,5652,2),
(14661,1,5653,2),
(14661,1,5654,1),
(14662,1,4705,0),
(14662,1,4706,0),
(14662,1,4707,0),
(14662,1,5652,3),
(14662,1,5653,2),
(14662,1,5654,2),

-- SUMMON MECHANIC GOLEM ACTIVE SKILLS
(14663,1,4068,0),
(14664,1,4068,0),
(14665,1,4068,0),
(14666,1,4068,0),
(14667,1,4068,0),
(14668,1,4068,0),
(14669,1,4068,0),
(14670,1,4068,0),
(14671,1,4068,0),
(14672,1,4068,0),
(14673,1,4068,0),
(14674,1,4068,0),
(14675,1,4068,0),
(14676,1,4068,0),
(14677,1,4068,0),
(14678,1,4068,0),
(14679,1,4068,0),
(14680,1,4068,0),
(14681,1,4068,0),
(14682,1,4068,0),
(14683,1,4068,0),
(14684,1,4068,0),
(14685,1,4068,0),
(14686,1,4068,0),
(14687,1,4068,0),
(14688,1,4068,0),
(14689,1,4068,0),
(14690,1,4068,0),
(14691,1,4068,0),
(14692,1,4068,0),
(14693,1,4068,0),
(14694,1,4068,0),
(14695,1,4068,0),
(14696,1,4068,0),
(14697,1,4068,0),
(14698,1,4068,0),
(14699,1,4068,0),
(14700,1,4068,0),
(14701,1,4068,0),

-- SUMMON BIG BOOM ACTIVE SKILLS
(14702,1,4139,0),
(14703,1,4139,0),
(14704,1,4139,0),
(14705,1,4139,0),
(14706,1,4139,0),
(14707,1,4139,0),
(14708,1,4139,0),
(14709,1,4139,0),
(14710,1,4139,0),
(14711,1,4139,0),
(14712,1,4139,0),
(14713,1,4139,0),
(14714,1,4139,0),
(14715,1,4139,0),
(14716,1,4139,0),
(14717,1,4139,0),
(14718,1,4139,0),
(14719,1,4139,0),
(14720,1,4139,0),
(14721,1,4139,0),
(14722,1,4139,0),
(14723,1,4139,0),
(14724,1,4139,0),
(14725,1,4139,0),
(14726,1,4139,0),
(14727,1,4139,0),
(14728,1,4139,0),
(14729,1,4139,0),
(14730,1,4139,0),
(14731,1,4139,0),
(14732,1,4139,0),
(14733,1,4139,0),
(14734,1,4139,0),
(14735,1,4139,0),
(14736,1,4139,0),

-- SUMMON SIEGE GOLEM ACTIVE SKILLS
(14737,1,4079,1),
(14738,1,4079,1),
(14739,1,4079,1),
(14740,1,4079,1),
(14741,1,4079,1),
(14742,1,4079,1),
(14743,1,4079,1),
(14744,1,4079,1),
(14745,1,4079,1),
(14746,1,4079,1),
(14747,1,4079,1),
(14748,1,4079,1),
(14749,1,4079,1),
(14750,1,4079,1),
(14751,1,4079,1),
(14752,1,4079,1),
(14753,1,4079,1),
(14754,1,4079,1),
(14755,1,4079,1),
(14756,1,4079,1),
(14757,1,4079,1),
(14758,1,4079,1),
(14759,1,4079,1),
(14760,1,4079,1),
(14761,1,4079,1),
(14762,1,4079,1),
(14763,1,4079,1),
(14764,1,4079,1),
(14765,1,4079,1),
(14766,1,4079,1),
(14767,1,4079,1),

-- SUMMON WILD HOG CANNON ACTIVE SKILLS
(14768,1,4230,1),
(14769,1,4230,1),
(14770,1,4230,1),
(14771,1,4230,1),
(14772,1,4230,1),
(14773,1,4230,1),
(14774,1,4230,1),
(14775,1,4230,1),
(14776,1,4230,1),
(14777,1,4230,1),
(14778,1,4230,1),
(14779,1,4230,1),
(14780,1,4230,1),
(14781,1,4230,1),
(14782,1,4230,1),
(14783,1,4230,1),
(14784,1,4230,1),
(14785,1,4230,1),
(14786,1,4230,1),
(14787,1,4230,1),
(14788,1,4230,1),
(14789,1,4230,1),
(14790,1,4230,1),
(14791,1,4230,1),
(14792,1,4230,1),
(14793,1,4230,1),
(14794,1,4230,1),
(14795,1,4230,1),
(14796,1,4230,1),
(14797,1,4230,1),
(14798,1,4230,1),

-- SUMMON FELINE KING ACTIVE SKILLS
(14836,1,5135,1),
(14836,1,5136,1),
(14836,1,5137,1),

-- SUMMON MAGNUS THE UNICORN ACTIVE SKILLS
(14837,1,5138,1),
(14837,1,5139,1),

-- SUMMON SPECTRAL LORD ACTIVE SKILLS
(14838,1,5140,1),
(14838,1,5141,1),
(14838,1,5142,1),

-- SUMMON SWOOP CANNON ACTIVE SKILLS
(14839,1,5110,1),
(14839,1,5111,1),
(14840,1,5110,1),
(14840,1,5111,1),
(14841,1,5110,1),
(14841,1,5111,1),
(14842,1,5110,1),
(14842,1,5111,1),
(14843,1,5110,1),
(14843,1,5111,1),
(14844,1,5110,1),
(14844,1,5111,1),
(14845,1,5110,1),
(14845,1,5111,1),
(14846,1,5110,1),
(14846,1,5111,1),
(14847,1,5110,1),
(14847,1,5111,1),
(14848,1,5110,1),
(14848,1,5111,1),
(14849,1,5110,1),
(14849,1,5111,1),
(14850,1,5110,1),
(14850,1,5111,1),
(14851,1,5110,1),
(14851,1,5111,1),
(14852,1,5110,1),
(14852,1,5111,1),
(14853,1,5110,1),
(14853,1,5111,1),
(14854,1,5110,1),
(14854,1,5111,1),
(14855,1,5110,1),
(14855,1,5111,1),
(14856,1,5110,1),
(14856,1,5111,1),
(14857,1,5110,1),
(14857,1,5111,1),
(14858,1,5110,1),
(14858,1,5111,1),
(14859,1,5110,1),
(14859,1,5111,1),
(14860,1,5110,1),
(14860,1,5111,1),
(14861,1,5110,1),
(14861,1,5111,1),
(14862,1,5110,1),
(14862,1,5111,1),
(14863,1,5110,1),
(14863,1,5111,1),
(14864,1,5110,1),
(14864,1,5111,1),
(14865,1,5110,1),
(14865,1,5111,1),
(14866,1,5110,1),
(14866,1,5111,1),
(14867,1,5110,1),
(14867,1,5111,1),
(14868,1,5110,1),
(14868,1,5111,1),
(14869,1,5110,1),
(14869,1,5111,1),

-- SUMMON DIVINE BEAST ACTIVE SKILLS
(14870,1,5580,1),
(14870,1,5581,1),
(14870,1,5582,1),
(14870,1,5583,1),

-- SUMMON FELINE KING ACTIVE SKILLS
(14871,1,5135,1),
(14871,1,5136,1),
(14871,1,5137,1),
(14872,1,5135,1),
(14872,1,5136,1),
(14872,1,5137,1),
(14873,1,5135,1),
(14873,1,5136,1),
(14873,1,5137,1),
(14874,1,5135,1),
(14874,1,5136,1),
(14874,1,5137,1),
(14875,1,5135,1),
(14875,1,5136,1),
(14875,1,5137,1),
(14876,1,5135,1),
(14876,1,5136,1),
(14876,1,5137,1),
(14877,1,5135,1),
(14877,1,5136,1),
(14877,1,5137,1),
(14878,1,5135,1),
(14878,1,5136,1),
(14878,1,5137,1),
(14879,1,5135,1),
(14879,1,5136,1),
(14879,1,5137,1),
(14880,1,5135,1),
(14880,1,5136,1),
(14880,1,5137,1),
(14881,1,5135,1),
(14881,1,5136,1),
(14881,1,5137,1),
(14882,1,5135,1),
(14882,1,5136,1),
(14882,1,5137,1),
(14883,1,5135,1),
(14883,1,5136,1),
(14883,1,5137,1),
(14884,1,5135,1),
(14884,1,5136,1),
(14884,1,5137,1),
(14885,1,5135,1),
(14885,1,5136,1),
(14885,1,5137,1),

-- SUMMON MAGNUS THE UNICORN ACTIVE SKILLS
(14886,1,5138,1),
(14886,1,5139,1),
(14887,1,5138,1),
(14887,1,5139,1),
(14888,1,5138,1),
(14888,1,5139,1),
(14889,1,5138,1),
(14889,1,5139,1),
(14890,1,5138,1),
(14890,1,5139,1),
(14891,1,5138,1),
(14891,1,5139,1),
(14892,1,5138,1),
(14892,1,5139,1),
(14893,1,5138,1),
(14893,1,5139,1),
(14894,1,5138,1),
(14894,1,5139,1),
(14895,1,5138,1),
(14895,1,5139,1),
(14896,1,5138,1),
(14896,1,5139,1),
(14897,1,5138,1),
(14897,1,5139,1),
(14898,1,5138,1),
(14898,1,5139,1),
(14899,1,5138,1),
(14899,1,5139,1),
(14900,1,5138,1),
(14900,1,5139,1),

-- SUMMON SPECTRAL LORD ACTIVE SKILLS
(14901,1,5140,1),
(14901,1,5141,1),
(14901,1,5142,1),
(14902,1,5140,1),
(14902,1,5141,1),
(14902,1,5142,1),
(14903,1,5140,1),
(14903,1,5141,1),
(14903,1,5142,1),
(14904,1,5140,1),
(14904,1,5141,1),
(14904,1,5142,1),
(14905,1,5140,1),
(14905,1,5141,1),
(14905,1,5142,1),
(14906,1,5140,1),
(14906,1,5141,1),
(14906,1,5142,1),
(14907,1,5140,1),
(14907,1,5141,1),
(14907,1,5142,1),
(14908,1,5140,1),
(14908,1,5141,1),
(14908,1,5142,1),
(14909,1,5140,1),
(14909,1,5141,1),
(14909,1,5142,1),
(14910,1,5140,1),
(14910,1,5141,1),
(14910,1,5142,1),
(14911,1,5140,1),
(14911,1,5141,1),
(14911,1,5142,1),
(14912,1,5140,1),
(14912,1,5141,1),
(14912,1,5142,1),
(14913,1,5140,1),
(14913,1,5141,1),
(14913,1,5142,1),
(14914,1,5140,1),
(14914,1,5141,1),
(14914,1,5142,1),
(14915,1,5140,1),
(14915,1,5141,1),
(14915,1,5142,1),

-- SUMMON IMPERIAL PHOENIX ACTIVE SKILLS
(14918,1,6041,1),
(14918,1,6042,1),
(14918,1,6043,1),
(14918,1,6044,1),

-- SUMMON GREAT WOLF ACTIVE SKILLS
(16025,1,5442,1),
(16025,60,5442,2),
(16025,65,5442,3),
(16025,70,5442,4),

-- SUMMON IMPROVED BABY BUFFALO ACTIVE SKILLS
(16034,1,5189,1),
(16034,1,5190,1),
(16034,1,5193,1),
(16034,1,5194,1),
(16034,1,5195,1),
(16034,1,5201,1),
(16034,1,5587,1),
(16034,1,5590,1),

-- SUMMON IMPROVED BABY KOOKABURRA ACTIVE SKILLS
(16035,1,5186,1),
(16035,1,5187,1),
(16035,1,5189,1),
(16035,1,5191,1),
(16035,1,5195,1),
(16035,1,5586,1),
(16035,1,5587,1),
(16035,1,5588,1),
(16035,1,5589,1),
(16035,1,5590,1),

-- SUMMON IMPROVED BABY COUGAR ACTIVE SKILLS
(16036,1,5186,1),
(16036,1,5187,1),
(16036,1,5189,1),
(16036,1,5193,1),
(16036,1,5194,1),
(16036,1,5195,1),
(16036,1,5586,1),
(16036,1,5587,1),
(16036,1,5588,1),
(16036,1,5590,1),

-- SUMMON GREAT SNOW ACTIVE SKILLS
(16037,1,5442,1),
(16037,60,5442,2),
(16037,65,5442,3),
(16037,70,5442,4),

-- SUMMON RED WIND STRIDER ACTIVE SKILLS
(16038,1,4710,0),
(16038,1,4711,0),

-- SUMMON RED STAR STRIDER ACTIVE SKILLS
(16039,1,4712,0),
(16039,1,4713,0),

-- SUMMON FENRIR ACTIVE SKILLS
(16041,1,5442,1),
(16041,60,5442,2),
(16041,65,5442,3),
(16041,70,5442,4),

-- SUMMON SNOW FENRIR ACTIVE SKILLS
(16042,1,5442,1),
(16042,60,5442,2),
(16042,65,5442,3),
(16042,70,5442,4);