package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.comeback.data.ui.mimei.bean.MimeiComicItem;
import g.a.a;
import g.a.d1;
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
public class com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy extends MimeiComicItem implements n, d1 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public a columnInfo;
    public v<MimeiComicItem> proxyState;

    /* loaded from: classes.dex */
    public static final class a extends c {

        /* renamed from: e  reason: collision with root package name */
        public long f6894e;

        /* renamed from: f  reason: collision with root package name */
        public long f6895f;

        /* renamed from: g  reason: collision with root package name */
        public long f6896g;

        /* renamed from: h  reason: collision with root package name */
        public long f6897h;

        /* renamed from: i  reason: collision with root package name */
        public long f6898i;

        /* renamed from: j  reason: collision with root package name */
        public long f6899j;

        /* renamed from: k  reason: collision with root package name */
        public long f6900k;

        /* renamed from: l  reason: collision with root package name */
        public long f6901l;

        /* renamed from: m  reason: collision with root package name */
        public long f6902m;
        public long n;
        public long o;
        public long p;
        public long q;
        public long r;
        public long s;
        public long t;
        public long u;

        public a(OsSchemaInfo osSchemaInfo) {
            super(16, true);
            OsObjectSchemaInfo a = osSchemaInfo.a("MimeiComicItem");
            this.f6895f = a("id", "id", a);
            this.f6896g = a("series_hash_key", "series_hash_key", a);
            this.f6897h = a("name", "name", a);
            this.f6898i = a("series", "series", a);
            this.f6899j = a("series_stamp", "series_stamp", a);
            this.f6900k = a("cover_path", "cover_path", a);
            this.f6901l = a("full_cover_path", "full_cover_path", a);
            this.f6902m = a("view_count", "view_count", a);
            this.n = a("pages", "pages", a);
            this.o = a("type", "type", a);
            this.p = a("max_chapter", "max_chapter", a);
            this.q = a("max_volume", "max_volume", a);
            this.r = a("end", "end", a);
            this.s = a("apitimestamp", "apitimestamp", a);
            this.t = a("series_number", "series_number", a);
            this.u = a("opened_at", "opened_at", a);
            this.f6894e = a.a();
        }

        @Override // g.a.f1.c
        public final void b(c cVar, c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f6895f = aVar.f6895f;
            aVar2.f6896g = aVar.f6896g;
            aVar2.f6897h = aVar.f6897h;
            aVar2.f6898i = aVar.f6898i;
            aVar2.f6899j = aVar.f6899j;
            aVar2.f6900k = aVar.f6900k;
            aVar2.f6901l = aVar.f6901l;
            aVar2.f6902m = aVar.f6902m;
            aVar2.n = aVar.n;
            aVar2.o = aVar.o;
            aVar2.p = aVar.p;
            aVar2.q = aVar.q;
            aVar2.r = aVar.r;
            aVar2.s = aVar.s;
            aVar2.t = aVar.t;
            aVar2.u = aVar.u;
            aVar2.f6894e = aVar.f6894e;
        }
    }

    public com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy() {
        this.proxyState.b = false;
    }

    public static MimeiComicItem copy(x xVar, a aVar, MimeiComicItem mimeiComicItem, boolean z, Map<e0, n> map, Set<m> set) {
        n nVar = map.get(mimeiComicItem);
        if (nVar != null) {
            return (MimeiComicItem) nVar;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(xVar.f6317j.e(MimeiComicItem.class), aVar.f6894e, set);
        osObjectBuilder.g(aVar.f6895f, mimeiComicItem.realmGet$id());
        osObjectBuilder.g(aVar.f6896g, mimeiComicItem.realmGet$series_hash_key());
        osObjectBuilder.g(aVar.f6897h, mimeiComicItem.realmGet$name());
        osObjectBuilder.g(aVar.f6898i, mimeiComicItem.realmGet$series());
        osObjectBuilder.g(aVar.f6899j, mimeiComicItem.realmGet$series_stamp());
        osObjectBuilder.g(aVar.f6900k, mimeiComicItem.realmGet$cover_path());
        osObjectBuilder.g(aVar.f6901l, mimeiComicItem.realmGet$full_cover_path());
        osObjectBuilder.e(aVar.f6902m, Integer.valueOf(mimeiComicItem.realmGet$view_count()));
        osObjectBuilder.e(aVar.n, Integer.valueOf(mimeiComicItem.realmGet$pages()));
        osObjectBuilder.e(aVar.o, Integer.valueOf(mimeiComicItem.realmGet$type()));
        osObjectBuilder.e(aVar.p, Integer.valueOf(mimeiComicItem.realmGet$max_chapter()));
        osObjectBuilder.e(aVar.q, Integer.valueOf(mimeiComicItem.realmGet$max_volume()));
        osObjectBuilder.g(aVar.r, mimeiComicItem.realmGet$end());
        osObjectBuilder.g(aVar.s, mimeiComicItem.realmGet$apitimestamp());
        osObjectBuilder.e(aVar.t, Integer.valueOf(mimeiComicItem.realmGet$series_number()));
        osObjectBuilder.g(aVar.u, mimeiComicItem.realmGet$opened_at());
        com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy newProxyInstance = newProxyInstance(xVar, osObjectBuilder.E());
        map.put(mimeiComicItem, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x0092  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x009c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.comeback.data.ui.mimei.bean.MimeiComicItem copyOrUpdate(g.a.x r9, io.realm.com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy.a r10, com.comeback.data.ui.mimei.bean.MimeiComicItem r11, boolean r12, java.util.Map<g.a.e0, g.a.f1.n> r13, java.util.Set<g.a.m> r14) {
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
            com.comeback.data.ui.mimei.bean.MimeiComicItem r1 = (com.comeback.data.ui.mimei.bean.MimeiComicItem) r1
            return r1
        L_0x0047:
            r1 = 0
            r2 = 0
            if (r12 == 0) goto L_0x008e
            java.lang.Class<com.comeback.data.ui.mimei.bean.MimeiComicItem> r3 = com.comeback.data.ui.mimei.bean.MimeiComicItem.class
            g.a.k0 r4 = r9.f6317j
            io.realm.internal.Table r3 = r4.e(r3)
            long r4 = r10.f6895f
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
            io.realm.com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy r1 = new io.realm.com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy     // Catch: all -> 0x0089
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
            com.comeback.data.ui.mimei.bean.MimeiComicItem r9 = update(r1, r2, r3, r4, r5, r6)
            goto L_0x00a0
        L_0x009c:
            com.comeback.data.ui.mimei.bean.MimeiComicItem r9 = copy(r9, r10, r11, r12, r13, r14)
        L_0x00a0:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy.copyOrUpdate(g.a.x, io.realm.com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy$a, com.comeback.data.ui.mimei.bean.MimeiComicItem, boolean, java.util.Map, java.util.Set):com.comeback.data.ui.mimei.bean.MimeiComicItem");
    }

    public static a createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new a(osSchemaInfo);
    }

    public static MimeiComicItem createDetachedCopy(MimeiComicItem mimeiComicItem, int i2, int i3, Map<e0, n.a<e0>> map) {
        MimeiComicItem mimeiComicItem2;
        if (i2 > i3 || mimeiComicItem == null) {
            return null;
        }
        n.a<e0> aVar = map.get(mimeiComicItem);
        if (aVar == null) {
            mimeiComicItem2 = new MimeiComicItem();
            map.put(mimeiComicItem, new n.a<>(i2, mimeiComicItem2));
        } else if (i2 >= aVar.a) {
            return (MimeiComicItem) aVar.b;
        } else {
            aVar.a = i2;
            mimeiComicItem2 = (MimeiComicItem) aVar.b;
        }
        mimeiComicItem2.realmSet$id(mimeiComicItem.realmGet$id());
        mimeiComicItem2.realmSet$series_hash_key(mimeiComicItem.realmGet$series_hash_key());
        mimeiComicItem2.realmSet$name(mimeiComicItem.realmGet$name());
        mimeiComicItem2.realmSet$series(mimeiComicItem.realmGet$series());
        mimeiComicItem2.realmSet$series_stamp(mimeiComicItem.realmGet$series_stamp());
        mimeiComicItem2.realmSet$cover_path(mimeiComicItem.realmGet$cover_path());
        mimeiComicItem2.realmSet$full_cover_path(mimeiComicItem.realmGet$full_cover_path());
        mimeiComicItem2.realmSet$view_count(mimeiComicItem.realmGet$view_count());
        mimeiComicItem2.realmSet$pages(mimeiComicItem.realmGet$pages());
        mimeiComicItem2.realmSet$type(mimeiComicItem.realmGet$type());
        mimeiComicItem2.realmSet$max_chapter(mimeiComicItem.realmGet$max_chapter());
        mimeiComicItem2.realmSet$max_volume(mimeiComicItem.realmGet$max_volume());
        mimeiComicItem2.realmSet$end(mimeiComicItem.realmGet$end());
        mimeiComicItem2.realmSet$apitimestamp(mimeiComicItem.realmGet$apitimestamp());
        mimeiComicItem2.realmSet$series_number(mimeiComicItem.realmGet$series_number());
        mimeiComicItem2.realmSet$opened_at(mimeiComicItem.realmGet$opened_at());
        return mimeiComicItem2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.b bVar = new OsObjectSchemaInfo.b("MimeiComicItem", 16, 0);
        bVar.a("id", RealmFieldType.STRING, true, true, false);
        bVar.a("series_hash_key", RealmFieldType.STRING, false, false, false);
        bVar.a("name", RealmFieldType.STRING, false, false, false);
        bVar.a("series", RealmFieldType.STRING, false, false, false);
        bVar.a("series_stamp", RealmFieldType.STRING, false, false, false);
        bVar.a("cover_path", RealmFieldType.STRING, false, false, false);
        bVar.a("full_cover_path", RealmFieldType.STRING, false, false, false);
        bVar.a("view_count", RealmFieldType.INTEGER, false, false, true);
        bVar.a("pages", RealmFieldType.INTEGER, false, false, true);
        bVar.a("type", RealmFieldType.INTEGER, false, false, true);
        bVar.a("max_chapter", RealmFieldType.INTEGER, false, false, true);
        bVar.a("max_volume", RealmFieldType.INTEGER, false, false, true);
        bVar.a("end", RealmFieldType.STRING, false, false, false);
        bVar.a("apitimestamp", RealmFieldType.STRING, false, false, false);
        bVar.a("series_number", RealmFieldType.INTEGER, false, false, true);
        bVar.a("opened_at", RealmFieldType.STRING, false, false, false);
        return bVar.b();
    }

    /* JADX WARNING: Removed duplicated region for block: B:105:0x01ee  */
    /* JADX WARNING: Removed duplicated region for block: B:111:0x0207  */
    /* JADX WARNING: Removed duplicated region for block: B:118:0x0225  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0074  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00a9  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00c2  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00db  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00f4  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x010d  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x0126  */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x013f  */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x015d  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x017b  */
    /* JADX WARNING: Removed duplicated region for block: B:85:0x0199  */
    /* JADX WARNING: Removed duplicated region for block: B:92:0x01b7  */
    /* JADX WARNING: Removed duplicated region for block: B:99:0x01d5  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.comeback.data.ui.mimei.bean.MimeiComicItem createOrUpdateUsingJsonObject(g.a.x r8, org.json.JSONObject r9, boolean r10) throws org.json.JSONException {
        /*
        // Method dump skipped, instructions count: 567
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy.createOrUpdateUsingJsonObject(g.a.x, org.json.JSONObject, boolean):com.comeback.data.ui.mimei.bean.MimeiComicItem");
    }

    @TargetApi(11)
    public static MimeiComicItem createUsingJsonStream(x xVar, JsonReader jsonReader) throws IOException {
        MimeiComicItem mimeiComicItem = new MimeiComicItem();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mimeiComicItem.realmSet$id(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    mimeiComicItem.realmSet$id(null);
                }
                z = true;
            } else if (nextName.equals("series_hash_key")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mimeiComicItem.realmSet$series_hash_key(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    mimeiComicItem.realmSet$series_hash_key(null);
                }
            } else if (nextName.equals("name")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mimeiComicItem.realmSet$name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    mimeiComicItem.realmSet$name(null);
                }
            } else if (nextName.equals("series")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mimeiComicItem.realmSet$series(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    mimeiComicItem.realmSet$series(null);
                }
            } else if (nextName.equals("series_stamp")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mimeiComicItem.realmSet$series_stamp(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    mimeiComicItem.realmSet$series_stamp(null);
                }
            } else if (nextName.equals("cover_path")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mimeiComicItem.realmSet$cover_path(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    mimeiComicItem.realmSet$cover_path(null);
                }
            } else if (nextName.equals("full_cover_path")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mimeiComicItem.realmSet$full_cover_path(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    mimeiComicItem.realmSet$full_cover_path(null);
                }
            } else if (nextName.equals("view_count")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mimeiComicItem.realmSet$view_count(jsonReader.nextInt());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'view_count' to null.");
                }
            } else if (nextName.equals("pages")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mimeiComicItem.realmSet$pages(jsonReader.nextInt());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'pages' to null.");
                }
            } else if (nextName.equals("type")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mimeiComicItem.realmSet$type(jsonReader.nextInt());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'type' to null.");
                }
            } else if (nextName.equals("max_chapter")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mimeiComicItem.realmSet$max_chapter(jsonReader.nextInt());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'max_chapter' to null.");
                }
            } else if (nextName.equals("max_volume")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mimeiComicItem.realmSet$max_volume(jsonReader.nextInt());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'max_volume' to null.");
                }
            } else if (nextName.equals("end")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mimeiComicItem.realmSet$end(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    mimeiComicItem.realmSet$end(null);
                }
            } else if (nextName.equals("apitimestamp")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mimeiComicItem.realmSet$apitimestamp(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    mimeiComicItem.realmSet$apitimestamp(null);
                }
            } else if (nextName.equals("series_number")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mimeiComicItem.realmSet$series_number(jsonReader.nextInt());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'series_number' to null.");
                }
            } else if (!nextName.equals("opened_at")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                mimeiComicItem.realmSet$opened_at(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                mimeiComicItem.realmSet$opened_at(null);
            }
        }
        jsonReader.endObject();
        if (z) {
            return (MimeiComicItem) xVar.L(mimeiComicItem, new m[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "MimeiComicItem";
    }

    public static long insert(x xVar, MimeiComicItem mimeiComicItem, Map<e0, Long> map) {
        long j2;
        if (mimeiComicItem instanceof n) {
            n nVar = (n) mimeiComicItem;
            if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                return nVar.realmGet$proxyState().f6305c.l();
            }
        }
        Table e2 = xVar.f6317j.e(MimeiComicItem.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(MimeiComicItem.class);
        long j4 = aVar.f6895f;
        String realmGet$id = mimeiComicItem.realmGet$id();
        if (realmGet$id == null) {
            j2 = Table.nativeFindFirstNull(j3, j4);
        } else {
            j2 = Table.nativeFindFirstString(j3, j4, realmGet$id);
        }
        if (j2 == -1) {
            long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j4, realmGet$id);
            map.put(mimeiComicItem, Long.valueOf(createRowWithPrimaryKey));
            String realmGet$series_hash_key = mimeiComicItem.realmGet$series_hash_key();
            if (realmGet$series_hash_key != null) {
                Table.nativeSetString(j3, aVar.f6896g, createRowWithPrimaryKey, realmGet$series_hash_key, false);
            }
            String realmGet$name = mimeiComicItem.realmGet$name();
            if (realmGet$name != null) {
                Table.nativeSetString(j3, aVar.f6897h, createRowWithPrimaryKey, realmGet$name, false);
            }
            String realmGet$series = mimeiComicItem.realmGet$series();
            if (realmGet$series != null) {
                Table.nativeSetString(j3, aVar.f6898i, createRowWithPrimaryKey, realmGet$series, false);
            }
            String realmGet$series_stamp = mimeiComicItem.realmGet$series_stamp();
            if (realmGet$series_stamp != null) {
                Table.nativeSetString(j3, aVar.f6899j, createRowWithPrimaryKey, realmGet$series_stamp, false);
            }
            String realmGet$cover_path = mimeiComicItem.realmGet$cover_path();
            if (realmGet$cover_path != null) {
                Table.nativeSetString(j3, aVar.f6900k, createRowWithPrimaryKey, realmGet$cover_path, false);
            }
            String realmGet$full_cover_path = mimeiComicItem.realmGet$full_cover_path();
            if (realmGet$full_cover_path != null) {
                Table.nativeSetString(j3, aVar.f6901l, createRowWithPrimaryKey, realmGet$full_cover_path, false);
            }
            Table.nativeSetLong(j3, aVar.f6902m, createRowWithPrimaryKey, (long) mimeiComicItem.realmGet$view_count(), false);
            Table.nativeSetLong(j3, aVar.n, createRowWithPrimaryKey, (long) mimeiComicItem.realmGet$pages(), false);
            Table.nativeSetLong(j3, aVar.o, createRowWithPrimaryKey, (long) mimeiComicItem.realmGet$type(), false);
            Table.nativeSetLong(j3, aVar.p, createRowWithPrimaryKey, (long) mimeiComicItem.realmGet$max_chapter(), false);
            Table.nativeSetLong(j3, aVar.q, createRowWithPrimaryKey, (long) mimeiComicItem.realmGet$max_volume(), false);
            String realmGet$end = mimeiComicItem.realmGet$end();
            if (realmGet$end != null) {
                Table.nativeSetString(j3, aVar.r, createRowWithPrimaryKey, realmGet$end, false);
            }
            String realmGet$apitimestamp = mimeiComicItem.realmGet$apitimestamp();
            if (realmGet$apitimestamp != null) {
                Table.nativeSetString(j3, aVar.s, createRowWithPrimaryKey, realmGet$apitimestamp, false);
            }
            Table.nativeSetLong(j3, aVar.t, createRowWithPrimaryKey, (long) mimeiComicItem.realmGet$series_number(), false);
            String realmGet$opened_at = mimeiComicItem.realmGet$opened_at();
            if (realmGet$opened_at != null) {
                Table.nativeSetString(j3, aVar.u, createRowWithPrimaryKey, realmGet$opened_at, false);
            }
            return createRowWithPrimaryKey;
        }
        Table.s(realmGet$id);
        throw null;
    }

    public static long insertOrUpdate(x xVar, MimeiComicItem mimeiComicItem, Map<e0, Long> map) {
        long j2;
        if (mimeiComicItem instanceof n) {
            n nVar = (n) mimeiComicItem;
            if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                return nVar.realmGet$proxyState().f6305c.l();
            }
        }
        Table e2 = xVar.f6317j.e(MimeiComicItem.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(MimeiComicItem.class);
        long j4 = aVar.f6895f;
        String realmGet$id = mimeiComicItem.realmGet$id();
        if (realmGet$id == null) {
            j2 = Table.nativeFindFirstNull(j3, j4);
        } else {
            j2 = Table.nativeFindFirstString(j3, j4, realmGet$id);
        }
        if (j2 == -1) {
            j2 = OsObject.createRowWithPrimaryKey(e2, j4, realmGet$id);
        }
        map.put(mimeiComicItem, Long.valueOf(j2));
        String realmGet$series_hash_key = mimeiComicItem.realmGet$series_hash_key();
        if (realmGet$series_hash_key != null) {
            Table.nativeSetString(j3, aVar.f6896g, j2, realmGet$series_hash_key, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6896g, j2, false);
        }
        String realmGet$name = mimeiComicItem.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(j3, aVar.f6897h, j2, realmGet$name, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6897h, j2, false);
        }
        String realmGet$series = mimeiComicItem.realmGet$series();
        if (realmGet$series != null) {
            Table.nativeSetString(j3, aVar.f6898i, j2, realmGet$series, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6898i, j2, false);
        }
        String realmGet$series_stamp = mimeiComicItem.realmGet$series_stamp();
        if (realmGet$series_stamp != null) {
            Table.nativeSetString(j3, aVar.f6899j, j2, realmGet$series_stamp, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6899j, j2, false);
        }
        String realmGet$cover_path = mimeiComicItem.realmGet$cover_path();
        if (realmGet$cover_path != null) {
            Table.nativeSetString(j3, aVar.f6900k, j2, realmGet$cover_path, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6900k, j2, false);
        }
        String realmGet$full_cover_path = mimeiComicItem.realmGet$full_cover_path();
        if (realmGet$full_cover_path != null) {
            Table.nativeSetString(j3, aVar.f6901l, j2, realmGet$full_cover_path, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6901l, j2, false);
        }
        Table.nativeSetLong(j3, aVar.f6902m, j2, (long) mimeiComicItem.realmGet$view_count(), false);
        Table.nativeSetLong(j3, aVar.n, j2, (long) mimeiComicItem.realmGet$pages(), false);
        Table.nativeSetLong(j3, aVar.o, j2, (long) mimeiComicItem.realmGet$type(), false);
        Table.nativeSetLong(j3, aVar.p, j2, (long) mimeiComicItem.realmGet$max_chapter(), false);
        Table.nativeSetLong(j3, aVar.q, j2, (long) mimeiComicItem.realmGet$max_volume(), false);
        String realmGet$end = mimeiComicItem.realmGet$end();
        if (realmGet$end != null) {
            Table.nativeSetString(j3, aVar.r, j2, realmGet$end, false);
        } else {
            Table.nativeSetNull(j3, aVar.r, j2, false);
        }
        String realmGet$apitimestamp = mimeiComicItem.realmGet$apitimestamp();
        if (realmGet$apitimestamp != null) {
            Table.nativeSetString(j3, aVar.s, j2, realmGet$apitimestamp, false);
        } else {
            Table.nativeSetNull(j3, aVar.s, j2, false);
        }
        Table.nativeSetLong(j3, aVar.t, j2, (long) mimeiComicItem.realmGet$series_number(), false);
        String realmGet$opened_at = mimeiComicItem.realmGet$opened_at();
        if (realmGet$opened_at != null) {
            Table.nativeSetString(j3, aVar.u, j2, realmGet$opened_at, false);
        } else {
            Table.nativeSetNull(j3, aVar.u, j2, false);
        }
        return j2;
    }

    public static com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy newProxyInstance(g.a.a aVar, p pVar) {
        a.c cVar = g.a.a.f6189i.get();
        k0 G = aVar.G();
        G.a();
        c a2 = G.f6286f.a(MimeiComicItem.class);
        List<String> emptyList = Collections.emptyList();
        cVar.a = aVar;
        cVar.b = pVar;
        cVar.f6194c = a2;
        cVar.f6195d = false;
        cVar.f6196e = emptyList;
        com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy com_comeback_data_ui_mimei_bean_mimeicomicitemrealmproxy = new com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy();
        cVar.a();
        return com_comeback_data_ui_mimei_bean_mimeicomicitemrealmproxy;
    }

    public static MimeiComicItem update(x xVar, a aVar, MimeiComicItem mimeiComicItem, MimeiComicItem mimeiComicItem2, Map<e0, n> map, Set<m> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(xVar.f6317j.e(MimeiComicItem.class), aVar.f6894e, set);
        osObjectBuilder.g(aVar.f6895f, mimeiComicItem2.realmGet$id());
        osObjectBuilder.g(aVar.f6896g, mimeiComicItem2.realmGet$series_hash_key());
        osObjectBuilder.g(aVar.f6897h, mimeiComicItem2.realmGet$name());
        osObjectBuilder.g(aVar.f6898i, mimeiComicItem2.realmGet$series());
        osObjectBuilder.g(aVar.f6899j, mimeiComicItem2.realmGet$series_stamp());
        osObjectBuilder.g(aVar.f6900k, mimeiComicItem2.realmGet$cover_path());
        osObjectBuilder.g(aVar.f6901l, mimeiComicItem2.realmGet$full_cover_path());
        osObjectBuilder.e(aVar.f6902m, Integer.valueOf(mimeiComicItem2.realmGet$view_count()));
        osObjectBuilder.e(aVar.n, Integer.valueOf(mimeiComicItem2.realmGet$pages()));
        osObjectBuilder.e(aVar.o, Integer.valueOf(mimeiComicItem2.realmGet$type()));
        osObjectBuilder.e(aVar.p, Integer.valueOf(mimeiComicItem2.realmGet$max_chapter()));
        osObjectBuilder.e(aVar.q, Integer.valueOf(mimeiComicItem2.realmGet$max_volume()));
        osObjectBuilder.g(aVar.r, mimeiComicItem2.realmGet$end());
        osObjectBuilder.g(aVar.s, mimeiComicItem2.realmGet$apitimestamp());
        osObjectBuilder.e(aVar.t, Integer.valueOf(mimeiComicItem2.realmGet$series_number()));
        osObjectBuilder.g(aVar.u, mimeiComicItem2.realmGet$opened_at());
        osObjectBuilder.F();
        return mimeiComicItem;
    }

    @Override // java.lang.Object
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy com_comeback_data_ui_mimei_bean_mimeicomicitemrealmproxy = (com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy) obj;
        String str = this.proxyState.f6307e.b.f6197c;
        String str2 = com_comeback_data_ui_mimei_bean_mimeicomicitemrealmproxy.proxyState.f6307e.b.f6197c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        String j2 = this.proxyState.f6305c.d().j();
        String j3 = com_comeback_data_ui_mimei_bean_mimeicomicitemrealmproxy.proxyState.f6305c.d().j();
        if (j2 == null ? j3 == null : j2.equals(j3)) {
            return this.proxyState.f6305c.l() == com_comeback_data_ui_mimei_bean_mimeicomicitemrealmproxy.proxyState.f6305c.l();
        }
        return false;
    }

    @Override // java.lang.Object
    public int hashCode() {
        v<MimeiComicItem> vVar = this.proxyState;
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
            v<MimeiComicItem> vVar = new v<>(this);
            this.proxyState = vVar;
            vVar.f6307e = cVar.a;
            vVar.f6305c = cVar.b;
            vVar.f6308f = cVar.f6195d;
            if (vVar == null) {
                throw null;
            }
        }
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public String realmGet$apitimestamp() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.s);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public String realmGet$cover_path() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6900k);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public String realmGet$end() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.r);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public String realmGet$full_cover_path() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6901l);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public String realmGet$id() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6895f);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public int realmGet$max_chapter() {
        this.proxyState.f6307e.f();
        return (int) this.proxyState.f6305c.p(this.columnInfo.p);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public int realmGet$max_volume() {
        this.proxyState.f6307e.f();
        return (int) this.proxyState.f6305c.p(this.columnInfo.q);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public String realmGet$name() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6897h);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public String realmGet$opened_at() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.u);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public int realmGet$pages() {
        this.proxyState.f6307e.f();
        return (int) this.proxyState.f6305c.p(this.columnInfo.n);
    }

    @Override // g.a.f1.n
    public v<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public String realmGet$series() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6898i);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public String realmGet$series_hash_key() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6896g);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public int realmGet$series_number() {
        this.proxyState.f6307e.f();
        return (int) this.proxyState.f6305c.p(this.columnInfo.t);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public String realmGet$series_stamp() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6899j);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public int realmGet$type() {
        this.proxyState.f6307e.f();
        return (int) this.proxyState.f6305c.p(this.columnInfo.o);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public int realmGet$view_count() {
        this.proxyState.f6307e.f();
        return (int) this.proxyState.f6305c.p(this.columnInfo.f6902m);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$apitimestamp(String str) {
        v<MimeiComicItem> vVar = this.proxyState;
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

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$cover_path(String str) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6900k);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6900k, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6900k, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6900k, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$end(String str) {
        v<MimeiComicItem> vVar = this.proxyState;
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

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$full_cover_path(String str) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6901l);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6901l, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6901l, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6901l, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$id(String str) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
        }
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$max_chapter(int i2) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            this.proxyState.f6305c.u(this.columnInfo.p, (long) i2);
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            pVar.d().p(this.columnInfo.p, pVar.l(), (long) i2, true);
        }
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$max_volume(int i2) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            this.proxyState.f6305c.u(this.columnInfo.q, (long) i2);
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            pVar.d().p(this.columnInfo.q, pVar.l(), (long) i2, true);
        }
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$name(String str) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6897h);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6897h, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6897h, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6897h, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$opened_at(String str) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.u);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.u, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.u, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.u, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$pages(int i2) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            this.proxyState.f6305c.u(this.columnInfo.n, (long) i2);
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            pVar.d().p(this.columnInfo.n, pVar.l(), (long) i2, true);
        }
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$series(String str) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6898i);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6898i, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6898i, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6898i, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$series_hash_key(String str) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6896g);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6896g, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6896g, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6896g, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$series_number(int i2) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            this.proxyState.f6305c.u(this.columnInfo.t, (long) i2);
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            pVar.d().p(this.columnInfo.t, pVar.l(), (long) i2, true);
        }
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$series_stamp(String str) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6899j);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6899j, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6899j, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6899j, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$type(int i2) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            this.proxyState.f6305c.u(this.columnInfo.o, (long) i2);
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            pVar.d().p(this.columnInfo.o, pVar.l(), (long) i2, true);
        }
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$view_count(int i2) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            this.proxyState.f6305c.u(this.columnInfo.f6902m, (long) i2);
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            pVar.d().p(this.columnInfo.f6902m, pVar.l(), (long) i2, true);
        }
    }

    @Override // java.lang.Object
    public String toString() {
        if (!g0.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder q = f.b.a.a.a.q("MimeiComicItem = proxy[", "{id:");
        String str = "null";
        f.b.a.a.a.C(q, realmGet$id() != null ? realmGet$id() : str, "}", ",", "{series_hash_key:");
        f.b.a.a.a.C(q, realmGet$series_hash_key() != null ? realmGet$series_hash_key() : str, "}", ",", "{name:");
        f.b.a.a.a.C(q, realmGet$name() != null ? realmGet$name() : str, "}", ",", "{series:");
        f.b.a.a.a.C(q, realmGet$series() != null ? realmGet$series() : str, "}", ",", "{series_stamp:");
        f.b.a.a.a.C(q, realmGet$series_stamp() != null ? realmGet$series_stamp() : str, "}", ",", "{cover_path:");
        f.b.a.a.a.C(q, realmGet$cover_path() != null ? realmGet$cover_path() : str, "}", ",", "{full_cover_path:");
        f.b.a.a.a.C(q, realmGet$full_cover_path() != null ? realmGet$full_cover_path() : str, "}", ",", "{view_count:");
        q.append(realmGet$view_count());
        q.append("}");
        q.append(",");
        q.append("{pages:");
        q.append(realmGet$pages());
        q.append("}");
        q.append(",");
        q.append("{type:");
        q.append(realmGet$type());
        q.append("}");
        q.append(",");
        q.append("{max_chapter:");
        q.append(realmGet$max_chapter());
        q.append("}");
        q.append(",");
        q.append("{max_volume:");
        q.append(realmGet$max_volume());
        q.append("}");
        q.append(",");
        q.append("{end:");
        f.b.a.a.a.C(q, realmGet$end() != null ? realmGet$end() : str, "}", ",", "{apitimestamp:");
        f.b.a.a.a.C(q, realmGet$apitimestamp() != null ? realmGet$apitimestamp() : str, "}", ",", "{series_number:");
        q.append(realmGet$series_number());
        q.append("}");
        q.append(",");
        q.append("{opened_at:");
        if (realmGet$opened_at() != null) {
            str = realmGet$opened_at();
        }
        q.append(str);
        q.append("}");
        q.append("]");
        return q.toString();
    }

    public static void insert(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long j2;
        long j3;
        Table e2 = xVar.f6317j.e(MimeiComicItem.class);
        long j4 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(MimeiComicItem.class);
        long j5 = aVar.f6895f;
        while (it.hasNext()) {
            MimeiComicItem mimeiComicItem = (MimeiComicItem) it.next();
            if (!map.containsKey(mimeiComicItem)) {
                if (mimeiComicItem instanceof n) {
                    n nVar = (n) mimeiComicItem;
                    if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                        map.put(mimeiComicItem, Long.valueOf(nVar.realmGet$proxyState().f6305c.l()));
                    }
                }
                String realmGet$id = mimeiComicItem.realmGet$id();
                if (realmGet$id == null) {
                    j2 = Table.nativeFindFirstNull(j4, j5);
                } else {
                    j2 = Table.nativeFindFirstString(j4, j5, realmGet$id);
                }
                if (j2 == -1) {
                    long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j5, realmGet$id);
                    map.put(mimeiComicItem, Long.valueOf(createRowWithPrimaryKey));
                    String realmGet$series_hash_key = mimeiComicItem.realmGet$series_hash_key();
                    if (realmGet$series_hash_key != null) {
                        j3 = j5;
                        Table.nativeSetString(j4, aVar.f6896g, createRowWithPrimaryKey, realmGet$series_hash_key, false);
                    } else {
                        j3 = j5;
                    }
                    String realmGet$name = mimeiComicItem.realmGet$name();
                    if (realmGet$name != null) {
                        Table.nativeSetString(j4, aVar.f6897h, createRowWithPrimaryKey, realmGet$name, false);
                    }
                    String realmGet$series = mimeiComicItem.realmGet$series();
                    if (realmGet$series != null) {
                        Table.nativeSetString(j4, aVar.f6898i, createRowWithPrimaryKey, realmGet$series, false);
                    }
                    String realmGet$series_stamp = mimeiComicItem.realmGet$series_stamp();
                    if (realmGet$series_stamp != null) {
                        Table.nativeSetString(j4, aVar.f6899j, createRowWithPrimaryKey, realmGet$series_stamp, false);
                    }
                    String realmGet$cover_path = mimeiComicItem.realmGet$cover_path();
                    if (realmGet$cover_path != null) {
                        Table.nativeSetString(j4, aVar.f6900k, createRowWithPrimaryKey, realmGet$cover_path, false);
                    }
                    String realmGet$full_cover_path = mimeiComicItem.realmGet$full_cover_path();
                    if (realmGet$full_cover_path != null) {
                        Table.nativeSetString(j4, aVar.f6901l, createRowWithPrimaryKey, realmGet$full_cover_path, false);
                    }
                    Table.nativeSetLong(j4, aVar.f6902m, createRowWithPrimaryKey, (long) mimeiComicItem.realmGet$view_count(), false);
                    Table.nativeSetLong(j4, aVar.n, createRowWithPrimaryKey, (long) mimeiComicItem.realmGet$pages(), false);
                    Table.nativeSetLong(j4, aVar.o, createRowWithPrimaryKey, (long) mimeiComicItem.realmGet$type(), false);
                    Table.nativeSetLong(j4, aVar.p, createRowWithPrimaryKey, (long) mimeiComicItem.realmGet$max_chapter(), false);
                    Table.nativeSetLong(j4, aVar.q, createRowWithPrimaryKey, (long) mimeiComicItem.realmGet$max_volume(), false);
                    String realmGet$end = mimeiComicItem.realmGet$end();
                    if (realmGet$end != null) {
                        Table.nativeSetString(j4, aVar.r, createRowWithPrimaryKey, realmGet$end, false);
                    }
                    String realmGet$apitimestamp = mimeiComicItem.realmGet$apitimestamp();
                    if (realmGet$apitimestamp != null) {
                        Table.nativeSetString(j4, aVar.s, createRowWithPrimaryKey, realmGet$apitimestamp, false);
                    }
                    Table.nativeSetLong(j4, aVar.t, createRowWithPrimaryKey, (long) mimeiComicItem.realmGet$series_number(), false);
                    String realmGet$opened_at = mimeiComicItem.realmGet$opened_at();
                    if (realmGet$opened_at != null) {
                        Table.nativeSetString(j4, aVar.u, createRowWithPrimaryKey, realmGet$opened_at, false);
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
        Table e2 = xVar.f6317j.e(MimeiComicItem.class);
        long j4 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(MimeiComicItem.class);
        long j5 = aVar.f6895f;
        while (it.hasNext()) {
            MimeiComicItem mimeiComicItem = (MimeiComicItem) it.next();
            if (!map.containsKey(mimeiComicItem)) {
                if (mimeiComicItem instanceof n) {
                    n nVar = (n) mimeiComicItem;
                    if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                        map.put(mimeiComicItem, Long.valueOf(nVar.realmGet$proxyState().f6305c.l()));
                    }
                }
                String realmGet$id = mimeiComicItem.realmGet$id();
                if (realmGet$id == null) {
                    j2 = Table.nativeFindFirstNull(j4, j5);
                } else {
                    j2 = Table.nativeFindFirstString(j4, j5, realmGet$id);
                }
                long createRowWithPrimaryKey = j2 == -1 ? OsObject.createRowWithPrimaryKey(e2, j5, realmGet$id) : j2;
                map.put(mimeiComicItem, Long.valueOf(createRowWithPrimaryKey));
                String realmGet$series_hash_key = mimeiComicItem.realmGet$series_hash_key();
                if (realmGet$series_hash_key != null) {
                    j3 = j5;
                    Table.nativeSetString(j4, aVar.f6896g, createRowWithPrimaryKey, realmGet$series_hash_key, false);
                } else {
                    j3 = j5;
                    Table.nativeSetNull(j4, aVar.f6896g, createRowWithPrimaryKey, false);
                }
                String realmGet$name = mimeiComicItem.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(j4, aVar.f6897h, createRowWithPrimaryKey, realmGet$name, false);
                } else {
                    Table.nativeSetNull(j4, aVar.f6897h, createRowWithPrimaryKey, false);
                }
                String realmGet$series = mimeiComicItem.realmGet$series();
                if (realmGet$series != null) {
                    Table.nativeSetString(j4, aVar.f6898i, createRowWithPrimaryKey, realmGet$series, false);
                } else {
                    Table.nativeSetNull(j4, aVar.f6898i, createRowWithPrimaryKey, false);
                }
                String realmGet$series_stamp = mimeiComicItem.realmGet$series_stamp();
                if (realmGet$series_stamp != null) {
                    Table.nativeSetString(j4, aVar.f6899j, createRowWithPrimaryKey, realmGet$series_stamp, false);
                } else {
                    Table.nativeSetNull(j4, aVar.f6899j, createRowWithPrimaryKey, false);
                }
                String realmGet$cover_path = mimeiComicItem.realmGet$cover_path();
                if (realmGet$cover_path != null) {
                    Table.nativeSetString(j4, aVar.f6900k, createRowWithPrimaryKey, realmGet$cover_path, false);
                } else {
                    Table.nativeSetNull(j4, aVar.f6900k, createRowWithPrimaryKey, false);
                }
                String realmGet$full_cover_path = mimeiComicItem.realmGet$full_cover_path();
                if (realmGet$full_cover_path != null) {
                    Table.nativeSetString(j4, aVar.f6901l, createRowWithPrimaryKey, realmGet$full_cover_path, false);
                } else {
                    Table.nativeSetNull(j4, aVar.f6901l, createRowWithPrimaryKey, false);
                }
                Table.nativeSetLong(j4, aVar.f6902m, createRowWithPrimaryKey, (long) mimeiComicItem.realmGet$view_count(), false);
                Table.nativeSetLong(j4, aVar.n, createRowWithPrimaryKey, (long) mimeiComicItem.realmGet$pages(), false);
                Table.nativeSetLong(j4, aVar.o, createRowWithPrimaryKey, (long) mimeiComicItem.realmGet$type(), false);
                Table.nativeSetLong(j4, aVar.p, createRowWithPrimaryKey, (long) mimeiComicItem.realmGet$max_chapter(), false);
                Table.nativeSetLong(j4, aVar.q, createRowWithPrimaryKey, (long) mimeiComicItem.realmGet$max_volume(), false);
                String realmGet$end = mimeiComicItem.realmGet$end();
                if (realmGet$end != null) {
                    Table.nativeSetString(j4, aVar.r, createRowWithPrimaryKey, realmGet$end, false);
                } else {
                    Table.nativeSetNull(j4, aVar.r, createRowWithPrimaryKey, false);
                }
                String realmGet$apitimestamp = mimeiComicItem.realmGet$apitimestamp();
                if (realmGet$apitimestamp != null) {
                    Table.nativeSetString(j4, aVar.s, createRowWithPrimaryKey, realmGet$apitimestamp, false);
                } else {
                    Table.nativeSetNull(j4, aVar.s, createRowWithPrimaryKey, false);
                }
                Table.nativeSetLong(j4, aVar.t, createRowWithPrimaryKey, (long) mimeiComicItem.realmGet$series_number(), false);
                String realmGet$opened_at = mimeiComicItem.realmGet$opened_at();
                if (realmGet$opened_at != null) {
                    Table.nativeSetString(j4, aVar.u, createRowWithPrimaryKey, realmGet$opened_at, false);
                } else {
                    Table.nativeSetNull(j4, aVar.u, createRowWithPrimaryKey, false);
                }
                j5 = j3;
            }
        }
    }
}
