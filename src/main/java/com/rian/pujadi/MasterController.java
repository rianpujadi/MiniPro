package com.rian.pujadi;


import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class MasterController {
	
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/")
	public String memberLogin(Model model) {

		return "login";
	}

	@RequestMapping("/dashboard")
	public String membermain(Model model) {
		return "dashboard";
	}
	
	@RequestMapping("/member")
	public String member(Model model) {
		List<Member> listMembers = memberService.listAll();
		model.addAttribute("listMembers", listMembers);
		return "member";
	}
	
	//startmember//////////////////
	
	@RequestMapping("/member/add")
	public String showNewMember(Model model) {
		Member member = new Member();
		model.addAttribute("member", member);
		
		return "newmember";
		}

	
	@RequestMapping(value = "/member/save", method = RequestMethod.POST)
	public String saveMember(@ModelAttribute("member") Member member) {
		memberService.save(member);
	     
	    return "redirect:/member";
		}
	
	@RequestMapping("/member/update/{id}")
	public ModelAndView showEditMember(@PathVariable(name = "id") int id) {
	    ModelAndView mav = new ModelAndView("editmember");
	    Member member = memberService.get(id);
	    mav.addObject("member", member);
	     
	    return mav;
		}
	
	@RequestMapping(value = "/member/update", method = RequestMethod.POST)
	public String updateMember(@ModelAttribute("member") Member member) {
		memberService.save(member);
		
		return "redirect:/member";
		}
	
	@RequestMapping("/member/delete/{id}")
	public String deleteMember(@PathVariable(name = "id") int id) {
		memberService.delete(id);
	    return "redirect:/member";       
		}
	
	////////////////////start asset/////////////////////////////
	
	@Autowired
	private AssetService assetService;
	
	@RequestMapping("/asset")
	public String asset(Model model) {
		List<Asset> listAssets = assetService.listAll();
		model.addAttribute("listAssets", listAssets);
		return "asset";
	}
	
	@RequestMapping("/asset/add")
	public String showNewAsset(Model model) {
		Asset asset = new Asset();
		model.addAttribute("asset", asset);
		
		return "newasset";
		}

	@RequestMapping(value = "/asset/save", method = RequestMethod.POST)
	public String saveAsset(@ModelAttribute("asset") Asset asset) {
		assetService.save(asset);
	     
	    return "redirect:/asset";
		}
	
	@RequestMapping("/asset/update/{id}")
	public ModelAndView showEditAsset(@PathVariable(name = "id") int assetid) {
	    ModelAndView mav = new ModelAndView("editasset");
	    Asset asset = assetService.get(assetid);
	    mav.addObject("asset", asset);
	     
	    return mav;
		}
	
	@RequestMapping(value = "/asset/update", method = RequestMethod.POST)
	public String updateAsset(@ModelAttribute("asset") Asset asset) {
		assetService.save(asset);
		
		return "redirect:/asset";
		}
	
	@RequestMapping("/asset/delete/{id}")
	public String deleteAsset(@PathVariable(name = "id") int assetid) {
		assetService.delete(assetid);
	    return "redirect:/asset";       
		}
	
//	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
//    public String showEditUser(@PathVariable(name = "id") int id, Model model) {
//		User user = userService.get(id);
//		model.addAttribute("user", user);
//        return "edituser";
//	}
//	
//	@RequestMapping(value = "save", method = RequestMethod.POST)
//	public String SaveUser(@Valid User tbl_user, BindingResult result, 
//			ModelMap model, RedirectAttributes redirectattributes) {
//		if (result.hasErrors()) {
//			return "newuser";
//		}
//		userService.save(tbl_user);
//		return "user";
//	}
//
//	
//	@RequestMapping(value = "newuser", method = RequestMethod.GET)
//	public String showNewUser(ModelMap model) {
//		User tbl_user = new User();
//		model.addAttribute("tbl_user", tbl_user);
//			return "newuser";
//		}
//
//	
//	@RequestMapping(value = "update/update", method = RequestMethod.POST)
//	public String EditUser(@Valid User tbl_user, BindingResult result, 
//			ModelMap model, RedirectAttributes redirectattributes) {
//		if (result.hasErrors()) {
//			return "edituser";
//		}
//		userService.save(tbl_user);
//		return "user";
//	}

	
	
//
//	@ModelAttribute("brands")
//	public List<String> initializeSections() {
//
//		List<String> brands = new ArrayList<String>();
//		brands.add("PANASONIC");
//		brands.add("SAMSUNG");
//		brands.add("SANYO");
//		return brands;
//}
}

