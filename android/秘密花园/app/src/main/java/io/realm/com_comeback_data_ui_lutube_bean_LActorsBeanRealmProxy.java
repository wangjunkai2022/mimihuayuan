package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.comeback.data.ui.lutube.bean.LActorsBean;
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
import g.a.x;
import g.a.z0;
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
public class com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy extends LActorsBean implements n, z0 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public a columnInfo;
    public v<LActorsBean> proxyState;

    /* loaded from: classes.dex */
    public static final class a extends c {

        /* renamed from: e  reason: collision with root package name */
        public long f6869e;

        /* renamed from: f  reason: collision with root package name */
        public long f6870f;

        /* renamed from: g  reason: collision with root package name */
        public long f6871g;

        /* renamed from: h  reason: collision with root package name */
        public long f6872h;

        /* renamed from: i  reason: collision with root package name */
        public long f6873i;

        public a(OsSchemaInfo osSchemaInfo) {
            super(4, true);
            OsObjectSchemaInfo a = osSchemaInfo.a("LActorsBean");
            this.f6870f = a("actor_id", "actor_id", a);
            this.f6871g = a("actor_name", "actor_name", a);
            this.f6872h = a("actor_url", "actor_url", a);
            this.f6873i = a("actor_like", "actor_like", a);
            this.f6869e = a.a();
        }

        @Override // g.a.f1.c
        public final void b(c cVar, c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f6870f = aVar.f6870f;
            aVar2.f6871g = aVar.f6871g;
            aVar2.f6872h = aVar.f6872h;
            aVar2.f6873i = aVar.f6873i;
            aVar2.f6869e = aVar.f6869e;
        }
    }

    public com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy() {
        this.proxyState.b = false;
    }

    /* JADX INFO: finally extract failed */
    public static LActorsBean copy(x xVar, a aVar, LActorsBean lActorsBean, boolean z, Map<e0, n> map, Set<m> set) {
        n nVar = map.get(lActorsBean);
        if (nVar != null) {
            return (LActorsBean) nVar;
        }
        Table e2 = xVar.f6317j.e(LActorsBean.class);
        long j2 = aVar.f6869e;
        OsSharedRealm osSharedRealm = e2.f6953c;
        long nativePtr = osSharedRealm.getNativePtr();
        long j3 = e2.a;
        long nativeCreateBuilder = OsObjectBuilder.nativeCreateBuilder(j2 + 1);
        h hVar = osSharedRealm.context;
        set.contains(m.CHECK_SAME_VALUES_BEFORE_SET);
        long j4 = aVar.f6870f;
        String realmGet$actor_id = lActorsBean.realmGet$actor_id();
        if (realmGet$actor_id == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j4);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j4, realmGet$actor_id);
        }
        long j5 = aVar.f6871g;
        String realmGet$actor_name = lActorsBean.realmGet$actor_name();
        if (realmGet$actor_name == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j5);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j5, realmGet$actor_name);
        }
        long j6 = aVar.f6872h;
        String realmGet$actor_url = lActorsBean.realmGet$actor_url();
        if (realmGet$actor_url == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j6);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j6, realmGet$actor_url);
        }
        long j7 = aVar.f6873i;
        Boolean valueOf = Boolean.valueOf(lActorsBean.realmGet$actor_like());
        if (valueOf == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j7);
        } else {
            OsObjectBuilder.nativeAddBoolean(nativeCreateBuilder, j7, valueOf.booleanValue());
        }
        try {
            UncheckedRow uncheckedRow = new UncheckedRow(hVar, e2, OsObjectBuilder.nativeCreateOrUpdate(nativePtr, j3, nativeCreateBuilder, false, false));
            OsObjectBuilder.nativeDestroyBuilder(nativeCreateBuilder);
            com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy newProxyInstance = newProxyInstance(xVar, uncheckedRow);
            map.put(lActorsBean, newProxyInstance);
            return newProxyInstance;
        } catch (Throwable th) {
            OsObjectBuilder.nativeDestroyBuilder(nativeCreateBuilder);
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x0092  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x009c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.comeback.data.ui.lutube.bean.LActorsBean copyOrUpdate(g.a.x r9, io.realm.com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy.a r10, com.comeback.data.ui.lutube.bean.LActorsBean r11, boolean r12, java.util.Map<g.a.e0, g.a.f1.n> r13, java.util.Set<g.a.m> r14) {
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
            com.comeback.data.ui.lutube.bean.LActorsBean r1 = (com.comeback.data.ui.lutube.bean.LActorsBean) r1
            return r1
        L_0x0047:
            r1 = 0
            r2 = 0
            if (r12 == 0) goto L_0x008e
            java.lang.Class<com.comeback.data.ui.lutube.bean.LActorsBean> r3 = com.comeback.data.ui.lutube.bean.LActorsBean.class
            g.a.k0 r4 = r9.f6317j
            io.realm.internal.Table r3 = r4.e(r3)
            long r4 = r10.f6870f
            java.lang.String r6 = r11.realmGet$actor_id()
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
            io.realm.com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy r1 = new io.realm.com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy     // Catch: all -> 0x0089
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
            com.comeback.data.ui.lutube.bean.LActorsBean r9 = update(r1, r2, r3, r4, r5, r6)
            goto L_0x00a0
        L_0x009c:
            com.comeback.data.ui.lutube.bean.LActorsBean r9 = copy(r9, r10, r11, r12, r13, r14)
        L_0x00a0:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy.copyOrUpdate(g.a.x, io.realm.com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy$a, com.comeback.data.ui.lutube.bean.LActorsBean, boolean, java.util.Map, java.util.Set):com.comeback.data.ui.lutube.bean.LActorsBean");
    }

    public static a createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new a(osSchemaInfo);
    }

    public static LActorsBean createDetachedCopy(LActorsBean lActorsBean, int i2, int i3, Map<e0, n.a<e0>> map) {
        LActorsBean lActorsBean2;
        if (i2 > i3 || lActorsBean == null) {
            return null;
        }
        n.a<e0> aVar = map.get(lActorsBean);
        if (aVar == null) {
            lActorsBean2 = new LActorsBean();
            map.put(lActorsBean, new n.a<>(i2, lActorsBean2));
        } else if (i2 >= aVar.a) {
            return (LActorsBean) aVar.b;
        } else {
            aVar.a = i2;
            lActorsBean2 = (LActorsBean) aVar.b;
        }
        lActorsBean2.realmSet$actor_id(lActorsBean.realmGet$actor_id());
        lActorsBean2.realmSet$actor_name(lActorsBean.realmGet$actor_name());
        lActorsBean2.realmSet$actor_url(lActorsBean.realmGet$actor_url());
        lActorsBean2.realmSet$actor_like(lActorsBean.realmGet$actor_like());
        return lActorsBean2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        long[] jArr = new long[4];
        long[] jArr2 = new long[0];
        jArr[0] = Property.nativeCreatePersistedProperty("actor_id", Property.a(RealmFieldType.STRING, false), true, true);
        int i2 = 0 + 1;
        jArr[i2] = Property.nativeCreatePersistedProperty("actor_name", Property.a(RealmFieldType.STRING, false), false, false);
        int i3 = i2 + 1;
        jArr[i3] = Property.nativeCreatePersistedProperty("actor_url", Property.a(RealmFieldType.STRING, false), false, false);
        int i4 = i3 + 1;
        jArr[i4] = Property.nativeCreatePersistedProperty("actor_like", Property.a(RealmFieldType.BOOLEAN, true), false, false);
        if (i4 + 1 != -1) {
            OsObjectSchemaInfo osObjectSchemaInfo = new OsObjectSchemaInfo("LActorsBean", null);
            OsObjectSchemaInfo.nativeAddProperties(osObjectSchemaInfo.a, jArr, jArr2);
            return osObjectSchemaInfo;
        }
        throw new IllegalStateException("'OsObjectSchemaInfo.build()' has been called before on this object.");
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0074  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00a9  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00c2  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00db  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.comeback.data.ui.lutube.bean.LActorsBean createOrUpdateUsingJsonObject(g.a.x r8, org.json.JSONObject r9, boolean r10) throws org.json.JSONException {
        /*
            java.util.List r0 = java.util.Collections.emptyList()
            r1 = 0
            java.lang.String r2 = "actor_id"
            if (r10 == 0) goto L_0x0071
            java.lang.Class<com.comeback.data.ui.lutube.bean.LActorsBean> r10 = com.comeback.data.ui.lutube.bean.LActorsBean.class
            g.a.k0 r3 = r8.f6317j
            io.realm.internal.Table r10 = r3.e(r10)
            g.a.k0 r3 = r8.f6317j
            java.lang.Class<com.comeback.data.ui.lutube.bean.LActorsBean> r4 = com.comeback.data.ui.lutube.bean.LActorsBean.class
            r3.a()
            g.a.f1.b r3 = r3.f6286f
            g.a.f1.c r3 = r3.a(r4)
            io.realm.com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy$a r3 = (io.realm.com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy.a) r3
            long r3 = r3.f6870f
            boolean r5 = r9.isNull(r2)
            if (r5 == 0) goto L_0x002d
            long r3 = r10.b(r3)
            goto L_0x0035
        L_0x002d:
            java.lang.String r5 = r9.getString(r2)
            long r3 = r10.c(r3, r5)
        L_0x0035:
            r5 = -1
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L_0x0071
            g.a.a$d r5 = g.a.a.f6189i
            java.lang.Object r5 = r5.get()
            g.a.a$c r5 = (g.a.a.c) r5
            io.realm.internal.UncheckedRow r10 = r10.l(r3)     // Catch: all -> 0x006c
            g.a.k0 r3 = r8.f6317j     // Catch: all -> 0x006c
            java.lang.Class<com.comeback.data.ui.lutube.bean.LActorsBean> r4 = com.comeback.data.ui.lutube.bean.LActorsBean.class
            r3.a()     // Catch: all -> 0x006c
            g.a.f1.b r3 = r3.f6286f     // Catch: all -> 0x006c
            g.a.f1.c r3 = r3.a(r4)     // Catch: all -> 0x006c
            r4 = 0
            java.util.List r6 = java.util.Collections.emptyList()     // Catch: all -> 0x006c
            r5.a = r8     // Catch: all -> 0x006c
            r5.b = r10     // Catch: all -> 0x006c
            r5.f6194c = r3     // Catch: all -> 0x006c
            r5.f6195d = r4     // Catch: all -> 0x006c
            r5.f6196e = r6     // Catch: all -> 0x006c
            io.realm.com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy r10 = new io.realm.com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy     // Catch: all -> 0x006c
            r10.<init>()     // Catch: all -> 0x006c
            r5.a()
            goto L_0x0072
        L_0x006c:
            r8 = move-exception
            r5.a()
            throw r8
        L_0x0071:
            r10 = r1
        L_0x0072:
            if (r10 != 0) goto L_0x00a1
            boolean r10 = r9.has(r2)
            if (r10 == 0) goto L_0x0099
            boolean r10 = r9.isNull(r2)
            r3 = 1
            if (r10 == 0) goto L_0x008b
            java.lang.Class<com.comeback.data.ui.lutube.bean.LActorsBean> r10 = com.comeback.data.ui.lutube.bean.LActorsBean.class
            g.a.e0 r8 = r8.M(r10, r1, r3, r0)
            r10 = r8
            io.realm.com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy r10 = (io.realm.com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy) r10
            goto L_0x00a1
        L_0x008b:
            java.lang.Class<com.comeback.data.ui.lutube.bean.LActorsBean> r10 = com.comeback.data.ui.lutube.bean.LActorsBean.class
            java.lang.String r2 = r9.getString(r2)
            g.a.e0 r8 = r8.M(r10, r2, r3, r0)
            r10 = r8
            io.realm.com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy r10 = (io.realm.com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy) r10
            goto L_0x00a1
        L_0x0099:
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.String r9 = "JSON object doesn't have the primary key field 'actor_id'."
            r8.<init>(r9)
            throw r8
        L_0x00a1:
            java.lang.String r8 = "actor_name"
            boolean r0 = r9.has(r8)
            if (r0 == 0) goto L_0x00ba
            boolean r0 = r9.isNull(r8)
            if (r0 == 0) goto L_0x00b3
            r10.realmSet$actor_name(r1)
            goto L_0x00ba
        L_0x00b3:
            java.lang.String r8 = r9.getString(r8)
            r10.realmSet$actor_name(r8)
        L_0x00ba:
            java.lang.String r8 = "actor_url"
            boolean r0 = r9.has(r8)
            if (r0 == 0) goto L_0x00d3
            boolean r0 = r9.isNull(r8)
            if (r0 == 0) goto L_0x00cc
            r10.realmSet$actor_url(r1)
            goto L_0x00d3
        L_0x00cc:
            java.lang.String r8 = r9.getString(r8)
            r10.realmSet$actor_url(r8)
        L_0x00d3:
            java.lang.String r8 = "actor_like"
            boolean r0 = r9.has(r8)
            if (r0 == 0) goto L_0x00f1
            boolean r0 = r9.isNull(r8)
            if (r0 != 0) goto L_0x00e9
            boolean r8 = r9.getBoolean(r8)
            r10.realmSet$actor_like(r8)
            goto L_0x00f1
        L_0x00e9:
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.String r9 = "Trying to set non-nullable field 'actor_like' to null."
            r8.<init>(r9)
            throw r8
        L_0x00f1:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy.createOrUpdateUsingJsonObject(g.a.x, org.json.JSONObject, boolean):com.comeback.data.ui.lutube.bean.LActorsBean");
    }

    @TargetApi(11)
    public static LActorsBean createUsingJsonStream(x xVar, JsonReader jsonReader) throws IOException {
        LActorsBean lActorsBean = new LActorsBean();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("actor_id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    lActorsBean.realmSet$actor_id(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    lActorsBean.realmSet$actor_id(null);
                }
                z = true;
            } else if (nextName.equals("actor_name")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    lActorsBean.realmSet$actor_name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    lActorsBean.realmSet$actor_name(null);
                }
            } else if (nextName.equals("actor_url")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    lActorsBean.realmSet$actor_url(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    lActorsBean.realmSet$actor_url(null);
                }
            } else if (!nextName.equals("actor_like")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                lActorsBean.realmSet$actor_like(jsonReader.nextBoolean());
            } else {
                throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'actor_like' to null.");
            }
        }
        jsonReader.endObject();
        if (z) {
            return (LActorsBean) xVar.L(lActorsBean, new m[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'actor_id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "LActorsBean";
    }

    public static long insert(x xVar, LActorsBean lActorsBean, Map<e0, Long> map) {
        long j2;
        if (lActorsBean instanceof n) {
            n nVar = (n) lActorsBean;
            if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                return nVar.realmGet$proxyState().f6305c.l();
            }
        }
        Table e2 = xVar.f6317j.e(LActorsBean.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(LActorsBean.class);
        long j4 = aVar.f6870f;
        String realmGet$actor_id = lActorsBean.realmGet$actor_id();
        if (realmGet$actor_id == null) {
            j2 = Table.nativeFindFirstNull(j3, j4);
        } else {
            j2 = Table.nativeFindFirstString(j3, j4, realmGet$actor_id);
        }
        if (j2 == -1) {
            long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j4, realmGet$actor_id);
            map.put(lActorsBean, Long.valueOf(createRowWithPrimaryKey));
            String realmGet$actor_name = lActorsBean.realmGet$actor_name();
            if (realmGet$actor_name != null) {
                Table.nativeSetString(j3, aVar.f6871g, createRowWithPrimaryKey, realmGet$actor_name, false);
            }
            String realmGet$actor_url = lActorsBean.realmGet$actor_url();
            if (realmGet$actor_url != null) {
                Table.nativeSetString(j3, aVar.f6872h, createRowWithPrimaryKey, realmGet$actor_url, false);
            }
            Table.nativeSetBoolean(j3, aVar.f6873i, createRowWithPrimaryKey, lActorsBean.realmGet$actor_like(), false);
            return createRowWithPrimaryKey;
        }
        Table.s(realmGet$actor_id);
        throw null;
    }

    public static long insertOrUpdate(x xVar, LActorsBean lActorsBean, Map<e0, Long> map) {
        long j2;
        if (lActorsBean instanceof n) {
            n nVar = (n) lActorsBean;
            if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                return nVar.realmGet$proxyState().f6305c.l();
            }
        }
        Table e2 = xVar.f6317j.e(LActorsBean.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(LActorsBean.class);
        long j4 = aVar.f6870f;
        String realmGet$actor_id = lActorsBean.realmGet$actor_id();
        if (realmGet$actor_id == null) {
            j2 = Table.nativeFindFirstNull(j3, j4);
        } else {
            j2 = Table.nativeFindFirstString(j3, j4, realmGet$actor_id);
        }
        if (j2 == -1) {
            j2 = OsObject.createRowWithPrimaryKey(e2, j4, realmGet$actor_id);
        }
        map.put(lActorsBean, Long.valueOf(j2));
        String realmGet$actor_name = lActorsBean.realmGet$actor_name();
        if (realmGet$actor_name != null) {
            Table.nativeSetString(j3, aVar.f6871g, j2, realmGet$actor_name, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6871g, j2, false);
        }
        String realmGet$actor_url = lActorsBean.realmGet$actor_url();
        if (realmGet$actor_url != null) {
            Table.nativeSetString(j3, aVar.f6872h, j2, realmGet$actor_url, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6872h, j2, false);
        }
        Table.nativeSetBoolean(j3, aVar.f6873i, j2, lActorsBean.realmGet$actor_like(), false);
        return j2;
    }

    public static com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy newProxyInstance(g.a.a aVar, p pVar) {
        a.c cVar = g.a.a.f6189i.get();
        k0 G = aVar.G();
        G.a();
        c a2 = G.f6286f.a(LActorsBean.class);
        List<String> emptyList = Collections.emptyList();
        cVar.a = aVar;
        cVar.b = pVar;
        cVar.f6194c = a2;
        cVar.f6195d = false;
        cVar.f6196e = emptyList;
        com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy com_comeback_data_ui_lutube_bean_lactorsbeanrealmproxy = new com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy();
        cVar.a();
        return com_comeback_data_ui_lutube_bean_lactorsbeanrealmproxy;
    }

    public static LActorsBean update(x xVar, a aVar, LActorsBean lActorsBean, LActorsBean lActorsBean2, Map<e0, n> map, Set<m> set) {
        Table e2 = xVar.f6317j.e(LActorsBean.class);
        long j2 = aVar.f6869e;
        OsSharedRealm osSharedRealm = e2.f6953c;
        long nativePtr = osSharedRealm.getNativePtr();
        long j3 = e2.a;
        long nativeCreateBuilder = OsObjectBuilder.nativeCreateBuilder(j2 + 1);
        h hVar = osSharedRealm.context;
        boolean contains = set.contains(m.CHECK_SAME_VALUES_BEFORE_SET);
        long j4 = aVar.f6870f;
        String realmGet$actor_id = lActorsBean2.realmGet$actor_id();
        if (realmGet$actor_id == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j4);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j4, realmGet$actor_id);
        }
        long j5 = aVar.f6871g;
        String realmGet$actor_name = lActorsBean2.realmGet$actor_name();
        if (realmGet$actor_name == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j5);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j5, realmGet$actor_name);
        }
        long j6 = aVar.f6872h;
        String realmGet$actor_url = lActorsBean2.realmGet$actor_url();
        if (realmGet$actor_url == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j6);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j6, realmGet$actor_url);
        }
        long j7 = aVar.f6873i;
        Boolean valueOf = Boolean.valueOf(lActorsBean2.realmGet$actor_like());
        if (valueOf == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j7);
        } else {
            OsObjectBuilder.nativeAddBoolean(nativeCreateBuilder, j7, valueOf.booleanValue());
        }
        try {
            OsObjectBuilder.nativeCreateOrUpdate(nativePtr, j3, nativeCreateBuilder, true, contains);
            return lActorsBean;
        } finally {
            OsObjectBuilder.nativeDestroyBuilder(nativeCreateBuilder);
        }
    }

    @Override // java.lang.Object
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy com_comeback_data_ui_lutube_bean_lactorsbeanrealmproxy = (com_comeback_data_ui_lutube_bean_LActorsBeanRealmProxy) obj;
        String str = this.proxyState.f6307e.b.f6197c;
        String str2 = com_comeback_data_ui_lutube_bean_lactorsbeanrealmproxy.proxyState.f6307e.b.f6197c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        String j2 = this.proxyState.f6305c.d().j();
        String j3 = com_comeback_data_ui_lutube_bean_lactorsbeanrealmproxy.proxyState.f6305c.d().j();
        if (j2 == null ? j3 == null : j2.equals(j3)) {
            return this.proxyState.f6305c.l() == com_comeback_data_ui_lutube_bean_lactorsbeanrealmproxy.proxyState.f6305c.l();
        }
        return false;
    }

    @Override // java.lang.Object
    public int hashCode() {
        v<LActorsBean> vVar = this.proxyState;
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
            v<LActorsBean> vVar = new v<>(this);
            this.proxyState = vVar;
            vVar.f6307e = cVar.a;
            vVar.f6305c = cVar.b;
            vVar.f6308f = cVar.f6195d;
            if (vVar == null) {
                throw null;
            }
        }
    }

    @Override // com.comeback.data.ui.lutube.bean.LActorsBean, g.a.z0
    public String realmGet$actor_id() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6870f);
    }

    @Override // com.comeback.data.ui.lutube.bean.LActorsBean, g.a.z0
    public boolean realmGet$actor_like() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.m(this.columnInfo.f6873i);
    }

    @Override // com.comeback.data.ui.lutube.bean.LActorsBean, g.a.z0
    public String realmGet$actor_name() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6871g);
    }

    @Override // com.comeback.data.ui.lutube.bean.LActorsBean, g.a.z0
    public String realmGet$actor_url() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6872h);
    }

    @Override // g.a.f1.n
    public v<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.comeback.data.ui.lutube.bean.LActorsBean, g.a.z0
    public void realmSet$actor_id(String str) {
        v<LActorsBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            throw new RealmException("Primary key field 'actor_id' cannot be changed after object was created.");
        }
    }

    @Override // com.comeback.data.ui.lutube.bean.LActorsBean, g.a.z0
    public void realmSet$actor_like(boolean z) {
        v<LActorsBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            this.proxyState.f6305c.i(this.columnInfo.f6873i, z);
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            pVar.d().o(this.columnInfo.f6873i, pVar.l(), z, true);
        }
    }

    @Override // com.comeback.data.ui.lutube.bean.LActorsBean, g.a.z0
    public void realmSet$actor_name(String str) {
        v<LActorsBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6871g);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6871g, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6871g, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6871g, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.lutube.bean.LActorsBean, g.a.z0
    public void realmSet$actor_url(String str) {
        v<LActorsBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6872h);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6872h, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6872h, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6872h, pVar.l(), str, true);
            }
        }
    }

    @Override // java.lang.Object
    public String toString() {
        if (!g0.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder q = f.b.a.a.a.q("LActorsBean = proxy[", "{actor_id:");
        String str = "null";
        f.b.a.a.a.C(q, realmGet$actor_id() != null ? realmGet$actor_id() : str, "}", ",", "{actor_name:");
        f.b.a.a.a.C(q, realmGet$actor_name() != null ? realmGet$actor_name() : str, "}", ",", "{actor_url:");
        if (realmGet$actor_url() != null) {
            str = realmGet$actor_url();
        }
        f.b.a.a.a.C(q, str, "}", ",", "{actor_like:");
        q.append(realmGet$actor_like());
        q.append("}");
        q.append("]");
        return q.toString();
    }

    public static void insert(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long j2;
        LActorsBean lActorsBean;
        Table e2 = xVar.f6317j.e(LActorsBean.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(LActorsBean.class);
        long j4 = aVar.f6870f;
        while (it.hasNext()) {
            LActorsBean lActorsBean2 = (LActorsBean) it.next();
            if (!map.containsKey(lActorsBean2)) {
                if (lActorsBean2 instanceof n) {
                    n nVar = (n) lActorsBean2;
                    if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                        map.put(lActorsBean2, Long.valueOf(nVar.realmGet$proxyState().f6305c.l()));
                    }
                }
                String realmGet$actor_id = lActorsBean2.realmGet$actor_id();
                if (realmGet$actor_id == null) {
                    j2 = Table.nativeFindFirstNull(j3, j4);
                } else {
                    j2 = Table.nativeFindFirstString(j3, j4, realmGet$actor_id);
                }
                if (j2 == -1) {
                    long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j4, realmGet$actor_id);
                    map.put(lActorsBean2, Long.valueOf(createRowWithPrimaryKey));
                    String realmGet$actor_name = lActorsBean2.realmGet$actor_name();
                    if (realmGet$actor_name != null) {
                        lActorsBean = lActorsBean2;
                        Table.nativeSetString(j3, aVar.f6871g, createRowWithPrimaryKey, realmGet$actor_name, false);
                    } else {
                        lActorsBean = lActorsBean2;
                    }
                    String realmGet$actor_url = lActorsBean.realmGet$actor_url();
                    if (realmGet$actor_url != null) {
                        Table.nativeSetString(j3, aVar.f6872h, createRowWithPrimaryKey, realmGet$actor_url, false);
                    }
                    Table.nativeSetBoolean(j3, aVar.f6873i, createRowWithPrimaryKey, lActorsBean.realmGet$actor_like(), false);
                } else {
                    Table.s(realmGet$actor_id);
                    throw null;
                }
            }
        }
    }

    public static void insertOrUpdate(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long j2;
        LActorsBean lActorsBean;
        Table e2 = xVar.f6317j.e(LActorsBean.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(LActorsBean.class);
        long j4 = aVar.f6870f;
        while (it.hasNext()) {
            LActorsBean lActorsBean2 = (LActorsBean) it.next();
            if (!map.containsKey(lActorsBean2)) {
                if (lActorsBean2 instanceof n) {
                    n nVar = (n) lActorsBean2;
                    if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                        map.put(lActorsBean2, Long.valueOf(nVar.realmGet$proxyState().f6305c.l()));
                    }
                }
                String realmGet$actor_id = lActorsBean2.realmGet$actor_id();
                if (realmGet$actor_id == null) {
                    j2 = Table.nativeFindFirstNull(j3, j4);
                } else {
                    j2 = Table.nativeFindFirstString(j3, j4, realmGet$actor_id);
                }
                long createRowWithPrimaryKey = j2 == -1 ? OsObject.createRowWithPrimaryKey(e2, j4, realmGet$actor_id) : j2;
                map.put(lActorsBean2, Long.valueOf(createRowWithPrimaryKey));
                String realmGet$actor_name = lActorsBean2.realmGet$actor_name();
                if (realmGet$actor_name != null) {
                    lActorsBean = lActorsBean2;
                    Table.nativeSetString(j3, aVar.f6871g, createRowWithPrimaryKey, realmGet$actor_name, false);
                } else {
                    lActorsBean = lActorsBean2;
                    Table.nativeSetNull(j3, aVar.f6871g, createRowWithPrimaryKey, false);
                }
                String realmGet$actor_url = lActorsBean.realmGet$actor_url();
                if (realmGet$actor_url != null) {
                    Table.nativeSetString(j3, aVar.f6872h, createRowWithPrimaryKey, realmGet$actor_url, false);
                } else {
                    Table.nativeSetNull(j3, aVar.f6872h, createRowWithPrimaryKey, false);
                }
                Table.nativeSetBoolean(j3, aVar.f6873i, createRowWithPrimaryKey, lActorsBean.realmGet$actor_like(), false);
            }
        }
    }
}
