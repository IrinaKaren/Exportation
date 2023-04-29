package com.itu.exportation.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.itu.exportation.databaseconnection.PostgresConnection;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;


@Entity
@Table(name = "users")
public class User {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int id;

  @Column(name = "name", nullable = false)
  private String name;

  @Column(name = "password", nullable = false)
  private String password;

  @Column(name = "email", unique = true, nullable = false)
  private String email;

  @Column(name = "phone")
  private String phone;

  @Column(name = "date", nullable = false)
  private LocalDateTime date;

  @Column(name = "address")
  private String address;

  @Column(name = "bank_card", nullable = false)
  private String bankCard;

  @ManyToOne
  @JoinColumn(name = "country_id")
  private Country country;

  // Constructors

  public User() {
  }

  public User(String name, String password, String email, String phone, LocalDateTime date, String address,
              String bankCard, Country country) {
    this.name = name;
    this.password = password;
    this.email = email;
    this.phone = phone;
    this.date = date;
    this.address = address;
    this.bankCard = bankCard;
    this.country = country;
  }

  // Getters and setters

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

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }

  public LocalDateTime getDate() {
    return date;
  }

  public void setDate(LocalDateTime date) {
    this.date = date;
  }

  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public String getBankCard() {
    return bankCard;
  }

  public void setBankCard(String bankCard) {
    this.bankCard = bankCard;
  }

  public Country getCountry() {
    return country;
  }

  public void setCountry(Country country) {
    this.country = country;
  }


  public static User findByNameAndPassword(String name, String password) {
    try (Connection conn = PostgresConnection.getConnection()) {
        PreparedStatement stmt = conn.prepareStatement("SELECT * FROM users WHERE name = ? AND password = ?");
        stmt.setString(1, name);
        stmt.setString(2, password);
        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            User user = new User();
            user.setId(rs.getInt("id"));
            user.setName(rs.getString("name"));
            user.setPassword(rs.getString("password"));
            return user;
        } else {
            return null;
        }
    } catch (SQLException ex) {
        // Handle any errors
        ex.printStackTrace();
        return null;
    }
  }

}
