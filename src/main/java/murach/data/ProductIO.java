package murach.data;


import java.io.*;
import java.util.*;

import murach.business.Product;

public class ProductIO {
    public static Product getProduct(String productCode, String path) {
        Product product = null;
        try (BufferedReader in = new BufferedReader(new FileReader(path))) {
            String line;
            while ((line = in.readLine()) != null) {
                String[] fields = line.split(",");
                if (fields[0].equals(productCode)) {
                    product = new Product(fields[0], fields[1]);
                    break;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return product;
    }
}
