package com.yinong.pojo;

import java.util.Date;

public class ZiXun {
    private String header;
    private String time;
    private  String content;
    private  String imgs;
    private  String resource;
    private Integer part;

    public String getHeader() {
        return header;
    }

    public void setHeader(String header) {
        this.header = header;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getPart() {
        return part;
    }

    public void setPart(Integer part) {
        this.part = part;
    }

    public String getImgs() {
        return imgs;
    }

    public void setImgs(String imgs) {
        this.imgs = imgs;
    }

    public String getResource() {
        return resource;
    }

    public void setResource(String resource) {
        this.resource = resource;
    }

    @Override
    public String toString() {
        return "ZiXun{" +
                "header='" + header + '\'' +
                ", time=" + time +
                ", content='" + content + '\'' +
                ", imgs='" + imgs + '\'' +
                ", resource='" + resource + '\'' +
                ", part=" + part +
                '}';
    }
}
