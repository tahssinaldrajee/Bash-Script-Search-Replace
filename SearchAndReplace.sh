#!/bin/bash

for f1 in rustdesk/*;do # Change this for your directory you want to search in
	if [[ -f "$f1" ]];
		then
			sed -i"" 's/old_word/new_word/g' "$f1" # Change this every where for what you wnat
			echo $f1
	elif [[ -d "$f1" ]];
		then
			for f2 in $f1/*;do
				if [ -f "$f2" ];					
					then
						sed -i"" 's/old_word/new_word/g' "$f2"
						echo $f2
				elif [ -d "$f2" ];
					then
						for f3 in $f2/*;do
							if [ -f "$f3" ];
								then
									sed -i"" 's/old_word/new_word/g' "$f3"
									echo $f3
							elif [ -d "$f3" ];
								then
									for f4 in $f3/*;do
										if [ -f "$f4" ];
											then
												sed -i"" 's/old_word/new_word/g' "$f4"
												echo $f4
										elif [ -d "$f4" ];
											then
													for f5 in $f4/*;do
														if [ -f "$f5" ];
															then
																sed -i"" 's/old_word/new_word/g' "$f5"
																echo $f5
														elif [ -d "$f5" ];
															then
																for f6 in $f5/*;do
																	if [ -f "$f6" ];
																		then
																			sed -i"" 's/old_word/new_word/g' "$f6"
																			echo $f6
																	elif [ -d "$f6" ];
																		then
																			for f7 in $f6/*;do
																				if [ -f "$f7" ];
																					then
																						sed -i"" 's/old_word/new_word/g' "$f7"
																						echo $f7
																				elif [ -d "$f7" ];
																					then
																						for f8 in $f7/*;do
																							if [ -f "$f8" ];
																								then
																									sed -i"" 's/old_word/new_word/g' "$f8"
																									echo $f8
																							elif [ -d "$f8" ];
																								then
																									for f9 in $f8/*;do
																										if [ -f "$f9" ];
																											then
																												sed -i"" 's/old_word/new_word/g' "$f9"
																												echo $f9
																										elif [ -d "$f9" ];
																											then
																												for f10 in $f9/*;do
																													if [ -f "$f10" ];
																														then
																															sed -i"" 's/old_word/new_word/g' "$f10"
																															echo $f10
																													elif [ -d "$f10" ];
																														then
																															for f11 in $f10/*;do
																																if [ -f "$f11" ];
																																	then
																																		sed -i"" 's/old_word/new_word/g' "$f11"
																																		echo $f11
																																elif [ -d "$f11" ];
																																	then
																																		echo "There is 11th directory!"
																																fi
																															done
																													fi
																												done
																										fi
																									done
																							fi
																						done
																				fi
																			done
																	fi
																done
														fi
													done
										fi
									done
							fi
						done
				fi
			done
	fi
done
