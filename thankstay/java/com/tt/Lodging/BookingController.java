package com.tt.Lodging;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BookingController {
	
	@GetMapping("/booking")
	public String booking() {
		return "lodging/booking";
	}
}
