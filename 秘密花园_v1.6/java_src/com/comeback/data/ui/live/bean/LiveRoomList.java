package com.comeback.data.ui.live.bean;

import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class LiveRoomList extends k {
    public DataBean data;

    /* loaded from: classes.dex */
    public class DataBean {
        public List<RoomList> lists;

        /* loaded from: classes.dex */
        public class RoomList {
            public String img;
            public String play_url;
            public String title;

            public RoomList() {
            }

            public String getImage() {
                return this.img;
            }

            public String getPlay_url() {
                return this.play_url;
            }

            public String getTitle() {
                return this.title;
            }

            public void setImage(String str) {
                this.img = str;
            }

            public void setPlay_url(String str) {
                this.play_url = str;
            }

            public void setTitle(String str) {
                this.title = str;
            }
        }

        public DataBean() {
        }

        public List<RoomList> getLists() {
            return this.lists;
        }

        public void setLists(List<RoomList> list) {
            this.lists = list;
        }
    }

    public DataBean getData() {
        return this.data;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }
}
