/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.FactoryModel;
import Model.ProductModel;
import Model.TransactionModel;
import Query.TransactionQuery;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author ASUS
 */
public class TransactionController extends BaseController {
    TransactionQuery query = new TransactionQuery();
    ArrayList arraylist = new ArrayList(); 
    ArrayList arraylist2 = new ArrayList(); 
    
    public ArrayList get() throws SQLException{
        String query = this.query.get;
        ResultSet rs = this.get(query);
        
        while(rs.next()) {
            TransactionModel model = new TransactionModel();
            model.setId(rs.getString(1));
            model.setParty_id(rs.getString(2));
            model.setParty_name(rs.getString(3));
            model.setProduct_id(rs.getString(4));
            model.setProduct_name(rs.getString(5));
            model.setAmount(rs.getInt(6));
            model.setDate(rs.getString(7));
            model.setType(rs.getString(8));
            
            arraylist.add(model);
        }
        
        return arraylist;
    }
    
    public boolean createIncoming(TransactionModel model) throws SQLException {
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, model.getParty_id());
        map.put(2, model.getProduct_id());
        map.put(3, model.getAmount());
        map.put(4, model.getDate());
        
        String sql = this.query.createIncoming;
        
        return this.preparedStatement(map, sql);
    }
    
    public boolean createOutcoming(TransactionModel model) throws SQLException {
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, model.getParty_id());
        map.put(2, model.getProduct_id());
        map.put(3, model.getAmount());
        map.put(4, model.getDate());
        
        String sql = this.query.createOutcoming;
        
        return this.preparedStatement(map, sql);
    }
    
    public ArrayList getFactory() throws SQLException{
        String query = this.query.getFactory;
        ResultSet rs = this.get(query);
        
        while(rs.next()) {
            FactoryModel model = new FactoryModel();
            model.setId(rs.getString("id"));
            model.setName(rs.getString("name"));
            
            arraylist.add(model);
        }
        
        return arraylist;
    }
    
    public ArrayList getProduct() throws SQLException{
        String query = this.query.getProduct;
        ResultSet rs = this.get(query);
        
        while(rs.next()) {
            ProductModel model = new ProductModel();
            model.setId(rs.getString("id"));
            model.setName(rs.getString("name"));
            
            arraylist2.add(model);
        }
        
        return arraylist2;
    }
}
