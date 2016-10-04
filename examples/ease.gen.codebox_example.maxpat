{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 2,
			"revision" : 5,
			"architecture" : "x86",
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
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 97.0, 45.0, 103.0, 22.0 ],
					"style" : "",
					"text" : "scale~ -1. 1. 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 97.0, 19.0, 77.0, 22.0 ],
					"style" : "",
					"text" : "triangle~ 0.5"
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
					"id" : "obj-18",
					"maxclass" : "scope~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 22.0, 192.0, 130.0, 130.0 ],
					"range" : [ -0.2, 1.2 ],
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
					"patching_rect" : [ 22.0, 15.0, 64.0, 22.0 ],
					"style" : "",
					"text" : "phasor~ 1"
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
							"minor" : 2,
							"revision" : 5,
							"architecture" : "x86",
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
					"destination" : [ "obj-18", 0 ],
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
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "InterpEaseFunctions.genexpr",
				"bootpath" : "~/Desktop/easing-in-genexpr",
				"patcherrelativepath" : "../../../../../../Desktop/easing-in-genexpr",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
