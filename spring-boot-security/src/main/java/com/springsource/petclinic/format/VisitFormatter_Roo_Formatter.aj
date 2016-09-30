// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.petclinic.format;

import com.springsource.petclinic.domain.Visit;
import com.springsource.petclinic.format.VisitFormatter;
import com.springsource.petclinic.service.api.VisitService;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.core.convert.ConversionService;
import org.springframework.format.Formatter;
import org.springframework.util.StringUtils;

privileged aspect VisitFormatter_Roo_Formatter {
    
    declare parents: VisitFormatter implements Formatter<Visit>;
    
    public VisitService VisitFormatter.visitService;
    
    public ConversionService VisitFormatter.conversionService;
    
    public VisitFormatter.new(VisitService visitService, ConversionService conversionService) {
        this.visitService = visitService;
        this.conversionService = conversionService;
    }

    public Visit VisitFormatter.parse(String text, Locale locale) throws ParseException {
        if (text == null || !StringUtils.hasText(text)) {
            return null;
        }
        Long id = conversionService.convert(text, Long.class);
        return visitService.findOne(id);
    }
    
    public String VisitFormatter.print(Visit visit, Locale locale) {
        return visit == null ? null : new StringBuilder().append(visit.getDescription()).toString();
    }
    
}