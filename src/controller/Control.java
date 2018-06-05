package controller;

import dao.DossierDAO;
import dao.EvaluationDAO;
import dao.UtilisateurDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.portlet.ModelAndView;
import service.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@SessionAttributes(value="utilisateur")
public class Control {
    private GrilleEvaluation grille ;
    private Evaluation eval;
    private String dateform;
    private List<Critere> criteres = new ArrayList<Critere>();
    private List<Critere> criteres_Pedagogique = new ArrayList<Critere>();
    private List<Critere> criteres_Encadrement = new ArrayList<Critere>();
    private List<Critere> criteres_PAS = new ArrayList<Critere>();
    private List<Critere> criteres_RA = new ArrayList<Critere>();
    private Utilisateur utilisateur;

    @Autowired
    EvaluationDAO ev;
    @Autowired
    UtilisateurDAO user;

    @Autowired
    DossierDAO dossier;

    /****************************************************************** Login *****************************************************/
    @ModelAttribute("utilisateur")
    public Utilisateur setUpUserForm() {
        return new Utilisateur();
    }

    @RequestMapping("/login")
    public String pagelogin(Model model)
    {
        String erreur ="";
        model.addAttribute("erreur",erreur);
        return "login";
    }


    @RequestMapping(value="/loginprocess")
    public String loginsucess(Model model, @RequestParam String email,
                              @RequestParam String password,@ModelAttribute("utilisateur")Utilisateur util)
    {
        String pageretour = "login";
        ModelAndView modelview = new ModelAndView();
        Utilisateur u = user.getUserByEmail(email);
        if (u != null) {
            if (u.getMail().equals(email)) {
                if (u.getMotdepasse().equals(password))
                {
                    switch (u.getType())
                    {
                        case "candidat" :
                        {
                            pageretour = "candidat/etat_dossier_candidat";
                        }
                        case "receptionniste" :
                        {
                            pageretour = "receptionniste/liste-candidats";
                        }
                        case "membrecommission" :
                        {
                            pageretour = "membrecommission/dossierCandidature";
                        }
                        case "controlleur" :
                        {
                            pageretour = "controlleur/attente";
                        }
                        default : pageretour = "admin/creerUtilisateur";
                    }
                 //   pageretour = "admin/userajoute";
                    modelview.addObject("utilisateur",u);
                    util = u;
                    this.utilisateur = u;
                    System.out.println(this.utilisateur.getNom());
                }
                else {
                    model.addAttribute("erreur", "erreur dans l'email ou le mot de passe");
                }
            }
        }
        else
        {
            model.addAttribute("erreur", "Utilisateur inexistant !");
        }
        return pageretour;
    }

    @RequestMapping("/deconnexion")
    public String logout(Model model,@SessionAttribute("utilisateur")Utilisateur util)
    {
        System.out.println(util.getNom()+" "+util.getPrenom());
        util = null;
        utilisateur = null;
        return "login";
    }

    public Boolean isConnected()
    {
        if (utilisateur != null)
            return true;
        else
            return false;
    }
    /****************************************************************** Login *****************************************************/

    /* Fonction Receptionniste */
    @RequestMapping(value="/listcandrecep")
    public String pagelistcandrecep(Model model)
    {
        model.addAttribute("ListeCandidats", user.getAllCandidats());
        model.addAttribute("ListeDossiers", dossier.getAllDossiers());
        return "receptionniste/liste-candidats";
    }

    @RequestMapping(value="/ajoutercandidat")
    public String ajouterCandidat(Model model)
    {
        return "receptionniste/creerCandidat";
    }

    @RequestMapping(value="/checklist")
    public String verifDossier(Model model)
    {
        return "receptionniste/controlePapier";
    }


    @RequestMapping(value="/dossierAttentes")
    public String dossierenAttente(Model model)
    {
        model.addAttribute("ListeCandidats", user.getAllCandidats());
        model.addAttribute("ListeDossiers", dossier.getAllDossiers());
        return "receptionniste/DossiersAttentes";
    }


    @RequestMapping(value="/controlPapierAttente")
    public String controlPapierAttente(Model model)
    {
        model.addAttribute("ListeCandidats", user.getAllCandidatsAttente());
        model.addAttribute("ListeDossiers", dossier.getAllDossiers());
        return "receptionniste/controlePapierEnAttente";
    }

    @RequestMapping(value="/completerDossier")
    public String completerDossier(Model model)
    {
        user.deleteCandiatAttente(0);
        user.addUser(new Utilisateur((long) 1,"user1","nom1","username1","motdepass","Doctorant","Informatique","qs1", 111,"mail1@email.dz","Candidat"));
        //dossier.addDossier(new DossierCandidature("1",EtatDossier.complet,"18/04/2018"));
        model.addAttribute("ListeCandidats", user.getAllCandidatsAttente());
        model.addAttribute("ListeDossiers", dossier.getAllDossiers());
        return "receptionniste/DossiersAttentes";
    }


    @RequestMapping(value="/listcandrecepcomplet")
    public String completerDossierdirect(Model model)
    {
        user.addUser(new Utilisateur((long) 6,"nouveauNom","nouveauPrenom","username1","motdepass","Doctorant","nouveauDomaine","qs1", 111,"mail1@email.dz","Candidat"));
        model.addAttribute("ListeCandidats", user.getAllCandidats());
        model.addAttribute("ListeDossiers", dossier.getAllDossiers());
        return "receptionniste/liste-candidats";
    }

    @RequestMapping(value="/listattenteincomplet")
    public String mettreDossierAttente(Model model)
    {
        user.addUserAttente(new Utilisateur((long) 6,"nouveauNom","nouveauPrenom","username1","motdepass","Doctorant","nouveauDomaine","qs1", 111,"mail1@email.dz","Candidat"));
       // dossier.addDossier(new DossierCandidature("1",EtatDossier.complet,"18/04/2018"));
        model.addAttribute("ListeCandidats", user.getAllCandidatsAttente());
        model.addAttribute("ListeDossiers", dossier.getAllDossiers());
        return "receptionniste/DossiersAttentes";
    }


    /* Fonction  Controlleur */

    @RequestMapping(value="/listDossierAttente")
    public String pageControlleur (Model model)
    {
        model.addAttribute("ListeDossierAttente", dossier.dossierAttente());
        model.addAttribute("ListeCandidats", user.getAllCandidats());
        return "controlleur/attente";
    }

    @RequestMapping(value="/listDossierValides")
    public String pageDossierValides (Model model)
    {
        model.addAttribute("ListeDossierValides", dossier.dossierValide());
        model.addAttribute("ListeCandidats", user.getAllCandidats());
        return "controlleur/valide";
    }

    @RequestMapping(value="/listDossierRejetes")
    public String pageDossierRejetes (Model model)
    {
        model.addAttribute("ListeDossierRejetes", dossier.dossierRejete());
        model.addAttribute("ListeCandidats", user.getAllCandidats());
        return "controlleur/rejet";
    }

    @RequestMapping(value="/listDossierrRejetes")
    public String pageDossierRejetes2 (Model model)
    {
        model.addAttribute("ListeDossierRejetesAnnuler", dossier.dossierRejAnnuler());
        model.addAttribute("ListeCandidats", user.getAllCandidats2());
        return "controlleur/rejet2";
    }


    @RequestMapping(value="/listcandidature")
    public String pagelistcandidature(Model model)
    {
        model.addAttribute("ListeCandidatures", user.getAllCandidats());
        return "receptionniste/dossierCandidature";
    }
    @RequestMapping(value="/dossierCandidatureRejete")
    public String DossierCanRej(Model model){
        model.addAttribute("ListeDossierRejetes", dossier.dossierRejete());
        return "controlleur/dossierCandidatureRejete";
    }
    @RequestMapping(value="/dossierCandidatureValide")
    public String DossierCanVal(Model model){
        model.addAttribute("ListeDossierRejetes", dossier.dossierRejete());
        return "controlleur/dossierCandidatureValides";
    }

    /* Membre commission */

    @RequestMapping(value="/GrillEval")
    public String pageGrillEvall(Model model , @RequestParam Long ident){
        // trai....
        model.addAttribute("ListeCriteres_Pedagogique", ev.getAllcriteres_Pedagogique());
        model.addAttribute("ListeCriteres_Encadrement", ev.getAllcriteres_Encadrement());
        model.addAttribute("ListeCriteres_Production_activites_scientifique", ev.getAllcriteres_PAS());
        model.addAttribute("ListeCriteres_Responsabilites_administratives", ev.getAllcriteres_RA());
        System.out.println(ident);
        model.addAttribute("Candidat",dossier.getDossierByID(ident).getCandidat());
        return "membrecomm/grillEval";
    }


    @RequestMapping(value="/ResultEval")
    public String pageResultEvall(Model model  , @RequestParam Map<String,String> param  /* ,@RequestParam  String IdCand*/){

        this.criteres_Pedagogique = ev.getAllcriteres_Pedagogique();
        this.criteres_Encadrement = ev.getAllcriteres_Encadrement();
        this.criteres_PAS = ev.getAllcriteres_PAS();
        this.criteres_RA = ev.getAllcriteres_RA();
        int noteEval=  0;
        for (int i =0 ;  i < ev.getAllcriteres_Pedagogique().size()  ; i++)
        {
            noteEval = noteEval + ( Integer.parseInt(param.get("noteLP"+i)) * this.criteres_Pedagogique.get(i).getPonderation()) ;
        }

        for (int i =0 ;  i < ev.getAllcriteres_Encadrement().size()  ; i++)
        {
            noteEval = noteEval + ( Integer.parseInt(param.get("noteLE"+i)) * this.criteres_Encadrement.get(i).getPonderation()) ;
        }

        for (int i =0 ;  i < ev.getAllcriteres_PAS().size()  ; i++)
        {
            noteEval = noteEval + ( Integer.parseInt(param.get("noteLPAS"+i)) * this.criteres_PAS.get(i).getPonderation()) ;
        }

        for (int i =0 ;  i < ev.getAllcriteres_RA().size()  ; i++)
        {
            noteEval = noteEval + ( Integer.parseInt(param.get("noteLRA"+i)) * this.criteres_RA.get(i).getPonderation()) ;
        }
        this.criteres.addAll(this.criteres_Pedagogique);
        this.criteres.addAll(this.criteres_Encadrement);
        this.criteres.addAll(this.criteres_PAS);
        this.criteres.addAll(this.criteres_RA);

        model.addAttribute("CandidatName",user.getUserByID(Long.parseLong(param.get("IdCand"))).getNom());


        model.addAttribute("NoteEval",noteEval);
        Date date = new Date();


        ev.createEvaluation(date,noteEval);



        return "membrecomm/Test1";
    }


    @RequestMapping(value="/ListeCandEval")
    public String pageListeCandEval(Model model){



        model.addAttribute("ListeCandidats", user.getAllCandidats());
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd ");
        Date date = new Date();
        dateform = dateFormat.format(date);

        model.addAttribute("Dateauj",dateform);


        return "membrecomm/resulteval";
    }

    @RequestMapping(value="/ListeCand")
    public String ListeCands(Model model){
        model.addAttribute("ListeDossiers", dossier.getAllDossiers());
        // model.addAttribute("ListeCandidats", user.getAllCandidats());

        return "membrecomm/listcandidat";
    }
    @RequestMapping(value="/dossiercomm")
    public String DossierCanComm(Model model){
        return "membrecomm/dossierCandidature";
    }



    /****************** Fonction Admin ************************/

    @RequestMapping(value="/userajoute")
    public String ajouterUtilisateur(Model model, @RequestParam Map <String,String> param)
    {
        Utilisateur utilisateur = new Utilisateur(param.get("nom"), param.get("prenom"), param.get("nomUtilisateur"), param.get("motdepasse"),
                "", "", "", 0, param.get("mail"), param.get("type"));
        user.addUser(utilisateur);
        model.addAttribute("utilisateur",utilisateur);
        return "admin/userajoute";
    }


    @RequestMapping(value="/ajouterUtilisateur")
    public String formAjoutUser(Model model)
    {
        if (isConnected()) {
            if (utilisateur.getType().equals("Admin")) {
                model.addAttribute("utilisateur", utilisateur);
                return "admin/creerUtilisateur";
            }
            else
            {
                return "redirect:/nonautorise.aspx"; /***à créer***/
            }
        }
        else
        {
            return "redirect:/login.aspx";
        }
    }

}
