// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.petclinic.web;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import io.springlets.web.NotFoundException;
import java.io.IOException;
import org.springframework.boot.jackson.JsonComponent;
import org.springframework.roo.petclinic.domain.Visit;
import org.springframework.roo.petclinic.web.VisitDeserializer;

privileged aspect VisitDeserializer_Roo_EntityDeserializer {
    
    declare @type: VisitDeserializer: @JsonComponent;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jsonParser
     * @param context
     * @param codec
     * @param tree
     * @return Visit
     * @throws IOException
     */
    public Visit VisitDeserializer.deserializeObject(JsonParser jsonParser, DeserializationContext context, ObjectCodec codec, JsonNode tree) throws IOException {
        String idText = tree.asText();
        Long id = conversionService.convert(idText, Long.class);
        Visit visit = visitService.findOne(id);
        if (visit == null) {
            throw new NotFoundException("Visit not found");
        }
        return visit;
    }
    
}
