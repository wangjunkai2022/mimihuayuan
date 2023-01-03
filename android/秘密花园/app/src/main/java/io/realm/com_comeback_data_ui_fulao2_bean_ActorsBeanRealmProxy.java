package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.comeback.data.ui.fulao2.bean.ActorsBean;
import g.a.a;
import g.a.e0;
import g.a.f1.c;
import g.a.f1.h;
import g.a.f1.n;
import g.a.f1.p;
import g.a.g0;
import g.a.k0;
import g.a.m;
import g.a.s0;
import g.a.v;
import g.a.x;
import io.realm.exceptions.RealmException;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.OsSharedRealm;
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
public class com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy extends ActorsBean implements n, s0 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public a columnInfo;
    public v<ActorsBean> proxyState;

    /* loaded from: classes.dex */
    public static final class a extends c {

        /* renamed from: e  reason: collision with root package name */
        public long f6820e;

        /* renamed from: f  reason: collision with root package name */
        public long f6821f;

        /* renamed from: g  reason: collision with root package name */
        public long f6822g;

        /* renamed from: h  reason: collision with root package name */
        public long f6823h;

        /* renamed from: i  reason: collision with root package name */
        public long f6824i;

        /* renamed from: j  reason: collision with root package name */
        public long f6825j;

        /* renamed from: k  reason: collision with root package name */
        public long f6826k;

        /* renamed from: l  reason: collision with root package name */
        public long f6827l;

        public a(OsSchemaInfo osSchemaInfo) {
            super(7, true);
            OsObjectSchemaInfo a = osSchemaInfo.a("ActorsBean");
            this.f6821f = a("actor_id", "actor_id", a);
            this.f6822g = a("actor_name", "actor_name", a);
            this.f6823h = a("actor_url", "actor_url", a);
            this.f6824i = a("actor_like", "actor_like", a);
            this.f6825j = a("actor_collects", "actor_collects", a);
            this.f6826k = a("actor_vip", "actor_vip", a);
            this.f6827l = a("video_title", "video_title", a);
            this.f6820e = a.a();
        }

        @Override // g.a.f1.c
        public final void b(c cVar, c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f6821f = aVar.f6821f;
            aVar2.f6822g = aVar.f6822g;
            aVar2.f6823h = aVar.f6823h;
            aVar2.f6824i = aVar.f6824i;
            aVar2.f6825j = aVar.f6825j;
            aVar2.f6826k = aVar.f6826k;
            aVar2.f6827l = aVar.f6827l;
            aVar2.f6820e = aVar.f6820e;
        }
    }

    public com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy() {
        this.proxyState.b = false;
    }

    /* JADX INFO: finally extract failed */
    public static ActorsBean copy(x xVar, a aVar, ActorsBean actorsBean, boolean z, Map<e0, n> map, Set<m> set) {
        n nVar = map.get(actorsBean);
        if (nVar != null) {
            return (ActorsBean) nVar;
        }
        Table e2 = xVar.f6317j.e(ActorsBean.class);
        long j2 = aVar.f6820e;
        OsSharedRealm osSharedRealm = e2.f6953c;
        long nativePtr = osSharedRealm.getNativePtr();
        long j3 = e2.a;
        long nativeCreateBuilder = OsObjectBuilder.nativeCreateBuilder(j2 + 1);
        h hVar = osSharedRealm.context;
        set.contains(m.CHECK_SAME_VALUES_BEFORE_SET);
        long j4 = aVar.f6821f;
        String realmGet$actor_id = actorsBean.realmGet$actor_id();
        if (realmGet$actor_id == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j4);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j4, realmGet$actor_id);
        }
        long j5 = aVar.f6822g;
        String realmGet$actor_name = actorsBean.realmGet$actor_name();
        if (realmGet$actor_name == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j5);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j5, realmGet$actor_name);
        }
        long j6 = aVar.f6823h;
        String realmGet$actor_url = actorsBean.realmGet$actor_url();
        if (realmGet$actor_url == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j6);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j6, realmGet$actor_url);
        }
        long j7 = aVar.f6824i;
        Boolean valueOf = Boolean.valueOf(actorsBean.realmGet$actor_like());
        if (valueOf == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j7);
        } else {
            OsObjectBuilder.nativeAddBoolean(nativeCreateBuilder, j7, valueOf.booleanValue());
        }
        long j8 = aVar.f6825j;
        Integer valueOf2 = Integer.valueOf(actorsBean.realmGet$actor_collects());
        if (valueOf2 == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j8);
        } else {
            OsObjectBuilder.nativeAddInteger(nativeCreateBuilder, j8, (long) valueOf2.intValue());
        }
        long j9 = aVar.f6826k;
        Boolean valueOf3 = Boolean.valueOf(actorsBean.realmGet$actor_vip());
        if (valueOf3 == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j9);
        } else {
            OsObjectBuilder.nativeAddBoolean(nativeCreateBuilder, j9, valueOf3.booleanValue());
        }
        long j10 = aVar.f6827l;
        String realmGet$video_title = actorsBean.realmGet$video_title();
        if (realmGet$video_title == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j10);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j10, realmGet$video_title);
        }
        try {
            UncheckedRow uncheckedRow = new UncheckedRow(hVar, e2, OsObjectBuilder.nativeCreateOrUpdate(nativePtr, j3, nativeCreateBuilder, false, false));
            OsObjectBuilder.nativeDestroyBuilder(nativeCreateBuilder);
            com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy newProxyInstance = newProxyInstance(xVar, uncheckedRow);
            map.put(actorsBean, newProxyInstance);
            return newProxyInstance;
        } catch (Throwable th) {
            OsObjectBuilder.nativeDestroyBuilder(nativeCreateBuilder);
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x0092  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x009c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.comeback.data.ui.fulao2.bean.ActorsBean copyOrUpdate(g.a.x r9, io.realm.com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy.a r10, com.comeback.data.ui.fulao2.bean.ActorsBean r11, boolean r12, java.util.Map<g.a.e0, g.a.f1.n> r13, java.util.Set<g.a.m> r14) {
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
            com.comeback.data.ui.fulao2.bean.ActorsBean r1 = (com.comeback.data.ui.fulao2.bean.ActorsBean) r1
            return r1
        L_0x0047:
            r1 = 0
            r2 = 0
            if (r12 == 0) goto L_0x008e
            java.lang.Class<com.comeback.data.ui.fulao2.bean.ActorsBean> r3 = com.comeback.data.ui.fulao2.bean.ActorsBean.class
            g.a.k0 r4 = r9.f6317j
            io.realm.internal.Table r3 = r4.e(r3)
            long r4 = r10.f6821f
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
            io.realm.com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy r1 = new io.realm.com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy     // Catch: all -> 0x0089
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
            com.comeback.data.ui.fulao2.bean.ActorsBean r9 = update(r1, r2, r3, r4, r5, r6)
            goto L_0x00a0
        L_0x009c:
            com.comeback.data.ui.fulao2.bean.ActorsBean r9 = copy(r9, r10, r11, r12, r13, r14)
        L_0x00a0:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy.copyOrUpdate(g.a.x, io.realm.com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy$a, com.comeback.data.ui.fulao2.bean.ActorsBean, boolean, java.util.Map, java.util.Set):com.comeback.data.ui.fulao2.bean.ActorsBean");
    }

    public static a createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new a(osSchemaInfo);
    }

    public static ActorsBean createDetachedCopy(ActorsBean actorsBean, int i2, int i3, Map<e0, n.a<e0>> map) {
        ActorsBean actorsBean2;
        if (i2 > i3 || actorsBean == null) {
            return null;
        }
        n.a<e0> aVar = map.get(actorsBean);
        if (aVar == null) {
            actorsBean2 = new ActorsBean();
            map.put(actorsBean, new n.a<>(i2, actorsBean2));
        } else if (i2 >= aVar.a) {
            return (ActorsBean) aVar.b;
        } else {
            aVar.a = i2;
            actorsBean2 = (ActorsBean) aVar.b;
        }
        actorsBean2.realmSet$actor_id(actorsBean.realmGet$actor_id());
        actorsBean2.realmSet$actor_name(actorsBean.realmGet$actor_name());
        actorsBean2.realmSet$actor_url(actorsBean.realmGet$actor_url());
        actorsBean2.realmSet$actor_like(actorsBean.realmGet$actor_like());
        actorsBean2.realmSet$actor_collects(actorsBean.realmGet$actor_collects());
        actorsBean2.realmSet$actor_vip(actorsBean.realmGet$actor_vip());
        actorsBean2.realmSet$video_title(actorsBean.realmGet$video_title());
        return actorsBean2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.b bVar = new OsObjectSchemaInfo.b("ActorsBean", 7, 0);
        bVar.a("actor_id", RealmFieldType.STRING, true, true, false);
        bVar.a("actor_name", RealmFieldType.STRING, false, false, false);
        bVar.a("actor_url", RealmFieldType.STRING, false, false, false);
        bVar.a("actor_like", RealmFieldType.BOOLEAN, false, false, true);
        bVar.a("actor_collects", RealmFieldType.INTEGER, false, false, true);
        bVar.a("actor_vip", RealmFieldType.BOOLEAN, false, false, true);
        bVar.a("video_title", RealmFieldType.STRING, false, false, false);
        return bVar.b();
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0074  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00a9  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00c2  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00db  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00f9  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x0117  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x0135  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.comeback.data.ui.fulao2.bean.ActorsBean createOrUpdateUsingJsonObject(g.a.x r8, org.json.JSONObject r9, boolean r10) throws org.json.JSONException {
        /*
        // Method dump skipped, instructions count: 327
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy.createOrUpdateUsingJsonObject(g.a.x, org.json.JSONObject, boolean):com.comeback.data.ui.fulao2.bean.ActorsBean");
    }

    @TargetApi(11)
    public static ActorsBean createUsingJsonStream(x xVar, JsonReader jsonReader) throws IOException {
        ActorsBean actorsBean = new ActorsBean();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("actor_id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    actorsBean.realmSet$actor_id(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    actorsBean.realmSet$actor_id(null);
                }
                z = true;
            } else if (nextName.equals("actor_name")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    actorsBean.realmSet$actor_name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    actorsBean.realmSet$actor_name(null);
                }
            } else if (nextName.equals("actor_url")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    actorsBean.realmSet$actor_url(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    actorsBean.realmSet$actor_url(null);
                }
            } else if (nextName.equals("actor_like")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    actorsBean.realmSet$actor_like(jsonReader.nextBoolean());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'actor_like' to null.");
                }
            } else if (nextName.equals("actor_collects")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    actorsBean.realmSet$actor_collects(jsonReader.nextInt());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'actor_collects' to null.");
                }
            } else if (nextName.equals("actor_vip")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    actorsBean.realmSet$actor_vip(jsonReader.nextBoolean());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'actor_vip' to null.");
                }
            } else if (!nextName.equals("video_title")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                actorsBean.realmSet$video_title(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                actorsBean.realmSet$video_title(null);
            }
        }
        jsonReader.endObject();
        if (z) {
            return (ActorsBean) xVar.L(actorsBean, new m[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'actor_id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "ActorsBean";
    }

    public static long insert(x xVar, ActorsBean actorsBean, Map<e0, Long> map) {
        long j2;
        if (actorsBean instanceof n) {
            n nVar = (n) actorsBean;
            if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                return nVar.realmGet$proxyState().f6305c.l();
            }
        }
        Table e2 = xVar.f6317j.e(ActorsBean.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(ActorsBean.class);
        long j4 = aVar.f6821f;
        String realmGet$actor_id = actorsBean.realmGet$actor_id();
        if (realmGet$actor_id == null) {
            j2 = Table.nativeFindFirstNull(j3, j4);
        } else {
            j2 = Table.nativeFindFirstString(j3, j4, realmGet$actor_id);
        }
        if (j2 == -1) {
            long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j4, realmGet$actor_id);
            map.put(actorsBean, Long.valueOf(createRowWithPrimaryKey));
            String realmGet$actor_name = actorsBean.realmGet$actor_name();
            if (realmGet$actor_name != null) {
                Table.nativeSetString(j3, aVar.f6822g, createRowWithPrimaryKey, realmGet$actor_name, false);
            }
            String realmGet$actor_url = actorsBean.realmGet$actor_url();
            if (realmGet$actor_url != null) {
                Table.nativeSetString(j3, aVar.f6823h, createRowWithPrimaryKey, realmGet$actor_url, false);
            }
            Table.nativeSetBoolean(j3, aVar.f6824i, createRowWithPrimaryKey, actorsBean.realmGet$actor_like(), false);
            Table.nativeSetLong(j3, aVar.f6825j, createRowWithPrimaryKey, (long) actorsBean.realmGet$actor_collects(), false);
            Table.nativeSetBoolean(j3, aVar.f6826k, createRowWithPrimaryKey, actorsBean.realmGet$actor_vip(), false);
            String realmGet$video_title = actorsBean.realmGet$video_title();
            if (realmGet$video_title != null) {
                Table.nativeSetString(j3, aVar.f6827l, createRowWithPrimaryKey, realmGet$video_title, false);
            }
            return createRowWithPrimaryKey;
        }
        Table.s(realmGet$actor_id);
        throw null;
    }

    public static long insertOrUpdate(x xVar, ActorsBean actorsBean, Map<e0, Long> map) {
        long j2;
        if (actorsBean instanceof n) {
            n nVar = (n) actorsBean;
            if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                return nVar.realmGet$proxyState().f6305c.l();
            }
        }
        Table e2 = xVar.f6317j.e(ActorsBean.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(ActorsBean.class);
        long j4 = aVar.f6821f;
        String realmGet$actor_id = actorsBean.realmGet$actor_id();
        if (realmGet$actor_id == null) {
            j2 = Table.nativeFindFirstNull(j3, j4);
        } else {
            j2 = Table.nativeFindFirstString(j3, j4, realmGet$actor_id);
        }
        if (j2 == -1) {
            j2 = OsObject.createRowWithPrimaryKey(e2, j4, realmGet$actor_id);
        }
        map.put(actorsBean, Long.valueOf(j2));
        String realmGet$actor_name = actorsBean.realmGet$actor_name();
        if (realmGet$actor_name != null) {
            Table.nativeSetString(j3, aVar.f6822g, j2, realmGet$actor_name, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6822g, j2, false);
        }
        String realmGet$actor_url = actorsBean.realmGet$actor_url();
        if (realmGet$actor_url != null) {
            Table.nativeSetString(j3, aVar.f6823h, j2, realmGet$actor_url, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6823h, j2, false);
        }
        Table.nativeSetBoolean(j3, aVar.f6824i, j2, actorsBean.realmGet$actor_like(), false);
        Table.nativeSetLong(j3, aVar.f6825j, j2, (long) actorsBean.realmGet$actor_collects(), false);
        Table.nativeSetBoolean(j3, aVar.f6826k, j2, actorsBean.realmGet$actor_vip(), false);
        String realmGet$video_title = actorsBean.realmGet$video_title();
        if (realmGet$video_title != null) {
            Table.nativeSetString(j3, aVar.f6827l, j2, realmGet$video_title, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6827l, j2, false);
        }
        return j2;
    }

    public static com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy newProxyInstance(g.a.a aVar, p pVar) {
        a.c cVar = g.a.a.f6189i.get();
        k0 G = aVar.G();
        G.a();
        c a2 = G.f6286f.a(ActorsBean.class);
        List<String> emptyList = Collections.emptyList();
        cVar.a = aVar;
        cVar.b = pVar;
        cVar.f6194c = a2;
        cVar.f6195d = false;
        cVar.f6196e = emptyList;
        com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy com_comeback_data_ui_fulao2_bean_actorsbeanrealmproxy = new com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy();
        cVar.a();
        return com_comeback_data_ui_fulao2_bean_actorsbeanrealmproxy;
    }

    public static ActorsBean update(x xVar, a aVar, ActorsBean actorsBean, ActorsBean actorsBean2, Map<e0, n> map, Set<m> set) {
        Table e2 = xVar.f6317j.e(ActorsBean.class);
        long j2 = aVar.f6820e;
        OsSharedRealm osSharedRealm = e2.f6953c;
        long nativePtr = osSharedRealm.getNativePtr();
        long j3 = e2.a;
        long nativeCreateBuilder = OsObjectBuilder.nativeCreateBuilder(j2 + 1);
        h hVar = osSharedRealm.context;
        boolean contains = set.contains(m.CHECK_SAME_VALUES_BEFORE_SET);
        long j4 = aVar.f6821f;
        String realmGet$actor_id = actorsBean2.realmGet$actor_id();
        if (realmGet$actor_id == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j4);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j4, realmGet$actor_id);
        }
        long j5 = aVar.f6822g;
        String realmGet$actor_name = actorsBean2.realmGet$actor_name();
        if (realmGet$actor_name == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j5);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j5, realmGet$actor_name);
        }
        long j6 = aVar.f6823h;
        String realmGet$actor_url = actorsBean2.realmGet$actor_url();
        if (realmGet$actor_url == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j6);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j6, realmGet$actor_url);
        }
        long j7 = aVar.f6824i;
        Boolean valueOf = Boolean.valueOf(actorsBean2.realmGet$actor_like());
        if (valueOf == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j7);
        } else {
            OsObjectBuilder.nativeAddBoolean(nativeCreateBuilder, j7, valueOf.booleanValue());
        }
        long j8 = aVar.f6825j;
        Integer valueOf2 = Integer.valueOf(actorsBean2.realmGet$actor_collects());
        if (valueOf2 == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j8);
        } else {
            OsObjectBuilder.nativeAddInteger(nativeCreateBuilder, j8, (long) valueOf2.intValue());
        }
        long j9 = aVar.f6826k;
        Boolean valueOf3 = Boolean.valueOf(actorsBean2.realmGet$actor_vip());
        if (valueOf3 == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j9);
        } else {
            OsObjectBuilder.nativeAddBoolean(nativeCreateBuilder, j9, valueOf3.booleanValue());
        }
        long j10 = aVar.f6827l;
        String realmGet$video_title = actorsBean2.realmGet$video_title();
        if (realmGet$video_title == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j10);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j10, realmGet$video_title);
        }
        try {
            OsObjectBuilder.nativeCreateOrUpdate(nativePtr, j3, nativeCreateBuilder, true, contains);
            return actorsBean;
        } finally {
            OsObjectBuilder.nativeDestroyBuilder(nativeCreateBuilder);
        }
    }

    @Override // java.lang.Object
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy com_comeback_data_ui_fulao2_bean_actorsbeanrealmproxy = (com_comeback_data_ui_fulao2_bean_ActorsBeanRealmProxy) obj;
        String str = this.proxyState.f6307e.b.f6197c;
        String str2 = com_comeback_data_ui_fulao2_bean_actorsbeanrealmproxy.proxyState.f6307e.b.f6197c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        String j2 = this.proxyState.f6305c.d().j();
        String j3 = com_comeback_data_ui_fulao2_bean_actorsbeanrealmproxy.proxyState.f6305c.d().j();
        if (j2 == null ? j3 == null : j2.equals(j3)) {
            return this.proxyState.f6305c.l() == com_comeback_data_ui_fulao2_bean_actorsbeanrealmproxy.proxyState.f6305c.l();
        }
        return false;
    }

    @Override // java.lang.Object
    public int hashCode() {
        v<ActorsBean> vVar = this.proxyState;
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
            v<ActorsBean> vVar = new v<>(this);
            this.proxyState = vVar;
            vVar.f6307e = cVar.a;
            vVar.f6305c = cVar.b;
            vVar.f6308f = cVar.f6195d;
            if (vVar == null) {
                throw null;
            }
        }
    }

    @Override // com.comeback.data.ui.fulao2.bean.ActorsBean, g.a.s0
    public int realmGet$actor_collects() {
        this.proxyState.f6307e.f();
        return (int) this.proxyState.f6305c.p(this.columnInfo.f6825j);
    }

    @Override // com.comeback.data.ui.fulao2.bean.ActorsBean, g.a.s0
    public String realmGet$actor_id() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6821f);
    }

    @Override // com.comeback.data.ui.fulao2.bean.ActorsBean, g.a.s0
    public boolean realmGet$actor_like() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.m(this.columnInfo.f6824i);
    }

    @Override // com.comeback.data.ui.fulao2.bean.ActorsBean, g.a.s0
    public String realmGet$actor_name() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6822g);
    }

    @Override // com.comeback.data.ui.fulao2.bean.ActorsBean, g.a.s0
    public String realmGet$actor_url() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6823h);
    }

    @Override // com.comeback.data.ui.fulao2.bean.ActorsBean, g.a.s0
    public boolean realmGet$actor_vip() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.m(this.columnInfo.f6826k);
    }

    @Override // g.a.f1.n
    public v<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.comeback.data.ui.fulao2.bean.ActorsBean, g.a.s0
    public String realmGet$video_title() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6827l);
    }

    @Override // com.comeback.data.ui.fulao2.bean.ActorsBean, g.a.s0
    public void realmSet$actor_collects(int i2) {
        v<ActorsBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            this.proxyState.f6305c.u(this.columnInfo.f6825j, (long) i2);
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            pVar.d().p(this.columnInfo.f6825j, pVar.l(), (long) i2, true);
        }
    }

    @Override // com.comeback.data.ui.fulao2.bean.ActorsBean, g.a.s0
    public void realmSet$actor_id(String str) {
        v<ActorsBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            throw new RealmException("Primary key field 'actor_id' cannot be changed after object was created.");
        }
    }

    @Override // com.comeback.data.ui.fulao2.bean.ActorsBean, g.a.s0
    public void realmSet$actor_like(boolean z) {
        v<ActorsBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            this.proxyState.f6305c.i(this.columnInfo.f6824i, z);
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            pVar.d().o(this.columnInfo.f6824i, pVar.l(), z, true);
        }
    }

    @Override // com.comeback.data.ui.fulao2.bean.ActorsBean, g.a.s0
    public void realmSet$actor_name(String str) {
        v<ActorsBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6822g);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6822g, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6822g, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6822g, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.fulao2.bean.ActorsBean, g.a.s0
    public void realmSet$actor_url(String str) {
        v<ActorsBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6823h);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6823h, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6823h, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6823h, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.fulao2.bean.ActorsBean, g.a.s0
    public void realmSet$actor_vip(boolean z) {
        v<ActorsBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            this.proxyState.f6305c.i(this.columnInfo.f6826k, z);
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            pVar.d().o(this.columnInfo.f6826k, pVar.l(), z, true);
        }
    }

    @Override // com.comeback.data.ui.fulao2.bean.ActorsBean, g.a.s0
    public void realmSet$video_title(String str) {
        v<ActorsBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6827l);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6827l, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6827l, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6827l, pVar.l(), str, true);
            }
        }
    }

    @Override // java.lang.Object
    public String toString() {
        if (!g0.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder q = f.b.a.a.a.q("ActorsBean = proxy[", "{actor_id:");
        String str = "null";
        f.b.a.a.a.C(q, realmGet$actor_id() != null ? realmGet$actor_id() : str, "}", ",", "{actor_name:");
        f.b.a.a.a.C(q, realmGet$actor_name() != null ? realmGet$actor_name() : str, "}", ",", "{actor_url:");
        f.b.a.a.a.C(q, realmGet$actor_url() != null ? realmGet$actor_url() : str, "}", ",", "{actor_like:");
        q.append(realmGet$actor_like());
        q.append("}");
        q.append(",");
        q.append("{actor_collects:");
        q.append(realmGet$actor_collects());
        q.append("}");
        q.append(",");
        q.append("{actor_vip:");
        q.append(realmGet$actor_vip());
        q.append("}");
        q.append(",");
        q.append("{video_title:");
        if (realmGet$video_title() != null) {
            str = realmGet$video_title();
        }
        q.append(str);
        q.append("}");
        q.append("]");
        return q.toString();
    }

    public static void insert(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long j2;
        long j3;
        Table e2 = xVar.f6317j.e(ActorsBean.class);
        long j4 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(ActorsBean.class);
        long j5 = aVar.f6821f;
        while (it.hasNext()) {
            ActorsBean actorsBean = (ActorsBean) it.next();
            if (!map.containsKey(actorsBean)) {
                if (actorsBean instanceof n) {
                    n nVar = (n) actorsBean;
                    if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                        map.put(actorsBean, Long.valueOf(nVar.realmGet$proxyState().f6305c.l()));
                    }
                }
                String realmGet$actor_id = actorsBean.realmGet$actor_id();
                if (realmGet$actor_id == null) {
                    j2 = Table.nativeFindFirstNull(j4, j5);
                } else {
                    j2 = Table.nativeFindFirstString(j4, j5, realmGet$actor_id);
                }
                if (j2 == -1) {
                    long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j5, realmGet$actor_id);
                    map.put(actorsBean, Long.valueOf(createRowWithPrimaryKey));
                    String realmGet$actor_name = actorsBean.realmGet$actor_name();
                    if (realmGet$actor_name != null) {
                        j3 = j5;
                        Table.nativeSetString(j4, aVar.f6822g, createRowWithPrimaryKey, realmGet$actor_name, false);
                    } else {
                        j3 = j5;
                    }
                    String realmGet$actor_url = actorsBean.realmGet$actor_url();
                    if (realmGet$actor_url != null) {
                        Table.nativeSetString(j4, aVar.f6823h, createRowWithPrimaryKey, realmGet$actor_url, false);
                    }
                    Table.nativeSetBoolean(j4, aVar.f6824i, createRowWithPrimaryKey, actorsBean.realmGet$actor_like(), false);
                    Table.nativeSetLong(j4, aVar.f6825j, createRowWithPrimaryKey, (long) actorsBean.realmGet$actor_collects(), false);
                    Table.nativeSetBoolean(j4, aVar.f6826k, createRowWithPrimaryKey, actorsBean.realmGet$actor_vip(), false);
                    String realmGet$video_title = actorsBean.realmGet$video_title();
                    if (realmGet$video_title != null) {
                        Table.nativeSetString(j4, aVar.f6827l, createRowWithPrimaryKey, realmGet$video_title, false);
                    }
                    j5 = j3;
                } else {
                    Table.s(realmGet$actor_id);
                    throw null;
                }
            }
        }
    }

    public static void insertOrUpdate(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long j2;
        long j3;
        Table e2 = xVar.f6317j.e(ActorsBean.class);
        long j4 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(ActorsBean.class);
        long j5 = aVar.f6821f;
        while (it.hasNext()) {
            ActorsBean actorsBean = (ActorsBean) it.next();
            if (!map.containsKey(actorsBean)) {
                if (actorsBean instanceof n) {
                    n nVar = (n) actorsBean;
                    if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                        map.put(actorsBean, Long.valueOf(nVar.realmGet$proxyState().f6305c.l()));
                    }
                }
                String realmGet$actor_id = actorsBean.realmGet$actor_id();
                if (realmGet$actor_id == null) {
                    j2 = Table.nativeFindFirstNull(j4, j5);
                } else {
                    j2 = Table.nativeFindFirstString(j4, j5, realmGet$actor_id);
                }
                long createRowWithPrimaryKey = j2 == -1 ? OsObject.createRowWithPrimaryKey(e2, j5, realmGet$actor_id) : j2;
                map.put(actorsBean, Long.valueOf(createRowWithPrimaryKey));
                String realmGet$actor_name = actorsBean.realmGet$actor_name();
                if (realmGet$actor_name != null) {
                    j3 = j5;
                    Table.nativeSetString(j4, aVar.f6822g, createRowWithPrimaryKey, realmGet$actor_name, false);
                } else {
                    j3 = j5;
                    Table.nativeSetNull(j4, aVar.f6822g, createRowWithPrimaryKey, false);
                }
                String realmGet$actor_url = actorsBean.realmGet$actor_url();
                if (realmGet$actor_url != null) {
                    Table.nativeSetString(j4, aVar.f6823h, createRowWithPrimaryKey, realmGet$actor_url, false);
                } else {
                    Table.nativeSetNull(j4, aVar.f6823h, createRowWithPrimaryKey, false);
                }
                Table.nativeSetBoolean(j4, aVar.f6824i, createRowWithPrimaryKey, actorsBean.realmGet$actor_like(), false);
                Table.nativeSetLong(j4, aVar.f6825j, createRowWithPrimaryKey, (long) actorsBean.realmGet$actor_collects(), false);
                Table.nativeSetBoolean(j4, aVar.f6826k, createRowWithPrimaryKey, actorsBean.realmGet$actor_vip(), false);
                String realmGet$video_title = actorsBean.realmGet$video_title();
                if (realmGet$video_title != null) {
                    Table.nativeSetString(j4, aVar.f6827l, createRowWithPrimaryKey, realmGet$video_title, false);
                } else {
                    Table.nativeSetNull(j4, aVar.f6827l, createRowWithPrimaryKey, false);
                }
                j5 = j3;
            }
        }
    }
}
