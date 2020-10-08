package controller;

import domain.db.PersonService;

import javax.servlet.http.HttpSession;
import java.lang.reflect.InvocationTargetException;

public class HandlerFactory {

    public RequestHandler getHandler(String handlerName, PersonService model) {
        RequestHandler handler = null;
        try {
            Class handlerClass = Class.forName("controller."+ handlerName);
            Object handlerObject = handlerClass.getConstructor().newInstance();
            handler = (RequestHandler) handlerObject;
            handler.setModel(model);
        } catch (Exception e) {
           throw new RuntimeException("Deze pagina bestaat niet!!!!");
        }

        return handler;
    }
}