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
public class TransactionQuery {
    public String get = "SELECT transaction.id, transaction.party_id, party.name,"
            + "transaction.product_id, products.name, "
            + "transaction.amount, transaction.date,transaction.type "
            + "FROM transaction INNER JOIN party ON transaction.party_id = party.id "
            + "INNER JOIN products ON transaction.product_id = products.id";
    public String getIncoming = "SELECT * FROM transaction WHERE type='Incoming'";
    public String getOutcoming = "SELECT * FROM transaction WHERE type='Outcoming'";
    public String createIncoming = "INSERT INTO transaction (party_id, product_id,"
            + "amount,date,type) VALUES (?,?,?,?,'Incoming')";
    public String createOutcoming = "INSERT INTO transaction (party_id, product_id,"
            + "amount,date,type) VALUES (?,?,?,?,'Outcoming')";
    public String getFactory = "SELECT * FROM party WHERE role='Factory'"; 
    public String getBranch = "SELECT * FROM party WHERE role='Branch'"; 
    public String getProduct = "SELECT * FROM products"; 
}
