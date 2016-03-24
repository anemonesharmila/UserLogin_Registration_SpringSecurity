package com.controllers;


import com.dao.UserDao;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import javax.validation.constraints.Pattern;

/**
 * Created by sharmila on 2/2/2016.
 */
public class UserValidator implements Validator {
    @Override
    public void validate(Object o, Errors errors) {
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "message.email", "Email is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phone", "message.phone", "Phone is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "message.password", "Password is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "message.username", "UserName is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address", "message.address", "Address is required.");
    }



    @Override
    public boolean supports(Class<?> aClass) {
        return UserDao.class.isAssignableFrom(aClass);
    }
}
