package com.emp.info;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

@ManagedBean
@ViewScoped
public class LikeDislikeBean {

    private int likeCount = 0;
    private int dislikeCount = 0;

    public int getLikeCount() {
        return likeCount;
    }

    public int getDislikeCount() {
        return dislikeCount;
    }

    public void incrementLike() {
        likeCount++;
    }

    public void incrementDislike() {
        dislikeCount++;
    }
}