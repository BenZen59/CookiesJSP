package fr.bz.jspexercice;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class MyCookies {
    public MyCookies() {
    }

    public static void verifCookies(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Cookie[] cookies = request.getCookies();
        boolean nomCookiePresent = false;
        boolean prenomCookiePresent = false;

        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("nom")) {
                    nomCookiePresent = true;
                }
                if (cookie.getName().equals("prenom")) {
                    prenomCookiePresent = true;
                }
            }
        }

        if (nomCookiePresent && prenomCookiePresent) {
            response.sendRedirect("bienvenue.jsp");
        } else {
            response.sendRedirect("inscription.jsp");
        }
    }

    public static void createCookies(HttpServletRequest request, HttpServletResponse response) throws IOException{
        String prenomValue = request.getParameter("prenom");
        String nomValue = request.getParameter("nom");
        Cookie prenomCookie = new Cookie("prenom",prenomValue);
        Cookie nomCookie = new Cookie("nom", nomValue);
        prenomCookie.setMaxAge(10); //10s
        nomCookie.setMaxAge(10); //10s
        response.addCookie(prenomCookie);
        response.addCookie(nomCookie);
    }

    public static String[] getCookiesValues(HttpServletRequest request, HttpServletResponse response) throws IOException{
        Cookie[] cookies = request.getCookies();
        String[] cookiesReturnList = new String[2];
        String prenom = null;
        String nom = null;
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("nom")) {
                nom = cookie.getValue();}
                cookiesReturnList[0] = nom;
            if (cookie.getName().equals
                    ("prenom")) {
                prenom = cookie.getValue();
                cookiesReturnList[1] = prenom;
            }
        }
        return cookiesReturnList;
    }
}
