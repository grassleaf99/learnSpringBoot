package tacos.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/tacoCreated")
public class TacoCreatedController {
	@GetMapping
	public String showSuccessTacoCreated()
	{
		return "tacoCreated";
	}
}
