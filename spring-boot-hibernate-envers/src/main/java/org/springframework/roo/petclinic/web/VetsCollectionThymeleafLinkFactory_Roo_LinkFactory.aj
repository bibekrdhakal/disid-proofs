// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.petclinic.web;

import io.springlets.web.mvc.util.MethodLinkFactory;
import java.util.Map;
import org.springframework.roo.petclinic.web.VetsCollectionThymeleafController;
import org.springframework.roo.petclinic.web.VetsCollectionThymeleafLinkFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect VetsCollectionThymeleafLinkFactory_Roo_LinkFactory {
    
    declare parents: VetsCollectionThymeleafLinkFactory implements MethodLinkFactory<VetsCollectionThymeleafController>;
    
    declare @type: VetsCollectionThymeleafLinkFactory: @Component;
    
    /**
     * TODO Auto-generated attribute documentation
     */
    public static final String VetsCollectionThymeleafLinkFactory.LIST = "list";
    
    /**
     * TODO Auto-generated attribute documentation
     */
    public static final String VetsCollectionThymeleafLinkFactory.DATATABLES = "datatables";
    
    /**
     * TODO Auto-generated attribute documentation
     */
    public static final String VetsCollectionThymeleafLinkFactory.CREATE = "create";
    
    /**
     * TODO Auto-generated attribute documentation
     */
    public static final String VetsCollectionThymeleafLinkFactory.CREATE_FORM = "createForm";
    
    /**
     * TODO Auto-generated attribute documentation
     */
    public static final String VetsCollectionThymeleafLinkFactory.DELETE_BATCH = "deleteBatch";
    
    /**
     * TODO Auto-generated attribute documentation
     */
    public static final String VetsCollectionThymeleafLinkFactory.EXPORT_CSV = "exportCsv";
    
    /**
     * TODO Auto-generated attribute documentation
     */
    public static final String VetsCollectionThymeleafLinkFactory.EXPORT_PDF = "exportPdf";
    
    /**
     * TODO Auto-generated attribute documentation
     */
    public static final String VetsCollectionThymeleafLinkFactory.EXPORT_XLS = "exportXls";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param methodName
     * @param parameters
     * @param pathVariables
     * @return UriComponents
     */
    public UriComponents VetsCollectionThymeleafLinkFactory.toUri(String methodName, Object[] parameters, Map<String, Object> pathVariables) {
        if (methodName.equals(LIST)) {
            return MvcUriComponentsBuilder.fromMethodCall(MvcUriComponentsBuilder.on(getControllerClass()).list(null)).build();
        }
        if (methodName.equals(DATATABLES)) {
            return MvcUriComponentsBuilder.fromMethodCall(MvcUriComponentsBuilder.on(getControllerClass()).datatables(null, null, null, null)).replaceQuery(null).build();
        }
        if (methodName.equals(CREATE)) {
            return MvcUriComponentsBuilder.fromMethodCall(MvcUriComponentsBuilder.on(getControllerClass()).create(null, null, null)).build();
        }
        if (methodName.equals(CREATE_FORM)) {
            return MvcUriComponentsBuilder.fromMethodCall(MvcUriComponentsBuilder.on(getControllerClass()).createForm(null)).build();
        }
        if (methodName.equals(DELETE_BATCH)) {
            return MvcUriComponentsBuilder.fromMethodCall(MvcUriComponentsBuilder.on(getControllerClass()).deleteBatch(null)).build();
        }
        if (methodName.equals(EXPORT_CSV)) {
            return MvcUriComponentsBuilder.fromMethodCall(MvcUriComponentsBuilder.on(getControllerClass()).exportCsv(null, null, null, null, null)).build();
        }
        if (methodName.equals(EXPORT_PDF)) {
            return MvcUriComponentsBuilder.fromMethodCall(MvcUriComponentsBuilder.on(getControllerClass()).exportPdf(null, null, null, null, null)).build();
        }
        if (methodName.equals(EXPORT_XLS)) {
            return MvcUriComponentsBuilder.fromMethodCall(MvcUriComponentsBuilder.on(getControllerClass()).exportXls(null, null, null, null, null)).build();
        }
        
        throw new IllegalArgumentException("Invalid method name: " + methodName);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<VetsCollectionThymeleafController> VetsCollectionThymeleafLinkFactory.getControllerClass() {
        return VetsCollectionThymeleafController.class;
    }
    
}