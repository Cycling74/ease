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
		"rect" : [ 107.0, 111.0, 767.0, 694.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"bgcolor" : [ 0.33, 0.33, 0.33, 1.0 ],
					"id" : "obj-1",
					"margins" : [ 1.0, 0.0, 1.0, 0.0 ],
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"numpoints" : 441,
					"outlettype" : [ "" ],
					"patching_rect" : [ 22.0, 204.0, 100.0, 100.0 ],
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
							"range_start" : -1.0,
							"range_end" : 1.0,
							"range_style" : "linear",
							"range_markers" : [ -0.5, 0.0, 0.5 ],
							"range_labels" : [  ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-20",
					"maxclass" : "number~",
					"mode" : 2,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 133.0, 163.0, 56.0, 22.0 ],
					"sig" : 0.0,
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 22.0, 15.0, 78.0, 22.0 ],
					"style" : "",
					"text" : "phasor~ 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"items" : [ "Linear", "Interpolation", ",", "Quadratic", "Ease", "In", ",", "Quadratic", "Ease", "Out", ",", "Quadratic", "Ease", "In/Out", ",", "Cubic", "Ease", "In", ",", "Cubic", "Ease", "Out", ",", "Cubic", "Ease", "In/Out", ",", "Quartic", "Ease", "In", ",", "Quartic", "Ease", "Out", ",", "Quartic", "Ease", "In/Out", ",", "Quintic", "Ease", "In", ",", "Quintic", "Ease", "Out", ",", "Quintic", "Ease", "In/Out", ",", "Sine", "Ease", "In", ",", "Sine", "Ease", "Out", ",", "Sine", "Ease", "In/Out", ",", "Circular", "Ease", "In", ",", "Circular", "Ease", "Out", ",", "Circular", "Ease", "In/Out", ",", "Exponential", "Ease", "In", ",", "Exponential", "Ease", "Out", ",", "Exponential", "Ease", "In/Out", ",", "Elastic", "Ease", "In", ",", "Elastic", "Ease", "Out", ",", "Elastic", "Ease", "In/Out", ",", "Back", "Ease", "In", ",", "Back", "Ease", "Out", ",", "Back", "Ease", "In/Out", ",", "Bounce", "Ease", "In", ",", "Bounce", "Ease", "Out", ",", "Bounce", "Ease", "In/Out" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 133.0, 97.0, 168.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
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
						"rect" : [ 454.0, 134.0, 600.0, 450.0 ],
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
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 560.0, 105.0, 37.0, 22.0 ],
									"style" : "",
									"text" : "out 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 531.0, 25.0, 30.0, 22.0 ],
									"style" : "",
									"text" : "in 2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 14.0, 30.0, 22.0 ],
									"style" : "",
									"text" : "in 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 418.0, 37.0, 22.0 ],
									"style" : "",
									"text" : "out 1"
								}

							}
, 							{
								"box" : 								{
									"code" : "require(\"InterpEaseFunctions.genexpr\");\r\neasefunc = in2;\n\nif (easefunc == 0) {\nout1 = interpLinearInterpolation(in1);\n} else if (easefunc == 1) {\nout1 = interpQuadraticEaseIn(in1);\n} else if (easefunc == 2) {\nout1 = interpQuadraticEaseOut(in1);\n} else if (easefunc == 3) {\nout1 = interpQuadraticEaseInOut(in1);\n} else if (easefunc == 4) {\nout1 = interpCubicEaseIn(in1);\n} else if (easefunc == 5) {\nout1 = interpCubicEaseOut(in1);\n} else if (easefunc == 6) {\nout1 = interpCubicEaseInOut(in1);\n} else if (easefunc == 7) {\nout1 = interpQuarticEaseIn(in1);\n} else if (easefunc == 8) {\nout1 = interpQuarticEaseOut(in1);\n} else if (easefunc == 9) {\nout1 = interpQuarticEaseInOut(in1);\n} else if (easefunc == 10) {\nout1 = interpQuinticEaseIn(in1);\n} else if (easefunc == 11) {\nout1 = interpQuinticEaseOut(in1); \n} else if (easefunc == 12) {\nout1 = interpQuinticEaseInOut(in1); \n} else if (easefunc == 13) {\nout1 = interpSineEaseIn(in1);\n} else if (easefunc == 14) {\nout1 = interpSineEaseOut(in1);\n} else if (easefunc == 15) {\nout1 = interpSineEaseInOut(in1);\n} else if (easefunc == 16) {\nout1 = interpCircularEaseIn(in1);\n} else if (easefunc == 17) {\nout1 = interpCircularEaseOut(in1);\n} else if (easefunc == 18) {\nout1 = interpCircularEaseInOut(in1);\n} else if (easefunc == 19) {\nout1 = interpExponentialEaseIn(in1);\n} else if (easefunc == 20) {\nout1 = interpExponentialEaseOut(in1);\n} else if (easefunc == 21) {\nout1 = interpExponentialEaseInOut(in1);\n} else if (easefunc == 22) {\nout1 = interpElasticEaseIn(in1);\n} else if (easefunc == 23) {\nout1 = interpElasticEaseOut(in1);\n} else if (easefunc == 24) {\nout1 = interpElasticEaseInOut(in1);\n} else if (easefunc == 25) {\nout1 = interpBackEaseIn(in1);\n} else if (easefunc == 26) {\nout1 = interpBackEaseOut(in1);\n} else if (easefunc == 27) {\nout1 = interpBackEaseInOut(in1);\n} else if (easefunc == 28) {\nout1 = interpBounceEaseIn(in1);\n} else if (easefunc == 29) {\nout1 = interpBounceEaseOut(in1);\n} else if (easefunc == 30) {\nout1 = interpBounceEaseInOut(in1);\n}",
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-136",
									"maxclass" : "codebox",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 109.0, 500.0, 272.799988 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 14.0, 30.0, 22.0 ],
									"style" : "",
									"text" : "in 1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-136", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-136", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-136", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 22.0, 129.0, 130.0, 22.0 ],
					"style" : "",
					"text" : "gen~"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "interpEaseFunctions.genexpr",
				"bootpath" : "~/Materials/ease/code",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
