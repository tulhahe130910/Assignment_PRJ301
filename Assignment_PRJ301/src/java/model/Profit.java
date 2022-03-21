/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author david
 */
public class Profit {
    private float totalmoney;
    private int quanlity;
    private Date date;

    public Profit() {
    }

    public Profit(float totalmoney, int quanlity, Date date) {
        this.totalmoney = totalmoney;
        this.quanlity = quanlity;
        this.date = date;
    }

    public float getTotalmoney() {
        return totalmoney;
    }

    public void setTotalmoney(float totalmoney) {
        this.totalmoney = totalmoney;
    }

    public int getQuanlity() {
        return quanlity;
    }

    public void setQuanlity(int quanlity) {
        this.quanlity = quanlity;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
    
}
