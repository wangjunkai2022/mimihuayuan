package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.core.app.NotificationCompat;
import com.comeback.data.ui.slf.bean.SLFItemBean;
import g.a.a;
import g.a.e0;
import g.a.e1;
import g.a.f1.c;
import g.a.f1.n;
import g.a.f1.p;
import g.a.g0;
import g.a.k0;
import g.a.m;
import g.a.v;
import g.a.x;
import io.realm.exceptions.RealmException;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.Table;
import io.realm.internal.objectstore.OsObjectBuilder;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy extends SLFItemBean implements n, e1 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public a columnInfo;
    public v<SLFItemBean> proxyState;

    /* loaded from: classes.dex */
    public static final class a extends c {

        /* renamed from: e  reason: collision with root package name */
        public long f6903e;

        /* renamed from: f  reason: collision with root package name */
        public long f6904f;

        /* renamed from: g  reason: collision with root package name */
        public long f6905g;

        /* renamed from: h  reason: collision with root package name */
        public long f6906h;

        /* renamed from: i  reason: collision with root package name */
        public long f6907i;

        /* renamed from: j  reason: collision with root package name */
        public long f6908j;

        /* renamed from: k  reason: collision with root package name */
        public long f6909k;

        /* renamed from: l  reason: collision with root package name */
        public long f6910l;

        /* renamed from: m  reason: collision with root package name */
        public long f6911m;
        public long n;
        public long o;
        public long p;
        public long q;
        public long r;
        public long s;
        public long t;

        public a(OsSchemaInfo osSchemaInfo) {
            super(15, true);
            OsObjectSchemaInfo a = osSchemaInfo.a("SLFItemBean");
            this.f6904f = a("id", "id", a);
            this.f6905g = a("name", "name", a);
            this.f6906h = a("click", "click", a);
            this.f6907i = a("favorite", "favorite", a);
            this.f6908j = a("img", "img", a);
            this.f6909k = a("sale", "sale", a);
            this.f6910l = a("updateTime", "updateTime", a);
            this.f6911m = a("description", "description", a);
            this.n = a("summary", "summary", a);
            this.o = a("point", "point", a);
            this.p = a(NotificationCompat.CATEGORY_STATUS, NotificationCompat.CATEGORY_STATUS, a);
            this.q = a("type", "type", a);
            this.r = a("tagStr", "tagStr", a);
            this.s = a(NotificationCompat.CarExtender.KEY_AUTHOR, NotificationCompat.CarExtender.KEY_AUTHOR, a);
            this.t = a("isVideo", "isVideo", a);
            this.f6903e = a.a();
        }

        @Override // g.a.f1.c
        public final void b(c cVar, c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f6904f = aVar.f6904f;
            aVar2.f6905g = aVar.f6905g;
            aVar2.f6906h = aVar.f6906h;
            aVar2.f6907i = aVar.f6907i;
            aVar2.f6908j = aVar.f6908j;
            aVar2.f6909k = aVar.f6909k;
            aVar2.f6910l = aVar.f6910l;
            aVar2.f6911m = aVar.f6911m;
            aVar2.n = aVar.n;
            aVar2.o = aVar.o;
            aVar2.p = aVar.p;
            aVar2.q = aVar.q;
            aVar2.r = aVar.r;
            aVar2.s = aVar.s;
            aVar2.t = aVar.t;
            aVar2.f6903e = aVar.f6903e;
        }
    }

    public com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy() {
        this.proxyState.b = false;
    }

    public static SLFItemBean copy(x xVar, a aVar, SLFItemBean sLFItemBean, boolean z, Map<e0, n> map, Set<m> set) {
        n nVar = map.get(sLFItemBean);
        if (nVar != null) {
            return (SLFItemBean) nVar;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(xVar.f6317j.e(SLFItemBean.class), aVar.f6903e, set);
        osObjectBuilder.g(aVar.f6904f, sLFItemBean.realmGet$id());
        osObjectBuilder.g(aVar.f6905g, sLFItemBean.realmGet$name());
        osObjectBuilder.g(aVar.f6906h, sLFItemBean.realmGet$click());
        osObjectBuilder.g(aVar.f6907i, sLFItemBean.realmGet$favorite());
        osObjectBuilder.g(aVar.f6908j, sLFItemBean.realmGet$img());
        osObjectBuilder.e(aVar.f6909k, Integer.valueOf(sLFItemBean.realmGet$sale()));
        osObjectBuilder.g(aVar.f6910l, sLFItemBean.realmGet$updateTime());
        osObjectBuilder.g(aVar.f6911m, sLFItemBean.realmGet$description());
        osObjectBuilder.g(aVar.n, sLFItemBean.realmGet$summary());
        osObjectBuilder.e(aVar.o, Integer.valueOf(sLFItemBean.realmGet$point()));
        osObjectBuilder.g(aVar.p, sLFItemBean.realmGet$status());
        osObjectBuilder.e(aVar.q, Integer.valueOf(sLFItemBean.realmGet$type()));
        osObjectBuilder.g(aVar.r, sLFItemBean.realmGet$tagStr());
        osObjectBuilder.g(aVar.s, sLFItemBean.realmGet$author());
        osObjectBuilder.g(aVar.t, sLFItemBean.realmGet$isVideo());
        com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy newProxyInstance = newProxyInstance(xVar, osObjectBuilder.E());
        map.put(sLFItemBean, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x0092  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x009c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.comeback.data.ui.slf.bean.SLFItemBean copyOrUpdate(g.a.x r9, io.realm.com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy.a r10, com.comeback.data.ui.slf.bean.SLFItemBean r11, boolean r12, java.util.Map<g.a.e0, g.a.f1.n> r13, java.util.Set<g.a.m> r14) {
        /*
            boolean r0 = r11 instanceof g.a.f1.n
            if (r0 == 0) goto L_0x0034
            r0 = r11
            g.a.f1.n r0 = (g.a.f1.n) r0
            g.a.v r1 = r0.realmGet$proxyState()
            g.a.a r1 = r1.f6307e
            if (r1 == 0) goto L_0x0034
            g.a.v r0 = r0.realmGet$proxyState()
            g.a.a r0 = r0.f6307e
            long r1 = r0.a
            long r3 = r9.a
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 != 0) goto L_0x002c
            g.a.b0 r0 = r0.b
            java.lang.String r0 = r0.f6197c
            g.a.b0 r1 = r9.b
            java.lang.String r1 = r1.f6197c
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0034
            return r11
        L_0x002c:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.String r10 = "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."
            r9.<init>(r10)
            throw r9
        L_0x0034:
            g.a.a$d r0 = g.a.a.f6189i
            java.lang.Object r0 = r0.get()
            g.a.a$c r0 = (g.a.a.c) r0
            java.lang.Object r1 = r13.get(r11)
            g.a.f1.n r1 = (g.a.f1.n) r1
            if (r1 == 0) goto L_0x0047
            com.comeback.data.ui.slf.bean.SLFItemBean r1 = (com.comeback.data.ui.slf.bean.SLFItemBean) r1
            return r1
        L_0x0047:
            r1 = 0
            r2 = 0
            if (r12 == 0) goto L_0x008e
            java.lang.Class<com.comeback.data.ui.slf.bean.SLFItemBean> r3 = com.comeback.data.ui.slf.bean.SLFItemBean.class
            g.a.k0 r4 = r9.f6317j
            io.realm.internal.Table r3 = r4.e(r3)
            long r4 = r10.f6904f
            java.lang.String r6 = r11.realmGet$id()
            if (r6 != 0) goto L_0x0060
            long r4 = r3.b(r4)
            goto L_0x0064
        L_0x0060:
            long r4 = r3.c(r4, r6)
        L_0x0064:
            r6 = -1
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 != 0) goto L_0x006b
            goto L_0x008f
        L_0x006b:
            io.realm.internal.UncheckedRow r1 = r3.l(r4)     // Catch: all -> 0x0089
            java.util.List r3 = java.util.Collections.emptyList()     // Catch: all -> 0x0089
            r0.a = r9     // Catch: all -> 0x0089
            r0.b = r1     // Catch: all -> 0x0089
            r0.f6194c = r10     // Catch: all -> 0x0089
            r0.f6195d = r2     // Catch: all -> 0x0089
            r0.f6196e = r3     // Catch: all -> 0x0089
            io.realm.com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy r1 = new io.realm.com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy     // Catch: all -> 0x0089
            r1.<init>()     // Catch: all -> 0x0089
            r13.put(r11, r1)     // Catch: all -> 0x0089
            r0.a()
            goto L_0x008e
        L_0x0089:
            r9 = move-exception
            r0.a()
            throw r9
        L_0x008e:
            r2 = r12
        L_0x008f:
            r3 = r1
            if (r2 == 0) goto L_0x009c
            r1 = r9
            r2 = r10
            r4 = r11
            r5 = r13
            r6 = r14
            com.comeback.data.ui.slf.bean.SLFItemBean r9 = update(r1, r2, r3, r4, r5, r6)
            goto L_0x00a0
        L_0x009c:
            com.comeback.data.ui.slf.bean.SLFItemBean r9 = copy(r9, r10, r11, r12, r13, r14)
        L_0x00a0:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy.copyOrUpdate(g.a.x, io.realm.com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a, com.comeback.data.ui.slf.bean.SLFItemBean, boolean, java.util.Map, java.util.Set):com.comeback.data.ui.slf.bean.SLFItemBean");
    }

    public static a createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new a(osSchemaInfo);
    }

    public static SLFItemBean createDetachedCopy(SLFItemBean sLFItemBean, int i2, int i3, Map<e0, n.a<e0>> map) {
        SLFItemBean sLFItemBean2;
        if (i2 > i3 || sLFItemBean == null) {
            return null;
        }
        n.a<e0> aVar = map.get(sLFItemBean);
        if (aVar == null) {
            sLFItemBean2 = new SLFItemBean();
            map.put(sLFItemBean, new n.a<>(i2, sLFItemBean2));
        } else if (i2 >= aVar.a) {
            return (SLFItemBean) aVar.b;
        } else {
            aVar.a = i2;
            sLFItemBean2 = (SLFItemBean) aVar.b;
        }
        sLFItemBean2.realmSet$id(sLFItemBean.realmGet$id());
        sLFItemBean2.realmSet$name(sLFItemBean.realmGet$name());
        sLFItemBean2.realmSet$click(sLFItemBean.realmGet$click());
        sLFItemBean2.realmSet$favorite(sLFItemBean.realmGet$favorite());
        sLFItemBean2.realmSet$img(sLFItemBean.realmGet$img());
        sLFItemBean2.realmSet$sale(sLFItemBean.realmGet$sale());
        sLFItemBean2.realmSet$updateTime(sLFItemBean.realmGet$updateTime());
        sLFItemBean2.realmSet$description(sLFItemBean.realmGet$description());
        sLFItemBean2.realmSet$summary(sLFItemBean.realmGet$summary());
        sLFItemBean2.realmSet$point(sLFItemBean.realmGet$point());
        sLFItemBean2.realmSet$status(sLFItemBean.realmGet$status());
        sLFItemBean2.realmSet$type(sLFItemBean.realmGet$type());
        sLFItemBean2.realmSet$tagStr(sLFItemBean.realmGet$tagStr());
        sLFItemBean2.realmSet$author(sLFItemBean.realmGet$author());
        sLFItemBean2.realmSet$isVideo(sLFItemBean.realmGet$isVideo());
        return sLFItemBean2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.b bVar = new OsObjectSchemaInfo.b("SLFItemBean", 15, 0);
        bVar.a("id", RealmFieldType.STRING, true, true, false);
        bVar.a("name", RealmFieldType.STRING, false, false, false);
        bVar.a("click", RealmFieldType.STRING, false, false, false);
        bVar.a("favorite", RealmFieldType.STRING, false, false, false);
        bVar.a("img", RealmFieldType.STRING, false, false, false);
        bVar.a("sale", RealmFieldType.INTEGER, false, false, true);
        bVar.a("updateTime", RealmFieldType.STRING, false, false, false);
        bVar.a("description", RealmFieldType.STRING, false, false, false);
        bVar.a("summary", RealmFieldType.STRING, false, false, false);
        bVar.a("point", RealmFieldType.INTEGER, false, false, true);
        bVar.a(NotificationCompat.CATEGORY_STATUS, RealmFieldType.STRING, false, false, false);
        bVar.a("type", RealmFieldType.INTEGER, false, false, true);
        bVar.a("tagStr", RealmFieldType.STRING, false, false, false);
        bVar.a(NotificationCompat.CarExtender.KEY_AUTHOR, RealmFieldType.STRING, false, false, false);
        bVar.a("isVideo", RealmFieldType.STRING, false, false, false);
        return bVar.b();
    }

    /* JADX WARNING: Removed duplicated region for block: B:103:0x01e4  */
    /* JADX WARNING: Removed duplicated region for block: B:109:0x01fd  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0074  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00a9  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00c2  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00db  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00f4  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x010d  */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x012b  */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x0144  */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x015d  */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x0176  */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x0194  */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x01ad  */
    /* JADX WARNING: Removed duplicated region for block: B:97:0x01cb  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.comeback.data.ui.slf.bean.SLFItemBean createOrUpdateUsingJsonObject(g.a.x r8, org.json.JSONObject r9, boolean r10) throws org.json.JSONException {
        /*
        // Method dump skipped, instructions count: 527
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy.createOrUpdateUsingJsonObject(g.a.x, org.json.JSONObject, boolean):com.comeback.data.ui.slf.bean.SLFItemBean");
    }

    @TargetApi(11)
    public static SLFItemBean createUsingJsonStream(x xVar, JsonReader jsonReader) throws IOException {
        SLFItemBean sLFItemBean = new SLFItemBean();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    sLFItemBean.realmSet$id(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    sLFItemBean.realmSet$id(null);
                }
                z = true;
            } else if (nextName.equals("name")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    sLFItemBean.realmSet$name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    sLFItemBean.realmSet$name(null);
                }
            } else if (nextName.equals("click")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    sLFItemBean.realmSet$click(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    sLFItemBean.realmSet$click(null);
                }
            } else if (nextName.equals("favorite")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    sLFItemBean.realmSet$favorite(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    sLFItemBean.realmSet$favorite(null);
                }
            } else if (nextName.equals("img")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    sLFItemBean.realmSet$img(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    sLFItemBean.realmSet$img(null);
                }
            } else if (nextName.equals("sale")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    sLFItemBean.realmSet$sale(jsonReader.nextInt());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'sale' to null.");
                }
            } else if (nextName.equals("updateTime")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    sLFItemBean.realmSet$updateTime(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    sLFItemBean.realmSet$updateTime(null);
                }
            } else if (nextName.equals("description")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    sLFItemBean.realmSet$description(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    sLFItemBean.realmSet$description(null);
                }
            } else if (nextName.equals("summary")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    sLFItemBean.realmSet$summary(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    sLFItemBean.realmSet$summary(null);
                }
            } else if (nextName.equals("point")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    sLFItemBean.realmSet$point(jsonReader.nextInt());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'point' to null.");
                }
            } else if (nextName.equals(NotificationCompat.CATEGORY_STATUS)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    sLFItemBean.realmSet$status(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    sLFItemBean.realmSet$status(null);
                }
            } else if (nextName.equals("type")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    sLFItemBean.realmSet$type(jsonReader.nextInt());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'type' to null.");
                }
            } else if (nextName.equals("tagStr")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    sLFItemBean.realmSet$tagStr(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    sLFItemBean.realmSet$tagStr(null);
                }
            } else if (nextName.equals(NotificationCompat.CarExtender.KEY_AUTHOR)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    sLFItemBean.realmSet$author(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    sLFItemBean.realmSet$author(null);
                }
            } else if (!nextName.equals("isVideo")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                sLFItemBean.realmSet$isVideo(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                sLFItemBean.realmSet$isVideo(null);
            }
        }
        jsonReader.endObject();
        if (z) {
            return (SLFItemBean) xVar.L(sLFItemBean, new m[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "SLFItemBean";
    }

    public static long insert(x xVar, SLFItemBean sLFItemBean, Map<e0, Long> map) {
        long j2;
        if (sLFItemBean instanceof n) {
            n nVar = (n) sLFItemBean;
            if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                return nVar.realmGet$proxyState().f6305c.l();
            }
        }
        Table e2 = xVar.f6317j.e(SLFItemBean.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(SLFItemBean.class);
        long j4 = aVar.f6904f;
        String realmGet$id = sLFItemBean.realmGet$id();
        if (realmGet$id == null) {
            j2 = Table.nativeFindFirstNull(j3, j4);
        } else {
            j2 = Table.nativeFindFirstString(j3, j4, realmGet$id);
        }
        if (j2 == -1) {
            long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j4, realmGet$id);
            map.put(sLFItemBean, Long.valueOf(createRowWithPrimaryKey));
            String realmGet$name = sLFItemBean.realmGet$name();
            if (realmGet$name != null) {
                Table.nativeSetString(j3, aVar.f6905g, createRowWithPrimaryKey, realmGet$name, false);
            }
            String realmGet$click = sLFItemBean.realmGet$click();
            if (realmGet$click != null) {
                Table.nativeSetString(j3, aVar.f6906h, createRowWithPrimaryKey, realmGet$click, false);
            }
            String realmGet$favorite = sLFItemBean.realmGet$favorite();
            if (realmGet$favorite != null) {
                Table.nativeSetString(j3, aVar.f6907i, createRowWithPrimaryKey, realmGet$favorite, false);
            }
            String realmGet$img = sLFItemBean.realmGet$img();
            if (realmGet$img != null) {
                Table.nativeSetString(j3, aVar.f6908j, createRowWithPrimaryKey, realmGet$img, false);
            }
            Table.nativeSetLong(j3, aVar.f6909k, createRowWithPrimaryKey, (long) sLFItemBean.realmGet$sale(), false);
            String realmGet$updateTime = sLFItemBean.realmGet$updateTime();
            if (realmGet$updateTime != null) {
                Table.nativeSetString(j3, aVar.f6910l, createRowWithPrimaryKey, realmGet$updateTime, false);
            }
            String realmGet$description = sLFItemBean.realmGet$description();
            if (realmGet$description != null) {
                Table.nativeSetString(j3, aVar.f6911m, createRowWithPrimaryKey, realmGet$description, false);
            }
            String realmGet$summary = sLFItemBean.realmGet$summary();
            if (realmGet$summary != null) {
                Table.nativeSetString(j3, aVar.n, createRowWithPrimaryKey, realmGet$summary, false);
            }
            Table.nativeSetLong(j3, aVar.o, createRowWithPrimaryKey, (long) sLFItemBean.realmGet$point(), false);
            String realmGet$status = sLFItemBean.realmGet$status();
            if (realmGet$status != null) {
                Table.nativeSetString(j3, aVar.p, createRowWithPrimaryKey, realmGet$status, false);
            }
            Table.nativeSetLong(j3, aVar.q, createRowWithPrimaryKey, (long) sLFItemBean.realmGet$type(), false);
            String realmGet$tagStr = sLFItemBean.realmGet$tagStr();
            if (realmGet$tagStr != null) {
                Table.nativeSetString(j3, aVar.r, createRowWithPrimaryKey, realmGet$tagStr, false);
            }
            String realmGet$author = sLFItemBean.realmGet$author();
            if (realmGet$author != null) {
                Table.nativeSetString(j3, aVar.s, createRowWithPrimaryKey, realmGet$author, false);
            }
            String realmGet$isVideo = sLFItemBean.realmGet$isVideo();
            if (realmGet$isVideo != null) {
                Table.nativeSetString(j3, aVar.t, createRowWithPrimaryKey, realmGet$isVideo, false);
            }
            return createRowWithPrimaryKey;
        }
        Table.s(realmGet$id);
        throw null;
    }

    public static long insertOrUpdate(x xVar, SLFItemBean sLFItemBean, Map<e0, Long> map) {
        long j2;
        if (sLFItemBean instanceof n) {
            n nVar = (n) sLFItemBean;
            if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                return nVar.realmGet$proxyState().f6305c.l();
            }
        }
        Table e2 = xVar.f6317j.e(SLFItemBean.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(SLFItemBean.class);
        long j4 = aVar.f6904f;
        String realmGet$id = sLFItemBean.realmGet$id();
        if (realmGet$id == null) {
            j2 = Table.nativeFindFirstNull(j3, j4);
        } else {
            j2 = Table.nativeFindFirstString(j3, j4, realmGet$id);
        }
        if (j2 == -1) {
            j2 = OsObject.createRowWithPrimaryKey(e2, j4, realmGet$id);
        }
        map.put(sLFItemBean, Long.valueOf(j2));
        String realmGet$name = sLFItemBean.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(j3, aVar.f6905g, j2, realmGet$name, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6905g, j2, false);
        }
        String realmGet$click = sLFItemBean.realmGet$click();
        if (realmGet$click != null) {
            Table.nativeSetString(j3, aVar.f6906h, j2, realmGet$click, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6906h, j2, false);
        }
        String realmGet$favorite = sLFItemBean.realmGet$favorite();
        if (realmGet$favorite != null) {
            Table.nativeSetString(j3, aVar.f6907i, j2, realmGet$favorite, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6907i, j2, false);
        }
        String realmGet$img = sLFItemBean.realmGet$img();
        if (realmGet$img != null) {
            Table.nativeSetString(j3, aVar.f6908j, j2, realmGet$img, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6908j, j2, false);
        }
        Table.nativeSetLong(j3, aVar.f6909k, j2, (long) sLFItemBean.realmGet$sale(), false);
        String realmGet$updateTime = sLFItemBean.realmGet$updateTime();
        if (realmGet$updateTime != null) {
            Table.nativeSetString(j3, aVar.f6910l, j2, realmGet$updateTime, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6910l, j2, false);
        }
        String realmGet$description = sLFItemBean.realmGet$description();
        if (realmGet$description != null) {
            Table.nativeSetString(j3, aVar.f6911m, j2, realmGet$description, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6911m, j2, false);
        }
        String realmGet$summary = sLFItemBean.realmGet$summary();
        if (realmGet$summary != null) {
            Table.nativeSetString(j3, aVar.n, j2, realmGet$summary, false);
        } else {
            Table.nativeSetNull(j3, aVar.n, j2, false);
        }
        Table.nativeSetLong(j3, aVar.o, j2, (long) sLFItemBean.realmGet$point(), false);
        String realmGet$status = sLFItemBean.realmGet$status();
        if (realmGet$status != null) {
            Table.nativeSetString(j3, aVar.p, j2, realmGet$status, false);
        } else {
            Table.nativeSetNull(j3, aVar.p, j2, false);
        }
        Table.nativeSetLong(j3, aVar.q, j2, (long) sLFItemBean.realmGet$type(), false);
        String realmGet$tagStr = sLFItemBean.realmGet$tagStr();
        if (realmGet$tagStr != null) {
            Table.nativeSetString(j3, aVar.r, j2, realmGet$tagStr, false);
        } else {
            Table.nativeSetNull(j3, aVar.r, j2, false);
        }
        String realmGet$author = sLFItemBean.realmGet$author();
        if (realmGet$author != null) {
            Table.nativeSetString(j3, aVar.s, j2, realmGet$author, false);
        } else {
            Table.nativeSetNull(j3, aVar.s, j2, false);
        }
        String realmGet$isVideo = sLFItemBean.realmGet$isVideo();
        if (realmGet$isVideo != null) {
            Table.nativeSetString(j3, aVar.t, j2, realmGet$isVideo, false);
        } else {
            Table.nativeSetNull(j3, aVar.t, j2, false);
        }
        return j2;
    }

    public static com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy newProxyInstance(g.a.a aVar, p pVar) {
        a.c cVar = g.a.a.f6189i.get();
        k0 G = aVar.G();
        G.a();
        c a2 = G.f6286f.a(SLFItemBean.class);
        List<String> emptyList = Collections.emptyList();
        cVar.a = aVar;
        cVar.b = pVar;
        cVar.f6194c = a2;
        cVar.f6195d = false;
        cVar.f6196e = emptyList;
        com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy com_comeback_data_ui_slf_bean_slfitembeanrealmproxy = new com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy();
        cVar.a();
        return com_comeback_data_ui_slf_bean_slfitembeanrealmproxy;
    }

    public static SLFItemBean update(x xVar, a aVar, SLFItemBean sLFItemBean, SLFItemBean sLFItemBean2, Map<e0, n> map, Set<m> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(xVar.f6317j.e(SLFItemBean.class), aVar.f6903e, set);
        osObjectBuilder.g(aVar.f6904f, sLFItemBean2.realmGet$id());
        osObjectBuilder.g(aVar.f6905g, sLFItemBean2.realmGet$name());
        osObjectBuilder.g(aVar.f6906h, sLFItemBean2.realmGet$click());
        osObjectBuilder.g(aVar.f6907i, sLFItemBean2.realmGet$favorite());
        osObjectBuilder.g(aVar.f6908j, sLFItemBean2.realmGet$img());
        osObjectBuilder.e(aVar.f6909k, Integer.valueOf(sLFItemBean2.realmGet$sale()));
        osObjectBuilder.g(aVar.f6910l, sLFItemBean2.realmGet$updateTime());
        osObjectBuilder.g(aVar.f6911m, sLFItemBean2.realmGet$description());
        osObjectBuilder.g(aVar.n, sLFItemBean2.realmGet$summary());
        osObjectBuilder.e(aVar.o, Integer.valueOf(sLFItemBean2.realmGet$point()));
        osObjectBuilder.g(aVar.p, sLFItemBean2.realmGet$status());
        osObjectBuilder.e(aVar.q, Integer.valueOf(sLFItemBean2.realmGet$type()));
        osObjectBuilder.g(aVar.r, sLFItemBean2.realmGet$tagStr());
        osObjectBuilder.g(aVar.s, sLFItemBean2.realmGet$author());
        osObjectBuilder.g(aVar.t, sLFItemBean2.realmGet$isVideo());
        osObjectBuilder.F();
        return sLFItemBean;
    }

    @Override // java.lang.Object
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy com_comeback_data_ui_slf_bean_slfitembeanrealmproxy = (com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy) obj;
        String str = this.proxyState.f6307e.b.f6197c;
        String str2 = com_comeback_data_ui_slf_bean_slfitembeanrealmproxy.proxyState.f6307e.b.f6197c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        String j2 = this.proxyState.f6305c.d().j();
        String j3 = com_comeback_data_ui_slf_bean_slfitembeanrealmproxy.proxyState.f6305c.d().j();
        if (j2 == null ? j3 == null : j2.equals(j3)) {
            return this.proxyState.f6305c.l() == com_comeback_data_ui_slf_bean_slfitembeanrealmproxy.proxyState.f6305c.l();
        }
        return false;
    }

    @Override // java.lang.Object
    public int hashCode() {
        v<SLFItemBean> vVar = this.proxyState;
        String str = vVar.f6307e.b.f6197c;
        String j2 = vVar.f6305c.d().j();
        long l2 = this.proxyState.f6305c.l();
        int i2 = 0;
        int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        if (j2 != null) {
            i2 = j2.hashCode();
        }
        return ((hashCode + i2) * 31) + ((int) ((l2 >>> 32) ^ l2));
    }

    @Override // g.a.f1.n
    public void realm$injectObjectContext() {
        if (this.proxyState == null) {
            a.c cVar = g.a.a.f6189i.get();
            this.columnInfo = (a) cVar.f6194c;
            v<SLFItemBean> vVar = new v<>(this);
            this.proxyState = vVar;
            vVar.f6307e = cVar.a;
            vVar.f6305c = cVar.b;
            vVar.f6308f = cVar.f6195d;
            if (vVar == null) {
                throw null;
            }
        }
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public String realmGet$author() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.s);
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public String realmGet$click() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6906h);
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public String realmGet$description() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6911m);
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public String realmGet$favorite() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6907i);
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public String realmGet$id() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6904f);
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public String realmGet$img() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6908j);
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public String realmGet$isVideo() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.t);
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public String realmGet$name() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6905g);
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public int realmGet$point() {
        this.proxyState.f6307e.f();
        return (int) this.proxyState.f6305c.p(this.columnInfo.o);
    }

    @Override // g.a.f1.n
    public v<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public int realmGet$sale() {
        this.proxyState.f6307e.f();
        return (int) this.proxyState.f6305c.p(this.columnInfo.f6909k);
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public String realmGet$status() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.p);
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public String realmGet$summary() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.n);
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public String realmGet$tagStr() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.r);
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public int realmGet$type() {
        this.proxyState.f6307e.f();
        return (int) this.proxyState.f6305c.p(this.columnInfo.q);
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public String realmGet$updateTime() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6910l);
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public void realmSet$author(String str) {
        v<SLFItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.s);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.s, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.s, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.s, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public void realmSet$click(String str) {
        v<SLFItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6906h);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6906h, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6906h, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6906h, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public void realmSet$description(String str) {
        v<SLFItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6911m);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6911m, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6911m, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6911m, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public void realmSet$favorite(String str) {
        v<SLFItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6907i);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6907i, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6907i, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6907i, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public void realmSet$id(String str) {
        v<SLFItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
        }
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public void realmSet$img(String str) {
        v<SLFItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6908j);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6908j, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6908j, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6908j, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public void realmSet$isVideo(String str) {
        v<SLFItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.t);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.t, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.t, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.t, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public void realmSet$name(String str) {
        v<SLFItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6905g);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6905g, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6905g, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6905g, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public void realmSet$point(int i2) {
        v<SLFItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            this.proxyState.f6305c.u(this.columnInfo.o, (long) i2);
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            pVar.d().p(this.columnInfo.o, pVar.l(), (long) i2, true);
        }
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public void realmSet$sale(int i2) {
        v<SLFItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            this.proxyState.f6305c.u(this.columnInfo.f6909k, (long) i2);
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            pVar.d().p(this.columnInfo.f6909k, pVar.l(), (long) i2, true);
        }
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public void realmSet$status(String str) {
        v<SLFItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.p);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.p, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.p, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.p, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public void realmSet$summary(String str) {
        v<SLFItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.n);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.n, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.n, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.n, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public void realmSet$tagStr(String str) {
        v<SLFItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.r);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.r, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.r, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.r, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public void realmSet$type(int i2) {
        v<SLFItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            this.proxyState.f6305c.u(this.columnInfo.q, (long) i2);
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            pVar.d().p(this.columnInfo.q, pVar.l(), (long) i2, true);
        }
    }

    @Override // com.comeback.data.ui.slf.bean.SLFItemBean, g.a.e1
    public void realmSet$updateTime(String str) {
        v<SLFItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6910l);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6910l, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6910l, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6910l, pVar.l(), str, true);
            }
        }
    }

    @Override // java.lang.Object
    public String toString() {
        if (!g0.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder q = f.b.a.a.a.q("SLFItemBean = proxy[", "{id:");
        String str = "null";
        f.b.a.a.a.C(q, realmGet$id() != null ? realmGet$id() : str, "}", ",", "{name:");
        f.b.a.a.a.C(q, realmGet$name() != null ? realmGet$name() : str, "}", ",", "{click:");
        f.b.a.a.a.C(q, realmGet$click() != null ? realmGet$click() : str, "}", ",", "{favorite:");
        f.b.a.a.a.C(q, realmGet$favorite() != null ? realmGet$favorite() : str, "}", ",", "{img:");
        f.b.a.a.a.C(q, realmGet$img() != null ? realmGet$img() : str, "}", ",", "{sale:");
        q.append(realmGet$sale());
        q.append("}");
        q.append(",");
        q.append("{updateTime:");
        f.b.a.a.a.C(q, realmGet$updateTime() != null ? realmGet$updateTime() : str, "}", ",", "{description:");
        f.b.a.a.a.C(q, realmGet$description() != null ? realmGet$description() : str, "}", ",", "{summary:");
        f.b.a.a.a.C(q, realmGet$summary() != null ? realmGet$summary() : str, "}", ",", "{point:");
        q.append(realmGet$point());
        q.append("}");
        q.append(",");
        q.append("{status:");
        f.b.a.a.a.C(q, realmGet$status() != null ? realmGet$status() : str, "}", ",", "{type:");
        q.append(realmGet$type());
        q.append("}");
        q.append(",");
        q.append("{tagStr:");
        f.b.a.a.a.C(q, realmGet$tagStr() != null ? realmGet$tagStr() : str, "}", ",", "{author:");
        f.b.a.a.a.C(q, realmGet$author() != null ? realmGet$author() : str, "}", ",", "{isVideo:");
        if (realmGet$isVideo() != null) {
            str = realmGet$isVideo();
        }
        q.append(str);
        q.append("}");
        q.append("]");
        return q.toString();
    }

    public static void insert(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long j2;
        long j3;
        Table e2 = xVar.f6317j.e(SLFItemBean.class);
        long j4 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(SLFItemBean.class);
        long j5 = aVar.f6904f;
        while (it.hasNext()) {
            SLFItemBean sLFItemBean = (SLFItemBean) it.next();
            if (!map.containsKey(sLFItemBean)) {
                if (sLFItemBean instanceof n) {
                    n nVar = (n) sLFItemBean;
                    if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                        map.put(sLFItemBean, Long.valueOf(nVar.realmGet$proxyState().f6305c.l()));
                    }
                }
                String realmGet$id = sLFItemBean.realmGet$id();
                if (realmGet$id == null) {
                    j2 = Table.nativeFindFirstNull(j4, j5);
                } else {
                    j2 = Table.nativeFindFirstString(j4, j5, realmGet$id);
                }
                if (j2 == -1) {
                    long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j5, realmGet$id);
                    map.put(sLFItemBean, Long.valueOf(createRowWithPrimaryKey));
                    String realmGet$name = sLFItemBean.realmGet$name();
                    if (realmGet$name != null) {
                        j3 = j5;
                        Table.nativeSetString(j4, aVar.f6905g, createRowWithPrimaryKey, realmGet$name, false);
                    } else {
                        j3 = j5;
                    }
                    String realmGet$click = sLFItemBean.realmGet$click();
                    if (realmGet$click != null) {
                        Table.nativeSetString(j4, aVar.f6906h, createRowWithPrimaryKey, realmGet$click, false);
                    }
                    String realmGet$favorite = sLFItemBean.realmGet$favorite();
                    if (realmGet$favorite != null) {
                        Table.nativeSetString(j4, aVar.f6907i, createRowWithPrimaryKey, realmGet$favorite, false);
                    }
                    String realmGet$img = sLFItemBean.realmGet$img();
                    if (realmGet$img != null) {
                        Table.nativeSetString(j4, aVar.f6908j, createRowWithPrimaryKey, realmGet$img, false);
                    }
                    Table.nativeSetLong(j4, aVar.f6909k, createRowWithPrimaryKey, (long) sLFItemBean.realmGet$sale(), false);
                    String realmGet$updateTime = sLFItemBean.realmGet$updateTime();
                    if (realmGet$updateTime != null) {
                        Table.nativeSetString(j4, aVar.f6910l, createRowWithPrimaryKey, realmGet$updateTime, false);
                    }
                    String realmGet$description = sLFItemBean.realmGet$description();
                    if (realmGet$description != null) {
                        Table.nativeSetString(j4, aVar.f6911m, createRowWithPrimaryKey, realmGet$description, false);
                    }
                    String realmGet$summary = sLFItemBean.realmGet$summary();
                    if (realmGet$summary != null) {
                        Table.nativeSetString(j4, aVar.n, createRowWithPrimaryKey, realmGet$summary, false);
                    }
                    Table.nativeSetLong(j4, aVar.o, createRowWithPrimaryKey, (long) sLFItemBean.realmGet$point(), false);
                    String realmGet$status = sLFItemBean.realmGet$status();
                    if (realmGet$status != null) {
                        Table.nativeSetString(j4, aVar.p, createRowWithPrimaryKey, realmGet$status, false);
                    }
                    Table.nativeSetLong(j4, aVar.q, createRowWithPrimaryKey, (long) sLFItemBean.realmGet$type(), false);
                    String realmGet$tagStr = sLFItemBean.realmGet$tagStr();
                    if (realmGet$tagStr != null) {
                        Table.nativeSetString(j4, aVar.r, createRowWithPrimaryKey, realmGet$tagStr, false);
                    }
                    String realmGet$author = sLFItemBean.realmGet$author();
                    if (realmGet$author != null) {
                        Table.nativeSetString(j4, aVar.s, createRowWithPrimaryKey, realmGet$author, false);
                    }
                    String realmGet$isVideo = sLFItemBean.realmGet$isVideo();
                    if (realmGet$isVideo != null) {
                        Table.nativeSetString(j4, aVar.t, createRowWithPrimaryKey, realmGet$isVideo, false);
                    }
                    j5 = j3;
                } else {
                    Table.s(realmGet$id);
                    throw null;
                }
            }
        }
    }

    public static void insertOrUpdate(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long j2;
        long j3;
        Table e2 = xVar.f6317j.e(SLFItemBean.class);
        long j4 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(SLFItemBean.class);
        long j5 = aVar.f6904f;
        while (it.hasNext()) {
            SLFItemBean sLFItemBean = (SLFItemBean) it.next();
            if (!map.containsKey(sLFItemBean)) {
                if (sLFItemBean instanceof n) {
                    n nVar = (n) sLFItemBean;
                    if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                        map.put(sLFItemBean, Long.valueOf(nVar.realmGet$proxyState().f6305c.l()));
                    }
                }
                String realmGet$id = sLFItemBean.realmGet$id();
                if (realmGet$id == null) {
                    j2 = Table.nativeFindFirstNull(j4, j5);
                } else {
                    j2 = Table.nativeFindFirstString(j4, j5, realmGet$id);
                }
                long createRowWithPrimaryKey = j2 == -1 ? OsObject.createRowWithPrimaryKey(e2, j5, realmGet$id) : j2;
                map.put(sLFItemBean, Long.valueOf(createRowWithPrimaryKey));
                String realmGet$name = sLFItemBean.realmGet$name();
                if (realmGet$name != null) {
                    j3 = j5;
                    Table.nativeSetString(j4, aVar.f6905g, createRowWithPrimaryKey, realmGet$name, false);
                } else {
                    j3 = j5;
                    Table.nativeSetNull(j4, aVar.f6905g, createRowWithPrimaryKey, false);
                }
                String realmGet$click = sLFItemBean.realmGet$click();
                if (realmGet$click != null) {
                    Table.nativeSetString(j4, aVar.f6906h, createRowWithPrimaryKey, realmGet$click, false);
                } else {
                    Table.nativeSetNull(j4, aVar.f6906h, createRowWithPrimaryKey, false);
                }
                String realmGet$favorite = sLFItemBean.realmGet$favorite();
                if (realmGet$favorite != null) {
                    Table.nativeSetString(j4, aVar.f6907i, createRowWithPrimaryKey, realmGet$favorite, false);
                } else {
                    Table.nativeSetNull(j4, aVar.f6907i, createRowWithPrimaryKey, false);
                }
                String realmGet$img = sLFItemBean.realmGet$img();
                if (realmGet$img != null) {
                    Table.nativeSetString(j4, aVar.f6908j, createRowWithPrimaryKey, realmGet$img, false);
                } else {
                    Table.nativeSetNull(j4, aVar.f6908j, createRowWithPrimaryKey, false);
                }
                Table.nativeSetLong(j4, aVar.f6909k, createRowWithPrimaryKey, (long) sLFItemBean.realmGet$sale(), false);
                String realmGet$updateTime = sLFItemBean.realmGet$updateTime();
                if (realmGet$updateTime != null) {
                    Table.nativeSetString(j4, aVar.f6910l, createRowWithPrimaryKey, realmGet$updateTime, false);
                } else {
                    Table.nativeSetNull(j4, aVar.f6910l, createRowWithPrimaryKey, false);
                }
                String realmGet$description = sLFItemBean.realmGet$description();
                if (realmGet$description != null) {
                    Table.nativeSetString(j4, aVar.f6911m, createRowWithPrimaryKey, realmGet$description, false);
                } else {
                    Table.nativeSetNull(j4, aVar.f6911m, createRowWithPrimaryKey, false);
                }
                String realmGet$summary = sLFItemBean.realmGet$summary();
                if (realmGet$summary != null) {
                    Table.nativeSetString(j4, aVar.n, createRowWithPrimaryKey, realmGet$summary, false);
                } else {
                    Table.nativeSetNull(j4, aVar.n, createRowWithPrimaryKey, false);
                }
                Table.nativeSetLong(j4, aVar.o, createRowWithPrimaryKey, (long) sLFItemBean.realmGet$point(), false);
                String realmGet$status = sLFItemBean.realmGet$status();
                if (realmGet$status != null) {
                    Table.nativeSetString(j4, aVar.p, createRowWithPrimaryKey, realmGet$status, false);
                } else {
                    Table.nativeSetNull(j4, aVar.p, createRowWithPrimaryKey, false);
                }
                Table.nativeSetLong(j4, aVar.q, createRowWithPrimaryKey, (long) sLFItemBean.realmGet$type(), false);
                String realmGet$tagStr = sLFItemBean.realmGet$tagStr();
                if (realmGet$tagStr != null) {
                    Table.nativeSetString(j4, aVar.r, createRowWithPrimaryKey, realmGet$tagStr, false);
                } else {
                    Table.nativeSetNull(j4, aVar.r, createRowWithPrimaryKey, false);
                }
                String realmGet$author = sLFItemBean.realmGet$author();
                if (realmGet$author != null) {
                    Table.nativeSetString(j4, aVar.s, createRowWithPrimaryKey, realmGet$author, false);
                } else {
                    Table.nativeSetNull(j4, aVar.s, createRowWithPrimaryKey, false);
                }
                String realmGet$isVideo = sLFItemBean.realmGet$isVideo();
                if (realmGet$isVideo != null) {
                    Table.nativeSetString(j4, aVar.t, createRowWithPrimaryKey, realmGet$isVideo, false);
                } else {
                    Table.nativeSetNull(j4, aVar.t, createRowWithPrimaryKey, false);
                }
                j5 = j3;
            }
        }
    }
}
