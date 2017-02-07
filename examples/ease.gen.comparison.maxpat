{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 38.0, 84.0, 1314.0, 942.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 2,
		"objectsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-112",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1015.0, 634.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-113",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1015.0, 606.0, 167.0, 22.0 ],
					"style" : "",
					"text" : "gen~ BackEaseInOut.gendsp"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-114",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 828.0, 634.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-115",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 828.0, 606.0, 157.0, 22.0 ],
					"style" : "",
					"text" : "gen~ BackEaseOut.gendsp"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-116",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 641.0, 570.0, 78.0, 22.0 ],
					"style" : "",
					"text" : "phasor~ 100"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-117",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 641.0, 634.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-118",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 641.0, 606.0, 148.0, 22.0 ],
					"style" : "",
					"text" : "gen~ BackEaseIn.gendsp"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-122",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1015.0, 814.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-123",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1015.0, 786.0, 181.0, 22.0 ],
					"style" : "",
					"text" : "gen~ BounceEaseInOut.gendsp"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-124",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 828.0, 814.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-125",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 828.0, 786.0, 171.0, 22.0 ],
					"style" : "",
					"text" : "gen~ BounceEaseOut.gendsp"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-126",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 641.0, 750.0, 78.0, 22.0 ],
					"style" : "",
					"text" : "phasor~ 100"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-127",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 641.0, 814.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-128",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 641.0, 786.0, 162.0, 22.0 ],
					"style" : "",
					"text" : "gen~ BounceEaseIn.gendsp"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-130",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 389.0, 814.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-131",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 389.0, 786.0, 176.0, 22.0 ],
					"style" : "",
					"text" : "gen~ ElasticEaseInOut.gendsp"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-132",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 202.0, 814.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-133",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 202.0, 786.0, 166.0, 22.0 ],
					"style" : "",
					"text" : "gen~ ElasticEaseOut.gendsp"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-134",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 15.0, 750.0, 78.0, 22.0 ],
					"style" : "",
					"text" : "phasor~ 100"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-135",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 814.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-136",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 15.0, 786.0, 156.0, 22.0 ],
					"style" : "",
					"text" : "gen~ ElasticEaseIn.gendsp"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-143",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 389.0, 634.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-144",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 389.0, 606.0, 182.0, 22.0 ],
					"style" : "",
					"text" : "gen~ CircularEaseInOut.gendsp"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-145",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 202.0, 634.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-146",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 202.0, 606.0, 172.0, 22.0 ],
					"style" : "",
					"text" : "gen~ CircularEaseOut.gendsp"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-147",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 15.0, 570.0, 78.0, 22.0 ],
					"style" : "",
					"text" : "phasor~ 100"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-148",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 634.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-149",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 15.0, 606.0, 162.0, 22.0 ],
					"style" : "",
					"text" : "gen~ CircularEaseIn.gendsp"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-88",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 389.0, 454.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 389.0, 426.0, 179.0, 22.0 ],
					"style" : "",
					"text" : "gen~ QuarticEaseInOut.gendsp"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-90",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 202.0, 454.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-91",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 202.0, 426.0, 169.0, 22.0 ],
					"style" : "",
					"text" : "gen~ QuarticEaseOut.gendsp"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 15.0, 390.0, 78.0, 22.0 ],
					"style" : "",
					"text" : "phasor~ 100"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-93",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 454.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-96",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 15.0, 426.0, 160.0, 22.0 ],
					"style" : "",
					"text" : "gen~ QuarticEaseIn.gendsp"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-45",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1015.0, 454.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1015.0, 426.0, 178.0, 22.0 ],
					"style" : "",
					"text" : "gen~ QuinticEaseInOut.gendsp"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-54",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 828.0, 454.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 828.0, 426.0, 168.0, 22.0 ],
					"style" : "",
					"text" : "gen~ QuinticEaseOut.gendsp"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 641.0, 390.0, 78.0, 22.0 ],
					"style" : "",
					"text" : "phasor~ 100"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-66",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 641.0, 454.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 641.0, 426.0, 158.0, 22.0 ],
					"style" : "",
					"text" : "gen~ QuinticEaseIn.gendsp"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-55",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1015.0, 274.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1015.0, 246.0, 171.0, 22.0 ],
					"style" : "",
					"text" : "gen~ CubicEaseInOut.gendsp"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-58",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 828.0, 274.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 828.0, 246.0, 161.0, 22.0 ],
					"style" : "",
					"text" : "gen~ CubicEaseOut.gendsp"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 641.0, 210.0, 78.0, 22.0 ],
					"style" : "",
					"text" : "phasor~ 100"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-61",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 641.0, 274.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 641.0, 246.0, 152.0, 22.0 ],
					"style" : "",
					"text" : "gen~ CubicEaseIn.gendsp"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-37",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 389.0, 274.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 389.0, 246.0, 203.0, 22.0 ],
					"style" : "",
					"text" : "gen~ ExponentialEaseInOut.gendsp"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-40",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 202.0, 274.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 202.0, 246.0, 193.0, 22.0 ],
					"style" : "",
					"text" : "gen~ ExponentialEaseOut.gendsp"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 15.0, 210.0, 78.0, 22.0 ],
					"style" : "",
					"text" : "phasor~ 100"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-43",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 274.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 15.0, 246.0, 184.0, 22.0 ],
					"style" : "",
					"text" : "gen~ ExponentialEaseIn.gendsp"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-19",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1015.0, 94.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1015.0, 66.0, 192.0, 22.0 ],
					"style" : "",
					"text" : "gen~ QuadraticEaseInOut.gendsp"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-22",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 828.0, 94.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 828.0, 66.0, 182.0, 22.0 ],
					"style" : "",
					"text" : "gen~ QuadraticEaseOut.gendsp"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 641.0, 30.0, 78.0, 22.0 ],
					"style" : "",
					"text" : "phasor~ 100"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-25",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 641.0, 94.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"rect" : [ 0.0, 0.0, 600.0, 450.0 ],
						"bgcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
						"editing_bgcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 14.0, 30.0, 20.0 ],
									"style" : "",
									"text" : "in 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 305.0, 14.0, 30.0, 20.0 ],
									"style" : "",
									"text" : "in 2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 176.0, 149.0, 32.5, 20.0 ],
									"style" : "",
									"text" : "+"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 176.0, 418.0, 37.0, 20.0 ],
									"style" : "",
									"text" : "out 1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 641.0, 66.0, 204.0, 22.0 ],
					"style" : "",
					"text" : "gen~ @file QuadraticEaseIn.gendsp"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-13",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 389.0, 94.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 389.0, 66.0, 164.0, 22.0 ],
					"style" : "",
					"text" : "gen~ SineEaseInOut.gendsp"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-7",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 202.0, 94.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 202.0, 66.0, 154.0, 22.0 ],
					"style" : "",
					"text" : "gen~ SineEaseOut.gendsp"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 15.0, 30.0, 78.0, 22.0 ],
					"style" : "",
					"text" : "phasor~ 100"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.322969, 0.31519, 0.325025, 1.0 ],
					"gridcolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"gridorigincolor" : [ 0.45098, 0.513725, 0.521569, 1.0 ],
					"id" : "obj-5",
					"margins" : [ 1.0, 0.0, 1.0, 25.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 94.0, 125.0, 101.0 ],
					"prototypename" : "Audio Scope - Light",
					"subplots" : [ 						{
							"color" : [ 0.1, 0.9, 0.1, 1.0 ],
							"thickness" : 1.2,
							"point_style" : "none",
							"line_style" : "lines",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
							"domain_labels" : [  ],
							"range_start" : -0.3,
							"range_end" : 1.3,
							"range_style" : "linear",
							"range_markers" : [ 0.0, 0.25, 0.75, 1.0 ],
							"range_labels" : [ 0.0, "0.0", 1.0, "1.0 " ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 1235.0, 69.0, 45.0, 45.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 15.0, 66.0, 145.0, 22.0 ],
					"style" : "",
					"text" : "gen~ SineEaseIn.gendsp"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-115", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 650.5, 597.5, 1024.5, 597.5 ],
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 650.5, 597.5, 837.5, 597.5 ],
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-118", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-123", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 650.5, 777.5, 1024.5, 777.5 ],
					"source" : [ "obj-126", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 650.5, 777.5, 837.5, 777.5 ],
					"source" : [ "obj-126", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-126", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-130", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-131", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-132", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-133", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-131", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 24.5, 777.5, 398.5, 777.5 ],
					"source" : [ "obj-134", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 24.5, 777.5, 211.5, 777.5 ],
					"source" : [ "obj-134", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-134", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-136", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-143", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-144", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-145", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-146", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 24.5, 597.5, 398.5, 597.5 ],
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 24.5, 597.5, 211.5, 597.5 ],
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-148", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-149", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 650.5, 57.5, 1024.5, 57.5 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 650.5, 57.5, 837.5, 57.5 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 24.5, 237.5, 398.5, 237.5 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 24.5, 237.5, 211.5, 237.5 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 24.5, 57.5, 398.5, 57.5 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 24.5, 57.5, 211.5, 57.5 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 650.5, 237.5, 1024.5, 237.5 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 650.5, 237.5, 837.5, 237.5 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 650.5, 417.5, 1024.5, 417.5 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 650.5, 417.5, 837.5, 417.5 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 24.5, 417.5, 398.5, 417.5 ],
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 24.5, 417.5, 211.5, 417.5 ],
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-96", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "SineEaseIn.gendsp",
				"bootpath" : "~/Materials/ease/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "SineEaseOut.gendsp",
				"bootpath" : "~/Materials/ease/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "SineEaseInOut.gendsp",
				"bootpath" : "~/Materials/ease/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "QuadraticEaseOut.gendsp",
				"bootpath" : "~/Materials/ease/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "QuadraticEaseInOut.gendsp",
				"bootpath" : "~/Materials/ease/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "ExponentialEaseIn.gendsp",
				"bootpath" : "~/Materials/ease/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "ExponentialEaseOut.gendsp",
				"bootpath" : "~/Materials/ease/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "ExponentialEaseInOut.gendsp",
				"bootpath" : "~/Materials/ease/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "CubicEaseIn.gendsp",
				"bootpath" : "~/Materials/ease/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "CubicEaseOut.gendsp",
				"bootpath" : "~/Materials/ease/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "CubicEaseInOut.gendsp",
				"bootpath" : "~/Materials/ease/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "QuinticEaseIn.gendsp",
				"bootpath" : "~/Materials/ease/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "QuinticEaseOut.gendsp",
				"bootpath" : "~/Materials/ease/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "QuinticEaseInOut.gendsp",
				"bootpath" : "~/Materials/ease/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "QuarticEaseIn.gendsp",
				"bootpath" : "~/Materials/ease/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "QuarticEaseOut.gendsp",
				"bootpath" : "~/Materials/ease/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "QuarticEaseInOut.gendsp",
				"bootpath" : "~/Materials/ease/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "CircularEaseIn.gendsp",
				"bootpath" : "~/Materials/ease/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "CircularEaseOut.gendsp",
				"bootpath" : "~/Materials/ease/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "CircularEaseInOut.gendsp",
				"bootpath" : "~/Materials/ease/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "ElasticEaseIn.gendsp",
				"bootpath" : "~/Materials/ease/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "ElasticEaseOut.gendsp",
				"bootpath" : "~/Materials/ease/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "ElasticEaseInOut.gendsp",
				"bootpath" : "~/Materials/ease/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "BounceEaseIn.gendsp",
				"bootpath" : "~/Materials/ease/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "BounceEaseOut.gendsp",
				"bootpath" : "~/Materials/ease/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "BounceEaseInOut.gendsp",
				"bootpath" : "~/Materials/ease/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "BackEaseOut.gendsp",
				"bootpath" : "~/Materials/ease/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "BackEaseInOut.gendsp",
				"bootpath" : "~/Materials/ease/code",
				"type" : "gDSP",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
