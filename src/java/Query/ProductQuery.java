/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Query;

/**
 *
 * @author ASUS
 */
public class ProductQuery {
    public String get = "SELECT * FROM products";
    public String create = "INSERT INTO products (name, size, label, type, stock,"
            + "received, shipped, note) VALUES (?,?,?,?,?,?,?,?)";
    public String show = "SELECT * FROM products WHERE id = ?";
    public String update = "UPDATE products SET name = ?,size = ?,label = ?,"
            + "type = ?,note = ? WHERE id = ?";
    public String delete = "DELETE FROM products WHERE id = ?";
}
