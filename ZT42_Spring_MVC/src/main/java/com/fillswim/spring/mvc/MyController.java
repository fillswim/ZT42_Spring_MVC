package com.fillswim.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
//@RequestMapping("/employee")
public class MyController {

    @RequestMapping("/")
    public String showFirstView() {
        return "first-view";
    }

    @RequestMapping("/askDetails")
    public String askEmployeeDetails(Model model) {

        // В форму запроса данных добавляется модель
        model.addAttribute("employee", new Employee());

        return "ask-emp-details-view";
    }

    // @ModelAttribute("employee") "employee" - имя аттрибута из askDetails
    // @Valid - означает то, что наш аттрибут Employee будет подвергаться проверке валидации
//    @RequestMapping("/showDetails")
    @GetMapping("/showDetails")
    public String showEmpDetails(@Valid @ModelAttribute("employee") Employee employee, BindingResult bindingResult) {

        //Возможность по изменению полей
//        String name = employee.getName();
//        employee.setName("Mr " + name);
//
//        String surname = employee.getSurname();
//        employee.setSurname(surname + "!");
//
//        int salary = employee.getSalary();
//        employee.setSalary(salary * 10);

        // Проверка валидации использует параметр BindingResult
        if (bindingResult.hasErrors()) {
            return "ask-emp-details-view";
        } else {
            return "show-emp-detail-view";
        }

    }

}
