package com.comeback.data.ui.jav.bean;

import f.e.a.e;
import f.e.a.f.k;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public class VideoDetail extends k {
    public String actor;
    public String date;
    public ArrayList<Download> downloads;
    public String duration;
    public String error;
    public ArrayList<Video> guessLike;
    public String img;
    public String name;
    public ArrayList<String> preview_images;
    public String preview_video;
    public String publisher;
    public ArrayList<Video> sameVideo;
    public String score;
    public String shop;
    public String tag;
    public String uid;

    public String getActor() {
        return this.actor;
    }

    public ArrayList<String> getBigPreview_images() {
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<String> it = this.preview_images.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().replace(e.a("aBE8"), e.a("aA48")));
        }
        return arrayList;
    }

    public String getDate() {
        return this.date;
    }

    public ArrayList<Download> getDownloads() {
        return this.downloads;
    }

    public String getDuration() {
        return this.duration;
    }

    public String getError() {
        return this.error;
    }

    public ArrayList<Video> getGuessLike() {
        return this.guessLike;
    }

    public String getImg() {
        return this.img;
    }

    public String getName() {
        return this.name;
    }

    public ArrayList<String> getPreview_images() {
        return this.preview_images;
    }

    public String getPreview_video() {
        return this.preview_video;
    }

    public String getPublisher() {
        return this.publisher;
    }

    public ArrayList<Video> getSameVideo() {
        return this.sameVideo;
    }

    public String getScore() {
        return this.score;
    }

    public String getShop() {
        return this.shop;
    }

    public String getTag() {
        return this.tag;
    }

    public String getUid() {
        return this.uid;
    }

    public void setActor(String str) {
        this.actor = str;
    }

    public void setDate(String str) {
        this.date = str;
    }

    public void setDownloads(ArrayList<Download> arrayList) {
        this.downloads = arrayList;
    }

    public void setDuration(String str) {
        this.duration = str;
    }

    public void setError(String str) {
        this.error = str;
    }

    public void setGuessLike(ArrayList<Video> arrayList) {
        this.guessLike = arrayList;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPreview_images(ArrayList<String> arrayList) {
        this.preview_images = arrayList;
    }

    public void setPreview_video(String str) {
        if (str.startsWith(e.a("XxYXFA=="))) {
            this.preview_video = str;
            return;
        }
        this.preview_video = e.a("XxYXFBhJ") + str;
    }

    public void setPublisher(String str) {
        this.publisher = str;
    }

    public void setSameVideo(ArrayList<Video> arrayList) {
        this.sameVideo = arrayList;
    }

    public void setScore(String str) {
        this.score = str;
    }

    public void setShop(String str) {
        this.shop = str;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    public void setUid(String str) {
        this.uid = str;
    }
}
