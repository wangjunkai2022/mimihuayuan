package com.comeback.data.ui.tv91.bean;

import android.text.TextUtils;
import f.e.a.e;
import f.e.a.f.k;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class MovieInfo extends k {
    public String Code;
    public MessageEntity Message;
    public int Result;

    /* loaded from: classes.dex */
    public class MessageEntity {
        public List<?> Actor;
        public ChannelEntity Channel;
        public String ChannelID;
        public String CoverImg;
        public String CreateTime;
        public String CutPicName;
        public String Description;
        public String Download;
        public String Extension;
        public int FavoriteCount;
        public int FileSize;
        public String Img;
        public String Imgbase64;
        public int IsFavorite;
        public String Length;
        public String MovieID;
        public String Name;
        public int PlayCount;
        public String Point;
        public String Resolution;
        public SeriesEntity Series;
        public String SourceId;
        public SupplierEntity Supplier;

        /* loaded from: classes.dex */
        public class ChannelEntity {
            public String ID;
            public String Name;

            public ChannelEntity() {
            }

            public String getID() {
                return this.ID;
            }

            public String getName() {
                return this.Name;
            }

            public void setID(String str) {
                this.ID = str;
            }

            public void setName(String str) {
                this.Name = str;
            }
        }

        /* loaded from: classes.dex */
        public class SeriesEntity {
            public String ID;
            public String Name;

            public SeriesEntity() {
            }

            public String getID() {
                return this.ID;
            }

            public String getName() {
                return this.Name;
            }

            public void setID(String str) {
                this.ID = str;
            }

            public void setName(String str) {
                this.Name = str;
            }
        }

        /* loaded from: classes.dex */
        public class SupplierEntity {
            public String ID;
            public String Name;

            public SupplierEntity() {
            }

            public String getID() {
                return this.ID;
            }

            public String getName() {
                return this.Name;
            }

            public void setID(String str) {
                this.ID = str;
            }

            public void setName(String str) {
                this.Name = str;
            }
        }

        public MessageEntity() {
        }

        private String createId() {
            String img = TextUtils.isEmpty(getCutPicName()) ? getImg() : getCutPicName();
            if (img.contains(e.a("GBIKB0Q=")) || img.contains(e.a("GDIqJ0Q=")) || img.contains(e.a("GBIKB1lc")) || img.contains(e.a("GDIqJ1lc"))) {
                String replace = img.contains(e.a("GBIKB0Q=")) ? img.split(e.a("GBIKB0Q="))[1].replace(e.a("GQgTAw=="), "") : "";
                if (img.contains(e.a("GDIqJ0Q="))) {
                    replace = img.split(e.a("GDIqJ0Q="))[1].replace(e.a("GQgTAw=="), "");
                }
                if (img.contains(e.a("GBIKB1lc"))) {
                    replace = img.split(e.a("GBIKB1lc"))[1].replace(e.a("GQgTAw=="), "");
                }
                if (img.contains(e.a("GDIqJ1lc"))) {
                    replace = img.split(e.a("GDIqJ1lc"))[1].replace(e.a("GQgTAw=="), "");
                }
                if (!TextUtils.isEmpty(replace) && replace.startsWith(e.a("GA=="))) {
                    replace = replace.substring(1);
                }
                return (TextUtils.isEmpty(replace) || !replace.contains(e.a("GQ8TUA=="))) ? replace : replace.replace(e.a("GQ8TUA=="), "");
            }
            return "";
        }

        public List<?> getActor() {
            return this.Actor;
        }

        public ChannelEntity getChannel() {
            return this.Channel;
        }

        public String getChannelID() {
            return this.ChannelID;
        }

        public String getCoverImg() {
            return this.CoverImg;
        }

        public String getCreateTime() {
            return this.CreateTime;
        }

        public String getCutPicName() {
            return this.CutPicName;
        }

        public String getDescription() {
            return this.Description;
        }

        public String getDownload() {
            return this.Download;
        }

        public String getExtension() {
            return this.Extension;
        }

        public int getFavoriteCount() {
            return this.FavoriteCount;
        }

        public int getFileSize() {
            return this.FileSize;
        }

        public String getImg() {
            return this.Img;
        }

        public String getImgbase64() {
            return this.Imgbase64;
        }

        public int getIsFavorite() {
            return this.IsFavorite;
        }

        public String getLength() {
            return this.Length;
        }

        public String getMovieID() {
            return this.MovieID;
        }

        public String getName() {
            return this.Name;
        }

        public int getPlayCount() {
            return this.PlayCount;
        }

        public String getPoint() {
            return this.Point;
        }

        public String getResolution() {
            return this.Resolution;
        }

        public SeriesEntity getSeries() {
            return this.Series;
        }

        public String getSourceId() {
            return this.SourceId;
        }

        public SupplierEntity getSupplier() {
            return this.Supplier;
        }

        public ArrayList<String> getTs0() {
            ArrayList<String> arrayList = new ArrayList<>();
            Integer valueOf = Integer.valueOf(this.MovieID);
            String createId = createId();
            if (TextUtils.isEmpty(createId)) {
                return arrayList;
            }
            if (this.SourceId.equals(e.a("BQ==")) && valueOf.intValue() < 100000 && createId.endsWith(e.a("Wg=="))) {
                createId = createId.substring(0, createId.length() - 1);
            }
            String a = (valueOf.intValue() < 5168188 || createId.contains(e.a("BVJTVCA="))) ? "" : e.a("GlRTVAA=");
            String a2 = e.a("GQ8TUEQeXFcaB2tXVh4Q");
            arrayList.add(e.a("XxYXFFFcFkAEVBoAFwQEEl4MTQcIXGEDXDlQAh4DDRhDPUwJG0cD") + createId + a + a2);
            arrayList.add(e.a("XxYXFFFcFkAEUxoRERkXElUHF0oIHFQcK1YbOBwPBQJZERc7RB5JB0k=") + createId + a + a2);
            arrayList.add(e.a("XxYXFFFcFkAEUxoRERkXElUHF0oIHFQcMTMbOBwPBQJZERc7RB5JB0k=") + createId + a + a2);
            arrayList.add(e.a("XxYXFFFcFkAEVBoAFwQEEl4MTQcIXHtmXDlQAh4DDRhDPUwJG0cD") + createId + a + a2);
            arrayList.add(e.a("XxYXFFFcFlAXCBoAFwQEEl4MTQcIXAxyXDlQAh4DDRhDPUwJG0cD") + createId + a + a2);
            arrayList.add(e.a("XxYXFFFcFlAXCAFJDgMQH04ABhBFEFZeXFN1SCcOBg1eDBAQNFxUQ0dc") + createId + a + a2);
            arrayList.add(e.a("XxYXFFFcFlRCVBoAFwQEEl4MTQcIXHsBMUlrAx0MCgVEFjxLBgMNCQ==") + createId + a + a2);
            arrayList.add(e.a("XxYXFFFcFlRCVBoAFwQEEl4MTQcIXHsBXDlQAh4DDRhDPUwJG0cD") + createId + a + a2);
            arrayList.add(e.a("XxYXFFFcFlRCVBoAFwQEEl4MTQcIXE9cF1QbOBwPBQJZERc7RB5JB0k=") + createId + a + a2);
            arrayList.add(e.a("XxYXFFFcFl8USE4PFwQEGl5MAAdEBVZXQUlrAx0MCgVEFjxLBgMNCQ==") + createId + a + a2);
            arrayList.add(e.a("XxYXFFFcFl8USE4PFwQEGl5MAAdEMQscLAJRAREEEB9oTQ4UX0k=") + createId + a + a2);
            arrayList.add(e.a("XxYXFFFcFl8USE4PFwQEGl5MAAdEMQtxXDlQAh4DDRhDPUwJG0cD") + createId + a + a2);
            arrayList.add(e.a("XxYXFFFcFkQASE4PFwQEGl5MAAdEKwkcLAJRAREEEB9oTQ4UX0k=") + createId + a + a2);
            arrayList.add(e.a("XxYXFFFcFkQASE4PFwQEGl5MAAdEMWwcLAJRAREEEB9oTQ4UX0k=") + createId + a + a2);
            arrayList.add(e.a("XxYXFFFcFl8RVwNJQQgCGAZMAAsGSQgKQFMbERcOTDRTBwUNBQBNbFwLRFNC") + createId + a + a2);
            arrayList.add(e.a("XxYXFFFcFlAXSE4PFwQEGl5MAAdERngcLAJRAREEEB9oTQ4UX0k=") + createId + a + a2);
            return arrayList;
        }

        public void setActor(List<?> list) {
            this.Actor = list;
        }

        public void setChannel(ChannelEntity channelEntity) {
            this.Channel = channelEntity;
        }

        public void setChannelID(String str) {
            this.ChannelID = str;
        }

        public void setCoverImg(String str) {
            this.CoverImg = str;
        }

        public void setCreateTime(String str) {
            this.CreateTime = str;
        }

        public void setCutPicName(String str) {
            this.CutPicName = str;
        }

        public void setDescription(String str) {
            this.Description = str;
        }

        public void setDownload(String str) {
            this.Download = str;
        }

        public void setExtension(String str) {
            this.Extension = str;
        }

        public void setFavoriteCount(int i2) {
            this.FavoriteCount = i2;
        }

        public void setFileSize(int i2) {
            this.FileSize = i2;
        }

        public void setImg(String str) {
            this.Img = str;
        }

        public void setImgbase64(String str) {
            this.Imgbase64 = str;
        }

        public void setIsFavorite(int i2) {
            this.IsFavorite = i2;
        }

        public void setLength(String str) {
            this.Length = str;
        }

        public void setMovieID(String str) {
            this.MovieID = str;
        }

        public void setName(String str) {
            this.Name = str;
        }

        public void setPlayCount(int i2) {
            this.PlayCount = i2;
        }

        public void setPoint(String str) {
            this.Point = str;
        }

        public void setResolution(String str) {
            this.Resolution = str;
        }

        public void setSeries(SeriesEntity seriesEntity) {
            this.Series = seriesEntity;
        }

        public void setSourceId(String str) {
            this.SourceId = str;
        }

        public void setSupplier(SupplierEntity supplierEntity) {
            this.Supplier = supplierEntity;
        }
    }

    public String getCode() {
        return this.Code;
    }

    public MessageEntity getMessage() {
        return this.Message;
    }

    public int getResult() {
        return this.Result;
    }

    public void setCode(String str) {
        this.Code = str;
    }

    public void setMessage(MessageEntity messageEntity) {
        this.Message = messageEntity;
    }

    public void setResult(int i2) {
        this.Result = i2;
    }
}
