package com.emergentes;

/**
 *
 * @author CJ
 */
public class EncuestaOperativo {
    private String nombre;
    private String sistemasOperativos[];

    public EncuestaOperativo() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String[] getSistemasOperativos() {
        return sistemasOperativos;
    }

    public void setSistemasOperativos(String[] sistemasOperativos) {
        this.sistemasOperativos = sistemasOperativos;
    }
}
