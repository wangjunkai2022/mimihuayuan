package com.comeback.data.ui.bale.bean;

import com.comeback.data.ui.cm.bean.CoverBase64;
import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class StarList extends j {
    public String message;
    public ResultBean result;
    public int status;

    /* loaded from: classes.dex */
    public static class ResultBean {
        public List<AllArtistBean> allArtist;
        public List<ArtistBean> hotArtist;

        /* loaded from: classes.dex */
        public static class AllArtistBean {
            public String letter;
            public List<ArtistBean> list;

            public String getLetter() {
                return this.letter;
            }

            public List<ArtistBean> getList() {
                return this.list;
            }

            public void setLetter(String str) {
                this.letter = str;
            }

            public void setList(List<ArtistBean> list) {
                this.list = list;
            }
        }

        /* loaded from: classes.dex */
        public static class ArtistBean {
            public String artist;
            public int id;
            public String image;
            public CoverBase64 imagebase64;
            public int isHot;
            public String letter;

            public String getArtist() {
                return this.artist;
            }

            public CoverBase64 getCoverBase64() {
                return this.imagebase64;
            }

            public int getId() {
                return this.id;
            }

            public String getImage() {
                return this.image;
            }

            public int getIsHot() {
                return this.isHot;
            }

            public String getLetter() {
                return this.letter;
            }

            public void setArtist(String str) {
                this.artist = str;
            }

            public void setCoverBase64(CoverBase64 coverBase64) {
                this.imagebase64 = coverBase64;
            }

            public void setId(int i2) {
                this.id = i2;
            }

            public void setImage(String str) {
                this.image = str;
            }

            public void setIsHot(int i2) {
                this.isHot = i2;
            }

            public void setLetter(String str) {
                this.letter = str;
            }
        }

        public List<AllArtistBean> getAllArtist() {
            return this.allArtist;
        }

        public List<ArtistBean> getHotArtist() {
            return this.hotArtist;
        }

        public void setHotArtist(List<ArtistBean> list) {
            this.hotArtist = list;
        }
    }

    public String getMessage() {
        return this.message;
    }

    public ResultBean getResult() {
        return this.result;
    }

    public int getStatus() {
        return this.status;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setResult(ResultBean resultBean) {
        this.result = resultBean;
    }

    public void setStatus(int i2) {
        this.status = i2;
    }
}
