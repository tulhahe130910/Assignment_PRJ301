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
public class Order {
    private int id;
    private String name;
    private String phone;
    private String address;
    private String note;
    private String status;
    private float totalmoney;
    private Date date;

    public Order() {
    }

    public Order(int id, String name, String phone, String address, String note, String status, float totalmoney, Date date) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.address = address;
        this.note = note;
        this.status = status;
        this.totalmoney = totalmoney;
        this.date = date;
    }
    public Order(String name, String phone, String address, String note, String status, float totalmoney) {
        this.name = name;
        this.phone = phone;
        this.address = address;
        this.note = note;
        this.status = status;
        this.totalmoney = totalmoney;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public float getTotalmoney() {
        return totalmoney;
    }

    public void setTotalmoney(float totalmoney) {
        this.totalmoney = totalmoney;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
    
}
