package com.comeback.data.ui.xj.bean;

import f.e.a.f.j;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ShortList extends j {
    public DataBean data;
    public String errmsg;
    public int retcode;

    /* loaded from: classes.dex */
    public static class DataBean {
        public List<RowsBean> rows;

        /* loaded from: classes.dex */
        public static class RowsBean {
            public VideoBean vodrow;

            public VideoBean getVodrow() {
                return this.vodrow;
            }

            public void setVodrow(VideoBean videoBean) {
                this.vodrow = videoBean;
            }
        }

        public List<RowsBean> getRows() {
            return this.rows;
        }

        public List<VideoBean> getVideos() {
            ArrayList arrayList = new ArrayList();
            for (RowsBean rowsBean : this.rows) {
                if (rowsBean.vodrow != null) {
                    arrayList.add(rowsBean.vodrow);
                }
            }
            return arrayList;
        }

        public void setRows(List<RowsBean> list) {
            this.rows = list;
        }
    }

    public DataBean getData() {
        return this.data;
    }

    public String getErrmsg() {
        return this.errmsg;
    }

    public int getRetcode() {
        return this.retcode;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    public void setErrmsg(String str) {
        this.errmsg = str;
    }

    public void setRetcode(int i2) {
        this.retcode = i2;
    }
}
