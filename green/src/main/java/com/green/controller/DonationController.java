package com.green.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/donation/")
public class DonationController {
<<<<<<< HEAD
   @RequestMapping(value="{url}.do")
   public String url(@PathVariable String url) {
      System.out.println("기부 요청"+url);
      return "/donation/"+url;
   }
}
=======
	//화면만 이동(DB연결은 XX)
	@RequestMapping(value="{url}.do")
	public String url(@PathVariable String url) {
		System.out.println("기부 요청"+url);
		return "/donation/"+url;
	}
}
>>>>>>> refs/remotes/origin/main
