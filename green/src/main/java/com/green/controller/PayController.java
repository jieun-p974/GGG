
package com.green.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.domain.ChalPayVO;
import com.green.domain.MemberVO;
import com.green.domain.PayVO;
import com.green.service.MemberService;
import com.green.service.PayService;

@Controller
@RequestMapping("/pay/")
public class PayController { // �솕硫대쭔 �씠�룞(DB�뿰寃곗� XX)

   @Autowired
   private PayService payService;
   @Autowired
   private MemberService memberService;

   @RequestMapping(value = "{url}.do")
   public String url(@PathVariable String url) {
      System.out.println("寃곗젣 �슂泥�");
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

   // �씪諛섏뭅�뱶濡� 寃곗젣
   @RequestMapping(value = "/card.do")
   public void ChalCInsert(Model model, ChalPayVO voc) throws Exception {
      // select �룎�젮�꽌 dogeon_pay_no諛쏆븘���꽌 card insert�븿
      // �꽆湲곕뒗 媛믪씠 dogeon_pay_no瑜� vo�뿉 setdogeon_pay_no濡� �꽔湲� 洹몃떎�쓬 insert 臾� �떎�뻾
      System.out.println("controller" + voc.getDogeon_no());
      System.out.println("controller" + voc.getPay_meth_no());
      System.out.println("controller" + voc.getId());
      payService.chalPay(voc);
      model.addAttribute("forPay", payService.forPay(voc));

   }

   // 寃곗젣�븯湲� 踰꾪듉 �늻瑜대㈃
   @RequestMapping(value = "/cardSave.do")
   public String CardInsert(PayVO vo,ChalPayVO voc) throws Exception {
      HashMap map = new HashMap<String, Object>();
      
      map.put("id", voc.getId());
      map.put("dogeon_times", payService.getTimes(voc.getDogeon_pay_no()));
      
      payService.cardInsert(vo);
      payService.payTryNum(map);
      
      return "redirect:/member/main.do";
   }

   // �씪諛섍퀎醫뚮줈 寃곗젣
   @RequestMapping(value = "/account.do")
   public void ChalAInsert(Model model, ChalPayVO voc) throws Exception {
      // select �룎�젮�꽌 dogeon_pay_no諛쏆븘���꽌 acc insert�븿
      // �꽆湲곕뒗 媛믪씠 dogeon_pay_no瑜� vo�뿉 setdogeon_pay_no濡� �꽔湲� 洹몃떎�쓬 insert 臾� �떎�뻾
      payService.chalPay(voc);
      model.addAttribute("forPay", payService.forPay(voc));
   }

   // 寃곗젣�븯湲� 踰꾪듉 �늻瑜대㈃(�쁽湲덉쁺�닔利� �쑀臾�)
   @RequestMapping(value = "/receiptYes.do")
   public String AccRYInsert(PayVO vo, int dogeon_pay_no,ChalPayVO voc) throws Exception {
      if (voc.getReceipt_type_no() == 1 || voc.getReceipt_type_no() == 2) {
      HashMap map = new HashMap<String, Object>();
      
      map.put("id", voc.getId());
      map.put("dogeon_times", payService.getTimes(voc.getDogeon_pay_no()));
      
      payService.accInsert(vo);
      payService.payTryNum(map);
      payService.receipt(dogeon_pay_no);// �쁽湲덉쁺�닔利�->Y
      payService.memReceipt(voc);
      return "redirect:/member/main.do";
      } else {
         HashMap map = new HashMap<String, Object>();
         
         map.put("id", voc.getId());
         map.put("dogeon_times", payService.getTimes(voc.getDogeon_pay_no()));
         
//         payService.receiptNO(dogeon_pay_no);
         payService.accInsert(vo);
         payService.payTryNum(map);
         
         return "redirect:/member/main.do";
      }
      
   }
 
   /*
    * // 寃곗젣�븯湲� 踰꾪듉 �늻瑜대㈃(�쁽湲덉쁺�닔利� N)
    * 
    * @RequestMapping(value = "/receiptNo.do") public String AccRNInsert(PayVO vo,
    * int dogeon_pay_no,ChalPayVO voc) throws Exception { HashMap map = new
    * HashMap<String, Object>();
    * 
    * map.put("id", voc.getId()); map.put("dogeon_times",
    * payService.getTimes(voc.getDogeon_pay_no()));
    * 
    * payService.receiptNO(dogeon_pay_no); payService.accInsert(vo);
    * payService.payTryNum(map);
    * 
    * return "redirect:/member/main.do"; }
    */
}