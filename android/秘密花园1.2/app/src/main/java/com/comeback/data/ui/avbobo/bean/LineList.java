package com.comeback.data.ui.avbobo.bean;

import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class LineList extends k {
    public List<LinesBean> lines;
    public String version_id;

    /* loaded from: classes.dex */
    public static class LinesBean {
        public boolean is_default;
        public String line_id;
        public String line_name;

        public String getLine_id() {
            return this.line_id;
        }

        public String getLine_name() {
            return this.line_name;
        }

        public boolean isIs_default() {
            return this.is_default;
        }

        public void setIs_default(boolean z) {
            this.is_default = z;
        }

        public void setLine_id(String str) {
            this.line_id = str;
        }

        public void setLine_name(String str) {
            this.line_name = str;
        }
    }

    public List<LinesBean> getLines() {
        return this.lines;
    }

    public String getVersion_id() {
        return this.version_id;
    }

    public void setLines(List<LinesBean> list) {
        this.lines = list;
    }

    public void setVersion_id(String str) {
        this.version_id = str;
    }
}
