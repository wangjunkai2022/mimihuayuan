package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.comeback.data.ui.km2.bean.Km2User;
import g.a.a;
import g.a.e0;
import g.a.f1.c;
import g.a.f1.h;
import g.a.f1.n;
import g.a.f1.p;
import g.a.g0;
import g.a.k0;
import g.a.m;
import g.a.v;
import g.a.v0;
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
public class com_comeback_data_ui_km2_bean_Km2UserRealmProxy extends Km2User implements n, v0 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public a columnInfo;
    public v<Km2User> proxyState;

    /* loaded from: classes.dex */
    public static final class a extends c {

        /* renamed from: e  reason: collision with root package name */
        public long f6920e;

        /* renamed from: f  reason: collision with root package name */
        public long f6921f;

        /* renamed from: g  reason: collision with root package name */
        public long f6922g;

        public a(OsSchemaInfo osSchemaInfo) {
            super(2, true);
            OsObjectSchemaInfo a = osSchemaInfo.a("Km2User");
            this.f6921f = a("mu_name", "mu_name", a);
            this.f6922g = a("mu_id", "mu_id", a);
            this.f6920e = a.a();
        }

        @Override // g.a.f1.c
        public final void b(c cVar, c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f6921f = aVar.f6921f;
            aVar2.f6922g = aVar.f6922g;
            aVar2.f6920e = aVar.f6920e;
        }
    }

    public com_comeback_data_ui_km2_bean_Km2UserRealmProxy() {
        this.proxyState.b = false;
    }

    public static Km2User copy(x xVar, a aVar, Km2User km2User, boolean z, Map<e0, n> map, Set<m> set) {
        n nVar = map.get(km2User);
        if (nVar != null) {
            return (Km2User) nVar;
        }
        Table e2 = xVar.f6392j.e(Km2User.class);
        long j2 = aVar.f6920e;
        OsSharedRealm osSharedRealm = e2.f7028c;
        long nativePtr = osSharedRealm.getNativePtr();
        long j3 = e2.a;
        long nativeCreateBuilder = OsObjectBuilder.nativeCreateBuilder(j2 + 1);
        h hVar = osSharedRealm.context;
        set.contains(m.CHECK_SAME_VALUES_BEFORE_SET);
        long j4 = aVar.f6921f;
        String realmGet$mu_name = km2User.realmGet$mu_name();
        if (realmGet$mu_name == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j4);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j4, realmGet$mu_name);
        }
        long j5 = aVar.f6922g;
        String realmGet$mu_id = km2User.realmGet$mu_id();
        if (realmGet$mu_id == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j5);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j5, realmGet$mu_id);
        }
        try {
            UncheckedRow uncheckedRow = new UncheckedRow(hVar, e2, OsObjectBuilder.nativeCreateOrUpdate(nativePtr, j3, nativeCreateBuilder, false, false));
            OsObjectBuilder.nativeDestroyBuilder(nativeCreateBuilder);
            com_comeback_data_ui_km2_bean_Km2UserRealmProxy newProxyInstance = newProxyInstance(xVar, uncheckedRow);
            map.put(km2User, newProxyInstance);
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
    public static com.comeback.data.ui.km2.bean.Km2User copyOrUpdate(g.a.x r9, io.realm.com_comeback_data_ui_km2_bean_Km2UserRealmProxy.a r10, com.comeback.data.ui.km2.bean.Km2User r11, boolean r12, java.util.Map<g.a.e0, g.a.f1.n> r13, java.util.Set<g.a.m> r14) {
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
            com.comeback.data.ui.km2.bean.Km2User r1 = (com.comeback.data.ui.km2.bean.Km2User) r1
            return r1
        L47:
            r1 = 0
            r2 = 0
            if (r12 == 0) goto L8e
            java.lang.Class<com.comeback.data.ui.km2.bean.Km2User> r3 = com.comeback.data.ui.km2.bean.Km2User.class
            g.a.k0 r4 = r9.f6392j
            io.realm.internal.Table r3 = r4.e(r3)
            long r4 = r10.f6922g
            java.lang.String r6 = r11.realmGet$mu_id()
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
            io.realm.com_comeback_data_ui_km2_bean_Km2UserRealmProxy r1 = new io.realm.com_comeback_data_ui_km2_bean_Km2UserRealmProxy     // Catch: java.lang.Throwable -> L89
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
            com.comeback.data.ui.km2.bean.Km2User r9 = update(r1, r2, r3, r4, r5, r6)
            goto La0
        L9c:
            com.comeback.data.ui.km2.bean.Km2User r9 = copy(r9, r10, r11, r12, r13, r14)
        La0:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_km2_bean_Km2UserRealmProxy.copyOrUpdate(g.a.x, io.realm.com_comeback_data_ui_km2_bean_Km2UserRealmProxy$a, com.comeback.data.ui.km2.bean.Km2User, boolean, java.util.Map, java.util.Set):com.comeback.data.ui.km2.bean.Km2User");
    }

    public static a createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new a(osSchemaInfo);
    }

    public static Km2User createDetachedCopy(Km2User km2User, int i2, int i3, Map<e0, n.a<e0>> map) {
        Km2User km2User2;
        if (i2 > i3 || km2User == null) {
            return null;
        }
        n.a<e0> aVar = map.get(km2User);
        if (aVar == null) {
            km2User2 = new Km2User();
            map.put(km2User, new n.a<>(i2, km2User2));
        } else if (i2 >= aVar.a) {
            return (Km2User) aVar.b;
        } else {
            aVar.a = i2;
            km2User2 = (Km2User) aVar.b;
        }
        km2User2.realmSet$mu_name(km2User.realmGet$mu_name());
        km2User2.realmSet$mu_id(km2User.realmGet$mu_id());
        return km2User2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        long[] jArr = new long[2];
        long[] jArr2 = new long[0];
        jArr[0] = Property.nativeCreatePersistedProperty("mu_name", Property.a(RealmFieldType.STRING, false), false, false);
        int i2 = 0 + 1;
        jArr[i2] = Property.nativeCreatePersistedProperty("mu_id", Property.a(RealmFieldType.STRING, false), true, true);
        if (i2 + 1 != -1) {
            OsObjectSchemaInfo osObjectSchemaInfo = new OsObjectSchemaInfo("Km2User", null);
            OsObjectSchemaInfo.nativeAddProperties(osObjectSchemaInfo.a, jArr, jArr2);
            return osObjectSchemaInfo;
        }
        throw new IllegalStateException("'OsObjectSchemaInfo.build()' has been called before on this object.");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.comeback.data.ui.km2.bean.Km2User createOrUpdateUsingJsonObject(g.a.x r9, org.json.JSONObject r10, boolean r11) throws org.json.JSONException {
        /*
            java.lang.Class<com.comeback.data.ui.km2.bean.Km2User> r0 = com.comeback.data.ui.km2.bean.Km2User.class
            java.util.List r1 = java.util.Collections.emptyList()
            r2 = 0
            java.lang.String r3 = "mu_id"
            if (r11 == 0) goto L6d
            g.a.k0 r11 = r9.f6392j
            io.realm.internal.Table r11 = r11.e(r0)
            g.a.k0 r4 = r9.f6392j
            r4.a()
            g.a.f1.b r4 = r4.f6361f
            g.a.f1.c r4 = r4.a(r0)
            io.realm.com_comeback_data_ui_km2_bean_Km2UserRealmProxy$a r4 = (io.realm.com_comeback_data_ui_km2_bean_Km2UserRealmProxy.a) r4
            long r4 = r4.f6922g
            boolean r6 = r10.isNull(r3)
            if (r6 == 0) goto L2b
            long r4 = r11.b(r4)
            goto L33
        L2b:
            java.lang.String r6 = r10.getString(r3)
            long r4 = r11.c(r4, r6)
        L33:
            r6 = -1
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 == 0) goto L6d
            g.a.a$d r6 = g.a.a.f6264i
            java.lang.Object r6 = r6.get()
            g.a.a$c r6 = (g.a.a.c) r6
            io.realm.internal.UncheckedRow r11 = r11.l(r4)     // Catch: java.lang.Throwable -> L68
            g.a.k0 r4 = r9.f6392j     // Catch: java.lang.Throwable -> L68
            r4.a()     // Catch: java.lang.Throwable -> L68
            g.a.f1.b r4 = r4.f6361f     // Catch: java.lang.Throwable -> L68
            g.a.f1.c r4 = r4.a(r0)     // Catch: java.lang.Throwable -> L68
            r5 = 0
            java.util.List r7 = java.util.Collections.emptyList()     // Catch: java.lang.Throwable -> L68
            r6.a = r9     // Catch: java.lang.Throwable -> L68
            r6.b = r11     // Catch: java.lang.Throwable -> L68
            r6.f6269c = r4     // Catch: java.lang.Throwable -> L68
            r6.f6270d = r5     // Catch: java.lang.Throwable -> L68
            r6.f6271e = r7     // Catch: java.lang.Throwable -> L68
            io.realm.com_comeback_data_ui_km2_bean_Km2UserRealmProxy r11 = new io.realm.com_comeback_data_ui_km2_bean_Km2UserRealmProxy     // Catch: java.lang.Throwable -> L68
            r11.<init>()     // Catch: java.lang.Throwable -> L68
            r6.a()
            goto L6e
        L68:
            r9 = move-exception
            r6.a()
            throw r9
        L6d:
            r11 = r2
        L6e:
            if (r11 != 0) goto L99
            boolean r11 = r10.has(r3)
            if (r11 == 0) goto L91
            boolean r11 = r10.isNull(r3)
            r4 = 1
            if (r11 == 0) goto L85
            g.a.e0 r9 = r9.M(r0, r2, r4, r1)
            r11 = r9
            io.realm.com_comeback_data_ui_km2_bean_Km2UserRealmProxy r11 = (io.realm.com_comeback_data_ui_km2_bean_Km2UserRealmProxy) r11
            goto L99
        L85:
            java.lang.String r11 = r10.getString(r3)
            g.a.e0 r9 = r9.M(r0, r11, r4, r1)
            r11 = r9
            io.realm.com_comeback_data_ui_km2_bean_Km2UserRealmProxy r11 = (io.realm.com_comeback_data_ui_km2_bean_Km2UserRealmProxy) r11
            goto L99
        L91:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.String r10 = "JSON object doesn't have the primary key field 'mu_id'."
            r9.<init>(r10)
            throw r9
        L99:
            java.lang.String r9 = "mu_name"
            boolean r0 = r10.has(r9)
            if (r0 == 0) goto Lb2
            boolean r0 = r10.isNull(r9)
            if (r0 == 0) goto Lab
            r11.realmSet$mu_name(r2)
            goto Lb2
        Lab:
            java.lang.String r9 = r10.getString(r9)
            r11.realmSet$mu_name(r9)
        Lb2:
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_km2_bean_Km2UserRealmProxy.createOrUpdateUsingJsonObject(g.a.x, org.json.JSONObject, boolean):com.comeback.data.ui.km2.bean.Km2User");
    }

    @TargetApi(11)
    public static Km2User createUsingJsonStream(x xVar, JsonReader jsonReader) throws IOException {
        Km2User km2User = new Km2User();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("mu_name")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    km2User.realmSet$mu_name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    km2User.realmSet$mu_name(null);
                }
            } else if (nextName.equals("mu_id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    km2User.realmSet$mu_id(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    km2User.realmSet$mu_id(null);
                }
                z = true;
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        if (z) {
            return (Km2User) xVar.L(km2User, new m[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'mu_id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "Km2User";
    }

    public static long insert(x xVar, Km2User km2User, Map<e0, Long> map) {
        long nativeFindFirstString;
        if (km2User instanceof n) {
            n nVar = (n) km2User;
            if (nVar.realmGet$proxyState().f6382e != null && nVar.realmGet$proxyState().f6382e.b.f6272c.equals(xVar.b.f6272c)) {
                return nVar.realmGet$proxyState().f6380c.l();
            }
        }
        Table e2 = xVar.f6392j.e(Km2User.class);
        long j2 = e2.a;
        k0 k0Var = xVar.f6392j;
        k0Var.a();
        a aVar = (a) k0Var.f6361f.a(Km2User.class);
        long j3 = aVar.f6922g;
        String realmGet$mu_id = km2User.realmGet$mu_id();
        if (realmGet$mu_id == null) {
            nativeFindFirstString = Table.nativeFindFirstNull(j2, j3);
        } else {
            nativeFindFirstString = Table.nativeFindFirstString(j2, j3, realmGet$mu_id);
        }
        if (nativeFindFirstString == -1) {
            long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j3, realmGet$mu_id);
            map.put(km2User, Long.valueOf(createRowWithPrimaryKey));
            String realmGet$mu_name = km2User.realmGet$mu_name();
            if (realmGet$mu_name != null) {
                Table.nativeSetString(j2, aVar.f6921f, createRowWithPrimaryKey, realmGet$mu_name, false);
            }
            return createRowWithPrimaryKey;
        }
        Table.s(realmGet$mu_id);
        throw null;
    }

    public static long insertOrUpdate(x xVar, Km2User km2User, Map<e0, Long> map) {
        long nativeFindFirstString;
        if (km2User instanceof n) {
            n nVar = (n) km2User;
            if (nVar.realmGet$proxyState().f6382e != null && nVar.realmGet$proxyState().f6382e.b.f6272c.equals(xVar.b.f6272c)) {
                return nVar.realmGet$proxyState().f6380c.l();
            }
        }
        Table e2 = xVar.f6392j.e(Km2User.class);
        long j2 = e2.a;
        k0 k0Var = xVar.f6392j;
        k0Var.a();
        a aVar = (a) k0Var.f6361f.a(Km2User.class);
        long j3 = aVar.f6922g;
        String realmGet$mu_id = km2User.realmGet$mu_id();
        if (realmGet$mu_id == null) {
            nativeFindFirstString = Table.nativeFindFirstNull(j2, j3);
        } else {
            nativeFindFirstString = Table.nativeFindFirstString(j2, j3, realmGet$mu_id);
        }
        if (nativeFindFirstString == -1) {
            nativeFindFirstString = OsObject.createRowWithPrimaryKey(e2, j3, realmGet$mu_id);
        }
        long j4 = nativeFindFirstString;
        map.put(km2User, Long.valueOf(j4));
        String realmGet$mu_name = km2User.realmGet$mu_name();
        if (realmGet$mu_name != null) {
            Table.nativeSetString(j2, aVar.f6921f, j4, realmGet$mu_name, false);
        } else {
            Table.nativeSetNull(j2, aVar.f6921f, j4, false);
        }
        return j4;
    }

    public static com_comeback_data_ui_km2_bean_Km2UserRealmProxy newProxyInstance(g.a.a aVar, p pVar) {
        a.c cVar = g.a.a.f6264i.get();
        k0 G = aVar.G();
        G.a();
        c a2 = G.f6361f.a(Km2User.class);
        List<String> emptyList = Collections.emptyList();
        cVar.a = aVar;
        cVar.b = pVar;
        cVar.f6269c = a2;
        cVar.f6270d = false;
        cVar.f6271e = emptyList;
        com_comeback_data_ui_km2_bean_Km2UserRealmProxy com_comeback_data_ui_km2_bean_km2userrealmproxy = new com_comeback_data_ui_km2_bean_Km2UserRealmProxy();
        cVar.a();
        return com_comeback_data_ui_km2_bean_km2userrealmproxy;
    }

    public static Km2User update(x xVar, a aVar, Km2User km2User, Km2User km2User2, Map<e0, n> map, Set<m> set) {
        Table e2 = xVar.f6392j.e(Km2User.class);
        long j2 = aVar.f6920e;
        OsSharedRealm osSharedRealm = e2.f7028c;
        long nativePtr = osSharedRealm.getNativePtr();
        long j3 = e2.a;
        long nativeCreateBuilder = OsObjectBuilder.nativeCreateBuilder(j2 + 1);
        h hVar = osSharedRealm.context;
        boolean contains = set.contains(m.CHECK_SAME_VALUES_BEFORE_SET);
        long j4 = aVar.f6921f;
        String realmGet$mu_name = km2User2.realmGet$mu_name();
        if (realmGet$mu_name == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j4);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j4, realmGet$mu_name);
        }
        long j5 = aVar.f6922g;
        String realmGet$mu_id = km2User2.realmGet$mu_id();
        if (realmGet$mu_id == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j5);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j5, realmGet$mu_id);
        }
        try {
            OsObjectBuilder.nativeCreateOrUpdate(nativePtr, j3, nativeCreateBuilder, true, contains);
            return km2User;
        } finally {
            OsObjectBuilder.nativeDestroyBuilder(nativeCreateBuilder);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_comeback_data_ui_km2_bean_Km2UserRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_comeback_data_ui_km2_bean_Km2UserRealmProxy com_comeback_data_ui_km2_bean_km2userrealmproxy = (com_comeback_data_ui_km2_bean_Km2UserRealmProxy) obj;
        String str = this.proxyState.f6382e.b.f6272c;
        String str2 = com_comeback_data_ui_km2_bean_km2userrealmproxy.proxyState.f6382e.b.f6272c;
        if (str == null ? str2 == null : str.equals(str2)) {
            String j2 = this.proxyState.f6380c.d().j();
            String j3 = com_comeback_data_ui_km2_bean_km2userrealmproxy.proxyState.f6380c.d().j();
            if (j2 == null ? j3 == null : j2.equals(j3)) {
                return this.proxyState.f6380c.l() == com_comeback_data_ui_km2_bean_km2userrealmproxy.proxyState.f6380c.l();
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        v<Km2User> vVar = this.proxyState;
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
        v<Km2User> vVar = new v<>(this);
        this.proxyState = vVar;
        vVar.f6382e = cVar.a;
        vVar.f6380c = cVar.b;
        vVar.f6383f = cVar.f6270d;
        if (vVar == null) {
            throw null;
        }
    }

    @Override // com.comeback.data.ui.km2.bean.Km2User, g.a.v0
    public String realmGet$mu_id() {
        this.proxyState.f6382e.f();
        return this.proxyState.f6380c.q(this.columnInfo.f6922g);
    }

    @Override // com.comeback.data.ui.km2.bean.Km2User, g.a.v0
    public String realmGet$mu_name() {
        this.proxyState.f6382e.f();
        return this.proxyState.f6380c.q(this.columnInfo.f6921f);
    }

    @Override // g.a.f1.n
    public v<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.comeback.data.ui.km2.bean.Km2User, g.a.v0
    public void realmSet$mu_id(String str) {
        v<Km2User> vVar = this.proxyState;
        if (vVar.b) {
            return;
        }
        vVar.f6382e.f();
        throw new RealmException("Primary key field 'mu_id' cannot be changed after object was created.");
    }

    @Override // com.comeback.data.ui.km2.bean.Km2User, g.a.v0
    public void realmSet$mu_name(String str) {
        v<Km2User> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.f6921f, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.f6921f, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6382e.f();
        if (str == null) {
            this.proxyState.f6380c.f(this.columnInfo.f6921f);
        } else {
            this.proxyState.f6380c.a(this.columnInfo.f6921f, str);
        }
    }

    public String toString() {
        if (g0.isValid(this)) {
            StringBuilder q = f.b.a.a.a.q("Km2User = proxy[", "{mu_name:");
            f.b.a.a.a.C(q, realmGet$mu_name() != null ? realmGet$mu_name() : "null", "}", ",", "{mu_id:");
            q.append(realmGet$mu_id() != null ? realmGet$mu_id() : "null");
            q.append("}");
            q.append("]");
            return q.toString();
        }
        return "Invalid object";
    }

    public static void insert(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long nativeFindFirstString;
        Table e2 = xVar.f6392j.e(Km2User.class);
        long j2 = e2.a;
        k0 k0Var = xVar.f6392j;
        k0Var.a();
        a aVar = (a) k0Var.f6361f.a(Km2User.class);
        long j3 = aVar.f6922g;
        while (it.hasNext()) {
            Km2User km2User = (Km2User) it.next();
            if (!map.containsKey(km2User)) {
                if (km2User instanceof n) {
                    n nVar = (n) km2User;
                    if (nVar.realmGet$proxyState().f6382e != null && nVar.realmGet$proxyState().f6382e.b.f6272c.equals(xVar.b.f6272c)) {
                        map.put(km2User, Long.valueOf(nVar.realmGet$proxyState().f6380c.l()));
                    }
                }
                String realmGet$mu_id = km2User.realmGet$mu_id();
                if (realmGet$mu_id == null) {
                    nativeFindFirstString = Table.nativeFindFirstNull(j2, j3);
                } else {
                    nativeFindFirstString = Table.nativeFindFirstString(j2, j3, realmGet$mu_id);
                }
                if (nativeFindFirstString == -1) {
                    long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j3, realmGet$mu_id);
                    map.put(km2User, Long.valueOf(createRowWithPrimaryKey));
                    String realmGet$mu_name = km2User.realmGet$mu_name();
                    if (realmGet$mu_name != null) {
                        Table.nativeSetString(j2, aVar.f6921f, createRowWithPrimaryKey, realmGet$mu_name, false);
                    }
                } else {
                    Table.s(realmGet$mu_id);
                    throw null;
                }
            }
        }
    }

    public static void insertOrUpdate(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long nativeFindFirstString;
        Table e2 = xVar.f6392j.e(Km2User.class);
        long j2 = e2.a;
        k0 k0Var = xVar.f6392j;
        k0Var.a();
        a aVar = (a) k0Var.f6361f.a(Km2User.class);
        long j3 = aVar.f6922g;
        while (it.hasNext()) {
            Km2User km2User = (Km2User) it.next();
            if (!map.containsKey(km2User)) {
                if (km2User instanceof n) {
                    n nVar = (n) km2User;
                    if (nVar.realmGet$proxyState().f6382e != null && nVar.realmGet$proxyState().f6382e.b.f6272c.equals(xVar.b.f6272c)) {
                        map.put(km2User, Long.valueOf(nVar.realmGet$proxyState().f6380c.l()));
                    }
                }
                String realmGet$mu_id = km2User.realmGet$mu_id();
                if (realmGet$mu_id == null) {
                    nativeFindFirstString = Table.nativeFindFirstNull(j2, j3);
                } else {
                    nativeFindFirstString = Table.nativeFindFirstString(j2, j3, realmGet$mu_id);
                }
                long createRowWithPrimaryKey = nativeFindFirstString == -1 ? OsObject.createRowWithPrimaryKey(e2, j3, realmGet$mu_id) : nativeFindFirstString;
                map.put(km2User, Long.valueOf(createRowWithPrimaryKey));
                String realmGet$mu_name = km2User.realmGet$mu_name();
                if (realmGet$mu_name != null) {
                    Table.nativeSetString(j2, aVar.f6921f, createRowWithPrimaryKey, realmGet$mu_name, false);
                } else {
                    Table.nativeSetNull(j2, aVar.f6921f, createRowWithPrimaryKey, false);
                }
            }
        }
    }
}
