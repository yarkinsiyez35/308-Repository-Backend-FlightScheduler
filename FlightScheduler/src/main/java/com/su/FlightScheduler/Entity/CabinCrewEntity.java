package com.su.FlightScheduler.Entity;
import jakarta.persistence.*;

import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "crew_members")
public class CabinCrewEntity implements Serializable {
    @Id
    @Column(name = "attendant_id")
    private int attendantId;

    @Column(name = "email", nullable = false)
    private String email;

    @Column(name = "password", nullable = false)
    private String password;

    @Column(name = "first_name", nullable = false)
    private String firstName;

    @Column(name = "surname", nullable = false)
    private String surname;

    @Column(name = "age", nullable = false)
    private int age;

    @Column(name = "gender", nullable = false)
    private String gender;

    @Column(name = "nationality", nullable = false)
    private String nationality;

    @Column(name = "seniority", nullable = false)
    private String seniority;


    @OneToMany(mappedBy = "attendantLanguagePK.attendantId", cascade = CascadeType.PERSIST)
    private List<AttendantLanguageEntity> languages;

    @OneToMany(mappedBy = "dishRecipePK.attendantId", cascade = CascadeType.PERSIST)
    private List<DishRecipeEntity> recipes;

    // Constructor
    public CabinCrewEntity() {
    }

    public CabinCrewEntity(int attendantId, String email, String password, String firstName, String surname, int age, String gender, String nationality, String seniority, List<AttendantLanguageEntity> languages, List<DishRecipeEntity> recipes) {
        this.attendantId = attendantId;
        this.email = email;
        this.password = password;
        this.firstName = firstName;
        this.surname = surname;
        this.age = age;
        this.gender = gender;
        this.nationality = nationality;
        this.seniority = seniority;
        this.languages = languages;
        this.recipes = recipes;
    }

    // Getters
    public int getAttendantId() {
        return attendantId;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getSurname() {
        return surname;
    }

    public List<AttendantLanguageEntity> getLanguages() {
        return languages;
    }

    public int getAge() {
        return age;
    }

    public String getGender() {
        return gender;
    }

    public String getNationality() {
        return nationality;
    }

    public String getSeniority() {
        return seniority;
    }

    public List<DishRecipeEntity> getRecipes() {
        return recipes;
    }

    // Setters
    public void setAttendantId(int attendantId) {
        this.attendantId = attendantId;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public void setSeniority(String seniority) {
        this.seniority = seniority;
    }
    public void setLanguages(List<AttendantLanguageEntity> languages) {
        this.languages = languages;
    }

    public void setRecipes(List<DishRecipeEntity> recipes) {
        this.recipes = recipes;
    }
}