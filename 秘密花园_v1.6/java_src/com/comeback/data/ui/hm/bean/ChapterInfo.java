package com.comeback.data.ui.hm.bean;

import f.e.a.e;
import f.e.a.f.k;
import f.e.a.j.r.f.a;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class ChapterInfo extends k {
    public ArrayList<Chapter> chapterList;
    public String state;

    /* loaded from: classes.dex */
    public static class Chapter {
        public ArrayList<Line> lines;
        public String name;

        /* loaded from: classes.dex */
        public static class Line {
            public String bookId;
            public String key;
            public String linkId;
            public String name;
            public String path;

            public String getBookId() {
                return this.bookId;
            }

            public String getKey() {
                return this.key;
            }

            public String getLinkId() {
                return this.linkId;
            }

            public String getName() {
                return this.name;
            }

            public String getPath() {
                return this.path;
            }

            public void setBookId(String str) {
                this.bookId = str;
            }

            public void setKey(String str) {
                this.key = str;
            }

            public void setLinkId(String str) {
                this.linkId = str;
            }

            public void setName(String str) {
                this.name = str;
            }

            public void setOther(String str) {
                if (str.contains(e.a("EA==")) && str.contains(e.a("Hw==")) && str.contains(e.a("Hg=="))) {
                    String[] split = str.replace(e.a("EA=="), "").split(e.a("a0o="))[1].replace(e.a("Hg=="), "").split(e.a("Gw=="));
                    this.bookId = split[0];
                    String str2 = split[1];
                    this.linkId = str2;
                    this.path = split[2];
                    this.key = a.a(str2);
                }
            }

            public void setPath(String str) {
                this.path = str;
            }
        }

        public ArrayList<Line> getLines() {
            return this.lines;
        }

        public String getName() {
            return this.name;
        }

        public void setLines(ArrayList<Line> arrayList) {
            this.lines = arrayList;
        }

        public void setName(String str) {
            this.name = str;
        }
    }

    public ArrayList<Chapter> getChapterList() {
        return this.chapterList;
    }

    public String getState() {
        return this.state;
    }

    public void setChapterList(ArrayList<Chapter> arrayList) {
        this.chapterList = arrayList;
    }

    public void setState(String str) {
        this.state = str;
    }
}
