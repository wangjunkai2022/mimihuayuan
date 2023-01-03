package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationCompatJellybean;
import com.comeback.data.ui.hm.bean.ItemInfo;
import g.a.a;
import g.a.e0;
import g.a.f1.c;
import g.a.f1.h;
import g.a.f1.n;
import g.a.f1.p;
import g.a.g0;
import g.a.k0;
import g.a.m;
import g.a.u0;
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
public class com_comeback_data_ui_hm_bean_ItemInfoRealmProxy extends ItemInfo implements n, u0 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public a columnInfo;
    public v<ItemInfo> proxyState;

    /* loaded from: classes.dex */
    public static final class a extends c {

        /* renamed from: e  reason: collision with root package name */
        public long f6837e;

        /* renamed from: f  reason: collision with root package name */
        public long f6838f;

        /* renamed from: g  reason: collision with root package name */
        public long f6839g;

        /* renamed from: h  reason: collision with root package name */
        public long f6840h;

        /* renamed from: i  reason: collision with root package name */
        public long f6841i;

        /* renamed from: j  reason: collision with root package name */
        public long f6842j;

        /* renamed from: k  reason: collision with root package name */
        public long f6843k;

        /* renamed from: l  reason: collision with root package name */
        public long f6844l;

        public a(OsSchemaInfo osSchemaInfo) {
            super(7, true);
            OsObjectSchemaInfo a = osSchemaInfo.a("ItemInfo");
            this.f6838f = a("type", "type", a);
            this.f6839g = a("id", "id", a);
            this.f6840h = a("image", "image", a);
            this.f6841i = a(NotificationCompatJellybean.KEY_TITLE, NotificationCompatJellybean.KEY_TITLE, a);
            this.f6842j = a("desc", "desc", a);
            this.f6843k = a(NotificationCompat.CarExtender.KEY_AUTHOR, NotificationCompat.CarExtender.KEY_AUTHOR, a);
            this.f6844l = a("update", "update", a);
            this.f6837e = a.a();
        }

        @Override // g.a.f1.c
        public final void b(c cVar, c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f6838f = aVar.f6838f;
            aVar2.f6839g = aVar.f6839g;
            aVar2.f6840h = aVar.f6840h;
            aVar2.f6841i = aVar.f6841i;
            aVar2.f6842j = aVar.f6842j;
            aVar2.f6843k = aVar.f6843k;
            aVar2.f6844l = aVar.f6844l;
            aVar2.f6837e = aVar.f6837e;
        }
    }

    public com_comeback_data_ui_hm_bean_ItemInfoRealmProxy() {
        this.proxyState.b = false;
    }

    /* JADX INFO: finally extract failed */
    public static ItemInfo copy(x xVar, a aVar, ItemInfo itemInfo, boolean z, Map<e0, n> map, Set<m> set) {
        n nVar = map.get(itemInfo);
        if (nVar != null) {
            return (ItemInfo) nVar;
        }
        Table e2 = xVar.f6317j.e(ItemInfo.class);
        long j2 = aVar.f6837e;
        OsSharedRealm osSharedRealm = e2.f6953c;
        long nativePtr = osSharedRealm.getNativePtr();
        long j3 = e2.a;
        long nativeCreateBuilder = OsObjectBuilder.nativeCreateBuilder(j2 + 1);
        h hVar = osSharedRealm.context;
        set.contains(m.CHECK_SAME_VALUES_BEFORE_SET);
        long j4 = aVar.f6838f;
        Integer valueOf = Integer.valueOf(itemInfo.realmGet$type());
        if (valueOf == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j4);
        } else {
            OsObjectBuilder.nativeAddInteger(nativeCreateBuilder, j4, (long) valueOf.intValue());
        }
        long j5 = aVar.f6839g;
        String realmGet$id = itemInfo.realmGet$id();
        if (realmGet$id == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j5);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j5, realmGet$id);
        }
        long j6 = aVar.f6840h;
        String realmGet$image = itemInfo.realmGet$image();
        if (realmGet$image == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j6);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j6, realmGet$image);
        }
        long j7 = aVar.f6841i;
        String realmGet$title = itemInfo.realmGet$title();
        if (realmGet$title == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j7);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j7, realmGet$title);
        }
        long j8 = aVar.f6842j;
        String realmGet$desc = itemInfo.realmGet$desc();
        if (realmGet$desc == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j8);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j8, realmGet$desc);
        }
        long j9 = aVar.f6843k;
        String realmGet$author = itemInfo.realmGet$author();
        if (realmGet$author == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j9);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j9, realmGet$author);
        }
        long j10 = aVar.f6844l;
        String realmGet$update = itemInfo.realmGet$update();
        if (realmGet$update == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j10);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j10, realmGet$update);
        }
        try {
            UncheckedRow uncheckedRow = new UncheckedRow(hVar, e2, OsObjectBuilder.nativeCreateOrUpdate(nativePtr, j3, nativeCreateBuilder, false, false));
            OsObjectBuilder.nativeDestroyBuilder(nativeCreateBuilder);
            com_comeback_data_ui_hm_bean_ItemInfoRealmProxy newProxyInstance = newProxyInstance(xVar, uncheckedRow);
            map.put(itemInfo, newProxyInstance);
            return newProxyInstance;
        } catch (Throwable th) {
            OsObjectBuilder.nativeDestroyBuilder(nativeCreateBuilder);
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x0092  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x009c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.comeback.data.ui.hm.bean.ItemInfo copyOrUpdate(g.a.x r9, io.realm.com_comeback_data_ui_hm_bean_ItemInfoRealmProxy.a r10, com.comeback.data.ui.hm.bean.ItemInfo r11, boolean r12, java.util.Map<g.a.e0, g.a.f1.n> r13, java.util.Set<g.a.m> r14) {
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
            com.comeback.data.ui.hm.bean.ItemInfo r1 = (com.comeback.data.ui.hm.bean.ItemInfo) r1
            return r1
        L_0x0047:
            r1 = 0
            r2 = 0
            if (r12 == 0) goto L_0x008e
            java.lang.Class<com.comeback.data.ui.hm.bean.ItemInfo> r3 = com.comeback.data.ui.hm.bean.ItemInfo.class
            g.a.k0 r4 = r9.f6317j
            io.realm.internal.Table r3 = r4.e(r3)
            long r4 = r10.f6839g
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
            io.realm.com_comeback_data_ui_hm_bean_ItemInfoRealmProxy r1 = new io.realm.com_comeback_data_ui_hm_bean_ItemInfoRealmProxy     // Catch: all -> 0x0089
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
            com.comeback.data.ui.hm.bean.ItemInfo r9 = update(r1, r2, r3, r4, r5, r6)
            goto L_0x00a0
        L_0x009c:
            com.comeback.data.ui.hm.bean.ItemInfo r9 = copy(r9, r10, r11, r12, r13, r14)
        L_0x00a0:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_hm_bean_ItemInfoRealmProxy.copyOrUpdate(g.a.x, io.realm.com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a, com.comeback.data.ui.hm.bean.ItemInfo, boolean, java.util.Map, java.util.Set):com.comeback.data.ui.hm.bean.ItemInfo");
    }

    public static a createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new a(osSchemaInfo);
    }

    public static ItemInfo createDetachedCopy(ItemInfo itemInfo, int i2, int i3, Map<e0, n.a<e0>> map) {
        ItemInfo itemInfo2;
        if (i2 > i3 || itemInfo == null) {
            return null;
        }
        n.a<e0> aVar = map.get(itemInfo);
        if (aVar == null) {
            itemInfo2 = new ItemInfo();
            map.put(itemInfo, new n.a<>(i2, itemInfo2));
        } else if (i2 >= aVar.a) {
            return (ItemInfo) aVar.b;
        } else {
            aVar.a = i2;
            itemInfo2 = (ItemInfo) aVar.b;
        }
        itemInfo2.realmSet$type(itemInfo.realmGet$type());
        itemInfo2.realmSet$id(itemInfo.realmGet$id());
        itemInfo2.realmSet$image(itemInfo.realmGet$image());
        itemInfo2.realmSet$title(itemInfo.realmGet$title());
        itemInfo2.realmSet$desc(itemInfo.realmGet$desc());
        itemInfo2.realmSet$author(itemInfo.realmGet$author());
        itemInfo2.realmSet$update(itemInfo.realmGet$update());
        return itemInfo2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.b bVar = new OsObjectSchemaInfo.b("ItemInfo", 7, 0);
        bVar.a("type", RealmFieldType.INTEGER, false, false, true);
        bVar.a("id", RealmFieldType.STRING, true, true, false);
        bVar.a("image", RealmFieldType.STRING, false, false, false);
        bVar.a(NotificationCompatJellybean.KEY_TITLE, RealmFieldType.STRING, false, false, false);
        bVar.a("desc", RealmFieldType.STRING, false, false, false);
        bVar.a(NotificationCompat.CarExtender.KEY_AUTHOR, RealmFieldType.STRING, false, false, false);
        bVar.a("update", RealmFieldType.STRING, false, false, false);
        return bVar.b();
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0074  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00a9  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00c7  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00e0  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00f9  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x0112  */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x012b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.comeback.data.ui.hm.bean.ItemInfo createOrUpdateUsingJsonObject(g.a.x r8, org.json.JSONObject r9, boolean r10) throws org.json.JSONException {
        /*
        // Method dump skipped, instructions count: 317
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_hm_bean_ItemInfoRealmProxy.createOrUpdateUsingJsonObject(g.a.x, org.json.JSONObject, boolean):com.comeback.data.ui.hm.bean.ItemInfo");
    }

    @TargetApi(11)
    public static ItemInfo createUsingJsonStream(x xVar, JsonReader jsonReader) throws IOException {
        ItemInfo itemInfo = new ItemInfo();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("type")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    itemInfo.realmSet$type(jsonReader.nextInt());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'type' to null.");
                }
            } else if (nextName.equals("id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    itemInfo.realmSet$id(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    itemInfo.realmSet$id(null);
                }
                z = true;
            } else if (nextName.equals("image")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    itemInfo.realmSet$image(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    itemInfo.realmSet$image(null);
                }
            } else if (nextName.equals(NotificationCompatJellybean.KEY_TITLE)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    itemInfo.realmSet$title(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    itemInfo.realmSet$title(null);
                }
            } else if (nextName.equals("desc")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    itemInfo.realmSet$desc(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    itemInfo.realmSet$desc(null);
                }
            } else if (nextName.equals(NotificationCompat.CarExtender.KEY_AUTHOR)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    itemInfo.realmSet$author(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    itemInfo.realmSet$author(null);
                }
            } else if (!nextName.equals("update")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                itemInfo.realmSet$update(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                itemInfo.realmSet$update(null);
            }
        }
        jsonReader.endObject();
        if (z) {
            return (ItemInfo) xVar.L(itemInfo, new m[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "ItemInfo";
    }

    public static long insert(x xVar, ItemInfo itemInfo, Map<e0, Long> map) {
        long j2;
        if (itemInfo instanceof n) {
            n nVar = (n) itemInfo;
            if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                return nVar.realmGet$proxyState().f6305c.l();
            }
        }
        Table e2 = xVar.f6317j.e(ItemInfo.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(ItemInfo.class);
        long j4 = aVar.f6839g;
        String realmGet$id = itemInfo.realmGet$id();
        if (realmGet$id == null) {
            j2 = Table.nativeFindFirstNull(j3, j4);
        } else {
            j2 = Table.nativeFindFirstString(j3, j4, realmGet$id);
        }
        if (j2 == -1) {
            long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j4, realmGet$id);
            map.put(itemInfo, Long.valueOf(createRowWithPrimaryKey));
            Table.nativeSetLong(j3, aVar.f6838f, createRowWithPrimaryKey, (long) itemInfo.realmGet$type(), false);
            String realmGet$image = itemInfo.realmGet$image();
            if (realmGet$image != null) {
                Table.nativeSetString(j3, aVar.f6840h, createRowWithPrimaryKey, realmGet$image, false);
            }
            String realmGet$title = itemInfo.realmGet$title();
            if (realmGet$title != null) {
                Table.nativeSetString(j3, aVar.f6841i, createRowWithPrimaryKey, realmGet$title, false);
            }
            String realmGet$desc = itemInfo.realmGet$desc();
            if (realmGet$desc != null) {
                Table.nativeSetString(j3, aVar.f6842j, createRowWithPrimaryKey, realmGet$desc, false);
            }
            String realmGet$author = itemInfo.realmGet$author();
            if (realmGet$author != null) {
                Table.nativeSetString(j3, aVar.f6843k, createRowWithPrimaryKey, realmGet$author, false);
            }
            String realmGet$update = itemInfo.realmGet$update();
            if (realmGet$update != null) {
                Table.nativeSetString(j3, aVar.f6844l, createRowWithPrimaryKey, realmGet$update, false);
            }
            return createRowWithPrimaryKey;
        }
        Table.s(realmGet$id);
        throw null;
    }

    public static long insertOrUpdate(x xVar, ItemInfo itemInfo, Map<e0, Long> map) {
        long j2;
        if (itemInfo instanceof n) {
            n nVar = (n) itemInfo;
            if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                return nVar.realmGet$proxyState().f6305c.l();
            }
        }
        Table e2 = xVar.f6317j.e(ItemInfo.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(ItemInfo.class);
        long j4 = aVar.f6839g;
        String realmGet$id = itemInfo.realmGet$id();
        if (realmGet$id == null) {
            j2 = Table.nativeFindFirstNull(j3, j4);
        } else {
            j2 = Table.nativeFindFirstString(j3, j4, realmGet$id);
        }
        if (j2 == -1) {
            j2 = OsObject.createRowWithPrimaryKey(e2, j4, realmGet$id);
        }
        map.put(itemInfo, Long.valueOf(j2));
        Table.nativeSetLong(j3, aVar.f6838f, j2, (long) itemInfo.realmGet$type(), false);
        String realmGet$image = itemInfo.realmGet$image();
        if (realmGet$image != null) {
            Table.nativeSetString(j3, aVar.f6840h, j2, realmGet$image, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6840h, j2, false);
        }
        String realmGet$title = itemInfo.realmGet$title();
        if (realmGet$title != null) {
            Table.nativeSetString(j3, aVar.f6841i, j2, realmGet$title, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6841i, j2, false);
        }
        String realmGet$desc = itemInfo.realmGet$desc();
        if (realmGet$desc != null) {
            Table.nativeSetString(j3, aVar.f6842j, j2, realmGet$desc, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6842j, j2, false);
        }
        String realmGet$author = itemInfo.realmGet$author();
        if (realmGet$author != null) {
            Table.nativeSetString(j3, aVar.f6843k, j2, realmGet$author, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6843k, j2, false);
        }
        String realmGet$update = itemInfo.realmGet$update();
        if (realmGet$update != null) {
            Table.nativeSetString(j3, aVar.f6844l, j2, realmGet$update, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6844l, j2, false);
        }
        return j2;
    }

    public static com_comeback_data_ui_hm_bean_ItemInfoRealmProxy newProxyInstance(g.a.a aVar, p pVar) {
        a.c cVar = g.a.a.f6189i.get();
        k0 G = aVar.G();
        G.a();
        c a2 = G.f6286f.a(ItemInfo.class);
        List<String> emptyList = Collections.emptyList();
        cVar.a = aVar;
        cVar.b = pVar;
        cVar.f6194c = a2;
        cVar.f6195d = false;
        cVar.f6196e = emptyList;
        com_comeback_data_ui_hm_bean_ItemInfoRealmProxy com_comeback_data_ui_hm_bean_iteminforealmproxy = new com_comeback_data_ui_hm_bean_ItemInfoRealmProxy();
        cVar.a();
        return com_comeback_data_ui_hm_bean_iteminforealmproxy;
    }

    public static ItemInfo update(x xVar, a aVar, ItemInfo itemInfo, ItemInfo itemInfo2, Map<e0, n> map, Set<m> set) {
        Table e2 = xVar.f6317j.e(ItemInfo.class);
        long j2 = aVar.f6837e;
        OsSharedRealm osSharedRealm = e2.f6953c;
        long nativePtr = osSharedRealm.getNativePtr();
        long j3 = e2.a;
        long nativeCreateBuilder = OsObjectBuilder.nativeCreateBuilder(j2 + 1);
        h hVar = osSharedRealm.context;
        boolean contains = set.contains(m.CHECK_SAME_VALUES_BEFORE_SET);
        long j4 = aVar.f6838f;
        Integer valueOf = Integer.valueOf(itemInfo2.realmGet$type());
        if (valueOf == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j4);
        } else {
            OsObjectBuilder.nativeAddInteger(nativeCreateBuilder, j4, (long) valueOf.intValue());
        }
        long j5 = aVar.f6839g;
        String realmGet$id = itemInfo2.realmGet$id();
        if (realmGet$id == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j5);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j5, realmGet$id);
        }
        long j6 = aVar.f6840h;
        String realmGet$image = itemInfo2.realmGet$image();
        if (realmGet$image == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j6);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j6, realmGet$image);
        }
        long j7 = aVar.f6841i;
        String realmGet$title = itemInfo2.realmGet$title();
        if (realmGet$title == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j7);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j7, realmGet$title);
        }
        long j8 = aVar.f6842j;
        String realmGet$desc = itemInfo2.realmGet$desc();
        if (realmGet$desc == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j8);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j8, realmGet$desc);
        }
        long j9 = aVar.f6843k;
        String realmGet$author = itemInfo2.realmGet$author();
        if (realmGet$author == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j9);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j9, realmGet$author);
        }
        long j10 = aVar.f6844l;
        String realmGet$update = itemInfo2.realmGet$update();
        if (realmGet$update == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j10);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j10, realmGet$update);
        }
        try {
            OsObjectBuilder.nativeCreateOrUpdate(nativePtr, j3, nativeCreateBuilder, true, contains);
            return itemInfo;
        } finally {
            OsObjectBuilder.nativeDestroyBuilder(nativeCreateBuilder);
        }
    }

    @Override // java.lang.Object
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_comeback_data_ui_hm_bean_ItemInfoRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_comeback_data_ui_hm_bean_ItemInfoRealmProxy com_comeback_data_ui_hm_bean_iteminforealmproxy = (com_comeback_data_ui_hm_bean_ItemInfoRealmProxy) obj;
        String str = this.proxyState.f6307e.b.f6197c;
        String str2 = com_comeback_data_ui_hm_bean_iteminforealmproxy.proxyState.f6307e.b.f6197c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        String j2 = this.proxyState.f6305c.d().j();
        String j3 = com_comeback_data_ui_hm_bean_iteminforealmproxy.proxyState.f6305c.d().j();
        if (j2 == null ? j3 == null : j2.equals(j3)) {
            return this.proxyState.f6305c.l() == com_comeback_data_ui_hm_bean_iteminforealmproxy.proxyState.f6305c.l();
        }
        return false;
    }

    @Override // java.lang.Object
    public int hashCode() {
        v<ItemInfo> vVar = this.proxyState;
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
            v<ItemInfo> vVar = new v<>(this);
            this.proxyState = vVar;
            vVar.f6307e = cVar.a;
            vVar.f6305c = cVar.b;
            vVar.f6308f = cVar.f6195d;
            if (vVar == null) {
                throw null;
            }
        }
    }

    @Override // com.comeback.data.ui.hm.bean.ItemInfo, g.a.u0
    public String realmGet$author() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6843k);
    }

    @Override // com.comeback.data.ui.hm.bean.ItemInfo, g.a.u0
    public String realmGet$desc() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6842j);
    }

    @Override // com.comeback.data.ui.hm.bean.ItemInfo, g.a.u0
    public String realmGet$id() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6839g);
    }

    @Override // com.comeback.data.ui.hm.bean.ItemInfo, g.a.u0
    public String realmGet$image() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6840h);
    }

    @Override // g.a.f1.n
    public v<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.comeback.data.ui.hm.bean.ItemInfo, g.a.u0
    public String realmGet$title() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6841i);
    }

    @Override // com.comeback.data.ui.hm.bean.ItemInfo, g.a.u0
    public int realmGet$type() {
        this.proxyState.f6307e.f();
        return (int) this.proxyState.f6305c.p(this.columnInfo.f6838f);
    }

    @Override // com.comeback.data.ui.hm.bean.ItemInfo, g.a.u0
    public String realmGet$update() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6844l);
    }

    @Override // com.comeback.data.ui.hm.bean.ItemInfo, g.a.u0
    public void realmSet$author(String str) {
        v<ItemInfo> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6843k);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6843k, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6843k, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6843k, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.hm.bean.ItemInfo, g.a.u0
    public void realmSet$desc(String str) {
        v<ItemInfo> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6842j);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6842j, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6842j, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6842j, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.hm.bean.ItemInfo, g.a.u0
    public void realmSet$id(String str) {
        v<ItemInfo> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
        }
    }

    @Override // com.comeback.data.ui.hm.bean.ItemInfo, g.a.u0
    public void realmSet$image(String str) {
        v<ItemInfo> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6840h);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6840h, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6840h, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6840h, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.hm.bean.ItemInfo, g.a.u0
    public void realmSet$title(String str) {
        v<ItemInfo> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6841i);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6841i, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6841i, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6841i, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.hm.bean.ItemInfo, g.a.u0
    public void realmSet$type(int i2) {
        v<ItemInfo> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            this.proxyState.f6305c.u(this.columnInfo.f6838f, (long) i2);
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            pVar.d().p(this.columnInfo.f6838f, pVar.l(), (long) i2, true);
        }
    }

    @Override // com.comeback.data.ui.hm.bean.ItemInfo, g.a.u0
    public void realmSet$update(String str) {
        v<ItemInfo> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6844l);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6844l, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6844l, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6844l, pVar.l(), str, true);
            }
        }
    }

    @Override // java.lang.Object
    public String toString() {
        if (!g0.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder q = f.b.a.a.a.q("ItemInfo = proxy[", "{type:");
        q.append(realmGet$type());
        q.append("}");
        q.append(",");
        q.append("{id:");
        String str = "null";
        f.b.a.a.a.C(q, realmGet$id() != null ? realmGet$id() : str, "}", ",", "{image:");
        f.b.a.a.a.C(q, realmGet$image() != null ? realmGet$image() : str, "}", ",", "{title:");
        f.b.a.a.a.C(q, realmGet$title() != null ? realmGet$title() : str, "}", ",", "{desc:");
        f.b.a.a.a.C(q, realmGet$desc() != null ? realmGet$desc() : str, "}", ",", "{author:");
        f.b.a.a.a.C(q, realmGet$author() != null ? realmGet$author() : str, "}", ",", "{update:");
        if (realmGet$update() != null) {
            str = realmGet$update();
        }
        q.append(str);
        q.append("}");
        q.append("]");
        return q.toString();
    }

    public static void insert(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long j2;
        Table e2 = xVar.f6317j.e(ItemInfo.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(ItemInfo.class);
        long j4 = aVar.f6839g;
        while (it.hasNext()) {
            ItemInfo itemInfo = (ItemInfo) it.next();
            if (!map.containsKey(itemInfo)) {
                if (itemInfo instanceof n) {
                    n nVar = (n) itemInfo;
                    if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                        map.put(itemInfo, Long.valueOf(nVar.realmGet$proxyState().f6305c.l()));
                    }
                }
                String realmGet$id = itemInfo.realmGet$id();
                if (realmGet$id == null) {
                    j2 = Table.nativeFindFirstNull(j3, j4);
                } else {
                    j2 = Table.nativeFindFirstString(j3, j4, realmGet$id);
                }
                if (j2 == -1) {
                    long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j4, realmGet$id);
                    map.put(itemInfo, Long.valueOf(createRowWithPrimaryKey));
                    Table.nativeSetLong(j3, aVar.f6838f, createRowWithPrimaryKey, (long) itemInfo.realmGet$type(), false);
                    String realmGet$image = itemInfo.realmGet$image();
                    if (realmGet$image != null) {
                        Table.nativeSetString(j3, aVar.f6840h, createRowWithPrimaryKey, realmGet$image, false);
                    }
                    String realmGet$title = itemInfo.realmGet$title();
                    if (realmGet$title != null) {
                        Table.nativeSetString(j3, aVar.f6841i, createRowWithPrimaryKey, realmGet$title, false);
                    }
                    String realmGet$desc = itemInfo.realmGet$desc();
                    if (realmGet$desc != null) {
                        Table.nativeSetString(j3, aVar.f6842j, createRowWithPrimaryKey, realmGet$desc, false);
                    }
                    String realmGet$author = itemInfo.realmGet$author();
                    if (realmGet$author != null) {
                        Table.nativeSetString(j3, aVar.f6843k, createRowWithPrimaryKey, realmGet$author, false);
                    }
                    String realmGet$update = itemInfo.realmGet$update();
                    if (realmGet$update != null) {
                        Table.nativeSetString(j3, aVar.f6844l, createRowWithPrimaryKey, realmGet$update, false);
                    }
                    j4 = j4;
                } else {
                    Table.s(realmGet$id);
                    throw null;
                }
            }
        }
    }

    public static void insertOrUpdate(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long j2;
        Table e2 = xVar.f6317j.e(ItemInfo.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(ItemInfo.class);
        long j4 = aVar.f6839g;
        while (it.hasNext()) {
            ItemInfo itemInfo = (ItemInfo) it.next();
            if (!map.containsKey(itemInfo)) {
                if (itemInfo instanceof n) {
                    n nVar = (n) itemInfo;
                    if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                        map.put(itemInfo, Long.valueOf(nVar.realmGet$proxyState().f6305c.l()));
                    }
                }
                String realmGet$id = itemInfo.realmGet$id();
                if (realmGet$id == null) {
                    j2 = Table.nativeFindFirstNull(j3, j4);
                } else {
                    j2 = Table.nativeFindFirstString(j3, j4, realmGet$id);
                }
                long createRowWithPrimaryKey = j2 == -1 ? OsObject.createRowWithPrimaryKey(e2, j4, realmGet$id) : j2;
                map.put(itemInfo, Long.valueOf(createRowWithPrimaryKey));
                Table.nativeSetLong(j3, aVar.f6838f, createRowWithPrimaryKey, (long) itemInfo.realmGet$type(), false);
                String realmGet$image = itemInfo.realmGet$image();
                if (realmGet$image != null) {
                    Table.nativeSetString(j3, aVar.f6840h, createRowWithPrimaryKey, realmGet$image, false);
                } else {
                    Table.nativeSetNull(j3, aVar.f6840h, createRowWithPrimaryKey, false);
                }
                String realmGet$title = itemInfo.realmGet$title();
                if (realmGet$title != null) {
                    Table.nativeSetString(j3, aVar.f6841i, createRowWithPrimaryKey, realmGet$title, false);
                } else {
                    Table.nativeSetNull(j3, aVar.f6841i, createRowWithPrimaryKey, false);
                }
                String realmGet$desc = itemInfo.realmGet$desc();
                if (realmGet$desc != null) {
                    Table.nativeSetString(j3, aVar.f6842j, createRowWithPrimaryKey, realmGet$desc, false);
                } else {
                    Table.nativeSetNull(j3, aVar.f6842j, createRowWithPrimaryKey, false);
                }
                String realmGet$author = itemInfo.realmGet$author();
                if (realmGet$author != null) {
                    Table.nativeSetString(j3, aVar.f6843k, createRowWithPrimaryKey, realmGet$author, false);
                } else {
                    Table.nativeSetNull(j3, aVar.f6843k, createRowWithPrimaryKey, false);
                }
                String realmGet$update = itemInfo.realmGet$update();
                if (realmGet$update != null) {
                    Table.nativeSetString(j3, aVar.f6844l, createRowWithPrimaryKey, realmGet$update, false);
                } else {
                    Table.nativeSetNull(j3, aVar.f6844l, createRowWithPrimaryKey, false);
                }
                j4 = j4;
            }
        }
    }
}
