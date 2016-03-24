package com.validator;

import com.model.FileUpload;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 * Created by sharmila on 3/5/2016.
 */
public class FileUploadValidator implements Validator {
    @Override
    public boolean supports(Class aClass) {
        return FileUpload.class.isAssignableFrom(aClass);
    }

    @Override
    public void validate(Object target, Errors errors) {

        FileUpload file=(FileUpload)target;
        if(file.getFile().getSize()==0)
        {
            errors.rejectValue("file","required.fileUpload");
        }

    }
}
