/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectxsqlclasses;

import javafx.beans.property.SimpleStringProperty;
/**
 * Query: Add payment to the previous query 
 * @author reshma
 */

public class AddPayment {
    
    public static class Payment {
        
        private final SimpleStringProperty Customer_id; 
        private final SimpleStringProperty Movie_id;
        private final SimpleStringProperty Movie_type;
        private final SimpleStringProperty sub_id; 
        private final SimpleStringProperty Payment_id;
        private final SimpleStringProperty Payment_method;
        private final SimpleStringProperty Payment_date;
        private final SimpleStringProperty type;
        private final SimpleStringProperty price;
    
        public Payment (String inputID, String mID, String mType, String sID, String pID, String pMethod, String pDate, String mType, String inputPrice) {
            this. Customer_id = inputID;
            this. Movie_id = mID;
            this.Movie_type = mType
            this.sub_id = sID;
            this.Payment_id = pID;
            this.Payment_method = pMethod;
            this.Payment_date = pDate;
            this.type = mType;
            this.price = inputPrice;
        }

        public SimpleStringProperty getCustomer_id() {
            return Customer_id;
        }

        public SimpleStringProperty getMovie_id() {
            return Movie_id;
        }

        public SimpleStringProperty getMovie_type() {
            return Movie_type;
        }

        public SimpleStringProperty getSub_id() {
            return sub_id;
        }

        public SimpleStringProperty getPayment_id() {
            return Payment_id;
        }

        public SimpleStringProperty getPayment_method() {
            return Payment_method;
        }

        public SimpleStringProperty getPayment_date() {
            return Payment_date;
        }

        public SimpleStringProperty getType() {
            return type;
        }

        public SimpleStringProperty getPrice() {
            return price;
        }
        
        
        
    }
    
}
