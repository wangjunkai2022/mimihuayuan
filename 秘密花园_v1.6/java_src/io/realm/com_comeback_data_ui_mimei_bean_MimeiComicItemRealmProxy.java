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
        public long f6978e;

        /* renamed from: f  reason: collision with root package name */
        public long f6979f;

        /* renamed from: g  reason: collision with root package name */
        public long f6980g;

        /* renamed from: h  reason: collision with root package name */
        public long f6981h;

        /* renamed from: i  reason: collision with root package name */
        public long f6982i;

        /* renamed from: j  reason: collision with root package name */
        public long f6983j;

        /* renamed from: k  reason: collision with root package name */
        public long f6984k;

        /* renamed from: l  reason: collision with root package name */
        public long f6985l;

        /* renamed from: m  reason: collision with root package name */
        public long f6986m;
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
            this.f6979f = a("id", "id", a);
            this.f6980g = a("series_hash_key", "series_hash_key", a);
            this.f6981h = a("name", "name", a);
            this.f6982i = a("series", "series", a);
            this.f6983j = a("series_stamp", "series_stamp", a);
            this.f6984k = a("cover_path", "cover_path", a);
            this.f6985l = a("full_cover_path", "full_cover_path", a);
            this.f6986m = a("view_count", "view_count", a);
            this.n = a("pages", "pages", a);
            this.o = a("type", "type", a);
            this.p = a("max_chapter", "max_chapter", a);
            this.q = a("max_volume", "max_volume", a);
            this.r = a("end", "end", a);
            this.s = a("apitimestamp", "apitimestamp", a);
            this.t = a("series_number", "series_number", a);
            this.u = a("opened_at", "opened_at", a);
            this.f6978e = a.a();
        }

        @Override // g.a.f1.c
        public final void b(c cVar, c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f6979f = aVar.f6979f;
            aVar2.f6980g = aVar.f6980g;
            aVar2.f6981h = aVar.f6981h;
            aVar2.f6982i = aVar.f6982i;
            aVar2.f6983j = aVar.f6983j;
            aVar2.f6984k = aVar.f6984k;
            aVar2.f6985l = aVar.f6985l;
            aVar2.f6986m = aVar.f6986m;
            aVar2.n = aVar.n;
            aVar2.o = aVar.o;
            aVar2.p = aVar.p;
            aVar2.q = aVar.q;
            aVar2.r = aVar.r;
            aVar2.s = aVar.s;
            aVar2.t = aVar.t;
            aVar2.u = aVar.u;
            aVar2.f6978e = aVar.f6978e;
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
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(xVar.f6401j.e(MimeiComicItem.class), aVar.f6978e, set);
        osObjectBuilder.g(aVar.f6979f, mimeiComicItem.realmGet$id());
        osObjectBuilder.g(aVar.f6980g, mimeiComicItem.realmGet$series_hash_key());
        osObjectBuilder.g(aVar.f6981h, mimeiComicItem.realmGet$name());
        osObjectBuilder.g(aVar.f6982i, mimeiComicItem.realmGet$series());
        osObjectBuilder.g(aVar.f6983j, mimeiComicItem.realmGet$series_stamp());
        osObjectBuilder.g(aVar.f6984k, mimeiComicItem.realmGet$cover_path());
        osObjectBuilder.g(aVar.f6985l, mimeiComicItem.realmGet$full_cover_path());
        osObjectBuilder.e(aVar.f6986m, Integer.valueOf(mimeiComicItem.realmGet$view_count()));
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

    /* JADX WARN: Removed duplicated region for block: B:34:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.comeback.data.ui.mimei.bean.MimeiComicItem copyOrUpdate(g.a.x r9, io.realm.com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy.a r10, com.comeback.data.ui.mimei.bean.MimeiComicItem r11, boolean r12, java.util.Map<g.a.e0, g.a.f1.n> r13, java.util.Set<g.a.m> r14) {
        /*
            boolean r0 = r11 instanceof g.a.f1.n
            if (r0 == 0) goto L34
            r0 = r11
            g.a.f1.n r0 = (g.a.f1.n) r0
            g.a.v r1 = r0.realmGet$proxyState()
            g.a.a r1 = r1.f6391e
            if (r1 == 0) goto L34
            g.a.v r0 = r0.realmGet$proxyState()
            g.a.a r0 = r0.f6391e
            long r1 = r0.a
            long r3 = r9.a
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 != 0) goto L2c
            g.a.b0 r0 = r0.b
            java.lang.String r0 = r0.f6281c
            g.a.b0 r1 = r9.b
            java.lang.String r1 = r1.f6281c
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L34
            return r11
        L2c:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.String r10 = "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."
            r9.<init>(r10)
            throw r9
        L34:
            g.a.a$d r0 = g.a.a.f6273i
            java.lang.Object r0 = r0.get()
            g.a.a$c r0 = (g.a.a.c) r0
            java.lang.Object r1 = r13.get(r11)
            g.a.f1.n r1 = (g.a.f1.n) r1
            if (r1 == 0) goto L47
            com.comeback.data.ui.mimei.bean.MimeiComicItem r1 = (com.comeback.data.ui.mimei.bean.MimeiComicItem) r1
            return r1
        L47:
            r1 = 0
            r2 = 0
            if (r12 == 0) goto L8e
            java.lang.Class<com.comeback.data.ui.mimei.bean.MimeiComicItem> r3 = com.comeback.data.ui.mimei.bean.MimeiComicItem.class
            g.a.k0 r4 = r9.f6401j
            io.realm.internal.Table r3 = r4.e(r3)
            long r4 = r10.f6979f
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
            r0.f6278c = r10     // Catch: java.lang.Throwable -> L89
            r0.f6279d = r2     // Catch: java.lang.Throwable -> L89
            r0.f6280e = r3     // Catch: java.lang.Throwable -> L89
            io.realm.com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy r1 = new io.realm.com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy     // Catch: java.lang.Throwable -> L89
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
            com.comeback.data.ui.mimei.bean.MimeiComicItem r9 = update(r1, r2, r3, r4, r5, r6)
            goto La0
        L9c:
            com.comeback.data.ui.mimei.bean.MimeiComicItem r9 = copy(r9, r10, r11, r12, r13, r14)
        La0:
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

    /* JADX WARN: Removed duplicated region for block: B:105:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01d5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.comeback.data.ui.mimei.bean.MimeiComicItem createOrUpdateUsingJsonObject(g.a.x r8, org.json.JSONObject r9, boolean r10) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 567
            To view this dump add '--comments-level debug' option
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
            } else if (nextName.equals("opened_at")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mimeiComicItem.realmSet$opened_at(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    mimeiComicItem.realmSet$opened_at(null);
                }
            } else {
                jsonReader.skipValue();
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
        long nativeFindFirstString;
        if (mimeiComicItem instanceof n) {
            n nVar = (n) mimeiComicItem;
            if (nVar.realmGet$proxyState().f6391e != null && nVar.realmGet$proxyState().f6391e.b.f6281c.equals(xVar.b.f6281c)) {
                return nVar.realmGet$proxyState().f6389c.l();
            }
        }
        Table e2 = xVar.f6401j.e(MimeiComicItem.class);
        long j2 = e2.a;
        k0 k0Var = xVar.f6401j;
        k0Var.a();
        a aVar = (a) k0Var.f6370f.a(MimeiComicItem.class);
        long j3 = aVar.f6979f;
        String realmGet$id = mimeiComicItem.realmGet$id();
        if (realmGet$id == null) {
            nativeFindFirstString = Table.nativeFindFirstNull(j2, j3);
        } else {
            nativeFindFirstString = Table.nativeFindFirstString(j2, j3, realmGet$id);
        }
        if (nativeFindFirstString == -1) {
            long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j3, realmGet$id);
            map.put(mimeiComicItem, Long.valueOf(createRowWithPrimaryKey));
            String realmGet$series_hash_key = mimeiComicItem.realmGet$series_hash_key();
            if (realmGet$series_hash_key != null) {
                Table.nativeSetString(j2, aVar.f6980g, createRowWithPrimaryKey, realmGet$series_hash_key, false);
            }
            String realmGet$name = mimeiComicItem.realmGet$name();
            if (realmGet$name != null) {
                Table.nativeSetString(j2, aVar.f6981h, createRowWithPrimaryKey, realmGet$name, false);
            }
            String realmGet$series = mimeiComicItem.realmGet$series();
            if (realmGet$series != null) {
                Table.nativeSetString(j2, aVar.f6982i, createRowWithPrimaryKey, realmGet$series, false);
            }
            String realmGet$series_stamp = mimeiComicItem.realmGet$series_stamp();
            if (realmGet$series_stamp != null) {
                Table.nativeSetString(j2, aVar.f6983j, createRowWithPrimaryKey, realmGet$series_stamp, false);
            }
            String realmGet$cover_path = mimeiComicItem.realmGet$cover_path();
            if (realmGet$cover_path != null) {
                Table.nativeSetString(j2, aVar.f6984k, createRowWithPrimaryKey, realmGet$cover_path, false);
            }
            String realmGet$full_cover_path = mimeiComicItem.realmGet$full_cover_path();
            if (realmGet$full_cover_path != null) {
                Table.nativeSetString(j2, aVar.f6985l, createRowWithPrimaryKey, realmGet$full_cover_path, false);
            }
            Table.nativeSetLong(j2, aVar.f6986m, createRowWithPrimaryKey, mimeiComicItem.realmGet$view_count(), false);
            Table.nativeSetLong(j2, aVar.n, createRowWithPrimaryKey, mimeiComicItem.realmGet$pages(), false);
            Table.nativeSetLong(j2, aVar.o, createRowWithPrimaryKey, mimeiComicItem.realmGet$type(), false);
            Table.nativeSetLong(j2, aVar.p, createRowWithPrimaryKey, mimeiComicItem.realmGet$max_chapter(), false);
            Table.nativeSetLong(j2, aVar.q, createRowWithPrimaryKey, mimeiComicItem.realmGet$max_volume(), false);
            String realmGet$end = mimeiComicItem.realmGet$end();
            if (realmGet$end != null) {
                Table.nativeSetString(j2, aVar.r, createRowWithPrimaryKey, realmGet$end, false);
            }
            String realmGet$apitimestamp = mimeiComicItem.realmGet$apitimestamp();
            if (realmGet$apitimestamp != null) {
                Table.nativeSetString(j2, aVar.s, createRowWithPrimaryKey, realmGet$apitimestamp, false);
            }
            Table.nativeSetLong(j2, aVar.t, createRowWithPrimaryKey, mimeiComicItem.realmGet$series_number(), false);
            String realmGet$opened_at = mimeiComicItem.realmGet$opened_at();
            if (realmGet$opened_at != null) {
                Table.nativeSetString(j2, aVar.u, createRowWithPrimaryKey, realmGet$opened_at, false);
            }
            return createRowWithPrimaryKey;
        }
        Table.s(realmGet$id);
        throw null;
    }

    public static long insertOrUpdate(x xVar, MimeiComicItem mimeiComicItem, Map<e0, Long> map) {
        long nativeFindFirstString;
        if (mimeiComicItem instanceof n) {
            n nVar = (n) mimeiComicItem;
            if (nVar.realmGet$proxyState().f6391e != null && nVar.realmGet$proxyState().f6391e.b.f6281c.equals(xVar.b.f6281c)) {
                return nVar.realmGet$proxyState().f6389c.l();
            }
        }
        Table e2 = xVar.f6401j.e(MimeiComicItem.class);
        long j2 = e2.a;
        k0 k0Var = xVar.f6401j;
        k0Var.a();
        a aVar = (a) k0Var.f6370f.a(MimeiComicItem.class);
        long j3 = aVar.f6979f;
        String realmGet$id = mimeiComicItem.realmGet$id();
        if (realmGet$id == null) {
            nativeFindFirstString = Table.nativeFindFirstNull(j2, j3);
        } else {
            nativeFindFirstString = Table.nativeFindFirstString(j2, j3, realmGet$id);
        }
        if (nativeFindFirstString == -1) {
            nativeFindFirstString = OsObject.createRowWithPrimaryKey(e2, j3, realmGet$id);
        }
        long j4 = nativeFindFirstString;
        map.put(mimeiComicItem, Long.valueOf(j4));
        String realmGet$series_hash_key = mimeiComicItem.realmGet$series_hash_key();
        if (realmGet$series_hash_key != null) {
            Table.nativeSetString(j2, aVar.f6980g, j4, realmGet$series_hash_key, false);
        } else {
            Table.nativeSetNull(j2, aVar.f6980g, j4, false);
        }
        String realmGet$name = mimeiComicItem.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(j2, aVar.f6981h, j4, realmGet$name, false);
        } else {
            Table.nativeSetNull(j2, aVar.f6981h, j4, false);
        }
        String realmGet$series = mimeiComicItem.realmGet$series();
        if (realmGet$series != null) {
            Table.nativeSetString(j2, aVar.f6982i, j4, realmGet$series, false);
        } else {
            Table.nativeSetNull(j2, aVar.f6982i, j4, false);
        }
        String realmGet$series_stamp = mimeiComicItem.realmGet$series_stamp();
        if (realmGet$series_stamp != null) {
            Table.nativeSetString(j2, aVar.f6983j, j4, realmGet$series_stamp, false);
        } else {
            Table.nativeSetNull(j2, aVar.f6983j, j4, false);
        }
        String realmGet$cover_path = mimeiComicItem.realmGet$cover_path();
        if (realmGet$cover_path != null) {
            Table.nativeSetString(j2, aVar.f6984k, j4, realmGet$cover_path, false);
        } else {
            Table.nativeSetNull(j2, aVar.f6984k, j4, false);
        }
        String realmGet$full_cover_path = mimeiComicItem.realmGet$full_cover_path();
        if (realmGet$full_cover_path != null) {
            Table.nativeSetString(j2, aVar.f6985l, j4, realmGet$full_cover_path, false);
        } else {
            Table.nativeSetNull(j2, aVar.f6985l, j4, false);
        }
        Table.nativeSetLong(j2, aVar.f6986m, j4, mimeiComicItem.realmGet$view_count(), false);
        Table.nativeSetLong(j2, aVar.n, j4, mimeiComicItem.realmGet$pages(), false);
        Table.nativeSetLong(j2, aVar.o, j4, mimeiComicItem.realmGet$type(), false);
        Table.nativeSetLong(j2, aVar.p, j4, mimeiComicItem.realmGet$max_chapter(), false);
        Table.nativeSetLong(j2, aVar.q, j4, mimeiComicItem.realmGet$max_volume(), false);
        String realmGet$end = mimeiComicItem.realmGet$end();
        if (realmGet$end != null) {
            Table.nativeSetString(j2, aVar.r, j4, realmGet$end, false);
        } else {
            Table.nativeSetNull(j2, aVar.r, j4, false);
        }
        String realmGet$apitimestamp = mimeiComicItem.realmGet$apitimestamp();
        if (realmGet$apitimestamp != null) {
            Table.nativeSetString(j2, aVar.s, j4, realmGet$apitimestamp, false);
        } else {
            Table.nativeSetNull(j2, aVar.s, j4, false);
        }
        Table.nativeSetLong(j2, aVar.t, j4, mimeiComicItem.realmGet$series_number(), false);
        String realmGet$opened_at = mimeiComicItem.realmGet$opened_at();
        if (realmGet$opened_at != null) {
            Table.nativeSetString(j2, aVar.u, j4, realmGet$opened_at, false);
        } else {
            Table.nativeSetNull(j2, aVar.u, j4, false);
        }
        return j4;
    }

    public static com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy newProxyInstance(g.a.a aVar, p pVar) {
        a.c cVar = g.a.a.f6273i.get();
        k0 G = aVar.G();
        G.a();
        c a2 = G.f6370f.a(MimeiComicItem.class);
        List<String> emptyList = Collections.emptyList();
        cVar.a = aVar;
        cVar.b = pVar;
        cVar.f6278c = a2;
        cVar.f6279d = false;
        cVar.f6280e = emptyList;
        com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy com_comeback_data_ui_mimei_bean_mimeicomicitemrealmproxy = new com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy();
        cVar.a();
        return com_comeback_data_ui_mimei_bean_mimeicomicitemrealmproxy;
    }

    public static MimeiComicItem update(x xVar, a aVar, MimeiComicItem mimeiComicItem, MimeiComicItem mimeiComicItem2, Map<e0, n> map, Set<m> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(xVar.f6401j.e(MimeiComicItem.class), aVar.f6978e, set);
        osObjectBuilder.g(aVar.f6979f, mimeiComicItem2.realmGet$id());
        osObjectBuilder.g(aVar.f6980g, mimeiComicItem2.realmGet$series_hash_key());
        osObjectBuilder.g(aVar.f6981h, mimeiComicItem2.realmGet$name());
        osObjectBuilder.g(aVar.f6982i, mimeiComicItem2.realmGet$series());
        osObjectBuilder.g(aVar.f6983j, mimeiComicItem2.realmGet$series_stamp());
        osObjectBuilder.g(aVar.f6984k, mimeiComicItem2.realmGet$cover_path());
        osObjectBuilder.g(aVar.f6985l, mimeiComicItem2.realmGet$full_cover_path());
        osObjectBuilder.e(aVar.f6986m, Integer.valueOf(mimeiComicItem2.realmGet$view_count()));
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

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy com_comeback_data_ui_mimei_bean_mimeicomicitemrealmproxy = (com_comeback_data_ui_mimei_bean_MimeiComicItemRealmProxy) obj;
        String str = this.proxyState.f6391e.b.f6281c;
        String str2 = com_comeback_data_ui_mimei_bean_mimeicomicitemrealmproxy.proxyState.f6391e.b.f6281c;
        if (str == null ? str2 == null : str.equals(str2)) {
            String j2 = this.proxyState.f6389c.d().j();
            String j3 = com_comeback_data_ui_mimei_bean_mimeicomicitemrealmproxy.proxyState.f6389c.d().j();
            if (j2 == null ? j3 == null : j2.equals(j3)) {
                return this.proxyState.f6389c.l() == com_comeback_data_ui_mimei_bean_mimeicomicitemrealmproxy.proxyState.f6389c.l();
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        v<MimeiComicItem> vVar = this.proxyState;
        String str = vVar.f6391e.b.f6281c;
        String j2 = vVar.f6389c.d().j();
        long l2 = this.proxyState.f6389c.l();
        return ((((527 + (str != null ? str.hashCode() : 0)) * 31) + (j2 != null ? j2.hashCode() : 0)) * 31) + ((int) ((l2 >>> 32) ^ l2));
    }

    @Override // g.a.f1.n
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        a.c cVar = g.a.a.f6273i.get();
        this.columnInfo = (a) cVar.f6278c;
        v<MimeiComicItem> vVar = new v<>(this);
        this.proxyState = vVar;
        vVar.f6391e = cVar.a;
        vVar.f6389c = cVar.b;
        vVar.f6392f = cVar.f6279d;
        if (vVar == null) {
            throw null;
        }
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public String realmGet$apitimestamp() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.s);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public String realmGet$cover_path() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.f6984k);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public String realmGet$end() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.r);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public String realmGet$full_cover_path() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.f6985l);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public String realmGet$id() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.f6979f);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public int realmGet$max_chapter() {
        this.proxyState.f6391e.f();
        return (int) this.proxyState.f6389c.p(this.columnInfo.p);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public int realmGet$max_volume() {
        this.proxyState.f6391e.f();
        return (int) this.proxyState.f6389c.p(this.columnInfo.q);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public String realmGet$name() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.f6981h);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public String realmGet$opened_at() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.u);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public int realmGet$pages() {
        this.proxyState.f6391e.f();
        return (int) this.proxyState.f6389c.p(this.columnInfo.n);
    }

    @Override // g.a.f1.n
    public v<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public String realmGet$series() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.f6982i);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public String realmGet$series_hash_key() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.f6980g);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public int realmGet$series_number() {
        this.proxyState.f6391e.f();
        return (int) this.proxyState.f6389c.p(this.columnInfo.t);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public String realmGet$series_stamp() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.f6983j);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public int realmGet$type() {
        this.proxyState.f6391e.f();
        return (int) this.proxyState.f6389c.p(this.columnInfo.o);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public int realmGet$view_count() {
        this.proxyState.f6391e.f();
        return (int) this.proxyState.f6389c.p(this.columnInfo.f6986m);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$apitimestamp(String str) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.s, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.s, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.s);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.s, str);
        }
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$cover_path(String str) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.f6984k, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.f6984k, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.f6984k);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.f6984k, str);
        }
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$end(String str) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.r, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.r, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.r);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.r, str);
        }
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$full_cover_path(String str) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.f6985l, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.f6985l, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.f6985l);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.f6985l, str);
        }
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$id(String str) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (vVar.b) {
            return;
        }
        vVar.f6391e.f();
        throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$max_chapter(int i2) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                pVar.d().p(this.columnInfo.p, pVar.l(), i2, true);
                return;
            }
            return;
        }
        vVar.f6391e.f();
        this.proxyState.f6389c.u(this.columnInfo.p, i2);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$max_volume(int i2) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                pVar.d().p(this.columnInfo.q, pVar.l(), i2, true);
                return;
            }
            return;
        }
        vVar.f6391e.f();
        this.proxyState.f6389c.u(this.columnInfo.q, i2);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$name(String str) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.f6981h, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.f6981h, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.f6981h);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.f6981h, str);
        }
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$opened_at(String str) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.u, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.u, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.u);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.u, str);
        }
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$pages(int i2) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                pVar.d().p(this.columnInfo.n, pVar.l(), i2, true);
                return;
            }
            return;
        }
        vVar.f6391e.f();
        this.proxyState.f6389c.u(this.columnInfo.n, i2);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$series(String str) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.f6982i, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.f6982i, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.f6982i);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.f6982i, str);
        }
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$series_hash_key(String str) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.f6980g, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.f6980g, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.f6980g);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.f6980g, str);
        }
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$series_number(int i2) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                pVar.d().p(this.columnInfo.t, pVar.l(), i2, true);
                return;
            }
            return;
        }
        vVar.f6391e.f();
        this.proxyState.f6389c.u(this.columnInfo.t, i2);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$series_stamp(String str) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.f6983j, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.f6983j, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.f6983j);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.f6983j, str);
        }
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$type(int i2) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                pVar.d().p(this.columnInfo.o, pVar.l(), i2, true);
                return;
            }
            return;
        }
        vVar.f6391e.f();
        this.proxyState.f6389c.u(this.columnInfo.o, i2);
    }

    @Override // com.comeback.data.ui.mimei.bean.MimeiComicItem, g.a.d1
    public void realmSet$view_count(int i2) {
        v<MimeiComicItem> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                pVar.d().p(this.columnInfo.f6986m, pVar.l(), i2, true);
                return;
            }
            return;
        }
        vVar.f6391e.f();
        this.proxyState.f6389c.u(this.columnInfo.f6986m, i2);
    }

    public String toString() {
        if (g0.isValid(this)) {
            StringBuilder q = f.b.a.a.a.q("MimeiComicItem = proxy[", "{id:");
            f.b.a.a.a.C(q, realmGet$id() != null ? realmGet$id() : "null", "}", ",", "{series_hash_key:");
            f.b.a.a.a.C(q, realmGet$series_hash_key() != null ? realmGet$series_hash_key() : "null", "}", ",", "{name:");
            f.b.a.a.a.C(q, realmGet$name() != null ? realmGet$name() : "null", "}", ",", "{series:");
            f.b.a.a.a.C(q, realmGet$series() != null ? realmGet$series() : "null", "}", ",", "{series_stamp:");
            f.b.a.a.a.C(q, realmGet$series_stamp() != null ? realmGet$series_stamp() : "null", "}", ",", "{cover_path:");
            f.b.a.a.a.C(q, realmGet$cover_path() != null ? realmGet$cover_path() : "null", "}", ",", "{full_cover_path:");
            f.b.a.a.a.C(q, realmGet$full_cover_path() != null ? realmGet$full_cover_path() : "null", "}", ",", "{view_count:");
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
            f.b.a.a.a.C(q, realmGet$end() != null ? realmGet$end() : "null", "}", ",", "{apitimestamp:");
            f.b.a.a.a.C(q, realmGet$apitimestamp() != null ? realmGet$apitimestamp() : "null", "}", ",", "{series_number:");
            q.append(realmGet$series_number());
            q.append("}");
            q.append(",");
            q.append("{opened_at:");
            q.append(realmGet$opened_at() != null ? realmGet$opened_at() : "null");
            q.append("}");
            q.append("]");
            return q.toString();
        }
        return "Invalid object";
    }

    public static void insert(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long nativeFindFirstString;
        long j2;
        Table e2 = xVar.f6401j.e(MimeiComicItem.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6401j;
        k0Var.a();
        a aVar = (a) k0Var.f6370f.a(MimeiComicItem.class);
        long j4 = aVar.f6979f;
        while (it.hasNext()) {
            MimeiComicItem mimeiComicItem = (MimeiComicItem) it.next();
            if (!map.containsKey(mimeiComicItem)) {
                if (mimeiComicItem instanceof n) {
                    n nVar = (n) mimeiComicItem;
                    if (nVar.realmGet$proxyState().f6391e != null && nVar.realmGet$proxyState().f6391e.b.f6281c.equals(xVar.b.f6281c)) {
                        map.put(mimeiComicItem, Long.valueOf(nVar.realmGet$proxyState().f6389c.l()));
                    }
                }
                String realmGet$id = mimeiComicItem.realmGet$id();
                if (realmGet$id == null) {
                    nativeFindFirstString = Table.nativeFindFirstNull(j3, j4);
                } else {
                    nativeFindFirstString = Table.nativeFindFirstString(j3, j4, realmGet$id);
                }
                if (nativeFindFirstString == -1) {
                    long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j4, realmGet$id);
                    map.put(mimeiComicItem, Long.valueOf(createRowWithPrimaryKey));
                    String realmGet$series_hash_key = mimeiComicItem.realmGet$series_hash_key();
                    if (realmGet$series_hash_key != null) {
                        j2 = j4;
                        Table.nativeSetString(j3, aVar.f6980g, createRowWithPrimaryKey, realmGet$series_hash_key, false);
                    } else {
                        j2 = j4;
                    }
                    String realmGet$name = mimeiComicItem.realmGet$name();
                    if (realmGet$name != null) {
                        Table.nativeSetString(j3, aVar.f6981h, createRowWithPrimaryKey, realmGet$name, false);
                    }
                    String realmGet$series = mimeiComicItem.realmGet$series();
                    if (realmGet$series != null) {
                        Table.nativeSetString(j3, aVar.f6982i, createRowWithPrimaryKey, realmGet$series, false);
                    }
                    String realmGet$series_stamp = mimeiComicItem.realmGet$series_stamp();
                    if (realmGet$series_stamp != null) {
                        Table.nativeSetString(j3, aVar.f6983j, createRowWithPrimaryKey, realmGet$series_stamp, false);
                    }
                    String realmGet$cover_path = mimeiComicItem.realmGet$cover_path();
                    if (realmGet$cover_path != null) {
                        Table.nativeSetString(j3, aVar.f6984k, createRowWithPrimaryKey, realmGet$cover_path, false);
                    }
                    String realmGet$full_cover_path = mimeiComicItem.realmGet$full_cover_path();
                    if (realmGet$full_cover_path != null) {
                        Table.nativeSetString(j3, aVar.f6985l, createRowWithPrimaryKey, realmGet$full_cover_path, false);
                    }
                    Table.nativeSetLong(j3, aVar.f6986m, createRowWithPrimaryKey, mimeiComicItem.realmGet$view_count(), false);
                    Table.nativeSetLong(j3, aVar.n, createRowWithPrimaryKey, mimeiComicItem.realmGet$pages(), false);
                    Table.nativeSetLong(j3, aVar.o, createRowWithPrimaryKey, mimeiComicItem.realmGet$type(), false);
                    Table.nativeSetLong(j3, aVar.p, createRowWithPrimaryKey, mimeiComicItem.realmGet$max_chapter(), false);
                    Table.nativeSetLong(j3, aVar.q, createRowWithPrimaryKey, mimeiComicItem.realmGet$max_volume(), false);
                    String realmGet$end = mimeiComicItem.realmGet$end();
                    if (realmGet$end != null) {
                        Table.nativeSetString(j3, aVar.r, createRowWithPrimaryKey, realmGet$end, false);
                    }
                    String realmGet$apitimestamp = mimeiComicItem.realmGet$apitimestamp();
                    if (realmGet$apitimestamp != null) {
                        Table.nativeSetString(j3, aVar.s, createRowWithPrimaryKey, realmGet$apitimestamp, false);
                    }
                    Table.nativeSetLong(j3, aVar.t, createRowWithPrimaryKey, mimeiComicItem.realmGet$series_number(), false);
                    String realmGet$opened_at = mimeiComicItem.realmGet$opened_at();
                    if (realmGet$opened_at != null) {
                        Table.nativeSetString(j3, aVar.u, createRowWithPrimaryKey, realmGet$opened_at, false);
                    }
                    j4 = j2;
                } else {
                    Table.s(realmGet$id);
                    throw null;
                }
            }
        }
    }

    public static void insertOrUpdate(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long nativeFindFirstString;
        long j2;
        Table e2 = xVar.f6401j.e(MimeiComicItem.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6401j;
        k0Var.a();
        a aVar = (a) k0Var.f6370f.a(MimeiComicItem.class);
        long j4 = aVar.f6979f;
        while (it.hasNext()) {
            MimeiComicItem mimeiComicItem = (MimeiComicItem) it.next();
            if (!map.containsKey(mimeiComicItem)) {
                if (mimeiComicItem instanceof n) {
                    n nVar = (n) mimeiComicItem;
                    if (nVar.realmGet$proxyState().f6391e != null && nVar.realmGet$proxyState().f6391e.b.f6281c.equals(xVar.b.f6281c)) {
                        map.put(mimeiComicItem, Long.valueOf(nVar.realmGet$proxyState().f6389c.l()));
                    }
                }
                String realmGet$id = mimeiComicItem.realmGet$id();
                if (realmGet$id == null) {
                    nativeFindFirstString = Table.nativeFindFirstNull(j3, j4);
                } else {
                    nativeFindFirstString = Table.nativeFindFirstString(j3, j4, realmGet$id);
                }
                long createRowWithPrimaryKey = nativeFindFirstString == -1 ? OsObject.createRowWithPrimaryKey(e2, j4, realmGet$id) : nativeFindFirstString;
                map.put(mimeiComicItem, Long.valueOf(createRowWithPrimaryKey));
                String realmGet$series_hash_key = mimeiComicItem.realmGet$series_hash_key();
                if (realmGet$series_hash_key != null) {
                    j2 = j4;
                    Table.nativeSetString(j3, aVar.f6980g, createRowWithPrimaryKey, realmGet$series_hash_key, false);
                } else {
                    j2 = j4;
                    Table.nativeSetNull(j3, aVar.f6980g, createRowWithPrimaryKey, false);
                }
                String realmGet$name = mimeiComicItem.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(j3, aVar.f6981h, createRowWithPrimaryKey, realmGet$name, false);
                } else {
                    Table.nativeSetNull(j3, aVar.f6981h, createRowWithPrimaryKey, false);
                }
                String realmGet$series = mimeiComicItem.realmGet$series();
                if (realmGet$series != null) {
                    Table.nativeSetString(j3, aVar.f6982i, createRowWithPrimaryKey, realmGet$series, false);
                } else {
                    Table.nativeSetNull(j3, aVar.f6982i, createRowWithPrimaryKey, false);
                }
                String realmGet$series_stamp = mimeiComicItem.realmGet$series_stamp();
                if (realmGet$series_stamp != null) {
                    Table.nativeSetString(j3, aVar.f6983j, createRowWithPrimaryKey, realmGet$series_stamp, false);
                } else {
                    Table.nativeSetNull(j3, aVar.f6983j, createRowWithPrimaryKey, false);
                }
                String realmGet$cover_path = mimeiComicItem.realmGet$cover_path();
                if (realmGet$cover_path != null) {
                    Table.nativeSetString(j3, aVar.f6984k, createRowWithPrimaryKey, realmGet$cover_path, false);
                } else {
                    Table.nativeSetNull(j3, aVar.f6984k, createRowWithPrimaryKey, false);
                }
                String realmGet$full_cover_path = mimeiComicItem.realmGet$full_cover_path();
                if (realmGet$full_cover_path != null) {
                    Table.nativeSetString(j3, aVar.f6985l, createRowWithPrimaryKey, realmGet$full_cover_path, false);
                } else {
                    Table.nativeSetNull(j3, aVar.f6985l, createRowWithPrimaryKey, false);
                }
                long j5 = createRowWithPrimaryKey;
                Table.nativeSetLong(j3, aVar.f6986m, j5, mimeiComicItem.realmGet$view_count(), false);
                Table.nativeSetLong(j3, aVar.n, j5, mimeiComicItem.realmGet$pages(), false);
                Table.nativeSetLong(j3, aVar.o, j5, mimeiComicItem.realmGet$type(), false);
                Table.nativeSetLong(j3, aVar.p, j5, mimeiComicItem.realmGet$max_chapter(), false);
                Table.nativeSetLong(j3, aVar.q, j5, mimeiComicItem.realmGet$max_volume(), false);
                String realmGet$end = mimeiComicItem.realmGet$end();
                if (realmGet$end != null) {
                    Table.nativeSetString(j3, aVar.r, createRowWithPrimaryKey, realmGet$end, false);
                } else {
                    Table.nativeSetNull(j3, aVar.r, createRowWithPrimaryKey, false);
                }
                String realmGet$apitimestamp = mimeiComicItem.realmGet$apitimestamp();
                if (realmGet$apitimestamp != null) {
                    Table.nativeSetString(j3, aVar.s, createRowWithPrimaryKey, realmGet$apitimestamp, false);
                } else {
                    Table.nativeSetNull(j3, aVar.s, createRowWithPrimaryKey, false);
                }
                Table.nativeSetLong(j3, aVar.t, createRowWithPrimaryKey, mimeiComicItem.realmGet$series_number(), false);
                String realmGet$opened_at = mimeiComicItem.realmGet$opened_at();
                if (realmGet$opened_at != null) {
                    Table.nativeSetString(j3, aVar.u, createRowWithPrimaryKey, realmGet$opened_at, false);
                } else {
                    Table.nativeSetNull(j3, aVar.u, createRowWithPrimaryKey, false);
                }
                j4 = j2;
            }
        }
    }
}
