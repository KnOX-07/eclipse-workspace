package com.emp.info;

import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.validator.FacesValidator;
import javax.faces.validator.Validator;
import javax.faces.validator.ValidatorException;

@FacesValidator("creditCardValidator")
public class CreditCardValidator implements Validator {

    @Override
    public void validate(FacesContext context, UIComponent component, Object value) throws ValidatorException {
        String creditCardNumber = value.toString().replaceAll("\\s+", "");

        if (creditCardNumber.length() != 16 || !creditCardNumber.matches("\\d+")) {
            FacesMessage msg = new FacesMessage("Credit card validation failed. Card number must be 16 digits long.");
            msg.setSeverity(FacesMessage.SEVERITY_ERROR);
            throw new ValidatorException(msg);
        }

        if (!isValidLuhn(creditCardNumber)) {
            FacesMessage msg = new FacesMessage("Credit card validation failed. Card number is invalid!");
            msg.setSeverity(FacesMessage.SEVERITY_ERROR);
            throw new ValidatorException(msg);
        }
    }

    private boolean isValidLuhn(String cardNumber) {
        int sum = 0;
        boolean alternate = false;
        for (int i = cardNumber.length() - 1; i >= 0; i--) {
            int n = Integer.parseInt(cardNumber.substring(i, i + 1));
            if (alternate) {
                n *= 2;
                if (n > 9) {
                    n = (n % 10) + 1;
                }
            }
            sum += n;
            alternate = !alternate;
        }
        return (sum % 10 == 0);
    }
}