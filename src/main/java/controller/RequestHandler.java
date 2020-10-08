package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.db.PersonService;

public abstract class RequestHandler {

    protected PersonService service;
    protected HttpSession session;

    public abstract String handleRequest (HttpServletRequest request, HttpServletResponse response);

    public void setModel (PersonService personService) {
        this.service = personService;
    }
    public void setSession(HttpSession session){ this.session = session; }

    public PersonService getService() {
        return service;
    }
}
