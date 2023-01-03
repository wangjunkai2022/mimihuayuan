package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.comeback.data.ui.lutube.bean.LVideosBean;
import g.a.a;
import g.a.a1;
import g.a.e0;
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
public class com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy extends LVideosBean implements n, a1 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public a columnInfo;
    public v<LVideosBean> proxyState;

    /* loaded from: classes.dex */
    public static final class a extends c {

        /* renamed from: e  reason: collision with root package name */
        public long f6874e;

        /* renamed from: f  reason: collision with root package name */
        public long f6875f;

        /* renamed from: g  reason: collision with root package name */
        public long f6876g;

        /* renamed from: h  reason: collision with root package name */
        public long f6877h;

        /* renamed from: i  reason: collision with root package name */
        public long f6878i;

        /* renamed from: j  reason: collision with root package name */
        public long f6879j;

        /* renamed from: k  reason: collision with root package name */
        public long f6880k;

        /* renamed from: l  reason: collision with root package name */
        public long f6881l;

        /* renamed from: m  reason: collision with root package name */
        public long f6882m;
        public long n;

        public a(OsSchemaInfo osSchemaInfo) {
            super(9, true);
            OsObjectSchemaInfo a = osSchemaInfo.a("LVideosBean");
            this.f6875f = a("video_id", "video_id", a);
            this.f6876g = a("video_title", "video_title", a);
            this.f6877h = a("actor", "actor", a);
            this.f6878i = a("thumb", "thumb", a);
            this.f6879j = a("cover", "cover", a);
            this.f6880k = a("upload_date", "upload_date", a);
            this.f6881l = a("release_date", "release_date", a);
            this.f6882m = a("video_duration", "video_duration", a);
            this.n = a("video_like", "video_like", a);
            this.f6874e = a.a();
        }

        @Override // g.a.f1.c
        public final void b(c cVar, c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f6875f = aVar.f6875f;
            aVar2.f6876g = aVar.f6876g;
            aVar2.f6877h = aVar.f6877h;
            aVar2.f6878i = aVar.f6878i;
            aVar2.f6879j = aVar.f6879j;
            aVar2.f6880k = aVar.f6880k;
            aVar2.f6881l = aVar.f6881l;
            aVar2.f6882m = aVar.f6882m;
            aVar2.n = aVar.n;
            aVar2.f6874e = aVar.f6874e;
        }
    }

    public com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy() {
        this.proxyState.b = false;
    }

    public static LVideosBean copy(x xVar, a aVar, LVideosBean lVideosBean, boolean z, Map<e0, n> map, Set<m> set) {
        n nVar = map.get(lVideosBean);
        if (nVar != null) {
            return (LVideosBean) nVar;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(xVar.f6317j.e(LVideosBean.class), aVar.f6874e, set);
        osObjectBuilder.g(aVar.f6875f, lVideosBean.realmGet$video_id());
        osObjectBuilder.g(aVar.f6876g, lVideosBean.realmGet$video_title());
        osObjectBuilder.g(aVar.f6877h, lVideosBean.realmGet$actor());
        osObjectBuilder.g(aVar.f6878i, lVideosBean.realmGet$thumb());
        osObjectBuilder.g(aVar.f6879j, lVideosBean.realmGet$cover());
        osObjectBuilder.f(aVar.f6880k, Long.valueOf(lVideosBean.realmGet$upload_date()));
        osObjectBuilder.f(aVar.f6881l, Long.valueOf(lVideosBean.realmGet$release_date()));
        osObjectBuilder.e(aVar.f6882m, Integer.valueOf(lVideosBean.realmGet$video_duration()));
        osObjectBuilder.d(aVar.n, Boolean.valueOf(lVideosBean.realmGet$video_like()));
        com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy newProxyInstance = newProxyInstance(xVar, osObjectBuilder.E());
        map.put(lVideosBean, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x0092  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x009c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.comeback.data.ui.lutube.bean.LVideosBean copyOrUpdate(g.a.x r9, io.realm.com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy.a r10, com.comeback.data.ui.lutube.bean.LVideosBean r11, boolean r12, java.util.Map<g.a.e0, g.a.f1.n> r13, java.util.Set<g.a.m> r14) {
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
            com.comeback.data.ui.lutube.bean.LVideosBean r1 = (com.comeback.data.ui.lutube.bean.LVideosBean) r1
            return r1
        L_0x0047:
            r1 = 0
            r2 = 0
            if (r12 == 0) goto L_0x008e
            java.lang.Class<com.comeback.data.ui.lutube.bean.LVideosBean> r3 = com.comeback.data.ui.lutube.bean.LVideosBean.class
            g.a.k0 r4 = r9.f6317j
            io.realm.internal.Table r3 = r4.e(r3)
            long r4 = r10.f6875f
            java.lang.String r6 = r11.realmGet$video_id()
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
            io.realm.com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy r1 = new io.realm.com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy     // Catch: all -> 0x0089
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
            com.comeback.data.ui.lutube.bean.LVideosBean r9 = update(r1, r2, r3, r4, r5, r6)
            goto L_0x00a0
        L_0x009c:
            com.comeback.data.ui.lutube.bean.LVideosBean r9 = copy(r9, r10, r11, r12, r13, r14)
        L_0x00a0:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy.copyOrUpdate(g.a.x, io.realm.com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a, com.comeback.data.ui.lutube.bean.LVideosBean, boolean, java.util.Map, java.util.Set):com.comeback.data.ui.lutube.bean.LVideosBean");
    }

    public static a createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new a(osSchemaInfo);
    }

    public static LVideosBean createDetachedCopy(LVideosBean lVideosBean, int i2, int i3, Map<e0, n.a<e0>> map) {
        LVideosBean lVideosBean2;
        if (i2 > i3 || lVideosBean == null) {
            return null;
        }
        n.a<e0> aVar = map.get(lVideosBean);
        if (aVar == null) {
            lVideosBean2 = new LVideosBean();
            map.put(lVideosBean, new n.a<>(i2, lVideosBean2));
        } else if (i2 >= aVar.a) {
            return (LVideosBean) aVar.b;
        } else {
            aVar.a = i2;
            lVideosBean2 = (LVideosBean) aVar.b;
        }
        lVideosBean2.realmSet$video_id(lVideosBean.realmGet$video_id());
        lVideosBean2.realmSet$video_title(lVideosBean.realmGet$video_title());
        lVideosBean2.realmSet$actor(lVideosBean.realmGet$actor());
        lVideosBean2.realmSet$thumb(lVideosBean.realmGet$thumb());
        lVideosBean2.realmSet$cover(lVideosBean.realmGet$cover());
        lVideosBean2.realmSet$upload_date(lVideosBean.realmGet$upload_date());
        lVideosBean2.realmSet$release_date(lVideosBean.realmGet$release_date());
        lVideosBean2.realmSet$video_duration(lVideosBean.realmGet$video_duration());
        lVideosBean2.realmSet$video_like(lVideosBean.realmGet$video_like());
        return lVideosBean2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.b bVar = new OsObjectSchemaInfo.b("LVideosBean", 9, 0);
        bVar.a("video_id", RealmFieldType.STRING, true, true, false);
        bVar.a("video_title", RealmFieldType.STRING, false, false, false);
        bVar.a("actor", RealmFieldType.STRING, false, false, false);
        bVar.a("thumb", RealmFieldType.STRING, false, false, false);
        bVar.a("cover", RealmFieldType.STRING, false, false, false);
        bVar.a("upload_date", RealmFieldType.INTEGER, false, false, true);
        bVar.a("release_date", RealmFieldType.INTEGER, false, false, true);
        bVar.a("video_duration", RealmFieldType.INTEGER, false, false, true);
        bVar.a("video_like", RealmFieldType.BOOLEAN, false, false, true);
        return bVar.b();
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0070  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00a1  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00ba  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00d3  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00ec  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x0105  */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x0123  */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x0141  */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x015f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.comeback.data.ui.lutube.bean.LVideosBean createOrUpdateUsingJsonObject(g.a.x r9, org.json.JSONObject r10, boolean r11) throws org.json.JSONException {
        /*
        // Method dump skipped, instructions count: 374
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy.createOrUpdateUsingJsonObject(g.a.x, org.json.JSONObject, boolean):com.comeback.data.ui.lutube.bean.LVideosBean");
    }

    @TargetApi(11)
    public static LVideosBean createUsingJsonStream(x xVar, JsonReader jsonReader) throws IOException {
        LVideosBean lVideosBean = new LVideosBean();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("video_id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    lVideosBean.realmSet$video_id(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    lVideosBean.realmSet$video_id(null);
                }
                z = true;
            } else if (nextName.equals("video_title")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    lVideosBean.realmSet$video_title(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    lVideosBean.realmSet$video_title(null);
                }
            } else if (nextName.equals("actor")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    lVideosBean.realmSet$actor(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    lVideosBean.realmSet$actor(null);
                }
            } else if (nextName.equals("thumb")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    lVideosBean.realmSet$thumb(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    lVideosBean.realmSet$thumb(null);
                }
            } else if (nextName.equals("cover")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    lVideosBean.realmSet$cover(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    lVideosBean.realmSet$cover(null);
                }
            } else if (nextName.equals("upload_date")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    lVideosBean.realmSet$upload_date(jsonReader.nextLong());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'upload_date' to null.");
                }
            } else if (nextName.equals("release_date")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    lVideosBean.realmSet$release_date(jsonReader.nextLong());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'release_date' to null.");
                }
            } else if (nextName.equals("video_duration")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    lVideosBean.realmSet$video_duration(jsonReader.nextInt());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'video_duration' to null.");
                }
            } else if (!nextName.equals("video_like")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                lVideosBean.realmSet$video_like(jsonReader.nextBoolean());
            } else {
                throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'video_like' to null.");
            }
        }
        jsonReader.endObject();
        if (z) {
            return (LVideosBean) xVar.L(lVideosBean, new m[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'video_id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "LVideosBean";
    }

    public static long insert(x xVar, LVideosBean lVideosBean, Map<e0, Long> map) {
        long j2;
        if (lVideosBean instanceof n) {
            n nVar = (n) lVideosBean;
            if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                return nVar.realmGet$proxyState().f6305c.l();
            }
        }
        Table e2 = xVar.f6317j.e(LVideosBean.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(LVideosBean.class);
        long j4 = aVar.f6875f;
        String realmGet$video_id = lVideosBean.realmGet$video_id();
        if (realmGet$video_id == null) {
            j2 = Table.nativeFindFirstNull(j3, j4);
        } else {
            j2 = Table.nativeFindFirstString(j3, j4, realmGet$video_id);
        }
        if (j2 == -1) {
            long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j4, realmGet$video_id);
            map.put(lVideosBean, Long.valueOf(createRowWithPrimaryKey));
            String realmGet$video_title = lVideosBean.realmGet$video_title();
            if (realmGet$video_title != null) {
                Table.nativeSetString(j3, aVar.f6876g, createRowWithPrimaryKey, realmGet$video_title, false);
            }
            String realmGet$actor = lVideosBean.realmGet$actor();
            if (realmGet$actor != null) {
                Table.nativeSetString(j3, aVar.f6877h, createRowWithPrimaryKey, realmGet$actor, false);
            }
            String realmGet$thumb = lVideosBean.realmGet$thumb();
            if (realmGet$thumb != null) {
                Table.nativeSetString(j3, aVar.f6878i, createRowWithPrimaryKey, realmGet$thumb, false);
            }
            String realmGet$cover = lVideosBean.realmGet$cover();
            if (realmGet$cover != null) {
                Table.nativeSetString(j3, aVar.f6879j, createRowWithPrimaryKey, realmGet$cover, false);
            }
            Table.nativeSetLong(j3, aVar.f6880k, createRowWithPrimaryKey, lVideosBean.realmGet$upload_date(), false);
            Table.nativeSetLong(j3, aVar.f6881l, createRowWithPrimaryKey, lVideosBean.realmGet$release_date(), false);
            Table.nativeSetLong(j3, aVar.f6882m, createRowWithPrimaryKey, (long) lVideosBean.realmGet$video_duration(), false);
            Table.nativeSetBoolean(j3, aVar.n, createRowWithPrimaryKey, lVideosBean.realmGet$video_like(), false);
            return createRowWithPrimaryKey;
        }
        Table.s(realmGet$video_id);
        throw null;
    }

    public static long insertOrUpdate(x xVar, LVideosBean lVideosBean, Map<e0, Long> map) {
        long j2;
        if (lVideosBean instanceof n) {
            n nVar = (n) lVideosBean;
            if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                return nVar.realmGet$proxyState().f6305c.l();
            }
        }
        Table e2 = xVar.f6317j.e(LVideosBean.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(LVideosBean.class);
        long j4 = aVar.f6875f;
        String realmGet$video_id = lVideosBean.realmGet$video_id();
        if (realmGet$video_id == null) {
            j2 = Table.nativeFindFirstNull(j3, j4);
        } else {
            j2 = Table.nativeFindFirstString(j3, j4, realmGet$video_id);
        }
        if (j2 == -1) {
            j2 = OsObject.createRowWithPrimaryKey(e2, j4, realmGet$video_id);
        }
        map.put(lVideosBean, Long.valueOf(j2));
        String realmGet$video_title = lVideosBean.realmGet$video_title();
        if (realmGet$video_title != null) {
            Table.nativeSetString(j3, aVar.f6876g, j2, realmGet$video_title, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6876g, j2, false);
        }
        String realmGet$actor = lVideosBean.realmGet$actor();
        if (realmGet$actor != null) {
            Table.nativeSetString(j3, aVar.f6877h, j2, realmGet$actor, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6877h, j2, false);
        }
        String realmGet$thumb = lVideosBean.realmGet$thumb();
        if (realmGet$thumb != null) {
            Table.nativeSetString(j3, aVar.f6878i, j2, realmGet$thumb, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6878i, j2, false);
        }
        String realmGet$cover = lVideosBean.realmGet$cover();
        if (realmGet$cover != null) {
            Table.nativeSetString(j3, aVar.f6879j, j2, realmGet$cover, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6879j, j2, false);
        }
        Table.nativeSetLong(j3, aVar.f6880k, j2, lVideosBean.realmGet$upload_date(), false);
        Table.nativeSetLong(j3, aVar.f6881l, j2, lVideosBean.realmGet$release_date(), false);
        Table.nativeSetLong(j3, aVar.f6882m, j2, (long) lVideosBean.realmGet$video_duration(), false);
        Table.nativeSetBoolean(j3, aVar.n, j2, lVideosBean.realmGet$video_like(), false);
        return j2;
    }

    public static com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy newProxyInstance(g.a.a aVar, p pVar) {
        a.c cVar = g.a.a.f6189i.get();
        k0 G = aVar.G();
        G.a();
        c a2 = G.f6286f.a(LVideosBean.class);
        List<String> emptyList = Collections.emptyList();
        cVar.a = aVar;
        cVar.b = pVar;
        cVar.f6194c = a2;
        cVar.f6195d = false;
        cVar.f6196e = emptyList;
        com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy com_comeback_data_ui_lutube_bean_lvideosbeanrealmproxy = new com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy();
        cVar.a();
        return com_comeback_data_ui_lutube_bean_lvideosbeanrealmproxy;
    }

    public static LVideosBean update(x xVar, a aVar, LVideosBean lVideosBean, LVideosBean lVideosBean2, Map<e0, n> map, Set<m> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(xVar.f6317j.e(LVideosBean.class), aVar.f6874e, set);
        osObjectBuilder.g(aVar.f6875f, lVideosBean2.realmGet$video_id());
        osObjectBuilder.g(aVar.f6876g, lVideosBean2.realmGet$video_title());
        osObjectBuilder.g(aVar.f6877h, lVideosBean2.realmGet$actor());
        osObjectBuilder.g(aVar.f6878i, lVideosBean2.realmGet$thumb());
        osObjectBuilder.g(aVar.f6879j, lVideosBean2.realmGet$cover());
        osObjectBuilder.f(aVar.f6880k, Long.valueOf(lVideosBean2.realmGet$upload_date()));
        osObjectBuilder.f(aVar.f6881l, Long.valueOf(lVideosBean2.realmGet$release_date()));
        osObjectBuilder.e(aVar.f6882m, Integer.valueOf(lVideosBean2.realmGet$video_duration()));
        osObjectBuilder.d(aVar.n, Boolean.valueOf(lVideosBean2.realmGet$video_like()));
        osObjectBuilder.F();
        return lVideosBean;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy com_comeback_data_ui_lutube_bean_lvideosbeanrealmproxy = (com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy) obj;
        String str = this.proxyState.f6307e.b.f6197c;
        String str2 = com_comeback_data_ui_lutube_bean_lvideosbeanrealmproxy.proxyState.f6307e.b.f6197c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        String j2 = this.proxyState.f6305c.d().j();
        String j3 = com_comeback_data_ui_lutube_bean_lvideosbeanrealmproxy.proxyState.f6305c.d().j();
        if (j2 == null ? j3 == null : j2.equals(j3)) {
            return this.proxyState.f6305c.l() == com_comeback_data_ui_lutube_bean_lvideosbeanrealmproxy.proxyState.f6305c.l();
        }
        return false;
    }

    public int hashCode() {
        v<LVideosBean> vVar = this.proxyState;
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
            v<LVideosBean> vVar = new v<>(this);
            this.proxyState = vVar;
            vVar.f6307e = cVar.a;
            vVar.f6305c = cVar.b;
            vVar.f6308f = cVar.f6195d;
            if (vVar == null) {
                throw null;
            }
        }
    }

    @Override // com.comeback.data.ui.lutube.bean.LVideosBean, g.a.a1
    public String realmGet$actor() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6877h);
    }

    @Override // com.comeback.data.ui.lutube.bean.LVideosBean, g.a.a1
    public String realmGet$cover() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6879j);
    }

    @Override // g.a.f1.n
    public v<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.comeback.data.ui.lutube.bean.LVideosBean, g.a.a1
    public long realmGet$release_date() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.p(this.columnInfo.f6881l);
    }

    @Override // com.comeback.data.ui.lutube.bean.LVideosBean, g.a.a1
    public String realmGet$thumb() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6878i);
    }

    @Override // com.comeback.data.ui.lutube.bean.LVideosBean, g.a.a1
    public long realmGet$upload_date() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.p(this.columnInfo.f6880k);
    }

    @Override // com.comeback.data.ui.lutube.bean.LVideosBean, g.a.a1
    public int realmGet$video_duration() {
        this.proxyState.f6307e.f();
        return (int) this.proxyState.f6305c.p(this.columnInfo.f6882m);
    }

    @Override // com.comeback.data.ui.lutube.bean.LVideosBean, g.a.a1
    public String realmGet$video_id() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6875f);
    }

    @Override // com.comeback.data.ui.lutube.bean.LVideosBean, g.a.a1
    public boolean realmGet$video_like() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.m(this.columnInfo.n);
    }

    @Override // com.comeback.data.ui.lutube.bean.LVideosBean, g.a.a1
    public String realmGet$video_title() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6876g);
    }

    @Override // com.comeback.data.ui.lutube.bean.LVideosBean, g.a.a1
    public void realmSet$actor(String str) {
        v<LVideosBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6877h);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6877h, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6877h, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6877h, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.lutube.bean.LVideosBean, g.a.a1
    public void realmSet$cover(String str) {
        v<LVideosBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6879j);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6879j, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6879j, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6879j, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.lutube.bean.LVideosBean, g.a.a1
    public void realmSet$release_date(long j2) {
        v<LVideosBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            this.proxyState.f6305c.u(this.columnInfo.f6881l, j2);
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            pVar.d().p(this.columnInfo.f6881l, pVar.l(), j2, true);
        }
    }

    @Override // com.comeback.data.ui.lutube.bean.LVideosBean, g.a.a1
    public void realmSet$thumb(String str) {
        v<LVideosBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6878i);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6878i, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6878i, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6878i, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.lutube.bean.LVideosBean, g.a.a1
    public void realmSet$upload_date(long j2) {
        v<LVideosBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            this.proxyState.f6305c.u(this.columnInfo.f6880k, j2);
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            pVar.d().p(this.columnInfo.f6880k, pVar.l(), j2, true);
        }
    }

    @Override // com.comeback.data.ui.lutube.bean.LVideosBean, g.a.a1
    public void realmSet$video_duration(int i2) {
        v<LVideosBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            this.proxyState.f6305c.u(this.columnInfo.f6882m, (long) i2);
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            pVar.d().p(this.columnInfo.f6882m, pVar.l(), (long) i2, true);
        }
    }

    @Override // com.comeback.data.ui.lutube.bean.LVideosBean, g.a.a1
    public void realmSet$video_id(String str) {
        v<LVideosBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            throw new RealmException("Primary key field 'video_id' cannot be changed after object was created.");
        }
    }

    @Override // com.comeback.data.ui.lutube.bean.LVideosBean, g.a.a1
    public void realmSet$video_like(boolean z) {
        v<LVideosBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            this.proxyState.f6305c.i(this.columnInfo.n, z);
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            pVar.d().o(this.columnInfo.n, pVar.l(), z, true);
        }
    }

    @Override // com.comeback.data.ui.lutube.bean.LVideosBean, g.a.a1
    public void realmSet$video_title(String str) {
        v<LVideosBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6876g);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6876g, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6876g, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6876g, pVar.l(), str, true);
            }
        }
    }

    public String toString() {
        if (!g0.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder q = f.b.a.a.a.q("LVideosBean = proxy[", "{video_id:");
        String str = "null";
        f.b.a.a.a.C(q, realmGet$video_id() != null ? realmGet$video_id() : str, "}", ",", "{video_title:");
        f.b.a.a.a.C(q, realmGet$video_title() != null ? realmGet$video_title() : str, "}", ",", "{actor:");
        f.b.a.a.a.C(q, realmGet$actor() != null ? realmGet$actor() : str, "}", ",", "{thumb:");
        f.b.a.a.a.C(q, realmGet$thumb() != null ? realmGet$thumb() : str, "}", ",", "{cover:");
        if (realmGet$cover() != null) {
            str = realmGet$cover();
        }
        f.b.a.a.a.C(q, str, "}", ",", "{upload_date:");
        q.append(realmGet$upload_date());
        q.append("}");
        q.append(",");
        q.append("{release_date:");
        q.append(realmGet$release_date());
        q.append("}");
        q.append(",");
        q.append("{video_duration:");
        q.append(realmGet$video_duration());
        q.append("}");
        q.append(",");
        q.append("{video_like:");
        q.append(realmGet$video_like());
        return f.b.a.a.a.l(q, "}", "]");
    }

    public static void insert(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long j2;
        long j3;
        Table e2 = xVar.f6317j.e(LVideosBean.class);
        long j4 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(LVideosBean.class);
        long j5 = aVar.f6875f;
        while (it.hasNext()) {
            LVideosBean lVideosBean = (LVideosBean) it.next();
            if (!map.containsKey(lVideosBean)) {
                if (lVideosBean instanceof n) {
                    n nVar = (n) lVideosBean;
                    if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                        map.put(lVideosBean, Long.valueOf(nVar.realmGet$proxyState().f6305c.l()));
                    }
                }
                String realmGet$video_id = lVideosBean.realmGet$video_id();
                if (realmGet$video_id == null) {
                    j2 = Table.nativeFindFirstNull(j4, j5);
                } else {
                    j2 = Table.nativeFindFirstString(j4, j5, realmGet$video_id);
                }
                if (j2 == -1) {
                    long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j5, realmGet$video_id);
                    map.put(lVideosBean, Long.valueOf(createRowWithPrimaryKey));
                    String realmGet$video_title = lVideosBean.realmGet$video_title();
                    if (realmGet$video_title != null) {
                        j3 = j5;
                        Table.nativeSetString(j4, aVar.f6876g, createRowWithPrimaryKey, realmGet$video_title, false);
                    } else {
                        j3 = j5;
                    }
                    String realmGet$actor = lVideosBean.realmGet$actor();
                    if (realmGet$actor != null) {
                        Table.nativeSetString(j4, aVar.f6877h, createRowWithPrimaryKey, realmGet$actor, false);
                    }
                    String realmGet$thumb = lVideosBean.realmGet$thumb();
                    if (realmGet$thumb != null) {
                        Table.nativeSetString(j4, aVar.f6878i, createRowWithPrimaryKey, realmGet$thumb, false);
                    }
                    String realmGet$cover = lVideosBean.realmGet$cover();
                    if (realmGet$cover != null) {
                        Table.nativeSetString(j4, aVar.f6879j, createRowWithPrimaryKey, realmGet$cover, false);
                    }
                    Table.nativeSetLong(j4, aVar.f6880k, createRowWithPrimaryKey, lVideosBean.realmGet$upload_date(), false);
                    Table.nativeSetLong(j4, aVar.f6881l, createRowWithPrimaryKey, lVideosBean.realmGet$release_date(), false);
                    Table.nativeSetLong(j4, aVar.f6882m, createRowWithPrimaryKey, (long) lVideosBean.realmGet$video_duration(), false);
                    Table.nativeSetBoolean(j4, aVar.n, createRowWithPrimaryKey, lVideosBean.realmGet$video_like(), false);
                    j5 = j3;
                } else {
                    Table.s(realmGet$video_id);
                    throw null;
                }
            }
        }
    }

    public static void insertOrUpdate(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long j2;
        long j3;
        Table e2 = xVar.f6317j.e(LVideosBean.class);
        long j4 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(LVideosBean.class);
        long j5 = aVar.f6875f;
        while (it.hasNext()) {
            LVideosBean lVideosBean = (LVideosBean) it.next();
            if (!map.containsKey(lVideosBean)) {
                if (lVideosBean instanceof n) {
                    n nVar = (n) lVideosBean;
                    if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                        map.put(lVideosBean, Long.valueOf(nVar.realmGet$proxyState().f6305c.l()));
                    }
                }
                String realmGet$video_id = lVideosBean.realmGet$video_id();
                if (realmGet$video_id == null) {
                    j2 = Table.nativeFindFirstNull(j4, j5);
                } else {
                    j2 = Table.nativeFindFirstString(j4, j5, realmGet$video_id);
                }
                long createRowWithPrimaryKey = j2 == -1 ? OsObject.createRowWithPrimaryKey(e2, j5, realmGet$video_id) : j2;
                map.put(lVideosBean, Long.valueOf(createRowWithPrimaryKey));
                String realmGet$video_title = lVideosBean.realmGet$video_title();
                if (realmGet$video_title != null) {
                    j3 = j5;
                    Table.nativeSetString(j4, aVar.f6876g, createRowWithPrimaryKey, realmGet$video_title, false);
                } else {
                    j3 = j5;
                    Table.nativeSetNull(j4, aVar.f6876g, createRowWithPrimaryKey, false);
                }
                String realmGet$actor = lVideosBean.realmGet$actor();
                if (realmGet$actor != null) {
                    Table.nativeSetString(j4, aVar.f6877h, createRowWithPrimaryKey, realmGet$actor, false);
                } else {
                    Table.nativeSetNull(j4, aVar.f6877h, createRowWithPrimaryKey, false);
                }
                String realmGet$thumb = lVideosBean.realmGet$thumb();
                if (realmGet$thumb != null) {
                    Table.nativeSetString(j4, aVar.f6878i, createRowWithPrimaryKey, realmGet$thumb, false);
                } else {
                    Table.nativeSetNull(j4, aVar.f6878i, createRowWithPrimaryKey, false);
                }
                String realmGet$cover = lVideosBean.realmGet$cover();
                if (realmGet$cover != null) {
                    Table.nativeSetString(j4, aVar.f6879j, createRowWithPrimaryKey, realmGet$cover, false);
                } else {
                    Table.nativeSetNull(j4, aVar.f6879j, createRowWithPrimaryKey, false);
                }
                Table.nativeSetLong(j4, aVar.f6880k, createRowWithPrimaryKey, lVideosBean.realmGet$upload_date(), false);
                Table.nativeSetLong(j4, aVar.f6881l, createRowWithPrimaryKey, lVideosBean.realmGet$release_date(), false);
                Table.nativeSetLong(j4, aVar.f6882m, createRowWithPrimaryKey, (long) lVideosBean.realmGet$video_duration(), false);
                Table.nativeSetBoolean(j4, aVar.n, createRowWithPrimaryKey, lVideosBean.realmGet$video_like(), false);
                j5 = j3;
            }
        }
    }
}
