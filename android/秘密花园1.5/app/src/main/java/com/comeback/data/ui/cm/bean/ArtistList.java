package com.comeback.data.ui.cm.bean;

import f.e.a.e;
import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class ArtistList extends k {
    public int code;
    public String msg;
    public RescontEntity rescont;

    /* loaded from: classes.dex */
    public class RescontEntity {
        public List<AllArtistEntity> allArtist;
        public List<AllArtistEntity.ListEntity> hotArtist;

        /* loaded from: classes.dex */
        public class AllArtistEntity {
            public String letter;
            public List<ListEntity> list;

            /* loaded from: classes.dex */
            public class ListEntity {
                public String artist;
                public int id;
                public String image;
                public CoverBase64 imagebase64;
                public int isHot;
                public String letter;

                public ListEntity() {
                }

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
                    if (this.image.startsWith(e.a("XxYXFA=="))) {
                        return this.image;
                    }
                    return e.a("XxYXFBhJFhwaC1UAHUQLClkMDw0FXVpcHklHExcYAgxSTQ==") + this.image;
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

            public AllArtistEntity() {
            }

            public String getLetter() {
                return this.letter;
            }

            public List<ListEntity> getList() {
                return this.list;
            }

            public void setLetter(String str) {
                this.letter = str;
            }

            public void setList(List<ListEntity> list) {
                this.list = list;
            }
        }

        public RescontEntity() {
        }

        public List<AllArtistEntity> getAllArtist() {
            return this.allArtist;
        }

        public List<AllArtistEntity.ListEntity> getHotArtist() {
            return this.hotArtist;
        }

        public void setAllArtist(List<AllArtistEntity> list) {
            this.allArtist = list;
        }

        public void setHotArtist(List<AllArtistEntity.ListEntity> list) {
            this.hotArtist = list;
        }
    }

    public int getCode() {
        return this.code;
    }

    public String getMsg() {
        return this.msg;
    }

    public RescontEntity getRescont() {
        return this.rescont;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setRescont(RescontEntity rescontEntity) {
        this.rescont = rescontEntity;
    }
}
