package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.comeback.data.ui.fulao2.bean.VideosBean;
import g.a.a;
import g.a.e0;
import g.a.f1.c;
import g.a.f1.n;
import g.a.f1.p;
import g.a.g0;
import g.a.k0;
import g.a.m;
import g.a.t0;
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
public class com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy extends VideosBean implements n, t0 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public a columnInfo;
    public v<VideosBean> proxyState;

    /* loaded from: classes.dex */
    public static final class a extends c {

        /* renamed from: e  reason: collision with root package name */
        public long f6828e;

        /* renamed from: f  reason: collision with root package name */
        public long f6829f;

        /* renamed from: g  reason: collision with root package name */
        public long f6830g;

        /* renamed from: h  reason: collision with root package name */
        public long f6831h;

        /* renamed from: i  reason: collision with root package name */
        public long f6832i;

        /* renamed from: j  reason: collision with root package name */
        public long f6833j;

        /* renamed from: k  reason: collision with root package name */
        public long f6834k;

        /* renamed from: l  reason: collision with root package name */
        public long f6835l;

        /* renamed from: m  reason: collision with root package name */
        public long f6836m;
        public long n;

        public a(OsSchemaInfo osSchemaInfo) {
            super(9, true);
            OsObjectSchemaInfo a = osSchemaInfo.a("VideosBean");
            this.f6829f = a("video_id", "video_id", a);
            this.f6830g = a("video_title", "video_title", a);
            this.f6831h = a("actor", "actor", a);
            this.f6832i = a("thumb", "thumb", a);
            this.f6833j = a("cover", "cover", a);
            this.f6834k = a("upload_date", "upload_date", a);
            this.f6835l = a("release_date", "release_date", a);
            this.f6836m = a("video_duration", "video_duration", a);
            this.n = a("video_like", "video_like", a);
            this.f6828e = a.a();
        }

        @Override // g.a.f1.c
        public final void b(c cVar, c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f6829f = aVar.f6829f;
            aVar2.f6830g = aVar.f6830g;
            aVar2.f6831h = aVar.f6831h;
            aVar2.f6832i = aVar.f6832i;
            aVar2.f6833j = aVar.f6833j;
            aVar2.f6834k = aVar.f6834k;
            aVar2.f6835l = aVar.f6835l;
            aVar2.f6836m = aVar.f6836m;
            aVar2.n = aVar.n;
            aVar2.f6828e = aVar.f6828e;
        }
    }

    public com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy() {
        this.proxyState.b = false;
    }

    public static VideosBean copy(x xVar, a aVar, VideosBean videosBean, boolean z, Map<e0, n> map, Set<m> set) {
        n nVar = map.get(videosBean);
        if (nVar != null) {
            return (VideosBean) nVar;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(xVar.f6317j.e(VideosBean.class), aVar.f6828e, set);
        osObjectBuilder.g(aVar.f6829f, videosBean.realmGet$video_id());
        osObjectBuilder.g(aVar.f6830g, videosBean.realmGet$video_title());
        osObjectBuilder.g(aVar.f6831h, videosBean.realmGet$actor());
        osObjectBuilder.g(aVar.f6832i, videosBean.realmGet$thumb());
        osObjectBuilder.g(aVar.f6833j, videosBean.realmGet$cover());
        osObjectBuilder.f(aVar.f6834k, Long.valueOf(videosBean.realmGet$upload_date()));
        osObjectBuilder.f(aVar.f6835l, Long.valueOf(videosBean.realmGet$release_date()));
        osObjectBuilder.e(aVar.f6836m, Integer.valueOf(videosBean.realmGet$video_duration()));
        osObjectBuilder.d(aVar.n, Boolean.valueOf(videosBean.realmGet$video_like()));
        com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy newProxyInstance = newProxyInstance(xVar, osObjectBuilder.E());
        map.put(videosBean, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x0092  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x009c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.comeback.data.ui.fulao2.bean.VideosBean copyOrUpdate(g.a.x r9, io.realm.com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy.a r10, com.comeback.data.ui.fulao2.bean.VideosBean r11, boolean r12, java.util.Map<g.a.e0, g.a.f1.n> r13, java.util.Set<g.a.m> r14) {
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
            com.comeback.data.ui.fulao2.bean.VideosBean r1 = (com.comeback.data.ui.fulao2.bean.VideosBean) r1
            return r1
        L_0x0047:
            r1 = 0
            r2 = 0
            if (r12 == 0) goto L_0x008e
            java.lang.Class<com.comeback.data.ui.fulao2.bean.VideosBean> r3 = com.comeback.data.ui.fulao2.bean.VideosBean.class
            g.a.k0 r4 = r9.f6317j
            io.realm.internal.Table r3 = r4.e(r3)
            long r4 = r10.f6829f
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
            io.realm.com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy r1 = new io.realm.com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy     // Catch: all -> 0x0089
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
            com.comeback.data.ui.fulao2.bean.VideosBean r9 = update(r1, r2, r3, r4, r5, r6)
            goto L_0x00a0
        L_0x009c:
            com.comeback.data.ui.fulao2.bean.VideosBean r9 = copy(r9, r10, r11, r12, r13, r14)
        L_0x00a0:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy.copyOrUpdate(g.a.x, io.realm.com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy$a, com.comeback.data.ui.fulao2.bean.VideosBean, boolean, java.util.Map, java.util.Set):com.comeback.data.ui.fulao2.bean.VideosBean");
    }

    public static a createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new a(osSchemaInfo);
    }

    public static VideosBean createDetachedCopy(VideosBean videosBean, int i2, int i3, Map<e0, n.a<e0>> map) {
        VideosBean videosBean2;
        if (i2 > i3 || videosBean == null) {
            return null;
        }
        n.a<e0> aVar = map.get(videosBean);
        if (aVar == null) {
            videosBean2 = new VideosBean();
            map.put(videosBean, new n.a<>(i2, videosBean2));
        } else if (i2 >= aVar.a) {
            return (VideosBean) aVar.b;
        } else {
            aVar.a = i2;
            videosBean2 = (VideosBean) aVar.b;
        }
        videosBean2.realmSet$video_id(videosBean.realmGet$video_id());
        videosBean2.realmSet$video_title(videosBean.realmGet$video_title());
        videosBean2.realmSet$actor(videosBean.realmGet$actor());
        videosBean2.realmSet$thumb(videosBean.realmGet$thumb());
        videosBean2.realmSet$cover(videosBean.realmGet$cover());
        videosBean2.realmSet$upload_date(videosBean.realmGet$upload_date());
        videosBean2.realmSet$release_date(videosBean.realmGet$release_date());
        videosBean2.realmSet$video_duration(videosBean.realmGet$video_duration());
        videosBean2.realmSet$video_like(videosBean.realmGet$video_like());
        return videosBean2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.b bVar = new OsObjectSchemaInfo.b("VideosBean", 9, 0);
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
    public static com.comeback.data.ui.fulao2.bean.VideosBean createOrUpdateUsingJsonObject(g.a.x r9, org.json.JSONObject r10, boolean r11) throws org.json.JSONException {
        /*
        // Method dump skipped, instructions count: 374
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy.createOrUpdateUsingJsonObject(g.a.x, org.json.JSONObject, boolean):com.comeback.data.ui.fulao2.bean.VideosBean");
    }

    @TargetApi(11)
    public static VideosBean createUsingJsonStream(x xVar, JsonReader jsonReader) throws IOException {
        VideosBean videosBean = new VideosBean();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("video_id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    videosBean.realmSet$video_id(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    videosBean.realmSet$video_id(null);
                }
                z = true;
            } else if (nextName.equals("video_title")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    videosBean.realmSet$video_title(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    videosBean.realmSet$video_title(null);
                }
            } else if (nextName.equals("actor")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    videosBean.realmSet$actor(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    videosBean.realmSet$actor(null);
                }
            } else if (nextName.equals("thumb")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    videosBean.realmSet$thumb(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    videosBean.realmSet$thumb(null);
                }
            } else if (nextName.equals("cover")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    videosBean.realmSet$cover(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    videosBean.realmSet$cover(null);
                }
            } else if (nextName.equals("upload_date")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    videosBean.realmSet$upload_date(jsonReader.nextLong());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'upload_date' to null.");
                }
            } else if (nextName.equals("release_date")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    videosBean.realmSet$release_date(jsonReader.nextLong());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'release_date' to null.");
                }
            } else if (nextName.equals("video_duration")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    videosBean.realmSet$video_duration(jsonReader.nextInt());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'video_duration' to null.");
                }
            } else if (!nextName.equals("video_like")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                videosBean.realmSet$video_like(jsonReader.nextBoolean());
            } else {
                throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'video_like' to null.");
            }
        }
        jsonReader.endObject();
        if (z) {
            return (VideosBean) xVar.L(videosBean, new m[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'video_id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "VideosBean";
    }

    public static long insert(x xVar, VideosBean videosBean, Map<e0, Long> map) {
        long j2;
        if (videosBean instanceof n) {
            n nVar = (n) videosBean;
            if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                return nVar.realmGet$proxyState().f6305c.l();
            }
        }
        Table e2 = xVar.f6317j.e(VideosBean.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(VideosBean.class);
        long j4 = aVar.f6829f;
        String realmGet$video_id = videosBean.realmGet$video_id();
        if (realmGet$video_id == null) {
            j2 = Table.nativeFindFirstNull(j3, j4);
        } else {
            j2 = Table.nativeFindFirstString(j3, j4, realmGet$video_id);
        }
        if (j2 == -1) {
            long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j4, realmGet$video_id);
            map.put(videosBean, Long.valueOf(createRowWithPrimaryKey));
            String realmGet$video_title = videosBean.realmGet$video_title();
            if (realmGet$video_title != null) {
                Table.nativeSetString(j3, aVar.f6830g, createRowWithPrimaryKey, realmGet$video_title, false);
            }
            String realmGet$actor = videosBean.realmGet$actor();
            if (realmGet$actor != null) {
                Table.nativeSetString(j3, aVar.f6831h, createRowWithPrimaryKey, realmGet$actor, false);
            }
            String realmGet$thumb = videosBean.realmGet$thumb();
            if (realmGet$thumb != null) {
                Table.nativeSetString(j3, aVar.f6832i, createRowWithPrimaryKey, realmGet$thumb, false);
            }
            String realmGet$cover = videosBean.realmGet$cover();
            if (realmGet$cover != null) {
                Table.nativeSetString(j3, aVar.f6833j, createRowWithPrimaryKey, realmGet$cover, false);
            }
            Table.nativeSetLong(j3, aVar.f6834k, createRowWithPrimaryKey, videosBean.realmGet$upload_date(), false);
            Table.nativeSetLong(j3, aVar.f6835l, createRowWithPrimaryKey, videosBean.realmGet$release_date(), false);
            Table.nativeSetLong(j3, aVar.f6836m, createRowWithPrimaryKey, (long) videosBean.realmGet$video_duration(), false);
            Table.nativeSetBoolean(j3, aVar.n, createRowWithPrimaryKey, videosBean.realmGet$video_like(), false);
            return createRowWithPrimaryKey;
        }
        Table.s(realmGet$video_id);
        throw null;
    }

    public static long insertOrUpdate(x xVar, VideosBean videosBean, Map<e0, Long> map) {
        long j2;
        if (videosBean instanceof n) {
            n nVar = (n) videosBean;
            if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                return nVar.realmGet$proxyState().f6305c.l();
            }
        }
        Table e2 = xVar.f6317j.e(VideosBean.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(VideosBean.class);
        long j4 = aVar.f6829f;
        String realmGet$video_id = videosBean.realmGet$video_id();
        if (realmGet$video_id == null) {
            j2 = Table.nativeFindFirstNull(j3, j4);
        } else {
            j2 = Table.nativeFindFirstString(j3, j4, realmGet$video_id);
        }
        if (j2 == -1) {
            j2 = OsObject.createRowWithPrimaryKey(e2, j4, realmGet$video_id);
        }
        map.put(videosBean, Long.valueOf(j2));
        String realmGet$video_title = videosBean.realmGet$video_title();
        if (realmGet$video_title != null) {
            Table.nativeSetString(j3, aVar.f6830g, j2, realmGet$video_title, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6830g, j2, false);
        }
        String realmGet$actor = videosBean.realmGet$actor();
        if (realmGet$actor != null) {
            Table.nativeSetString(j3, aVar.f6831h, j2, realmGet$actor, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6831h, j2, false);
        }
        String realmGet$thumb = videosBean.realmGet$thumb();
        if (realmGet$thumb != null) {
            Table.nativeSetString(j3, aVar.f6832i, j2, realmGet$thumb, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6832i, j2, false);
        }
        String realmGet$cover = videosBean.realmGet$cover();
        if (realmGet$cover != null) {
            Table.nativeSetString(j3, aVar.f6833j, j2, realmGet$cover, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6833j, j2, false);
        }
        Table.nativeSetLong(j3, aVar.f6834k, j2, videosBean.realmGet$upload_date(), false);
        Table.nativeSetLong(j3, aVar.f6835l, j2, videosBean.realmGet$release_date(), false);
        Table.nativeSetLong(j3, aVar.f6836m, j2, (long) videosBean.realmGet$video_duration(), false);
        Table.nativeSetBoolean(j3, aVar.n, j2, videosBean.realmGet$video_like(), false);
        return j2;
    }

    public static com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy newProxyInstance(g.a.a aVar, p pVar) {
        a.c cVar = g.a.a.f6189i.get();
        k0 G = aVar.G();
        G.a();
        c a2 = G.f6286f.a(VideosBean.class);
        List<String> emptyList = Collections.emptyList();
        cVar.a = aVar;
        cVar.b = pVar;
        cVar.f6194c = a2;
        cVar.f6195d = false;
        cVar.f6196e = emptyList;
        com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy com_comeback_data_ui_fulao2_bean_videosbeanrealmproxy = new com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy();
        cVar.a();
        return com_comeback_data_ui_fulao2_bean_videosbeanrealmproxy;
    }

    public static VideosBean update(x xVar, a aVar, VideosBean videosBean, VideosBean videosBean2, Map<e0, n> map, Set<m> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(xVar.f6317j.e(VideosBean.class), aVar.f6828e, set);
        osObjectBuilder.g(aVar.f6829f, videosBean2.realmGet$video_id());
        osObjectBuilder.g(aVar.f6830g, videosBean2.realmGet$video_title());
        osObjectBuilder.g(aVar.f6831h, videosBean2.realmGet$actor());
        osObjectBuilder.g(aVar.f6832i, videosBean2.realmGet$thumb());
        osObjectBuilder.g(aVar.f6833j, videosBean2.realmGet$cover());
        osObjectBuilder.f(aVar.f6834k, Long.valueOf(videosBean2.realmGet$upload_date()));
        osObjectBuilder.f(aVar.f6835l, Long.valueOf(videosBean2.realmGet$release_date()));
        osObjectBuilder.e(aVar.f6836m, Integer.valueOf(videosBean2.realmGet$video_duration()));
        osObjectBuilder.d(aVar.n, Boolean.valueOf(videosBean2.realmGet$video_like()));
        osObjectBuilder.F();
        return videosBean;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy com_comeback_data_ui_fulao2_bean_videosbeanrealmproxy = (com_comeback_data_ui_fulao2_bean_VideosBeanRealmProxy) obj;
        String str = this.proxyState.f6307e.b.f6197c;
        String str2 = com_comeback_data_ui_fulao2_bean_videosbeanrealmproxy.proxyState.f6307e.b.f6197c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        String j2 = this.proxyState.f6305c.d().j();
        String j3 = com_comeback_data_ui_fulao2_bean_videosbeanrealmproxy.proxyState.f6305c.d().j();
        if (j2 == null ? j3 == null : j2.equals(j3)) {
            return this.proxyState.f6305c.l() == com_comeback_data_ui_fulao2_bean_videosbeanrealmproxy.proxyState.f6305c.l();
        }
        return false;
    }

    public int hashCode() {
        v<VideosBean> vVar = this.proxyState;
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
            v<VideosBean> vVar = new v<>(this);
            this.proxyState = vVar;
            vVar.f6307e = cVar.a;
            vVar.f6305c = cVar.b;
            vVar.f6308f = cVar.f6195d;
            if (vVar == null) {
                throw null;
            }
        }
    }

    @Override // com.comeback.data.ui.fulao2.bean.VideosBean, g.a.t0
    public String realmGet$actor() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6831h);
    }

    @Override // com.comeback.data.ui.fulao2.bean.VideosBean, g.a.t0
    public String realmGet$cover() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6833j);
    }

    @Override // g.a.f1.n
    public v<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.comeback.data.ui.fulao2.bean.VideosBean, g.a.t0
    public long realmGet$release_date() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.p(this.columnInfo.f6835l);
    }

    @Override // com.comeback.data.ui.fulao2.bean.VideosBean, g.a.t0
    public String realmGet$thumb() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6832i);
    }

    @Override // com.comeback.data.ui.fulao2.bean.VideosBean, g.a.t0
    public long realmGet$upload_date() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.p(this.columnInfo.f6834k);
    }

    @Override // com.comeback.data.ui.fulao2.bean.VideosBean, g.a.t0
    public int realmGet$video_duration() {
        this.proxyState.f6307e.f();
        return (int) this.proxyState.f6305c.p(this.columnInfo.f6836m);
    }

    @Override // com.comeback.data.ui.fulao2.bean.VideosBean, g.a.t0
    public String realmGet$video_id() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6829f);
    }

    @Override // com.comeback.data.ui.fulao2.bean.VideosBean, g.a.t0
    public boolean realmGet$video_like() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.m(this.columnInfo.n);
    }

    @Override // com.comeback.data.ui.fulao2.bean.VideosBean, g.a.t0
    public String realmGet$video_title() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6830g);
    }

    @Override // com.comeback.data.ui.fulao2.bean.VideosBean, g.a.t0
    public void realmSet$actor(String str) {
        v<VideosBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6831h);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6831h, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6831h, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6831h, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.fulao2.bean.VideosBean, g.a.t0
    public void realmSet$cover(String str) {
        v<VideosBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6833j);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6833j, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6833j, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6833j, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.fulao2.bean.VideosBean, g.a.t0
    public void realmSet$release_date(long j2) {
        v<VideosBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            this.proxyState.f6305c.u(this.columnInfo.f6835l, j2);
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            pVar.d().p(this.columnInfo.f6835l, pVar.l(), j2, true);
        }
    }

    @Override // com.comeback.data.ui.fulao2.bean.VideosBean, g.a.t0
    public void realmSet$thumb(String str) {
        v<VideosBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6832i);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6832i, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6832i, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6832i, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.fulao2.bean.VideosBean, g.a.t0
    public void realmSet$upload_date(long j2) {
        v<VideosBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            this.proxyState.f6305c.u(this.columnInfo.f6834k, j2);
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            pVar.d().p(this.columnInfo.f6834k, pVar.l(), j2, true);
        }
    }

    @Override // com.comeback.data.ui.fulao2.bean.VideosBean, g.a.t0
    public void realmSet$video_duration(int i2) {
        v<VideosBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            this.proxyState.f6305c.u(this.columnInfo.f6836m, (long) i2);
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            pVar.d().p(this.columnInfo.f6836m, pVar.l(), (long) i2, true);
        }
    }

    @Override // com.comeback.data.ui.fulao2.bean.VideosBean, g.a.t0
    public void realmSet$video_id(String str) {
        v<VideosBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            throw new RealmException("Primary key field 'video_id' cannot be changed after object was created.");
        }
    }

    @Override // com.comeback.data.ui.fulao2.bean.VideosBean, g.a.t0
    public void realmSet$video_like(boolean z) {
        v<VideosBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            this.proxyState.f6305c.i(this.columnInfo.n, z);
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            pVar.d().o(this.columnInfo.n, pVar.l(), z, true);
        }
    }

    @Override // com.comeback.data.ui.fulao2.bean.VideosBean, g.a.t0
    public void realmSet$video_title(String str) {
        v<VideosBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6830g);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6830g, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6830g, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6830g, pVar.l(), str, true);
            }
        }
    }

    public String toString() {
        if (!g0.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder q = f.b.a.a.a.q("VideosBean = proxy[", "{video_id:");
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
        Table e2 = xVar.f6317j.e(VideosBean.class);
        long j4 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(VideosBean.class);
        long j5 = aVar.f6829f;
        while (it.hasNext()) {
            VideosBean videosBean = (VideosBean) it.next();
            if (!map.containsKey(videosBean)) {
                if (videosBean instanceof n) {
                    n nVar = (n) videosBean;
                    if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                        map.put(videosBean, Long.valueOf(nVar.realmGet$proxyState().f6305c.l()));
                    }
                }
                String realmGet$video_id = videosBean.realmGet$video_id();
                if (realmGet$video_id == null) {
                    j2 = Table.nativeFindFirstNull(j4, j5);
                } else {
                    j2 = Table.nativeFindFirstString(j4, j5, realmGet$video_id);
                }
                if (j2 == -1) {
                    long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j5, realmGet$video_id);
                    map.put(videosBean, Long.valueOf(createRowWithPrimaryKey));
                    String realmGet$video_title = videosBean.realmGet$video_title();
                    if (realmGet$video_title != null) {
                        j3 = j5;
                        Table.nativeSetString(j4, aVar.f6830g, createRowWithPrimaryKey, realmGet$video_title, false);
                    } else {
                        j3 = j5;
                    }
                    String realmGet$actor = videosBean.realmGet$actor();
                    if (realmGet$actor != null) {
                        Table.nativeSetString(j4, aVar.f6831h, createRowWithPrimaryKey, realmGet$actor, false);
                    }
                    String realmGet$thumb = videosBean.realmGet$thumb();
                    if (realmGet$thumb != null) {
                        Table.nativeSetString(j4, aVar.f6832i, createRowWithPrimaryKey, realmGet$thumb, false);
                    }
                    String realmGet$cover = videosBean.realmGet$cover();
                    if (realmGet$cover != null) {
                        Table.nativeSetString(j4, aVar.f6833j, createRowWithPrimaryKey, realmGet$cover, false);
                    }
                    Table.nativeSetLong(j4, aVar.f6834k, createRowWithPrimaryKey, videosBean.realmGet$upload_date(), false);
                    Table.nativeSetLong(j4, aVar.f6835l, createRowWithPrimaryKey, videosBean.realmGet$release_date(), false);
                    Table.nativeSetLong(j4, aVar.f6836m, createRowWithPrimaryKey, (long) videosBean.realmGet$video_duration(), false);
                    Table.nativeSetBoolean(j4, aVar.n, createRowWithPrimaryKey, videosBean.realmGet$video_like(), false);
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
        Table e2 = xVar.f6317j.e(VideosBean.class);
        long j4 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(VideosBean.class);
        long j5 = aVar.f6829f;
        while (it.hasNext()) {
            VideosBean videosBean = (VideosBean) it.next();
            if (!map.containsKey(videosBean)) {
                if (videosBean instanceof n) {
                    n nVar = (n) videosBean;
                    if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                        map.put(videosBean, Long.valueOf(nVar.realmGet$proxyState().f6305c.l()));
                    }
                }
                String realmGet$video_id = videosBean.realmGet$video_id();
                if (realmGet$video_id == null) {
                    j2 = Table.nativeFindFirstNull(j4, j5);
                } else {
                    j2 = Table.nativeFindFirstString(j4, j5, realmGet$video_id);
                }
                long createRowWithPrimaryKey = j2 == -1 ? OsObject.createRowWithPrimaryKey(e2, j5, realmGet$video_id) : j2;
                map.put(videosBean, Long.valueOf(createRowWithPrimaryKey));
                String realmGet$video_title = videosBean.realmGet$video_title();
                if (realmGet$video_title != null) {
                    j3 = j5;
                    Table.nativeSetString(j4, aVar.f6830g, createRowWithPrimaryKey, realmGet$video_title, false);
                } else {
                    j3 = j5;
                    Table.nativeSetNull(j4, aVar.f6830g, createRowWithPrimaryKey, false);
                }
                String realmGet$actor = videosBean.realmGet$actor();
                if (realmGet$actor != null) {
                    Table.nativeSetString(j4, aVar.f6831h, createRowWithPrimaryKey, realmGet$actor, false);
                } else {
                    Table.nativeSetNull(j4, aVar.f6831h, createRowWithPrimaryKey, false);
                }
                String realmGet$thumb = videosBean.realmGet$thumb();
                if (realmGet$thumb != null) {
                    Table.nativeSetString(j4, aVar.f6832i, createRowWithPrimaryKey, realmGet$thumb, false);
                } else {
                    Table.nativeSetNull(j4, aVar.f6832i, createRowWithPrimaryKey, false);
                }
                String realmGet$cover = videosBean.realmGet$cover();
                if (realmGet$cover != null) {
                    Table.nativeSetString(j4, aVar.f6833j, createRowWithPrimaryKey, realmGet$cover, false);
                } else {
                    Table.nativeSetNull(j4, aVar.f6833j, createRowWithPrimaryKey, false);
                }
                Table.nativeSetLong(j4, aVar.f6834k, createRowWithPrimaryKey, videosBean.realmGet$upload_date(), false);
                Table.nativeSetLong(j4, aVar.f6835l, createRowWithPrimaryKey, videosBean.realmGet$release_date(), false);
                Table.nativeSetLong(j4, aVar.f6836m, createRowWithPrimaryKey, (long) videosBean.realmGet$video_duration(), false);
                Table.nativeSetBoolean(j4, aVar.n, createRowWithPrimaryKey, videosBean.realmGet$video_like(), false);
                j5 = j3;
            }
        }
    }
}
