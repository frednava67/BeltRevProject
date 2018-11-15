package com.freddo.beltrevproject.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.freddo.beltrevproject.models.Event;

@Component
public class EventDateValidator implements Validator {
    
    // 1
    @Override
    public boolean supports(Class<?> clazz) {
        return Event.class.equals(clazz);
    }
    
    // 2
    @Override
    public void validate(Object target, Errors errors) {
        Event event = (Event) target;
        java.util.Date currentDate = new java.util.Date();
        
        if (event.getEventDate().before(currentDate)) {
            // 3
            errors.rejectValue("eventDate", "Future");
        }         
    }
}