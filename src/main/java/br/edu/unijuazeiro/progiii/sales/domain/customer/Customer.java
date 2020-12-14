/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.unijuazeiro.progiii.sales.domain.customer;

import java.util.UUID;

/**
 *
 * @author leonardo
 */
public class Customer {

    private String id;
    private String name;
    private String nickname;
    private String number;
    private String adress;
    
    public Customer(){
        this.id = UUID.randomUUID().toString();
    }

    public void setId(String id) {
        this.id = id;
    }
   
    public String getName() {
        return name;
    }

	public void setName(String name) {
        this.name = name;
    }
    
	public String getAdress() {
		return adress;
	}

	public void setAdress(String adress) {
		this.adress = adress;
	}

    public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}
	
    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getId() {
        return id;
    }

    @Override
    public boolean equals(Object o) {
        return ((Customer)o).getId().equals(this.id);
    }
    
    
    

}
