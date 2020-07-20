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
public class BranchQuery {
    public String get = "SELECT * FROM party WHERE role ='Factory'";
    public String create = "INSERT INTO party (name, address, city, zip,"
            + "contact, note, role) VALUES (?,?,?,?,?,?,'Factory')";
    public String show = "SELECT * FROM party WHERE id = ?";
    public String update = "UPDATE party SET name = ?,address = ?,city = ?,"
            + "zip = ?,contact = ?,note = ? WHERE id = ?";
    public String delete = "DELETE FROM party WHERE id = ?";
}
