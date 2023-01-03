package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.comeback.data.ui.main.bean.CollectVideo;
import com.tencent.smtt.sdk.TbsVideoCacheTask;
import g.a.a;
import g.a.b1;
import g.a.e0;
import g.a.f1.c;
import g.a.f1.h;
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
import io.realm.internal.OsSharedRealm;
import io.realm.internal.Property;
import io.realm.internal.Table;
import io.realm.internal.UncheckedRow;
import io.realm.internal.objectstore.OsObjectBuilder;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class com_comeback_data_ui_main_bean_CollectVideoRealmProxy extends CollectVideo implements n, b1 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public a columnInfo;
    public v<CollectVideo> proxyState;

    /* loaded from: classes.dex */
    public static final class a extends c {

        /* renamed from: e  reason: collision with root package name */
        public long f6883e;

        /* renamed from: f  reason: collision with root package name */
        public long f6884f;

        /* renamed from: g  reason: collision with root package name */
        public long f6885g;

        /* renamed from: h  reason: collision with root package name */
        public long f6886h;

        public a(OsSchemaInfo osSchemaInfo) {
            super(3, true);
            OsObjectSchemaInfo a = osSchemaInfo.a("CollectVideo");
            this.f6884f = a("name", "name", a);
            this.f6885g = a(TbsVideoCacheTask.KEY_VIDEO_CACHE_PARAM_URL, TbsVideoCacheTask.KEY_VIDEO_CACHE_PARAM_URL, a);
            this.f6886h = a("addTime", "addTime", a);
            this.f6883e = a.a();
        }

        @Override // g.a.f1.c
        public final void b(c cVar, c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f6884f = aVar.f6884f;
            aVar2.f6885g = aVar.f6885g;
            aVar2.f6886h = aVar.f6886h;
            aVar2.f6883e = aVar.f6883e;
        }
    }

    public com_comeback_data_ui_main_bean_CollectVideoRealmProxy() {
        this.proxyState.b = false;
    }

    /* JADX INFO: finally extract failed */
    public static CollectVideo copy(x xVar, a aVar, CollectVideo collectVideo, boolean z, Map<e0, n> map, Set<m> set) {
        n nVar = map.get(collectVideo);
        if (nVar != null) {
            return (CollectVideo) nVar;
        }
        Table e2 = xVar.f6317j.e(CollectVideo.class);
        long j2 = aVar.f6883e;
        OsSharedRealm osSharedRealm = e2.f6953c;
        long nativePtr = osSharedRealm.getNativePtr();
        long j3 = e2.a;
        long nativeCreateBuilder = OsObjectBuilder.nativeCreateBuilder(j2 + 1);
        h hVar = osSharedRealm.context;
        set.contains(m.CHECK_SAME_VALUES_BEFORE_SET);
        long j4 = aVar.f6884f;
        String realmGet$name = collectVideo.realmGet$name();
        if (realmGet$name == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j4);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j4, realmGet$name);
        }
        long j5 = aVar.f6885g;
        String realmGet$url = collectVideo.realmGet$url();
        if (realmGet$url == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j5);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j5, realmGet$url);
        }
        long j6 = aVar.f6886h;
        Long valueOf = Long.valueOf(collectVideo.realmGet$addTime());
        if (valueOf == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j6);
        } else {
            OsObjectBuilder.nativeAddInteger(nativeCreateBuilder, j6, valueOf.longValue());
        }
        try {
            UncheckedRow uncheckedRow = new UncheckedRow(hVar, e2, OsObjectBuilder.nativeCreateOrUpdate(nativePtr, j3, nativeCreateBuilder, false, false));
            OsObjectBuilder.nativeDestroyBuilder(nativeCreateBuilder);
            com_comeback_data_ui_main_bean_CollectVideoRealmProxy newProxyInstance = newProxyInstance(xVar, uncheckedRow);
            map.put(collectVideo, newProxyInstance);
            return newProxyInstance;
        } catch (Throwable th) {
            OsObjectBuilder.nativeDestroyBuilder(nativeCreateBuilder);
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x0092  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x009c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.comeback.data.ui.main.bean.CollectVideo copyOrUpdate(g.a.x r9, io.realm.com_comeback_data_ui_main_bean_CollectVideoRealmProxy.a r10, com.comeback.data.ui.main.bean.CollectVideo r11, boolean r12, java.util.Map<g.a.e0, g.a.f1.n> r13, java.util.Set<g.a.m> r14) {
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
            com.comeback.data.ui.main.bean.CollectVideo r1 = (com.comeback.data.ui.main.bean.CollectVideo) r1
            return r1
        L_0x0047:
            r1 = 0
            r2 = 0
            if (r12 == 0) goto L_0x008e
            java.lang.Class<com.comeback.data.ui.main.bean.CollectVideo> r3 = com.comeback.data.ui.main.bean.CollectVideo.class
            g.a.k0 r4 = r9.f6317j
            io.realm.internal.Table r3 = r4.e(r3)
            long r4 = r10.f6885g
            java.lang.String r6 = r11.realmGet$url()
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
            io.realm.com_comeback_data_ui_main_bean_CollectVideoRealmProxy r1 = new io.realm.com_comeback_data_ui_main_bean_CollectVideoRealmProxy     // Catch: all -> 0x0089
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
            com.comeback.data.ui.main.bean.CollectVideo r9 = update(r1, r2, r3, r4, r5, r6)
            goto L_0x00a0
        L_0x009c:
            com.comeback.data.ui.main.bean.CollectVideo r9 = copy(r9, r10, r11, r12, r13, r14)
        L_0x00a0:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_main_bean_CollectVideoRealmProxy.copyOrUpdate(g.a.x, io.realm.com_comeback_data_ui_main_bean_CollectVideoRealmProxy$a, com.comeback.data.ui.main.bean.CollectVideo, boolean, java.util.Map, java.util.Set):com.comeback.data.ui.main.bean.CollectVideo");
    }

    public static a createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new a(osSchemaInfo);
    }

    public static CollectVideo createDetachedCopy(CollectVideo collectVideo, int i2, int i3, Map<e0, n.a<e0>> map) {
        CollectVideo collectVideo2;
        if (i2 > i3 || collectVideo == null) {
            return null;
        }
        n.a<e0> aVar = map.get(collectVideo);
        if (aVar == null) {
            collectVideo2 = new CollectVideo();
            map.put(collectVideo, new n.a<>(i2, collectVideo2));
        } else if (i2 >= aVar.a) {
            return (CollectVideo) aVar.b;
        } else {
            aVar.a = i2;
            collectVideo2 = (CollectVideo) aVar.b;
        }
        collectVideo2.realmSet$name(collectVideo.realmGet$name());
        collectVideo2.realmSet$url(collectVideo.realmGet$url());
        collectVideo2.realmSet$addTime(collectVideo.realmGet$addTime());
        return collectVideo2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        long[] jArr = new long[3];
        long[] jArr2 = new long[0];
        jArr[0] = Property.nativeCreatePersistedProperty("name", Property.a(RealmFieldType.STRING, false), false, false);
        int i2 = 0 + 1;
        jArr[i2] = Property.nativeCreatePersistedProperty(TbsVideoCacheTask.KEY_VIDEO_CACHE_PARAM_URL, Property.a(RealmFieldType.STRING, false), true, true);
        int i3 = i2 + 1;
        jArr[i3] = Property.nativeCreatePersistedProperty("addTime", Property.a(RealmFieldType.INTEGER, true), false, false);
        if (i3 + 1 != -1) {
            OsObjectSchemaInfo osObjectSchemaInfo = new OsObjectSchemaInfo("CollectVideo", null);
            OsObjectSchemaInfo.nativeAddProperties(osObjectSchemaInfo.a, jArr, jArr2);
            return osObjectSchemaInfo;
        }
        throw new IllegalStateException("'OsObjectSchemaInfo.build()' has been called before on this object.");
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0070  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00a1  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00ba  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.comeback.data.ui.main.bean.CollectVideo createOrUpdateUsingJsonObject(g.a.x r9, org.json.JSONObject r10, boolean r11) throws org.json.JSONException {
        /*
            java.lang.Class<com.comeback.data.ui.main.bean.CollectVideo> r0 = com.comeback.data.ui.main.bean.CollectVideo.class
            java.util.List r1 = java.util.Collections.emptyList()
            r2 = 0
            java.lang.String r3 = "url"
            if (r11 == 0) goto L_0x006d
            g.a.k0 r11 = r9.f6317j
            io.realm.internal.Table r11 = r11.e(r0)
            g.a.k0 r4 = r9.f6317j
            r4.a()
            g.a.f1.b r4 = r4.f6286f
            g.a.f1.c r4 = r4.a(r0)
            io.realm.com_comeback_data_ui_main_bean_CollectVideoRealmProxy$a r4 = (io.realm.com_comeback_data_ui_main_bean_CollectVideoRealmProxy.a) r4
            long r4 = r4.f6885g
            boolean r6 = r10.isNull(r3)
            if (r6 == 0) goto L_0x002b
            long r4 = r11.b(r4)
            goto L_0x0033
        L_0x002b:
            java.lang.String r6 = r10.getString(r3)
            long r4 = r11.c(r4, r6)
        L_0x0033:
            r6 = -1
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 == 0) goto L_0x006d
            g.a.a$d r6 = g.a.a.f6189i
            java.lang.Object r6 = r6.get()
            g.a.a$c r6 = (g.a.a.c) r6
            io.realm.internal.UncheckedRow r11 = r11.l(r4)     // Catch: all -> 0x0068
            g.a.k0 r4 = r9.f6317j     // Catch: all -> 0x0068
            r4.a()     // Catch: all -> 0x0068
            g.a.f1.b r4 = r4.f6286f     // Catch: all -> 0x0068
            g.a.f1.c r4 = r4.a(r0)     // Catch: all -> 0x0068
            r5 = 0
            java.util.List r7 = java.util.Collections.emptyList()     // Catch: all -> 0x0068
            r6.a = r9     // Catch: all -> 0x0068
            r6.b = r11     // Catch: all -> 0x0068
            r6.f6194c = r4     // Catch: all -> 0x0068
            r6.f6195d = r5     // Catch: all -> 0x0068
            r6.f6196e = r7     // Catch: all -> 0x0068
            io.realm.com_comeback_data_ui_main_bean_CollectVideoRealmProxy r11 = new io.realm.com_comeback_data_ui_main_bean_CollectVideoRealmProxy     // Catch: all -> 0x0068
            r11.<init>()     // Catch: all -> 0x0068
            r6.a()
            goto L_0x006e
        L_0x0068:
            r9 = move-exception
            r6.a()
            throw r9
        L_0x006d:
            r11 = r2
        L_0x006e:
            if (r11 != 0) goto L_0x0099
            boolean r11 = r10.has(r3)
            if (r11 == 0) goto L_0x0091
            boolean r11 = r10.isNull(r3)
            r4 = 1
            if (r11 == 0) goto L_0x0085
            g.a.e0 r9 = r9.M(r0, r2, r4, r1)
            r11 = r9
            io.realm.com_comeback_data_ui_main_bean_CollectVideoRealmProxy r11 = (io.realm.com_comeback_data_ui_main_bean_CollectVideoRealmProxy) r11
            goto L_0x0099
        L_0x0085:
            java.lang.String r11 = r10.getString(r3)
            g.a.e0 r9 = r9.M(r0, r11, r4, r1)
            r11 = r9
            io.realm.com_comeback_data_ui_main_bean_CollectVideoRealmProxy r11 = (io.realm.com_comeback_data_ui_main_bean_CollectVideoRealmProxy) r11
            goto L_0x0099
        L_0x0091:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.String r10 = "JSON object doesn't have the primary key field 'url'."
            r9.<init>(r10)
            throw r9
        L_0x0099:
            java.lang.String r9 = "name"
            boolean r0 = r10.has(r9)
            if (r0 == 0) goto L_0x00b2
            boolean r0 = r10.isNull(r9)
            if (r0 == 0) goto L_0x00ab
            r11.realmSet$name(r2)
            goto L_0x00b2
        L_0x00ab:
            java.lang.String r9 = r10.getString(r9)
            r11.realmSet$name(r9)
        L_0x00b2:
            java.lang.String r9 = "addTime"
            boolean r0 = r10.has(r9)
            if (r0 == 0) goto L_0x00d0
            boolean r0 = r10.isNull(r9)
            if (r0 != 0) goto L_0x00c8
            long r9 = r10.getLong(r9)
            r11.realmSet$addTime(r9)
            goto L_0x00d0
        L_0x00c8:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.String r10 = "Trying to set non-nullable field 'addTime' to null."
            r9.<init>(r10)
            throw r9
        L_0x00d0:
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_main_bean_CollectVideoRealmProxy.createOrUpdateUsingJsonObject(g.a.x, org.json.JSONObject, boolean):com.comeback.data.ui.main.bean.CollectVideo");
    }

    @TargetApi(11)
    public static CollectVideo createUsingJsonStream(x xVar, JsonReader jsonReader) throws IOException {
        CollectVideo collectVideo = new CollectVideo();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("name")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    collectVideo.realmSet$name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    collectVideo.realmSet$name(null);
                }
            } else if (nextName.equals(TbsVideoCacheTask.KEY_VIDEO_CACHE_PARAM_URL)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    collectVideo.realmSet$url(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    collectVideo.realmSet$url(null);
                }
                z = true;
            } else if (!nextName.equals("addTime")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                collectVideo.realmSet$addTime(jsonReader.nextLong());
            } else {
                throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'addTime' to null.");
            }
        }
        jsonReader.endObject();
        if (z) {
            return (CollectVideo) xVar.L(collectVideo, new m[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'url'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "CollectVideo";
    }

    public static long insert(x xVar, CollectVideo collectVideo, Map<e0, Long> map) {
        long j2;
        if (collectVideo instanceof n) {
            n nVar = (n) collectVideo;
            if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                return nVar.realmGet$proxyState().f6305c.l();
            }
        }
        Table e2 = xVar.f6317j.e(CollectVideo.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(CollectVideo.class);
        long j4 = aVar.f6885g;
        String realmGet$url = collectVideo.realmGet$url();
        if (realmGet$url == null) {
            j2 = Table.nativeFindFirstNull(j3, j4);
        } else {
            j2 = Table.nativeFindFirstString(j3, j4, realmGet$url);
        }
        if (j2 == -1) {
            long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j4, realmGet$url);
            map.put(collectVideo, Long.valueOf(createRowWithPrimaryKey));
            String realmGet$name = collectVideo.realmGet$name();
            if (realmGet$name != null) {
                Table.nativeSetString(j3, aVar.f6884f, createRowWithPrimaryKey, realmGet$name, false);
            }
            Table.nativeSetLong(j3, aVar.f6886h, createRowWithPrimaryKey, collectVideo.realmGet$addTime(), false);
            return createRowWithPrimaryKey;
        }
        Table.s(realmGet$url);
        throw null;
    }

    public static long insertOrUpdate(x xVar, CollectVideo collectVideo, Map<e0, Long> map) {
        long j2;
        if (collectVideo instanceof n) {
            n nVar = (n) collectVideo;
            if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                return nVar.realmGet$proxyState().f6305c.l();
            }
        }
        Table e2 = xVar.f6317j.e(CollectVideo.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(CollectVideo.class);
        long j4 = aVar.f6885g;
        String realmGet$url = collectVideo.realmGet$url();
        if (realmGet$url == null) {
            j2 = Table.nativeFindFirstNull(j3, j4);
        } else {
            j2 = Table.nativeFindFirstString(j3, j4, realmGet$url);
        }
        if (j2 == -1) {
            j2 = OsObject.createRowWithPrimaryKey(e2, j4, realmGet$url);
        }
        map.put(collectVideo, Long.valueOf(j2));
        String realmGet$name = collectVideo.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(j3, aVar.f6884f, j2, realmGet$name, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6884f, j2, false);
        }
        Table.nativeSetLong(j3, aVar.f6886h, j2, collectVideo.realmGet$addTime(), false);
        return j2;
    }

    public static com_comeback_data_ui_main_bean_CollectVideoRealmProxy newProxyInstance(g.a.a aVar, p pVar) {
        a.c cVar = g.a.a.f6189i.get();
        k0 G = aVar.G();
        G.a();
        c a2 = G.f6286f.a(CollectVideo.class);
        List<String> emptyList = Collections.emptyList();
        cVar.a = aVar;
        cVar.b = pVar;
        cVar.f6194c = a2;
        cVar.f6195d = false;
        cVar.f6196e = emptyList;
        com_comeback_data_ui_main_bean_CollectVideoRealmProxy com_comeback_data_ui_main_bean_collectvideorealmproxy = new com_comeback_data_ui_main_bean_CollectVideoRealmProxy();
        cVar.a();
        return com_comeback_data_ui_main_bean_collectvideorealmproxy;
    }

    public static CollectVideo update(x xVar, a aVar, CollectVideo collectVideo, CollectVideo collectVideo2, Map<e0, n> map, Set<m> set) {
        Table e2 = xVar.f6317j.e(CollectVideo.class);
        long j2 = aVar.f6883e;
        OsSharedRealm osSharedRealm = e2.f6953c;
        long nativePtr = osSharedRealm.getNativePtr();
        long j3 = e2.a;
        long nativeCreateBuilder = OsObjectBuilder.nativeCreateBuilder(j2 + 1);
        h hVar = osSharedRealm.context;
        boolean contains = set.contains(m.CHECK_SAME_VALUES_BEFORE_SET);
        long j4 = aVar.f6884f;
        String realmGet$name = collectVideo2.realmGet$name();
        if (realmGet$name == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j4);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j4, realmGet$name);
        }
        long j5 = aVar.f6885g;
        String realmGet$url = collectVideo2.realmGet$url();
        if (realmGet$url == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j5);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j5, realmGet$url);
        }
        long j6 = aVar.f6886h;
        Long valueOf = Long.valueOf(collectVideo2.realmGet$addTime());
        if (valueOf == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j6);
        } else {
            OsObjectBuilder.nativeAddInteger(nativeCreateBuilder, j6, valueOf.longValue());
        }
        try {
            OsObjectBuilder.nativeCreateOrUpdate(nativePtr, j3, nativeCreateBuilder, true, contains);
            return collectVideo;
        } finally {
            OsObjectBuilder.nativeDestroyBuilder(nativeCreateBuilder);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_comeback_data_ui_main_bean_CollectVideoRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_comeback_data_ui_main_bean_CollectVideoRealmProxy com_comeback_data_ui_main_bean_collectvideorealmproxy = (com_comeback_data_ui_main_bean_CollectVideoRealmProxy) obj;
        String str = this.proxyState.f6307e.b.f6197c;
        String str2 = com_comeback_data_ui_main_bean_collectvideorealmproxy.proxyState.f6307e.b.f6197c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        String j2 = this.proxyState.f6305c.d().j();
        String j3 = com_comeback_data_ui_main_bean_collectvideorealmproxy.proxyState.f6305c.d().j();
        if (j2 == null ? j3 == null : j2.equals(j3)) {
            return this.proxyState.f6305c.l() == com_comeback_data_ui_main_bean_collectvideorealmproxy.proxyState.f6305c.l();
        }
        return false;
    }

    public int hashCode() {
        v<CollectVideo> vVar = this.proxyState;
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
            v<CollectVideo> vVar = new v<>(this);
            this.proxyState = vVar;
            vVar.f6307e = cVar.a;
            vVar.f6305c = cVar.b;
            vVar.f6308f = cVar.f6195d;
            if (vVar == null) {
                throw null;
            }
        }
    }

    @Override // com.comeback.data.ui.main.bean.CollectVideo, g.a.b1
    public long realmGet$addTime() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.p(this.columnInfo.f6886h);
    }

    @Override // com.comeback.data.ui.main.bean.CollectVideo, g.a.b1
    public String realmGet$name() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6884f);
    }

    @Override // g.a.f1.n
    public v<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.comeback.data.ui.main.bean.CollectVideo, g.a.b1
    public String realmGet$url() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6885g);
    }

    @Override // com.comeback.data.ui.main.bean.CollectVideo, g.a.b1
    public void realmSet$addTime(long j2) {
        v<CollectVideo> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            this.proxyState.f6305c.u(this.columnInfo.f6886h, j2);
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            pVar.d().p(this.columnInfo.f6886h, pVar.l(), j2, true);
        }
    }

    @Override // com.comeback.data.ui.main.bean.CollectVideo, g.a.b1
    public void realmSet$name(String str) {
        v<CollectVideo> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6884f);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6884f, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6884f, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6884f, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.main.bean.CollectVideo, g.a.b1
    public void realmSet$url(String str) {
        v<CollectVideo> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            throw new RealmException("Primary key field 'url' cannot be changed after object was created.");
        }
    }

    public String toString() {
        if (!g0.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder q = f.b.a.a.a.q("CollectVideo = proxy[", "{name:");
        String str = "null";
        f.b.a.a.a.C(q, realmGet$name() != null ? realmGet$name() : str, "}", ",", "{url:");
        if (realmGet$url() != null) {
            str = realmGet$url();
        }
        f.b.a.a.a.C(q, str, "}", ",", "{addTime:");
        q.append(realmGet$addTime());
        q.append("}");
        q.append("]");
        return q.toString();
    }

    public static void insert(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long j2;
        long j3;
        Table e2 = xVar.f6317j.e(CollectVideo.class);
        long j4 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(CollectVideo.class);
        long j5 = aVar.f6885g;
        while (it.hasNext()) {
            CollectVideo collectVideo = (CollectVideo) it.next();
            if (!map.containsKey(collectVideo)) {
                if (collectVideo instanceof n) {
                    n nVar = (n) collectVideo;
                    if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                        map.put(collectVideo, Long.valueOf(nVar.realmGet$proxyState().f6305c.l()));
                    }
                }
                String realmGet$url = collectVideo.realmGet$url();
                if (realmGet$url == null) {
                    j2 = Table.nativeFindFirstNull(j4, j5);
                } else {
                    j2 = Table.nativeFindFirstString(j4, j5, realmGet$url);
                }
                if (j2 == -1) {
                    long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j5, realmGet$url);
                    map.put(collectVideo, Long.valueOf(createRowWithPrimaryKey));
                    String realmGet$name = collectVideo.realmGet$name();
                    if (realmGet$name != null) {
                        j3 = j5;
                        Table.nativeSetString(j4, aVar.f6884f, createRowWithPrimaryKey, realmGet$name, false);
                    } else {
                        j3 = j5;
                    }
                    Table.nativeSetLong(j4, aVar.f6886h, createRowWithPrimaryKey, collectVideo.realmGet$addTime(), false);
                    j5 = j3;
                } else {
                    Table.s(realmGet$url);
                    throw null;
                }
            }
        }
    }

    public static void insertOrUpdate(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long j2;
        long j3;
        Table e2 = xVar.f6317j.e(CollectVideo.class);
        long j4 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(CollectVideo.class);
        long j5 = aVar.f6885g;
        while (it.hasNext()) {
            CollectVideo collectVideo = (CollectVideo) it.next();
            if (!map.containsKey(collectVideo)) {
                if (collectVideo instanceof n) {
                    n nVar = (n) collectVideo;
                    if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                        map.put(collectVideo, Long.valueOf(nVar.realmGet$proxyState().f6305c.l()));
                    }
                }
                String realmGet$url = collectVideo.realmGet$url();
                if (realmGet$url == null) {
                    j2 = Table.nativeFindFirstNull(j4, j5);
                } else {
                    j2 = Table.nativeFindFirstString(j4, j5, realmGet$url);
                }
                long createRowWithPrimaryKey = j2 == -1 ? OsObject.createRowWithPrimaryKey(e2, j5, realmGet$url) : j2;
                map.put(collectVideo, Long.valueOf(createRowWithPrimaryKey));
                String realmGet$name = collectVideo.realmGet$name();
                if (realmGet$name != null) {
                    j3 = j5;
                    Table.nativeSetString(j4, aVar.f6884f, createRowWithPrimaryKey, realmGet$name, false);
                } else {
                    j3 = j5;
                    Table.nativeSetNull(j4, aVar.f6884f, createRowWithPrimaryKey, false);
                }
                Table.nativeSetLong(j4, aVar.f6886h, createRowWithPrimaryKey, collectVideo.realmGet$addTime(), false);
                j5 = j3;
            }
        }
    }
}
