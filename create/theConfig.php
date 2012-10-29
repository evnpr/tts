<?php

	if(!isset($_SESSION['aggregate'])){
		$_SESSION['aggregate'] = 0;
	}
	
	$theDrive1 = 'C';
	$theDrive2 = 'D';
	$theDrive3 = 'G';
	$theDrive4 = 'J';
	
	/*
	<option value="tr_19">Place on a Tree (--- Account Servers ---)</option>
	<option value="tr_20">Place on a Tree (--- Admin Servers ---)</option>
	<option value="tr_16">Place on a Tree (--- Agent Servers ---)</option>
	<option value="tr_21">Place on a Tree (--- Core Servers ---)</option>
	<option value="tr_18">Place on a Tree (--- Player Servers ---)</option>
	
	*/
	
	$_SESSION['typeOfIP'] = 'tr_3';