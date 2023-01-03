package com.comeback.data.ui.tv91.bean;

import f.e.a.e;
import f.e.a.f.j;
import java.util.List;

/* loaded from: classes.dex */
public class VideoList extends j {
    public String Code;
    public MessageBean Message;
    public int Result;

    /* loaded from: classes.dex */
    public static class MessageBean {
        public List<MoviesBean> Movies;
        public int PageCount;
        public int Total;

        /* loaded from: classes.dex */
        public static class MoviesBean {
            public String CoverImg;
            public String CreateTime;
            public String Description;
            public String Img;
            public String Imgbase64;
            public int MovieID;
            public String Name;
            public int SourceId;

            public String getCoverImg() {
                return this.CoverImg;
            }

            public String getCreateTime() {
                return e.a("09rpgvXF36TFj6PTl9b5") + this.CreateTime;
            }

            public String getDescription() {
                return this.Description;
            }

            public String getImg() {
                return this.Img;
            }

            public String getImgbase64() {
                return this.Imgbase64;
            }

            public int getMovieID() {
                return this.MovieID;
            }

            public String getName() {
                return this.Name;
            }

            public int getSourceId() {
                int i2 = this.SourceId;
                return i2 != 0 ? i2 : this.MovieID > 100000 ? 1 : 2;
            }

            public void setCoverImg(String str) {
                this.CoverImg = str;
            }

            public void setCreateTime(String str) {
                this.CreateTime = str;
            }

            public void setDescription(String str) {
                this.Description = str;
            }

            public void setImg(String str) {
                this.Img = str;
            }

            public void setImgbase64(String str) {
                this.Imgbase64 = str;
            }

            public void setMovieID(int i2) {
                this.MovieID = i2;
            }

            public void setName(String str) {
                this.Name = str;
            }
        }

        public List<MoviesBean> getMovies() {
            return this.Movies;
        }

        public int getPageCount() {
            return this.PageCount;
        }

        public int getTotal() {
            return this.Total;
        }

        public void setMovies(List<MoviesBean> list) {
            this.Movies = list;
        }

        public void setPageCount(int i2) {
            this.PageCount = i2;
        }

        public void setTotal(int i2) {
            this.Total = i2;
        }
    }

    public String getCode() {
        return this.Code;
    }

    public MessageBean getMessage() {
        return this.Message;
    }

    public int getResult() {
        return this.Result;
    }

    public void setCode(String str) {
        this.Code = str;
    }

    public void setMessage(MessageBean messageBean) {
        this.Message = messageBean;
    }

    public void setResult(int i2) {
        this.Result = i2;
    }
}
