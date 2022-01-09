/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.lse.lsoftwareengineering.entity;

import java.io.Serializable;

/**
 *
 * @author homer
 */
public class PhotoDetails implements Serializable {
    private Integer id;
    private String filename;
    private String fileType;
    private byte[] fileContent;

    public PhotoDetails(Integer id, String filename, String fileType, byte[] fileContent){
        this.id = id;
        this.filename = filename;
        this.fileType = fileType;
        this.fileContent = fileContent;
    }


    public String getFileType() {
        return fileType;
    }


    public byte[] getFileContent() {
        return fileContent;
    }
}
