package com.nganhangmau.controller;

import com.nganhangmau.controller.PhieulinhmauDAO;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class nhm_controller {
    @Autowired
    PhieulinhmauDAO connectDB2Oracle;
    
    @RequestMapping("/")
    public String returnIndex(){
        return "html";
    }
    
    @RequestMapping("/lplm")
    public String returnLplm(ModelMap map) {
        List<Map<String, Object>> listBN = connectDB2Oracle.getBN();
        map.addAttribute("listBN", listBN);
        List<Map<String, Object>> listNV = connectDB2Oracle.getNV();
        map.addAttribute("listNV", listNV);
        List<Map<String, Object>> listMAU = connectDB2Oracle.getMAU();
        map.addAttribute("listMAU", listMAU);
        List<Map<String, Object>> listPB = connectDB2Oracle.getPB();
        map.addAttribute("listPB", listPB);
        
        return "lplm";
    }
}
