package com.emp.info;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.faces.bean.ManagedBean;

@ManagedBean
public class PaymentBean {

    private String creditCard;
    private String amount;
    private String expiryDate;

    // Getters and setters
    public String getCreditCard() {
        return creditCard;
    }

    public void setCreditCard(String creditCard) {
        this.creditCard = creditCard;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getExpiryDate() {
        return expiryDate;
    }

    public void setExpiryDate(String expiryDate) {
        this.expiryDate = expiryDate;
    }

    public void processPayment() {
        FacesContext facesContext = FacesContext.getCurrentInstance();

        FacesMessage successMsg = new FacesMessage(FacesMessage.SEVERITY_INFO, "Credit card validation successful!", null);
        facesContext.addMessage(null, successMsg);

    }
}