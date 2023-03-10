package com.comeback.data.ui.aimeiju.bean;

import f.b.a.a.a;
import f.e.a.e;
import f.e.a.f.k;
import java.util.List;
/* loaded from: classes.dex */
public class VideoDetail extends k {
    public int code;
    public DataEntity data;

    /* loaded from: classes.dex */
    public class DataEntity {
        public String addtime;
        public String cid;
        public String cion;
        public String cname;
        public int comment_count;
        public String daoyan;
        public int dhits;
        public String diqu;
        public String fid;
        public String hits;
        public String id;
        public String info;
        public int look;
        public int looktime;
        public String name;
        public String pf;
        public String pic;
        public String state;
        public List<?> tags;
        public String text;
        public String type;
        public String vip;
        public String year;
        public String yuyan;
        public String zhuyan;
        public List<ZuEntity> zu;

        /* loaded from: classes.dex */
        public class ZuEntity {
            public int count;
            public int id;
            public List<JiEntity> ji;
            public String ly;
            public String name;

            /* loaded from: classes.dex */
            public class JiEntity {
                public String ext;
                public int id;
                public String name;
                public String purl;

                public JiEntity() {
                }

                public String getExt() {
                    return this.ext;
                }

                public String getFinalUrl() {
                    return this.purl;
                }

                public int getId() {
                    return this.id;
                }

                public String getName() {
                    return this.name;
                }

                public String getPurl() {
                    return this.purl;
                }

                public void setExt(String str) {
                    this.ext = str;
                }

                public void setId(int i2) {
                    this.id = i2;
                }

                public void setName(String str) {
                    this.name = str;
                }

                public void setPurl(String str) {
                    this.purl = str;
                }
            }

            public ZuEntity() {
            }

            public int getCount() {
                return this.count;
            }

            public int getId() {
                return this.id;
            }

            public List<JiEntity> getJi() {
                return this.ji;
            }

            public String getLy() {
                return this.ly;
            }

            public String getName() {
                return this.name;
            }

            public void setCount(int i2) {
                this.count = i2;
            }

            public void setId(int i2) {
                this.id = i2;
            }

            public void setJi(List<JiEntity> list) {
                this.ji = list;
            }

            public void setLy(String str) {
                this.ly = str;
            }

            public void setName(String str) {
                this.name = str;
            }
        }

        public DataEntity() {
        }

        public String getAddtime() {
            return this.addtime;
        }

        public String getAllInfo() {
            StringBuilder sb = new StringBuilder();
            sb.append(e.a("0NPYgfX41o/p"));
            a.B(sb, this.cname, "F0KG+NuWtYmc2q4=");
            a.B(sb, this.diqu, "F0KG3d+Xgo6c2q4=");
            sb.append(this.year);
            return sb.toString();
        }

        public String getCid() {
            return this.cid;
        }

        public String getCion() {
            return this.cion;
        }

        public String getCname() {
            return this.cname;
        }

        public int getComment_count() {
            return this.comment_count;
        }

        public String getDaoyan() {
            return e.a("0s3fgtfn1o/p") + this.daoyan;
        }

        public int getDhits() {
            return this.dhits;
        }

        public String getDiqu() {
            return this.diqu;
        }

        public String getFid() {
            return this.fid;
        }

        public String getHits() {
            return e.a("0fDOgv/N1o/p") + this.hits;
        }

        public String getId() {
            return this.id;
        }

        public String getInfo() {
            return this.info;
        }

        public int getLook() {
            return this.look;
        }

        public int getLooktime() {
            return this.looktime;
        }

        public String getName() {
            return this.name;
        }

        public String getPf() {
            return e.a("39Plg/jQ0Zz3g7zh") + this.pf;
        }

        public String getPic() {
            return this.pic;
        }

        public String getState() {
            return this.state;
        }

        public List<?> getTags() {
            return this.tags;
        }

        public String getText() {
            return this.text;
        }

        public String getType() {
            return this.type;
        }

        public String getVip() {
            return this.vip;
        }

        public String getYear() {
            return this.year;
        }

        public String getYuyan() {
            return this.yuyan;
        }

        public String getZhuyan() {
            return this.zhuyan;
        }

        public List<ZuEntity> getZu() {
            return this.zu;
        }

        public void setAddtime(String str) {
            this.addtime = str;
        }

        public void setCid(String str) {
            this.cid = str;
        }

        public void setCion(String str) {
            this.cion = str;
        }

        public void setCname(String str) {
            this.cname = str;
        }

        public void setComment_count(int i2) {
            this.comment_count = i2;
        }

        public void setDaoyan(String str) {
            this.daoyan = str;
        }

        public void setDhits(int i2) {
            this.dhits = i2;
        }

        public void setDiqu(String str) {
            this.diqu = str;
        }

        public void setFid(String str) {
            this.fid = str;
        }

        public void setHits(String str) {
            this.hits = str;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setInfo(String str) {
            this.info = str;
        }

        public void setLook(int i2) {
            this.look = i2;
        }

        public void setLooktime(int i2) {
            this.looktime = i2;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setPf(String str) {
            this.pf = str;
        }

        public void setPic(String str) {
            this.pic = str;
        }

        public void setState(String str) {
            this.state = str;
        }

        public void setTags(List<?> list) {
            this.tags = list;
        }

        public void setText(String str) {
            this.text = str;
        }

        public void setType(String str) {
            this.type = str;
        }

        public void setVip(String str) {
            this.vip = str;
        }

        public void setYear(String str) {
            this.year = str;
        }

        public void setYuyan(String str) {
            this.yuyan = str;
        }

        public void setZhuyan(String str) {
            this.zhuyan = str;
        }

        public void setZu(List<ZuEntity> list) {
            this.zu = list;
        }
    }

    public int getCode() {
        return this.code;
    }

    public DataEntity getData() {
        return this.data;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(DataEntity dataEntity) {
        this.data = dataEntity;
    }
}
