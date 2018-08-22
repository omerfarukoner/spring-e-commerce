package f.com.combostore.controller;

import f.com.combostore.dao.ProductDao;
import f.com.combostore.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.io.IOException;
import java.util.List;

@Controller
public class HomeController {
    @Autowired
    private ProductDao productDao;

    @RequestMapping("/")
    public String home(Model model){
        List<Product> productList = productDao.getAllProducts();
        model.addAttribute("products",productList);
        return "home";
      }
      @RequestMapping("/viewProduct/{productId}")
      public String viewProduct(@PathVariable String productId, Model model)throws IOException {
        Product product = productDao.getProductById(productId);
        model.addAttribute(product);
        return "viewProduct";
      }
      @RequestMapping("/admin")
    public String adminPanel(){
        return "admin";
      }

    @RequestMapping("/admin/productInventory")
    public String productInventory(Model model){
       List<Product> products = productDao.getAllProducts();
       model.addAttribute("products",products);

        return "productInventory";
    }
    @RequestMapping("/admin/productInventory/addProduct")
    public String addProdcut(Model model){
        Product product = new Product();
        product.setProductCategory("Sauce");
        product.setProductCondition("new");
        product.setProductStatus("active");
        model.addAttribute("product",product);
        return "addProduct";
    }
    @RequestMapping(value="/admin/productInventory/addProduct",method=RequestMethod.POST)
    public String addProductPost(@ModelAttribute("product")Product product){
        productDao.addProduct(product);
        return "redirect:/admin/productInventory";
    }

}
