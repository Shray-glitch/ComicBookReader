package com.example.androidcomicreader.Model;

public class Banner {
    private int ID;
    private String Link;

    public Banner() {
    }

    public Banner(int id, String link) {
        ID = id;
        Link = link;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getLink() {
        return Link;
    }

    public void setLink(String link) {
        Link = link;
    }

    @Override
    public String toString() {
        return "Banner{" +
                "ID=" + ID +
                ", Link='" + Link + '\'' +
                '}';
    }
}
