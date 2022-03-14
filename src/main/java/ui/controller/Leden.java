package ui.controller;

import domain.db.LidDB;
import domain.model.Lid;
//import sun.text.resources.cldr.ext.FormatData_eu;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/Leden")
public class Leden extends HttpServlet {
    private LidDB leden = new LidDB();


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String voornaam = request.getParameter("voornaam");
        String achternaam = request.getParameter("achternaam");
        String afdeling = request.getParameter("afdeling");
        String geboortedatum = request.getParameter("geboortedatum");

        Lid lid = new Lid(voornaam, achternaam, afdeling, geboortedatum);
        leden.add(lid);
        ArrayList result = leden.getLeden();
        request.setAttribute("result",result);
        RequestDispatcher view=request.getRequestDispatcher("/overzicht.jsp");
        view.forward(request,response);

        /*if(voornaam.isEmpty() || achternaam.isEmpty() || afdeling.isEmpty() || geboortedatum.isEmpty()){
            //geef error
        } else{
            //leden.add(new Lid(voornaam, achternaam, afdeling, geboortedatum));
        }*/

    }
}
