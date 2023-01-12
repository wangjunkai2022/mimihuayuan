package com.comeback.data.ui.km2.bean;

import f.e.a.f.k;
import java.util.List;

/* loaded from: classes.dex */
public class AreaBean extends k {
    public int code;
    public DataEntity data;
    public String msg;

    /* loaded from: classes.dex */
    public class DataEntity {
        public AreaLisCityEntity areaList;

        /* loaded from: classes.dex */
        public class AreaLisCityEntity {
            public CityEntity at_city;
            public List<CityEntity> hot;
            public TotalEntity total;

            /* loaded from: classes.dex */
            public class At_CityEntity {
                public String id;
                public String name;

                public At_CityEntity() {
                }

                public String getId() {
                    return this.id;
                }

                public String getName() {
                    return this.name;
                }

                public void setId(String str) {
                    this.id = str;
                }

                public void setName(String str) {
                    this.name = str;
                }
            }

            /* loaded from: classes.dex */
            public class CityEntity {
                public String id;
                public String name;

                public CityEntity() {
                }

                public String getId() {
                    return this.id;
                }

                public String getName() {
                    return this.name;
                }

                public void setId(String str) {
                    this.id = str;
                }

                public void setName(String str) {
                    this.name = str;
                }
            }

            /* loaded from: classes.dex */
            public class TotalEntity {
                public List<CityEntity> A;
                public List<CityEntity> B;
                public List<CityEntity> C;
                public List<CityEntity> D;
                public List<CityEntity> E;
                public List<CityEntity> F;
                public List<CityEntity> G;
                public List<CityEntity> H;
                public List<CityEntity> J;
                public List<CityEntity> K;
                public List<CityEntity> L;
                public List<CityEntity> M;
                public List<CityEntity> N;
                public List<CityEntity> P;
                public List<CityEntity> Q;
                public List<CityEntity> R;
                public List<CityEntity> S;
                public List<CityEntity> T;
                public List<CityEntity> W;
                public List<CityEntity> X;
                public List<CityEntity> Y;
                public List<CityEntity> Z;

                public TotalEntity() {
                }

                public List<CityEntity> getA() {
                    return this.A;
                }

                public List<CityEntity> getB() {
                    return this.B;
                }

                public List<CityEntity> getC() {
                    return this.C;
                }

                public List<CityEntity> getD() {
                    return this.D;
                }

                public List<CityEntity> getE() {
                    return this.E;
                }

                public List<CityEntity> getF() {
                    return this.F;
                }

                public List<CityEntity> getG() {
                    return this.G;
                }

                public List<CityEntity> getH() {
                    return this.H;
                }

                public List<CityEntity> getJ() {
                    return this.J;
                }

                public List<CityEntity> getK() {
                    return this.K;
                }

                public List<CityEntity> getL() {
                    return this.L;
                }

                public List<CityEntity> getM() {
                    return this.M;
                }

                public List<CityEntity> getN() {
                    return this.N;
                }

                public List<CityEntity> getP() {
                    return this.P;
                }

                public List<CityEntity> getQ() {
                    return this.Q;
                }

                public List<CityEntity> getR() {
                    return this.R;
                }

                public List<CityEntity> getS() {
                    return this.S;
                }

                public List<CityEntity> getT() {
                    return this.T;
                }

                public List<CityEntity> getW() {
                    return this.W;
                }

                public List<CityEntity> getX() {
                    return this.X;
                }

                public List<CityEntity> getY() {
                    return this.Y;
                }

                public List<CityEntity> getZ() {
                    return this.Z;
                }

                public void setA(List<CityEntity> list) {
                    this.A = list;
                }

                public void setB(List<CityEntity> list) {
                    this.B = list;
                }

                public void setC(List<CityEntity> list) {
                    this.C = list;
                }

                public void setD(List<CityEntity> list) {
                    this.D = list;
                }

                public void setE(List<CityEntity> list) {
                    this.E = list;
                }

                public void setF(List<CityEntity> list) {
                    this.F = list;
                }

                public void setG(List<CityEntity> list) {
                    this.G = list;
                }

                public void setH(List<CityEntity> list) {
                    this.H = list;
                }

                public void setJ(List<CityEntity> list) {
                    this.J = list;
                }

                public void setK(List<CityEntity> list) {
                    this.K = list;
                }

                public void setL(List<CityEntity> list) {
                    this.L = list;
                }

                public void setM(List<CityEntity> list) {
                    this.M = list;
                }

                public void setN(List<CityEntity> list) {
                    this.N = list;
                }

                public void setP(List<CityEntity> list) {
                    this.P = list;
                }

                public void setQ(List<CityEntity> list) {
                    this.Q = list;
                }

                public void setR(List<CityEntity> list) {
                    this.R = list;
                }

                public void setS(List<CityEntity> list) {
                    this.S = list;
                }

                public void setT(List<CityEntity> list) {
                    this.T = list;
                }

                public void setW(List<CityEntity> list) {
                    this.W = list;
                }

                public void setX(List<CityEntity> list) {
                    this.X = list;
                }

                public void setY(List<CityEntity> list) {
                    this.Y = list;
                }

                public void setZ(List<CityEntity> list) {
                    this.Z = list;
                }
            }

            public AreaLisCityEntity() {
            }

            public CityEntity getAt_city() {
                return this.at_city;
            }

            public List<CityEntity> getHot() {
                return this.hot;
            }

            public TotalEntity getTotal() {
                return this.total;
            }

            public void setAt_city(CityEntity cityEntity) {
                this.at_city = cityEntity;
            }

            public void setHot(List<CityEntity> list) {
                this.hot = list;
            }

            public void setTotal(TotalEntity totalEntity) {
                this.total = totalEntity;
            }
        }

        public DataEntity() {
        }

        public AreaLisCityEntity getAreaList() {
            return this.areaList;
        }

        public void setAreaList(AreaLisCityEntity areaLisCityEntity) {
            this.areaList = areaLisCityEntity;
        }
    }

    public int getCode() {
        return this.code;
    }

    public DataEntity getData() {
        return this.data;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(DataEntity dataEntity) {
        this.data = dataEntity;
    }

    public void setMsg(String str) {
        this.msg = str;
    }
}
