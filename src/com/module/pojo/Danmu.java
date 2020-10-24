package com.module.pojo;

import java.util.Date;


/**
 * 弹幕表 danmu
 */
public class Danmu {
    private static final long serialVersionUID = 1L;

    /**
     * ID
     */
    private Integer id;
    /**
     * 时间
     */
    private String time;
    /**
     * 显示类型
     */
    private Integer type;
    /**
     * 文字颜色
     */
    private String color;
    /**
     * 用户名
     */
    private String author;
    /**
     * 内容
     */
    private String text;
    /**
     * 视屏id
     */
    private Integer filmid;
    /**
     * 创建时间
     */
    private Date createtime;

    /**
     * 设置：ID
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取：ID
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置：时间
     */
    public void setTime(String time) {
        this.time = time;
    }

    /**
     * 获取：时间
     */
    public String getTime() {
        return time;
    }

    /**
     * 设置：显示类型
     */
    public void setType(Integer type) {
        this.type = type;
    }

    /**
     * 获取：显示类型
     */
    public Integer getType() {
        return type;
    }

    /**
     * 设置：文字颜色
     */
    public void setColor(String color) {
        this.color = color;
    }

    /**
     * 获取：文字颜色
     */
    public String getColor() {
        return color;
    }

    /**
     * 设置：用户名
     */
    public void setAuthor(String author) {
        this.author = author;
    }

    /**
     * 获取：用户名
     */
    public String getAuthor() {
        return author;
    }

    /**
     * 设置：内容
     */
    public void setText(String text) {
        this.text = text;
    }

    /**
     * 获取：内容
     */
    public String getText() {
        return text;
    }

    /**
     * 设置：视屏id
     */
    public void setFilmid(Integer filmid) {
        this.filmid = filmid;
    }

    /**
     * 获取：视屏id
     */
    public Integer getFilmid() {
        return filmid;
    }

    /**
     * 设置：创建时间
     */
    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    /**
     * 获取：创建时间
     */
    public Date getCreatetime() {
        return createtime;
    }

    @Override
    public String toString() {
        return "Danmu{" +
                "id=" + id +
                ", time='" + time + '\'' +
                ", type=" + type +
                ", color='" + color + '\'' +
                ", author='" + author + '\'' +
                ", text='" + text + '\'' +
                ", filmid=" + filmid +
                ", createtime=" + createtime +
                '}';
    }
}
