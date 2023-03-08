package com.comeback.data.ui.maomi.bean;

import android.text.TextUtils;
import f.b.a.a.a;
import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class VoiceDetailList extends k {
    public int code;
    public DataBeanX data;
    public String message;

    /* loaded from: classes.dex */
    public static class DataBeanX {
        public List<DataBean> data;
        public int total;
        public int total_page;

        /* loaded from: classes.dex */
        public static class DataBean {
            public String anchor_id;
            public BookBean book;
            public int book_id;
            public String create_at;
            public String id;
            public String image;
            public Object liked;
            public String name;
            public String plays;
            public String praises;
            public String special_id;
            public String update_at;

            /* loaded from: classes.dex */
            public static class BookBean {
                public String browses;
                public int id;
                public String name;
                public String praises;
                public int status;
                public String thumb;

                public String getBrowses() {
                    return a.n(new StringBuilder(), this.browses, "0c7Cgvne36fN");
                }

                public int getId() {
                    return this.id;
                }

                public String getName() {
                    return this.name;
                }

                public String getPraises() {
                    return a.n(new StringBuilder(), this.praises, "09jZjMz63I3kg4rvkN/9");
                }

                public int getStatus() {
                    return this.status;
                }

                public String getThumb() {
                    return this.thumb;
                }

                public void setId(int i2) {
                    this.id = i2;
                }

                public void setName(String str) {
                    this.name = str;
                }

                public void setStatus(int i2) {
                    this.status = i2;
                }

                public void setThumb(String str) {
                    this.thumb = str;
                }
            }

            public String getAnchor_id() {
                return this.anchor_id;
            }

            public BookBean getBook() {
                return this.book;
            }

            public int getBook_id() {
                return this.book_id;
            }

            public String getCreate_at() {
                return this.create_at;
            }

            public String getId() {
                return this.id;
            }

            public String getImage() {
                if (TextUtils.isEmpty(this.image)) {
                    return this.book.getThumb();
                }
                return this.image;
            }

            public Object getLiked() {
                return this.liked;
            }

            public String getName() {
                if (TextUtils.isEmpty(this.name)) {
                    return this.book.getName();
                }
                return this.name;
            }

            public String getPlays() {
                if (TextUtils.isEmpty(this.plays)) {
                    return this.book.getBrowses();
                }
                return a.n(new StringBuilder(), this.plays, "0c7Cgvne36fN");
            }

            public String getPraises() {
                if (TextUtils.isEmpty(this.praises)) {
                    return this.book.getPraises();
                }
                return a.n(new StringBuilder(), this.praises, "09jZjMz63I3kg4rvkN/9");
            }

            public String getSpecial_id() {
                return this.special_id;
            }

            public String getUpdate_at() {
                return this.update_at;
            }

            public void setAnchor_id(String str) {
                this.anchor_id = str;
            }

            public void setBook(BookBean bookBean) {
                this.book = bookBean;
            }

            public void setBook_id(int i2) {
                this.book_id = i2;
            }

            public void setCreate_at(String str) {
                this.create_at = str;
            }

            public void setLiked(Object obj) {
                this.liked = obj;
            }

            public void setName(String str) {
                this.name = str;
            }

            public void setPlays(String str) {
                this.plays = str;
            }

            public void setPraises(String str) {
                this.praises = str;
            }

            public void setSpecial_id(String str) {
                this.special_id = str;
            }

            public void setUpdate_at(String str) {
                this.update_at = str;
            }
        }

        public List<DataBean> getData() {
            return this.data;
        }

        public int getTotal() {
            return this.total;
        }

        public int getTotal_page() {
            return this.total_page;
        }

        public void setData(List<DataBean> list) {
            this.data = list;
        }

        public void setTotal(int i2) {
            this.total = i2;
        }

        public void setTotal_page(int i2) {
            this.total_page = i2;
        }
    }

    public int getCode() {
        return this.code;
    }

    public DataBeanX getData() {
        return this.data;
    }

    public String getMessage() {
        return this.message;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(DataBeanX dataBeanX) {
        this.data = dataBeanX;
    }

    public void setMessage(String str) {
        this.message = str;
    }
}
