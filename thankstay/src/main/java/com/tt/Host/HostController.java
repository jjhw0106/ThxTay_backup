package com.tt.Host;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HostController {

	@GetMapping(path = {"/host/insight"})
	public String insight() {
		return "host/insight";
	}
}
