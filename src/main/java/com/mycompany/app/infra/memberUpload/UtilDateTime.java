package com.mycompany.app.infra.memberUpload;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class UtilDateTime {
	public static String nowString() throws Exception {
		LocalDateTime localDateTime = LocalDateTime.now();
		String LocalDatetimeString = localDateTime.format(DateTimeFormatter.ofPattern(Constants.DATETIME_FORMAT_BASIC));
		return LocalDatetimeString;
	}
}
