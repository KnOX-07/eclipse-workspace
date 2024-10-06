package com.emp.info;

import javax.faces.bean.ManagedBean;
import javax.faces.event.ValueChangeEvent;

@ManagedBean
public class StateBean {

    private String selectedState;
    private String language;

    // Getters and setters
    public String getSelectedState() {
        return selectedState;
    }

    public void setSelectedState(String selectedState) {
        this.selectedState = selectedState;
    }

    public String getLanguage() {
        return language;
    }

    public void stateChanged(ValueChangeEvent event) {
        String newState = event.getNewValue().toString();
        switch (newState) {
            case "Karnataka":
                language = "Kannada";
                break;
            case "Maharashtra":
                language = "Marathi";
                break;
            case "Tamil Nadu":
                language = "Tamil";
                break;
            case "Kerala":
                language = "Malayalam";
                break;
            case "West Bengal":
                language = "Bengali";
                break;
            default:
                language = "Unknown";
        }
    }
}