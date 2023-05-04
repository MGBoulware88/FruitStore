package com.gray.fruitstore.controllers;

import java.util.ArrayList;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.gray.fruitstore.models.Item;

@Controller
public class FruitStoreController {
 
 @RequestMapping("/")
 public String index(Model model) {
     
     ArrayList<Item> fruits = new ArrayList<Item>();
     //the change to orange only works if the first char is G on even numbered rows and I can't figure out why ):
     fruits.add(new Item("Kiwi", 1.5));
     fruits.add(new Item("Goji Berries", 4.0));
     fruits.add(new Item("Mango", 2.0));
     fruits.add(new Item("Guava", .75));
     char g = 'G';
     
     model.addAttribute("fruits", fruits);
     model.addAttribute("G", g);
     
     return "index.jsp";
 }
}

