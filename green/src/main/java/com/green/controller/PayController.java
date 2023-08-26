
package com.green.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.green.domain.ChalPayVO;
import com.green.domain.MemberVO;
import com.green.domain.PayVO;
import com.green.service.MemberService;
import com.green.service.PayService;

@Controller
@RequestMapping("/pay/")
public class PayController { // 화면만 이동(DB연결은 XX)

   @Autowired
   private PayService payService;
   @Autowired
   private MemberService memberService;

   @RequestMapping(value = "{url}.do")
   public String url(@PathVariable String url) {
      System.out.println("결제 요청");
      return "/pay/" + url;
   }

   @RequestMapping(value = { "/challengePay.do", "/payment.do", "/myCard.do" })
   public void getPay(Model model, String userId) {
      List<MemberVO> list = null; //
      List<MemberVO> list2 = null; //
      list = payService.getPay(userId);
      list2 = payService.getPay2(userId);
      model.addAttribute("list", list);
      model.addAttribute("list2", list2);
   }

   // member card delete
   @RequestMapping(value = "/deleteCard.do")
   public String cardDelete(MemberVO vo) {
      memberService.cardDelete(vo);
      System.out.println("payC" + vo.getId());
      memberService.cardNo(vo);

      return "redirect:/member/mypage.do";
   }

   // member bank account delete
   @RequestMapping(value = "/deleteAccount.do")
   public String accountDelete(MemberVO vo) {
      memberService.accountDelete(vo);
      memberService.accountNo(vo);

      return "redirect:/member/mypage.do";
   }
   
   //간편카드로 결제
   @RequestMapping(value="/payMyCard.do")
   public String payMyCard(Model model,MemberVO vo, ChalPayVO voc,PayVO pvo) {
	   payService.chalPay(voc);
	   ChalPayVO res= payService.forPay(voc);
	   MemberVO myCard=payService.myCard(vo);
	   model.addAttribute("myCard",myCard);
	   
	   pvo.setDogeon_pay_no(res.getDogeon_pay_no());
	   
	   payService.cardInsert(pvo);
	   
	   HashMap map = new HashMap<String, Object>();
	   map.put("id", voc.getId());
	   map.put("dogeon_times", payService.getTimes(pvo.getDogeon_pay_no()));
	      
	  payService.payTryNum(map);
	  
      return "redirect:/member/main.do";
   }

   // 일반카드로 결제
   @RequestMapping(value = "/card.do")
   public void ChalCInsert(Model model, ChalPayVO voc) throws Exception {
      // select 돌려서 dogeon_pay_no받아와서 card insert함
      // 넘기는 값이 dogeon_pay_no를 vo에 setdogeon_pay_no로 넣기 그다음 insert 문 실행
      System.out.println("controller" + voc.getDogeon_no());
      System.out.println("controller" + voc.getPay_meth_no());
      System.out.println("controller" + voc.getId());
      payService.chalPay(voc);
      model.addAttribute("forPay", payService.forPay(voc));

      HashMap map = new HashMap<String, Object>();
      
      map.put("id", voc.getId());
      payService.deleteChalD(map);
   }

   // 결제하기 버튼 누르면
   @RequestMapping(value = "/cardSave.do")
   public String CardInsert(PayVO vo,ChalPayVO voc) throws Exception {
      HashMap map = new HashMap<String, Object>();
      
      map.put("id", voc.getId());
      map.put("dogeon_times", payService.getTimes(voc.getDogeon_pay_no()));
      
      payService.cardInsert(vo);
      payService.payTryNum(map);
      
      return "redirect:/member/main.do";
   }
   
   //간편계좌 선택 결제
   @RequestMapping(value="/payMyAcc.do")
   public void payMyAcc(Model model,MemberVO vo, ChalPayVO voc) throws Exception {
	   payService.chalPay(voc);
	   model.addAttribute("forPay", payService.forPay(voc));
	   MemberVO memAc = payService.myAc(vo);
	   model.addAttribute("memAc",memAc);
   }
   
   // 일반계좌로 결제
   @RequestMapping(value = "/account.do")
   public void ChalAInsert(Model model, ChalPayVO voc) throws Exception {
      // select 돌려서 dogeon_pay_no받아와서 acc insert함
      // 넘기는 값이 dogeon_pay_no를 vo에 setdogeon_pay_no로 넣기 그다음 insert 문 실행
      payService.chalPay(voc);
      model.addAttribute("forPay", payService.forPay(voc));

      HashMap map = new HashMap<String, Object>();
      
      map.put("id", voc.getId());
      payService.deleteChalD(map);

   }

   // 결제하기 버튼 누르면(현금영수증 유무)
   @RequestMapping(value = "/receiptYes.do")
   public String AccRYInsert(PayVO vo, int dogeon_pay_no,ChalPayVO voc) throws Exception {
      if (voc.getReceipt_type_no() == 1 || voc.getReceipt_type_no() == 2) {
      HashMap map = new HashMap<String, Object>();
      
      map.put("id", voc.getId());
      map.put("dogeon_times", payService.getTimes(voc.getDogeon_pay_no()));
      
      payService.accInsert(vo);
      payService.payTryNum(map);
      payService.receipt(dogeon_pay_no);// 현금영수증->Y
      payService.memReceipt(voc);
      
      return "redirect:/member/main.do";
      } else {
         HashMap map = new HashMap<String, Object>();
         
         map.put("id", voc.getId());
         map.put("dogeon_times", payService.getTimes(voc.getDogeon_pay_no()));

         payService.accInsert(vo);
         payService.payTryNum(map);
      //   payService.deleteChalD(map);
         
         return "redirect:/member/main.do";
      }
      
   }

}