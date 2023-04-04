package Modelo;

public class Ajustes {
    private int id_acuarela;
    private String ruc_acuarela;
    private String nom_acuarela;
    private String telf_acuarela;
    private String direc_acuarela;
    private String mensaje_acuarela;

    public Ajustes () {

    }

    // CONSTRUCTOR
    public Ajustes(int id_acuarela, String ruc_acuarela, String nom_acuarela, String telf_acuarela, String direc_acuarela, String mensaje_acuarela) {
        this.id_acuarela = id_acuarela;
        this.ruc_acuarela = ruc_acuarela;
        this.nom_acuarela = nom_acuarela;
        this.telf_acuarela = telf_acuarela;
        this.direc_acuarela = direc_acuarela;
        this.mensaje_acuarela = mensaje_acuarela;
    }

    // GETTERS AND SETTERS
    public int getId_acuarela() {
        return id_acuarela;
    }

    public void setId_acuarela(int id_acuarela) {
        this.id_acuarela = id_acuarela;
    }

    public String getRuc_acuarela() {
        return ruc_acuarela;
    }

    public void setRuc_acuarela(String ruc_acuarela) {
        this.ruc_acuarela = ruc_acuarela;
    }

    public String getNom_acuarela() {
        return nom_acuarela;
    }

    public void setNom_acuarela(String nom_acuarela) {
        this.nom_acuarela = nom_acuarela;
    }

    public String getTelf_acuarela() {
        return telf_acuarela;
    }

    public void setTelf_acuarela(String telf_acuarela) {
        this.telf_acuarela = telf_acuarela;
    }

    public String getDirec_acuarela() {
        return direc_acuarela;
    }

    public void setDirec_acuarela(String direc_acuarela) {
        this.direc_acuarela = direc_acuarela;
    }

    public String getMensaje_acuarela() {
        return mensaje_acuarela;
    }

    public void setMensaje_acuarela(String mensaje_acuarela) {
        this.mensaje_acuarela = mensaje_acuarela;
    }
}

