var dataUtils = (function($){ 'use strict';	
	
	var HORA_FIXA = 12,
		day = 0,
		month = 0,
		year = 0;
	
	var convertToDate = function(dateString){
		
		var dateArray = dateString.split('/');
		day = Number(dateArray[0]);
		month = (Number(dateArray[1]) -1);
		year = Number(dateArray[2]);
		
		return new Date(year, month, day, HORA_FIXA);
	};

	var isValid = function(date){
			
		var dateComparator = convertToDate(date);
		
		var isDateValid = (day === dateComparator.getDate() && 
							month === dateComparator.getMonth() && 
							year === dateComparator.getFullYear());
		
		return isDateValid || $.trim(date) === '';
	};
	
	var isInRange = function(date, startDateRange, endDateRange){
		
		date = convertToDate(date);
		startDateRange = convertToDate(startDateRange);
		endDateRange = convertToDate(endDateRange);
		
		return date >= startDateRange && date <= endDateRange;
	};
	
	var getRangeInDays = function(date1, date2){
		date1 = convertToDate(date1);
		date2 = convertToDate(date2);
		var days = ((((date2 - date1) / 1000) / 60) /60) / 24;
		
		return days;
	};

	return {
		isValida: isValid,
		isEntreRange: isInRange,
		converteParaData: convertToDate,
		diffDias: getRangeInDays 
	};
})(jQuery);