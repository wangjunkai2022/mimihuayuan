package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.comeback.data.ui.cucumber.bean.RealmVideo;
import g.a.a;
import g.a.e0;
import g.a.f1.c;
import g.a.f1.h;
import g.a.f1.n;
import g.a.f1.p;
import g.a.g0;
import g.a.k0;
import g.a.m;
import g.a.q0;
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
public class com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy extends RealmVideo implements n, q0 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public a columnInfo;
    public v<RealmVideo> proxyState;

    /* loaded from: classes.dex */
    public static final class a extends c {

        /* renamed from: e  reason: collision with root package name */
        public long f6880e;

        /* renamed from: f  reason: collision with root package name */
        public long f6881f;

        /* renamed from: g  reason: collision with root package name */
        public long f6882g;

        /* renamed from: h  reason: collision with root package name */
        public long f6883h;

        /* renamed from: i  reason: collision with root package name */
        public long f6884i;

        /* renamed from: j  reason: collision with root package name */
        public long f6885j;

        public a(OsSchemaInfo osSchemaInfo) {
            super(5, true);
            OsObjectSchemaInfo a = osSchemaInfo.a("RealmVideo");
            this.f6881f = a("cover", "cover", a);
            this.f6882g = a("id", "id", a);
            this.f6883h = a("mins", "mins", a);
            this.f6884i = a("name", "name", a);
            this.f6885j = a("strPlayCnt", "strPlayCnt", a);
            this.f6880e = a.a();
        }

        @Override // g.a.f1.c
        public final void b(c cVar, c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f6881f = aVar.f6881f;
            aVar2.f6882g = aVar.f6882g;
            aVar2.f6883h = aVar.f6883h;
            aVar2.f6884i = aVar.f6884i;
            aVar2.f6885j = aVar.f6885j;
            aVar2.f6880e = aVar.f6880e;
        }
    }

    public com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy() {
        this.proxyState.b = false;
    }

    public static RealmVideo copy(x xVar, a aVar, RealmVideo realmVideo, boolean z, Map<e0, n> map, Set<m> set) {
        n nVar = map.get(realmVideo);
        if (nVar != null) {
            return (RealmVideo) nVar;
        }
        Table e2 = xVar.f6392j.e(RealmVideo.class);
        long j2 = aVar.f6880e;
        OsSharedRealm osSharedRealm = e2.f7028c;
        long nativePtr = osSharedRealm.getNativePtr();
        long j3 = e2.a;
        long nativeCreateBuilder = OsObjectBuilder.nativeCreateBuilder(j2 + 1);
        h hVar = osSharedRealm.context;
        set.contains(m.CHECK_SAME_VALUES_BEFORE_SET);
        long j4 = aVar.f6881f;
        String realmGet$cover = realmVideo.realmGet$cover();
        if (realmGet$cover == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j4);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j4, realmGet$cover);
        }
        long j5 = aVar.f6882g;
        String realmGet$id = realmVideo.realmGet$id();
        if (realmGet$id == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j5);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j5, realmGet$id);
        }
        long j6 = aVar.f6883h;
        String realmGet$mins = realmVideo.realmGet$mins();
        if (realmGet$mins == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j6);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j6, realmGet$mins);
        }
        long j7 = aVar.f6884i;
        String realmGet$name = realmVideo.realmGet$name();
        if (realmGet$name == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j7);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j7, realmGet$name);
        }
        long j8 = aVar.f6885j;
        String realmGet$strPlayCnt = realmVideo.realmGet$strPlayCnt();
        if (realmGet$strPlayCnt == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j8);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j8, realmGet$strPlayCnt);
        }
        try {
            UncheckedRow uncheckedRow = new UncheckedRow(hVar, e2, OsObjectBuilder.nativeCreateOrUpdate(nativePtr, j3, nativeCreateBuilder, false, false));
            OsObjectBuilder.nativeDestroyBuilder(nativeCreateBuilder);
            com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy newProxyInstance = newProxyInstance(xVar, uncheckedRow);
            map.put(realmVideo, newProxyInstance);
            return newProxyInstance;
        } catch (Throwable th) {
            OsObjectBuilder.nativeDestroyBuilder(nativeCreateBuilder);
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.comeback.data.ui.cucumber.bean.RealmVideo copyOrUpdate(g.a.x r9, io.realm.com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy.a r10, com.comeback.data.ui.cucumber.bean.RealmVideo r11, boolean r12, java.util.Map<g.a.e0, g.a.f1.n> r13, java.util.Set<g.a.m> r14) {
        /*
            boolean r0 = r11 instanceof g.a.f1.n
            if (r0 == 0) goto L34
            r0 = r11
            g.a.f1.n r0 = (g.a.f1.n) r0
            g.a.v r1 = r0.realmGet$proxyState()
            g.a.a r1 = r1.f6382e
            if (r1 == 0) goto L34
            g.a.v r0 = r0.realmGet$proxyState()
            g.a.a r0 = r0.f6382e
            long r1 = r0.a
            long r3 = r9.a
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 != 0) goto L2c
            g.a.b0 r0 = r0.b
            java.lang.String r0 = r0.f6272c
            g.a.b0 r1 = r9.b
            java.lang.String r1 = r1.f6272c
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L34
            return r11
        L2c:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.String r10 = "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."
            r9.<init>(r10)
            throw r9
        L34:
            g.a.a$d r0 = g.a.a.f6264i
            java.lang.Object r0 = r0.get()
            g.a.a$c r0 = (g.a.a.c) r0
            java.lang.Object r1 = r13.get(r11)
            g.a.f1.n r1 = (g.a.f1.n) r1
            if (r1 == 0) goto L47
            com.comeback.data.ui.cucumber.bean.RealmVideo r1 = (com.comeback.data.ui.cucumber.bean.RealmVideo) r1
            return r1
        L47:
            r1 = 0
            r2 = 0
            if (r12 == 0) goto L8e
            java.lang.Class<com.comeback.data.ui.cucumber.bean.RealmVideo> r3 = com.comeback.data.ui.cucumber.bean.RealmVideo.class
            g.a.k0 r4 = r9.f6392j
            io.realm.internal.Table r3 = r4.e(r3)
            long r4 = r10.f6882g
            java.lang.String r6 = r11.realmGet$id()
            if (r6 != 0) goto L60
            long r4 = r3.b(r4)
            goto L64
        L60:
            long r4 = r3.c(r4, r6)
        L64:
            r6 = -1
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 != 0) goto L6b
            goto L8f
        L6b:
            io.realm.internal.UncheckedRow r1 = r3.l(r4)     // Catch: java.lang.Throwable -> L89
            java.util.List r3 = java.util.Collections.emptyList()     // Catch: java.lang.Throwable -> L89
            r0.a = r9     // Catch: java.lang.Throwable -> L89
            r0.b = r1     // Catch: java.lang.Throwable -> L89
            r0.f6269c = r10     // Catch: java.lang.Throwable -> L89
            r0.f6270d = r2     // Catch: java.lang.Throwable -> L89
            r0.f6271e = r3     // Catch: java.lang.Throwable -> L89
            io.realm.com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy r1 = new io.realm.com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy     // Catch: java.lang.Throwable -> L89
            r1.<init>()     // Catch: java.lang.Throwable -> L89
            r13.put(r11, r1)     // Catch: java.lang.Throwable -> L89
            r0.a()
            goto L8e
        L89:
            r9 = move-exception
            r0.a()
            throw r9
        L8e:
            r2 = r12
        L8f:
            r3 = r1
            if (r2 == 0) goto L9c
            r1 = r9
            r2 = r10
            r4 = r11
            r5 = r13
            r6 = r14
            com.comeback.data.ui.cucumber.bean.RealmVideo r9 = update(r1, r2, r3, r4, r5, r6)
            goto La0
        L9c:
            com.comeback.data.ui.cucumber.bean.RealmVideo r9 = copy(r9, r10, r11, r12, r13, r14)
        La0:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy.copyOrUpdate(g.a.x, io.realm.com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy$a, com.comeback.data.ui.cucumber.bean.RealmVideo, boolean, java.util.Map, java.util.Set):com.comeback.data.ui.cucumber.bean.RealmVideo");
    }

    public static a createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new a(osSchemaInfo);
    }

    public static RealmVideo createDetachedCopy(RealmVideo realmVideo, int i2, int i3, Map<e0, n.a<e0>> map) {
        RealmVideo realmVideo2;
        if (i2 > i3 || realmVideo == null) {
            return null;
        }
        n.a<e0> aVar = map.get(realmVideo);
        if (aVar == null) {
            realmVideo2 = new RealmVideo();
            map.put(realmVideo, new n.a<>(i2, realmVideo2));
        } else if (i2 >= aVar.a) {
            return (RealmVideo) aVar.b;
        } else {
            aVar.a = i2;
            realmVideo2 = (RealmVideo) aVar.b;
        }
        realmVideo2.realmSet$cover(realmVideo.realmGet$cover());
        realmVideo2.realmSet$id(realmVideo.realmGet$id());
        realmVideo2.realmSet$mins(realmVideo.realmGet$mins());
        realmVideo2.realmSet$name(realmVideo.realmGet$name());
        realmVideo2.realmSet$strPlayCnt(realmVideo.realmGet$strPlayCnt());
        return realmVideo2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        long[] jArr = new long[5];
        long[] jArr2 = new long[0];
        jArr[0] = Property.nativeCreatePersistedProperty("cover", Property.a(RealmFieldType.STRING, false), false, false);
        int i2 = 0 + 1;
        jArr[i2] = Property.nativeCreatePersistedProperty("id", Property.a(RealmFieldType.STRING, false), true, true);
        int i3 = i2 + 1;
        jArr[i3] = Property.nativeCreatePersistedProperty("mins", Property.a(RealmFieldType.STRING, false), false, false);
        int i4 = i3 + 1;
        jArr[i4] = Property.nativeCreatePersistedProperty("name", Property.a(RealmFieldType.STRING, false), false, false);
        int i5 = i4 + 1;
        jArr[i5] = Property.nativeCreatePersistedProperty("strPlayCnt", Property.a(RealmFieldType.STRING, false), false, false);
        if (i5 + 1 != -1) {
            OsObjectSchemaInfo osObjectSchemaInfo = new OsObjectSchemaInfo("RealmVideo", null);
            OsObjectSchemaInfo.nativeAddProperties(osObjectSchemaInfo.a, jArr, jArr2);
            return osObjectSchemaInfo;
        }
        throw new IllegalStateException("'OsObjectSchemaInfo.build()' has been called before on this object.");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.comeback.data.ui.cucumber.bean.RealmVideo createOrUpdateUsingJsonObject(g.a.x r9, org.json.JSONObject r10, boolean r11) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 254
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy.createOrUpdateUsingJsonObject(g.a.x, org.json.JSONObject, boolean):com.comeback.data.ui.cucumber.bean.RealmVideo");
    }

    @TargetApi(11)
    public static RealmVideo createUsingJsonStream(x xVar, JsonReader jsonReader) throws IOException {
        RealmVideo realmVideo = new RealmVideo();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("cover")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    realmVideo.realmSet$cover(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    realmVideo.realmSet$cover(null);
                }
            } else if (nextName.equals("id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    realmVideo.realmSet$id(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    realmVideo.realmSet$id(null);
                }
                z = true;
            } else if (nextName.equals("mins")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    realmVideo.realmSet$mins(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    realmVideo.realmSet$mins(null);
                }
            } else if (nextName.equals("name")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    realmVideo.realmSet$name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    realmVideo.realmSet$name(null);
                }
            } else if (nextName.equals("strPlayCnt")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    realmVideo.realmSet$strPlayCnt(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    realmVideo.realmSet$strPlayCnt(null);
                }
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        if (z) {
            return (RealmVideo) xVar.L(realmVideo, new m[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "RealmVideo";
    }

    public static long insert(x xVar, RealmVideo realmVideo, Map<e0, Long> map) {
        long nativeFindFirstString;
        if (realmVideo instanceof n) {
            n nVar = (n) realmVideo;
            if (nVar.realmGet$proxyState().f6382e != null && nVar.realmGet$proxyState().f6382e.b.f6272c.equals(xVar.b.f6272c)) {
                return nVar.realmGet$proxyState().f6380c.l();
            }
        }
        Table e2 = xVar.f6392j.e(RealmVideo.class);
        long j2 = e2.a;
        k0 k0Var = xVar.f6392j;
        k0Var.a();
        a aVar = (a) k0Var.f6361f.a(RealmVideo.class);
        long j3 = aVar.f6882g;
        String realmGet$id = realmVideo.realmGet$id();
        if (realmGet$id == null) {
            nativeFindFirstString = Table.nativeFindFirstNull(j2, j3);
        } else {
            nativeFindFirstString = Table.nativeFindFirstString(j2, j3, realmGet$id);
        }
        if (nativeFindFirstString == -1) {
            long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j3, realmGet$id);
            map.put(realmVideo, Long.valueOf(createRowWithPrimaryKey));
            String realmGet$cover = realmVideo.realmGet$cover();
            if (realmGet$cover != null) {
                Table.nativeSetString(j2, aVar.f6881f, createRowWithPrimaryKey, realmGet$cover, false);
            }
            String realmGet$mins = realmVideo.realmGet$mins();
            if (realmGet$mins != null) {
                Table.nativeSetString(j2, aVar.f6883h, createRowWithPrimaryKey, realmGet$mins, false);
            }
            String realmGet$name = realmVideo.realmGet$name();
            if (realmGet$name != null) {
                Table.nativeSetString(j2, aVar.f6884i, createRowWithPrimaryKey, realmGet$name, false);
            }
            String realmGet$strPlayCnt = realmVideo.realmGet$strPlayCnt();
            if (realmGet$strPlayCnt != null) {
                Table.nativeSetString(j2, aVar.f6885j, createRowWithPrimaryKey, realmGet$strPlayCnt, false);
            }
            return createRowWithPrimaryKey;
        }
        Table.s(realmGet$id);
        throw null;
    }

    public static long insertOrUpdate(x xVar, RealmVideo realmVideo, Map<e0, Long> map) {
        long nativeFindFirstString;
        if (realmVideo instanceof n) {
            n nVar = (n) realmVideo;
            if (nVar.realmGet$proxyState().f6382e != null && nVar.realmGet$proxyState().f6382e.b.f6272c.equals(xVar.b.f6272c)) {
                return nVar.realmGet$proxyState().f6380c.l();
            }
        }
        Table e2 = xVar.f6392j.e(RealmVideo.class);
        long j2 = e2.a;
        k0 k0Var = xVar.f6392j;
        k0Var.a();
        a aVar = (a) k0Var.f6361f.a(RealmVideo.class);
        long j3 = aVar.f6882g;
        String realmGet$id = realmVideo.realmGet$id();
        if (realmGet$id == null) {
            nativeFindFirstString = Table.nativeFindFirstNull(j2, j3);
        } else {
            nativeFindFirstString = Table.nativeFindFirstString(j2, j3, realmGet$id);
        }
        if (nativeFindFirstString == -1) {
            nativeFindFirstString = OsObject.createRowWithPrimaryKey(e2, j3, realmGet$id);
        }
        long j4 = nativeFindFirstString;
        map.put(realmVideo, Long.valueOf(j4));
        String realmGet$cover = realmVideo.realmGet$cover();
        if (realmGet$cover != null) {
            Table.nativeSetString(j2, aVar.f6881f, j4, realmGet$cover, false);
        } else {
            Table.nativeSetNull(j2, aVar.f6881f, j4, false);
        }
        String realmGet$mins = realmVideo.realmGet$mins();
        if (realmGet$mins != null) {
            Table.nativeSetString(j2, aVar.f6883h, j4, realmGet$mins, false);
        } else {
            Table.nativeSetNull(j2, aVar.f6883h, j4, false);
        }
        String realmGet$name = realmVideo.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(j2, aVar.f6884i, j4, realmGet$name, false);
        } else {
            Table.nativeSetNull(j2, aVar.f6884i, j4, false);
        }
        String realmGet$strPlayCnt = realmVideo.realmGet$strPlayCnt();
        if (realmGet$strPlayCnt != null) {
            Table.nativeSetString(j2, aVar.f6885j, j4, realmGet$strPlayCnt, false);
        } else {
            Table.nativeSetNull(j2, aVar.f6885j, j4, false);
        }
        return j4;
    }

    public static com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy newProxyInstance(g.a.a aVar, p pVar) {
        a.c cVar = g.a.a.f6264i.get();
        k0 G = aVar.G();
        G.a();
        c a2 = G.f6361f.a(RealmVideo.class);
        List<String> emptyList = Collections.emptyList();
        cVar.a = aVar;
        cVar.b = pVar;
        cVar.f6269c = a2;
        cVar.f6270d = false;
        cVar.f6271e = emptyList;
        com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy com_comeback_data_ui_cucumber_bean_realmvideorealmproxy = new com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy();
        cVar.a();
        return com_comeback_data_ui_cucumber_bean_realmvideorealmproxy;
    }

    public static RealmVideo update(x xVar, a aVar, RealmVideo realmVideo, RealmVideo realmVideo2, Map<e0, n> map, Set<m> set) {
        Table e2 = xVar.f6392j.e(RealmVideo.class);
        long j2 = aVar.f6880e;
        OsSharedRealm osSharedRealm = e2.f7028c;
        long nativePtr = osSharedRealm.getNativePtr();
        long j3 = e2.a;
        long nativeCreateBuilder = OsObjectBuilder.nativeCreateBuilder(j2 + 1);
        h hVar = osSharedRealm.context;
        boolean contains = set.contains(m.CHECK_SAME_VALUES_BEFORE_SET);
        long j4 = aVar.f6881f;
        String realmGet$cover = realmVideo2.realmGet$cover();
        if (realmGet$cover == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j4);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j4, realmGet$cover);
        }
        long j5 = aVar.f6882g;
        String realmGet$id = realmVideo2.realmGet$id();
        if (realmGet$id == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j5);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j5, realmGet$id);
        }
        long j6 = aVar.f6883h;
        String realmGet$mins = realmVideo2.realmGet$mins();
        if (realmGet$mins == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j6);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j6, realmGet$mins);
        }
        long j7 = aVar.f6884i;
        String realmGet$name = realmVideo2.realmGet$name();
        if (realmGet$name == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j7);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j7, realmGet$name);
        }
        long j8 = aVar.f6885j;
        String realmGet$strPlayCnt = realmVideo2.realmGet$strPlayCnt();
        if (realmGet$strPlayCnt == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j8);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j8, realmGet$strPlayCnt);
        }
        try {
            OsObjectBuilder.nativeCreateOrUpdate(nativePtr, j3, nativeCreateBuilder, true, contains);
            return realmVideo;
        } finally {
            OsObjectBuilder.nativeDestroyBuilder(nativeCreateBuilder);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy com_comeback_data_ui_cucumber_bean_realmvideorealmproxy = (com_comeback_data_ui_cucumber_bean_RealmVideoRealmProxy) obj;
        String str = this.proxyState.f6382e.b.f6272c;
        String str2 = com_comeback_data_ui_cucumber_bean_realmvideorealmproxy.proxyState.f6382e.b.f6272c;
        if (str == null ? str2 == null : str.equals(str2)) {
            String j2 = this.proxyState.f6380c.d().j();
            String j3 = com_comeback_data_ui_cucumber_bean_realmvideorealmproxy.proxyState.f6380c.d().j();
            if (j2 == null ? j3 == null : j2.equals(j3)) {
                return this.proxyState.f6380c.l() == com_comeback_data_ui_cucumber_bean_realmvideorealmproxy.proxyState.f6380c.l();
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        v<RealmVideo> vVar = this.proxyState;
        String str = vVar.f6382e.b.f6272c;
        String j2 = vVar.f6380c.d().j();
        long l2 = this.proxyState.f6380c.l();
        return ((((527 + (str != null ? str.hashCode() : 0)) * 31) + (j2 != null ? j2.hashCode() : 0)) * 31) + ((int) ((l2 >>> 32) ^ l2));
    }

    @Override // g.a.f1.n
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        a.c cVar = g.a.a.f6264i.get();
        this.columnInfo = (a) cVar.f6269c;
        v<RealmVideo> vVar = new v<>(this);
        this.proxyState = vVar;
        vVar.f6382e = cVar.a;
        vVar.f6380c = cVar.b;
        vVar.f6383f = cVar.f6270d;
        if (vVar == null) {
            throw null;
        }
    }

    @Override // com.comeback.data.ui.cucumber.bean.RealmVideo, g.a.q0
    public String realmGet$cover() {
        this.proxyState.f6382e.f();
        return this.proxyState.f6380c.q(this.columnInfo.f6881f);
    }

    @Override // com.comeback.data.ui.cucumber.bean.RealmVideo, g.a.q0
    public String realmGet$id() {
        this.proxyState.f6382e.f();
        return this.proxyState.f6380c.q(this.columnInfo.f6882g);
    }

    @Override // com.comeback.data.ui.cucumber.bean.RealmVideo, g.a.q0
    public String realmGet$mins() {
        this.proxyState.f6382e.f();
        return this.proxyState.f6380c.q(this.columnInfo.f6883h);
    }

    @Override // com.comeback.data.ui.cucumber.bean.RealmVideo, g.a.q0
    public String realmGet$name() {
        this.proxyState.f6382e.f();
        return this.proxyState.f6380c.q(this.columnInfo.f6884i);
    }

    @Override // g.a.f1.n
    public v<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.comeback.data.ui.cucumber.bean.RealmVideo, g.a.q0
    public String realmGet$strPlayCnt() {
        this.proxyState.f6382e.f();
        return this.proxyState.f6380c.q(this.columnInfo.f6885j);
    }

    @Override // com.comeback.data.ui.cucumber.bean.RealmVideo, g.a.q0
    public void realmSet$cover(String str) {
        v<RealmVideo> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.f6881f, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.f6881f, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6382e.f();
        if (str == null) {
            this.proxyState.f6380c.f(this.columnInfo.f6881f);
        } else {
            this.proxyState.f6380c.a(this.columnInfo.f6881f, str);
        }
    }

    @Override // com.comeback.data.ui.cucumber.bean.RealmVideo, g.a.q0
    public void realmSet$id(String str) {
        v<RealmVideo> vVar = this.proxyState;
        if (vVar.b) {
            return;
        }
        vVar.f6382e.f();
        throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
    }

    @Override // com.comeback.data.ui.cucumber.bean.RealmVideo, g.a.q0
    public void realmSet$mins(String str) {
        v<RealmVideo> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.f6883h, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.f6883h, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6382e.f();
        if (str == null) {
            this.proxyState.f6380c.f(this.columnInfo.f6883h);
        } else {
            this.proxyState.f6380c.a(this.columnInfo.f6883h, str);
        }
    }

    @Override // com.comeback.data.ui.cucumber.bean.RealmVideo, g.a.q0
    public void realmSet$name(String str) {
        v<RealmVideo> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.f6884i, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.f6884i, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6382e.f();
        if (str == null) {
            this.proxyState.f6380c.f(this.columnInfo.f6884i);
        } else {
            this.proxyState.f6380c.a(this.columnInfo.f6884i, str);
        }
    }

    @Override // com.comeback.data.ui.cucumber.bean.RealmVideo, g.a.q0
    public void realmSet$strPlayCnt(String str) {
        v<RealmVideo> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.f6885j, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.f6885j, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6382e.f();
        if (str == null) {
            this.proxyState.f6380c.f(this.columnInfo.f6885j);
        } else {
            this.proxyState.f6380c.a(this.columnInfo.f6885j, str);
        }
    }

    public String toString() {
        if (g0.isValid(this)) {
            StringBuilder q = f.b.a.a.a.q("RealmVideo = proxy[", "{cover:");
            f.b.a.a.a.C(q, realmGet$cover() != null ? realmGet$cover() : "null", "}", ",", "{id:");
            f.b.a.a.a.C(q, realmGet$id() != null ? realmGet$id() : "null", "}", ",", "{mins:");
            f.b.a.a.a.C(q, realmGet$mins() != null ? realmGet$mins() : "null", "}", ",", "{name:");
            f.b.a.a.a.C(q, realmGet$name() != null ? realmGet$name() : "null", "}", ",", "{strPlayCnt:");
            q.append(realmGet$strPlayCnt() != null ? realmGet$strPlayCnt() : "null");
            q.append("}");
            q.append("]");
            return q.toString();
        }
        return "Invalid object";
    }

    public static void insert(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long nativeFindFirstString;
        RealmVideo realmVideo;
        Table e2 = xVar.f6392j.e(RealmVideo.class);
        long j2 = e2.a;
        k0 k0Var = xVar.f6392j;
        k0Var.a();
        a aVar = (a) k0Var.f6361f.a(RealmVideo.class);
        long j3 = aVar.f6882g;
        while (it.hasNext()) {
            RealmVideo realmVideo2 = (RealmVideo) it.next();
            if (!map.containsKey(realmVideo2)) {
                if (realmVideo2 instanceof n) {
                    n nVar = (n) realmVideo2;
                    if (nVar.realmGet$proxyState().f6382e != null && nVar.realmGet$proxyState().f6382e.b.f6272c.equals(xVar.b.f6272c)) {
                        map.put(realmVideo2, Long.valueOf(nVar.realmGet$proxyState().f6380c.l()));
                    }
                }
                String realmGet$id = realmVideo2.realmGet$id();
                if (realmGet$id == null) {
                    nativeFindFirstString = Table.nativeFindFirstNull(j2, j3);
                } else {
                    nativeFindFirstString = Table.nativeFindFirstString(j2, j3, realmGet$id);
                }
                if (nativeFindFirstString == -1) {
                    long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j3, realmGet$id);
                    map.put(realmVideo2, Long.valueOf(createRowWithPrimaryKey));
                    String realmGet$cover = realmVideo2.realmGet$cover();
                    if (realmGet$cover != null) {
                        realmVideo = realmVideo2;
                        Table.nativeSetString(j2, aVar.f6881f, createRowWithPrimaryKey, realmGet$cover, false);
                    } else {
                        realmVideo = realmVideo2;
                    }
                    String realmGet$mins = realmVideo.realmGet$mins();
                    if (realmGet$mins != null) {
                        Table.nativeSetString(j2, aVar.f6883h, createRowWithPrimaryKey, realmGet$mins, false);
                    }
                    String realmGet$name = realmVideo.realmGet$name();
                    if (realmGet$name != null) {
                        Table.nativeSetString(j2, aVar.f6884i, createRowWithPrimaryKey, realmGet$name, false);
                    }
                    String realmGet$strPlayCnt = realmVideo.realmGet$strPlayCnt();
                    if (realmGet$strPlayCnt != null) {
                        Table.nativeSetString(j2, aVar.f6885j, createRowWithPrimaryKey, realmGet$strPlayCnt, false);
                    }
                } else {
                    Table.s(realmGet$id);
                    throw null;
                }
            }
        }
    }

    public static void insertOrUpdate(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long nativeFindFirstString;
        RealmVideo realmVideo;
        Table e2 = xVar.f6392j.e(RealmVideo.class);
        long j2 = e2.a;
        k0 k0Var = xVar.f6392j;
        k0Var.a();
        a aVar = (a) k0Var.f6361f.a(RealmVideo.class);
        long j3 = aVar.f6882g;
        while (it.hasNext()) {
            RealmVideo realmVideo2 = (RealmVideo) it.next();
            if (!map.containsKey(realmVideo2)) {
                if (realmVideo2 instanceof n) {
                    n nVar = (n) realmVideo2;
                    if (nVar.realmGet$proxyState().f6382e != null && nVar.realmGet$proxyState().f6382e.b.f6272c.equals(xVar.b.f6272c)) {
                        map.put(realmVideo2, Long.valueOf(nVar.realmGet$proxyState().f6380c.l()));
                    }
                }
                String realmGet$id = realmVideo2.realmGet$id();
                if (realmGet$id == null) {
                    nativeFindFirstString = Table.nativeFindFirstNull(j2, j3);
                } else {
                    nativeFindFirstString = Table.nativeFindFirstString(j2, j3, realmGet$id);
                }
                long createRowWithPrimaryKey = nativeFindFirstString == -1 ? OsObject.createRowWithPrimaryKey(e2, j3, realmGet$id) : nativeFindFirstString;
                map.put(realmVideo2, Long.valueOf(createRowWithPrimaryKey));
                String realmGet$cover = realmVideo2.realmGet$cover();
                if (realmGet$cover != null) {
                    realmVideo = realmVideo2;
                    Table.nativeSetString(j2, aVar.f6881f, createRowWithPrimaryKey, realmGet$cover, false);
                } else {
                    realmVideo = realmVideo2;
                    Table.nativeSetNull(j2, aVar.f6881f, createRowWithPrimaryKey, false);
                }
                String realmGet$mins = realmVideo.realmGet$mins();
                if (realmGet$mins != null) {
                    Table.nativeSetString(j2, aVar.f6883h, createRowWithPrimaryKey, realmGet$mins, false);
                } else {
                    Table.nativeSetNull(j2, aVar.f6883h, createRowWithPrimaryKey, false);
                }
                String realmGet$name = realmVideo.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(j2, aVar.f6884i, createRowWithPrimaryKey, realmGet$name, false);
                } else {
                    Table.nativeSetNull(j2, aVar.f6884i, createRowWithPrimaryKey, false);
                }
                String realmGet$strPlayCnt = realmVideo.realmGet$strPlayCnt();
                if (realmGet$strPlayCnt != null) {
                    Table.nativeSetString(j2, aVar.f6885j, createRowWithPrimaryKey, realmGet$strPlayCnt, false);
                } else {
                    Table.nativeSetNull(j2, aVar.f6885j, createRowWithPrimaryKey, false);
                }
            }
        }
    }
}
