package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.core.app.NotificationCompatJellybean;
import com.comeback.data.ui.km2.bean.Km2Video;
import g.a.a;
import g.a.e0;
import g.a.f1.c;
import g.a.f1.n;
import g.a.f1.p;
import g.a.g0;
import g.a.k0;
import g.a.m;
import g.a.v;
import g.a.w0;
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
public class com_comeback_data_ui_km2_bean_Km2VideoRealmProxy extends Km2Video implements n, w0 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public a columnInfo;
    public v<Km2Video> proxyState;

    /* loaded from: classes.dex */
    public static final class a extends c {

        /* renamed from: e  reason: collision with root package name */
        public long f6923e;

        /* renamed from: f  reason: collision with root package name */
        public long f6924f;

        /* renamed from: g  reason: collision with root package name */
        public long f6925g;

        /* renamed from: h  reason: collision with root package name */
        public long f6926h;

        /* renamed from: i  reason: collision with root package name */
        public long f6927i;

        /* renamed from: j  reason: collision with root package name */
        public long f6928j;

        /* renamed from: k  reason: collision with root package name */
        public long f6929k;

        /* renamed from: l  reason: collision with root package name */
        public long f6930l;

        /* renamed from: m  reason: collision with root package name */
        public long f6931m;
        public long n;
        public long o;
        public long p;
        public long q;
        public long r;
        public long s;
        public long t;

        public a(OsSchemaInfo osSchemaInfo) {
            super(15, true);
            OsObjectSchemaInfo a = osSchemaInfo.a("Km2Video");
            this.f6924f = a("id", "id", a);
            this.f6925g = a(NotificationCompatJellybean.KEY_TITLE, NotificationCompatJellybean.KEY_TITLE, a);
            this.f6926h = a("praise_num", "praise_num", a);
            this.f6927i = a("width", "width", a);
            this.f6928j = a("height", "height", a);
            this.f6929k = a("cover", "cover", a);
            this.f6930l = a("nickname", "nickname", a);
            this.f6931m = a("type", "type", a);
            this.n = a("normal_url", "normal_url", a);
            this.o = a("m3u8_url", "m3u8_url", a);
            this.p = a("vip_url", "vip_url", a);
            this.q = a("thunder_download_tutorial_url", "thunder_download_tutorial_url", a);
            this.r = a("user_id", "user_id", a);
            this.s = a("gold", "gold", a);
            this.t = a("is_vip", "is_vip", a);
            this.f6923e = a.a();
        }

        @Override // g.a.f1.c
        public final void b(c cVar, c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f6924f = aVar.f6924f;
            aVar2.f6925g = aVar.f6925g;
            aVar2.f6926h = aVar.f6926h;
            aVar2.f6927i = aVar.f6927i;
            aVar2.f6928j = aVar.f6928j;
            aVar2.f6929k = aVar.f6929k;
            aVar2.f6930l = aVar.f6930l;
            aVar2.f6931m = aVar.f6931m;
            aVar2.n = aVar.n;
            aVar2.o = aVar.o;
            aVar2.p = aVar.p;
            aVar2.q = aVar.q;
            aVar2.r = aVar.r;
            aVar2.s = aVar.s;
            aVar2.t = aVar.t;
            aVar2.f6923e = aVar.f6923e;
        }
    }

    public com_comeback_data_ui_km2_bean_Km2VideoRealmProxy() {
        this.proxyState.b = false;
    }

    public static Km2Video copy(x xVar, a aVar, Km2Video km2Video, boolean z, Map<e0, n> map, Set<m> set) {
        n nVar = map.get(km2Video);
        if (nVar != null) {
            return (Km2Video) nVar;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(xVar.f6392j.e(Km2Video.class), aVar.f6923e, set);
        osObjectBuilder.g(aVar.f6924f, km2Video.realmGet$id());
        osObjectBuilder.g(aVar.f6925g, km2Video.realmGet$title());
        osObjectBuilder.e(aVar.f6926h, Integer.valueOf(km2Video.realmGet$praise_num()));
        osObjectBuilder.e(aVar.f6927i, Integer.valueOf(km2Video.realmGet$width()));
        osObjectBuilder.e(aVar.f6928j, Integer.valueOf(km2Video.realmGet$height()));
        osObjectBuilder.g(aVar.f6929k, km2Video.realmGet$cover());
        osObjectBuilder.g(aVar.f6930l, km2Video.realmGet$nickname());
        osObjectBuilder.e(aVar.f6931m, Integer.valueOf(km2Video.realmGet$type()));
        osObjectBuilder.g(aVar.n, km2Video.realmGet$normal_url());
        osObjectBuilder.g(aVar.o, km2Video.realmGet$m3u8_url());
        osObjectBuilder.g(aVar.p, km2Video.realmGet$vip_url());
        osObjectBuilder.g(aVar.q, km2Video.realmGet$thunder_download_tutorial_url());
        osObjectBuilder.e(aVar.r, Integer.valueOf(km2Video.realmGet$user_id()));
        long j2 = aVar.s;
        Float valueOf = Float.valueOf(km2Video.realmGet$gold());
        if (valueOf == null) {
            OsObjectBuilder.nativeAddNull(osObjectBuilder.f7033c, j2);
        } else {
            OsObjectBuilder.nativeAddFloat(osObjectBuilder.f7033c, j2, valueOf.floatValue());
        }
        osObjectBuilder.g(aVar.t, km2Video.realmGet$is_vip());
        com_comeback_data_ui_km2_bean_Km2VideoRealmProxy newProxyInstance = newProxyInstance(xVar, osObjectBuilder.E());
        map.put(km2Video, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.comeback.data.ui.km2.bean.Km2Video copyOrUpdate(g.a.x r9, io.realm.com_comeback_data_ui_km2_bean_Km2VideoRealmProxy.a r10, com.comeback.data.ui.km2.bean.Km2Video r11, boolean r12, java.util.Map<g.a.e0, g.a.f1.n> r13, java.util.Set<g.a.m> r14) {
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
            com.comeback.data.ui.km2.bean.Km2Video r1 = (com.comeback.data.ui.km2.bean.Km2Video) r1
            return r1
        L47:
            r1 = 0
            r2 = 0
            if (r12 == 0) goto L8e
            java.lang.Class<com.comeback.data.ui.km2.bean.Km2Video> r3 = com.comeback.data.ui.km2.bean.Km2Video.class
            g.a.k0 r4 = r9.f6392j
            io.realm.internal.Table r3 = r4.e(r3)
            long r4 = r10.f6924f
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
            io.realm.com_comeback_data_ui_km2_bean_Km2VideoRealmProxy r1 = new io.realm.com_comeback_data_ui_km2_bean_Km2VideoRealmProxy     // Catch: java.lang.Throwable -> L89
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
            com.comeback.data.ui.km2.bean.Km2Video r9 = update(r1, r2, r3, r4, r5, r6)
            goto La0
        L9c:
            com.comeback.data.ui.km2.bean.Km2Video r9 = copy(r9, r10, r11, r12, r13, r14)
        La0:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_km2_bean_Km2VideoRealmProxy.copyOrUpdate(g.a.x, io.realm.com_comeback_data_ui_km2_bean_Km2VideoRealmProxy$a, com.comeback.data.ui.km2.bean.Km2Video, boolean, java.util.Map, java.util.Set):com.comeback.data.ui.km2.bean.Km2Video");
    }

    public static a createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new a(osSchemaInfo);
    }

    public static Km2Video createDetachedCopy(Km2Video km2Video, int i2, int i3, Map<e0, n.a<e0>> map) {
        Km2Video km2Video2;
        if (i2 > i3 || km2Video == null) {
            return null;
        }
        n.a<e0> aVar = map.get(km2Video);
        if (aVar == null) {
            km2Video2 = new Km2Video();
            map.put(km2Video, new n.a<>(i2, km2Video2));
        } else if (i2 >= aVar.a) {
            return (Km2Video) aVar.b;
        } else {
            aVar.a = i2;
            km2Video2 = (Km2Video) aVar.b;
        }
        km2Video2.realmSet$id(km2Video.realmGet$id());
        km2Video2.realmSet$title(km2Video.realmGet$title());
        km2Video2.realmSet$praise_num(km2Video.realmGet$praise_num());
        km2Video2.realmSet$width(km2Video.realmGet$width());
        km2Video2.realmSet$height(km2Video.realmGet$height());
        km2Video2.realmSet$cover(km2Video.realmGet$cover());
        km2Video2.realmSet$nickname(km2Video.realmGet$nickname());
        km2Video2.realmSet$type(km2Video.realmGet$type());
        km2Video2.realmSet$normal_url(km2Video.realmGet$normal_url());
        km2Video2.realmSet$m3u8_url(km2Video.realmGet$m3u8_url());
        km2Video2.realmSet$vip_url(km2Video.realmGet$vip_url());
        km2Video2.realmSet$thunder_download_tutorial_url(km2Video.realmGet$thunder_download_tutorial_url());
        km2Video2.realmSet$user_id(km2Video.realmGet$user_id());
        km2Video2.realmSet$gold(km2Video.realmGet$gold());
        km2Video2.realmSet$is_vip(km2Video.realmGet$is_vip());
        return km2Video2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.b bVar = new OsObjectSchemaInfo.b("Km2Video", 15, 0);
        bVar.a("id", RealmFieldType.STRING, true, true, false);
        bVar.a(NotificationCompatJellybean.KEY_TITLE, RealmFieldType.STRING, false, false, false);
        bVar.a("praise_num", RealmFieldType.INTEGER, false, false, true);
        bVar.a("width", RealmFieldType.INTEGER, false, false, true);
        bVar.a("height", RealmFieldType.INTEGER, false, false, true);
        bVar.a("cover", RealmFieldType.STRING, false, false, false);
        bVar.a("nickname", RealmFieldType.STRING, false, false, false);
        bVar.a("type", RealmFieldType.INTEGER, false, false, true);
        bVar.a("normal_url", RealmFieldType.STRING, false, false, false);
        bVar.a("m3u8_url", RealmFieldType.STRING, false, false, false);
        bVar.a("vip_url", RealmFieldType.STRING, false, false, false);
        bVar.a("thunder_download_tutorial_url", RealmFieldType.STRING, false, false, false);
        bVar.a("user_id", RealmFieldType.INTEGER, false, false, true);
        bVar.a("gold", RealmFieldType.FLOAT, false, false, true);
        bVar.a("is_vip", RealmFieldType.STRING, false, false, false);
        return bVar.b();
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.comeback.data.ui.km2.bean.Km2Video createOrUpdateUsingJsonObject(g.a.x r8, org.json.JSONObject r9, boolean r10) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 543
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_km2_bean_Km2VideoRealmProxy.createOrUpdateUsingJsonObject(g.a.x, org.json.JSONObject, boolean):com.comeback.data.ui.km2.bean.Km2Video");
    }

    @TargetApi(11)
    public static Km2Video createUsingJsonStream(x xVar, JsonReader jsonReader) throws IOException {
        Km2Video km2Video = new Km2Video();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    km2Video.realmSet$id(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    km2Video.realmSet$id(null);
                }
                z = true;
            } else if (nextName.equals(NotificationCompatJellybean.KEY_TITLE)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    km2Video.realmSet$title(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    km2Video.realmSet$title(null);
                }
            } else if (nextName.equals("praise_num")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    km2Video.realmSet$praise_num(jsonReader.nextInt());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'praise_num' to null.");
                }
            } else if (nextName.equals("width")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    km2Video.realmSet$width(jsonReader.nextInt());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'width' to null.");
                }
            } else if (nextName.equals("height")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    km2Video.realmSet$height(jsonReader.nextInt());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'height' to null.");
                }
            } else if (nextName.equals("cover")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    km2Video.realmSet$cover(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    km2Video.realmSet$cover(null);
                }
            } else if (nextName.equals("nickname")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    km2Video.realmSet$nickname(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    km2Video.realmSet$nickname(null);
                }
            } else if (nextName.equals("type")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    km2Video.realmSet$type(jsonReader.nextInt());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'type' to null.");
                }
            } else if (nextName.equals("normal_url")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    km2Video.realmSet$normal_url(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    km2Video.realmSet$normal_url(null);
                }
            } else if (nextName.equals("m3u8_url")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    km2Video.realmSet$m3u8_url(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    km2Video.realmSet$m3u8_url(null);
                }
            } else if (nextName.equals("vip_url")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    km2Video.realmSet$vip_url(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    km2Video.realmSet$vip_url(null);
                }
            } else if (nextName.equals("thunder_download_tutorial_url")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    km2Video.realmSet$thunder_download_tutorial_url(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    km2Video.realmSet$thunder_download_tutorial_url(null);
                }
            } else if (nextName.equals("user_id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    km2Video.realmSet$user_id(jsonReader.nextInt());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'user_id' to null.");
                }
            } else if (nextName.equals("gold")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    km2Video.realmSet$gold((float) jsonReader.nextDouble());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'gold' to null.");
                }
            } else if (nextName.equals("is_vip")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    km2Video.realmSet$is_vip(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    km2Video.realmSet$is_vip(null);
                }
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        if (z) {
            return (Km2Video) xVar.L(km2Video, new m[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "Km2Video";
    }

    public static long insert(x xVar, Km2Video km2Video, Map<e0, Long> map) {
        long nativeFindFirstString;
        if (km2Video instanceof n) {
            n nVar = (n) km2Video;
            if (nVar.realmGet$proxyState().f6382e != null && nVar.realmGet$proxyState().f6382e.b.f6272c.equals(xVar.b.f6272c)) {
                return nVar.realmGet$proxyState().f6380c.l();
            }
        }
        Table e2 = xVar.f6392j.e(Km2Video.class);
        long j2 = e2.a;
        k0 k0Var = xVar.f6392j;
        k0Var.a();
        a aVar = (a) k0Var.f6361f.a(Km2Video.class);
        long j3 = aVar.f6924f;
        String realmGet$id = km2Video.realmGet$id();
        if (realmGet$id == null) {
            nativeFindFirstString = Table.nativeFindFirstNull(j2, j3);
        } else {
            nativeFindFirstString = Table.nativeFindFirstString(j2, j3, realmGet$id);
        }
        if (nativeFindFirstString == -1) {
            long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j3, realmGet$id);
            map.put(km2Video, Long.valueOf(createRowWithPrimaryKey));
            String realmGet$title = km2Video.realmGet$title();
            if (realmGet$title != null) {
                Table.nativeSetString(j2, aVar.f6925g, createRowWithPrimaryKey, realmGet$title, false);
            }
            Table.nativeSetLong(j2, aVar.f6926h, createRowWithPrimaryKey, km2Video.realmGet$praise_num(), false);
            Table.nativeSetLong(j2, aVar.f6927i, createRowWithPrimaryKey, km2Video.realmGet$width(), false);
            Table.nativeSetLong(j2, aVar.f6928j, createRowWithPrimaryKey, km2Video.realmGet$height(), false);
            String realmGet$cover = km2Video.realmGet$cover();
            if (realmGet$cover != null) {
                Table.nativeSetString(j2, aVar.f6929k, createRowWithPrimaryKey, realmGet$cover, false);
            }
            String realmGet$nickname = km2Video.realmGet$nickname();
            if (realmGet$nickname != null) {
                Table.nativeSetString(j2, aVar.f6930l, createRowWithPrimaryKey, realmGet$nickname, false);
            }
            Table.nativeSetLong(j2, aVar.f6931m, createRowWithPrimaryKey, km2Video.realmGet$type(), false);
            String realmGet$normal_url = km2Video.realmGet$normal_url();
            if (realmGet$normal_url != null) {
                Table.nativeSetString(j2, aVar.n, createRowWithPrimaryKey, realmGet$normal_url, false);
            }
            String realmGet$m3u8_url = km2Video.realmGet$m3u8_url();
            if (realmGet$m3u8_url != null) {
                Table.nativeSetString(j2, aVar.o, createRowWithPrimaryKey, realmGet$m3u8_url, false);
            }
            String realmGet$vip_url = km2Video.realmGet$vip_url();
            if (realmGet$vip_url != null) {
                Table.nativeSetString(j2, aVar.p, createRowWithPrimaryKey, realmGet$vip_url, false);
            }
            String realmGet$thunder_download_tutorial_url = km2Video.realmGet$thunder_download_tutorial_url();
            if (realmGet$thunder_download_tutorial_url != null) {
                Table.nativeSetString(j2, aVar.q, createRowWithPrimaryKey, realmGet$thunder_download_tutorial_url, false);
            }
            Table.nativeSetLong(j2, aVar.r, createRowWithPrimaryKey, km2Video.realmGet$user_id(), false);
            Table.nativeSetFloat(j2, aVar.s, createRowWithPrimaryKey, km2Video.realmGet$gold(), false);
            String realmGet$is_vip = km2Video.realmGet$is_vip();
            if (realmGet$is_vip != null) {
                Table.nativeSetString(j2, aVar.t, createRowWithPrimaryKey, realmGet$is_vip, false);
            }
            return createRowWithPrimaryKey;
        }
        Table.s(realmGet$id);
        throw null;
    }

    public static long insertOrUpdate(x xVar, Km2Video km2Video, Map<e0, Long> map) {
        long nativeFindFirstString;
        if (km2Video instanceof n) {
            n nVar = (n) km2Video;
            if (nVar.realmGet$proxyState().f6382e != null && nVar.realmGet$proxyState().f6382e.b.f6272c.equals(xVar.b.f6272c)) {
                return nVar.realmGet$proxyState().f6380c.l();
            }
        }
        Table e2 = xVar.f6392j.e(Km2Video.class);
        long j2 = e2.a;
        k0 k0Var = xVar.f6392j;
        k0Var.a();
        a aVar = (a) k0Var.f6361f.a(Km2Video.class);
        long j3 = aVar.f6924f;
        String realmGet$id = km2Video.realmGet$id();
        if (realmGet$id == null) {
            nativeFindFirstString = Table.nativeFindFirstNull(j2, j3);
        } else {
            nativeFindFirstString = Table.nativeFindFirstString(j2, j3, realmGet$id);
        }
        if (nativeFindFirstString == -1) {
            nativeFindFirstString = OsObject.createRowWithPrimaryKey(e2, j3, realmGet$id);
        }
        long j4 = nativeFindFirstString;
        map.put(km2Video, Long.valueOf(j4));
        String realmGet$title = km2Video.realmGet$title();
        if (realmGet$title != null) {
            Table.nativeSetString(j2, aVar.f6925g, j4, realmGet$title, false);
        } else {
            Table.nativeSetNull(j2, aVar.f6925g, j4, false);
        }
        Table.nativeSetLong(j2, aVar.f6926h, j4, km2Video.realmGet$praise_num(), false);
        Table.nativeSetLong(j2, aVar.f6927i, j4, km2Video.realmGet$width(), false);
        Table.nativeSetLong(j2, aVar.f6928j, j4, km2Video.realmGet$height(), false);
        String realmGet$cover = km2Video.realmGet$cover();
        if (realmGet$cover != null) {
            Table.nativeSetString(j2, aVar.f6929k, j4, realmGet$cover, false);
        } else {
            Table.nativeSetNull(j2, aVar.f6929k, j4, false);
        }
        String realmGet$nickname = km2Video.realmGet$nickname();
        if (realmGet$nickname != null) {
            Table.nativeSetString(j2, aVar.f6930l, j4, realmGet$nickname, false);
        } else {
            Table.nativeSetNull(j2, aVar.f6930l, j4, false);
        }
        Table.nativeSetLong(j2, aVar.f6931m, j4, km2Video.realmGet$type(), false);
        String realmGet$normal_url = km2Video.realmGet$normal_url();
        if (realmGet$normal_url != null) {
            Table.nativeSetString(j2, aVar.n, j4, realmGet$normal_url, false);
        } else {
            Table.nativeSetNull(j2, aVar.n, j4, false);
        }
        String realmGet$m3u8_url = km2Video.realmGet$m3u8_url();
        if (realmGet$m3u8_url != null) {
            Table.nativeSetString(j2, aVar.o, j4, realmGet$m3u8_url, false);
        } else {
            Table.nativeSetNull(j2, aVar.o, j4, false);
        }
        String realmGet$vip_url = km2Video.realmGet$vip_url();
        if (realmGet$vip_url != null) {
            Table.nativeSetString(j2, aVar.p, j4, realmGet$vip_url, false);
        } else {
            Table.nativeSetNull(j2, aVar.p, j4, false);
        }
        String realmGet$thunder_download_tutorial_url = km2Video.realmGet$thunder_download_tutorial_url();
        if (realmGet$thunder_download_tutorial_url != null) {
            Table.nativeSetString(j2, aVar.q, j4, realmGet$thunder_download_tutorial_url, false);
        } else {
            Table.nativeSetNull(j2, aVar.q, j4, false);
        }
        Table.nativeSetLong(j2, aVar.r, j4, km2Video.realmGet$user_id(), false);
        Table.nativeSetFloat(j2, aVar.s, j4, km2Video.realmGet$gold(), false);
        String realmGet$is_vip = km2Video.realmGet$is_vip();
        if (realmGet$is_vip != null) {
            Table.nativeSetString(j2, aVar.t, j4, realmGet$is_vip, false);
        } else {
            Table.nativeSetNull(j2, aVar.t, j4, false);
        }
        return j4;
    }

    public static com_comeback_data_ui_km2_bean_Km2VideoRealmProxy newProxyInstance(g.a.a aVar, p pVar) {
        a.c cVar = g.a.a.f6264i.get();
        k0 G = aVar.G();
        G.a();
        c a2 = G.f6361f.a(Km2Video.class);
        List<String> emptyList = Collections.emptyList();
        cVar.a = aVar;
        cVar.b = pVar;
        cVar.f6269c = a2;
        cVar.f6270d = false;
        cVar.f6271e = emptyList;
        com_comeback_data_ui_km2_bean_Km2VideoRealmProxy com_comeback_data_ui_km2_bean_km2videorealmproxy = new com_comeback_data_ui_km2_bean_Km2VideoRealmProxy();
        cVar.a();
        return com_comeback_data_ui_km2_bean_km2videorealmproxy;
    }

    public static Km2Video update(x xVar, a aVar, Km2Video km2Video, Km2Video km2Video2, Map<e0, n> map, Set<m> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(xVar.f6392j.e(Km2Video.class), aVar.f6923e, set);
        osObjectBuilder.g(aVar.f6924f, km2Video2.realmGet$id());
        osObjectBuilder.g(aVar.f6925g, km2Video2.realmGet$title());
        osObjectBuilder.e(aVar.f6926h, Integer.valueOf(km2Video2.realmGet$praise_num()));
        osObjectBuilder.e(aVar.f6927i, Integer.valueOf(km2Video2.realmGet$width()));
        osObjectBuilder.e(aVar.f6928j, Integer.valueOf(km2Video2.realmGet$height()));
        osObjectBuilder.g(aVar.f6929k, km2Video2.realmGet$cover());
        osObjectBuilder.g(aVar.f6930l, km2Video2.realmGet$nickname());
        osObjectBuilder.e(aVar.f6931m, Integer.valueOf(km2Video2.realmGet$type()));
        osObjectBuilder.g(aVar.n, km2Video2.realmGet$normal_url());
        osObjectBuilder.g(aVar.o, km2Video2.realmGet$m3u8_url());
        osObjectBuilder.g(aVar.p, km2Video2.realmGet$vip_url());
        osObjectBuilder.g(aVar.q, km2Video2.realmGet$thunder_download_tutorial_url());
        osObjectBuilder.e(aVar.r, Integer.valueOf(km2Video2.realmGet$user_id()));
        long j2 = aVar.s;
        Float valueOf = Float.valueOf(km2Video2.realmGet$gold());
        if (valueOf == null) {
            OsObjectBuilder.nativeAddNull(osObjectBuilder.f7033c, j2);
        } else {
            OsObjectBuilder.nativeAddFloat(osObjectBuilder.f7033c, j2, valueOf.floatValue());
        }
        osObjectBuilder.g(aVar.t, km2Video2.realmGet$is_vip());
        osObjectBuilder.F();
        return km2Video;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_comeback_data_ui_km2_bean_Km2VideoRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_comeback_data_ui_km2_bean_Km2VideoRealmProxy com_comeback_data_ui_km2_bean_km2videorealmproxy = (com_comeback_data_ui_km2_bean_Km2VideoRealmProxy) obj;
        String str = this.proxyState.f6382e.b.f6272c;
        String str2 = com_comeback_data_ui_km2_bean_km2videorealmproxy.proxyState.f6382e.b.f6272c;
        if (str == null ? str2 == null : str.equals(str2)) {
            String j2 = this.proxyState.f6380c.d().j();
            String j3 = com_comeback_data_ui_km2_bean_km2videorealmproxy.proxyState.f6380c.d().j();
            if (j2 == null ? j3 == null : j2.equals(j3)) {
                return this.proxyState.f6380c.l() == com_comeback_data_ui_km2_bean_km2videorealmproxy.proxyState.f6380c.l();
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        v<Km2Video> vVar = this.proxyState;
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
        v<Km2Video> vVar = new v<>(this);
        this.proxyState = vVar;
        vVar.f6382e = cVar.a;
        vVar.f6380c = cVar.b;
        vVar.f6383f = cVar.f6270d;
        if (vVar == null) {
            throw null;
        }
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public String realmGet$cover() {
        this.proxyState.f6382e.f();
        return this.proxyState.f6380c.q(this.columnInfo.f6929k);
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public float realmGet$gold() {
        this.proxyState.f6382e.f();
        return this.proxyState.f6380c.o(this.columnInfo.s);
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public int realmGet$height() {
        this.proxyState.f6382e.f();
        return (int) this.proxyState.f6380c.p(this.columnInfo.f6928j);
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public String realmGet$id() {
        this.proxyState.f6382e.f();
        return this.proxyState.f6380c.q(this.columnInfo.f6924f);
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public String realmGet$is_vip() {
        this.proxyState.f6382e.f();
        return this.proxyState.f6380c.q(this.columnInfo.t);
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public String realmGet$m3u8_url() {
        this.proxyState.f6382e.f();
        return this.proxyState.f6380c.q(this.columnInfo.o);
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public String realmGet$nickname() {
        this.proxyState.f6382e.f();
        return this.proxyState.f6380c.q(this.columnInfo.f6930l);
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public String realmGet$normal_url() {
        this.proxyState.f6382e.f();
        return this.proxyState.f6380c.q(this.columnInfo.n);
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public int realmGet$praise_num() {
        this.proxyState.f6382e.f();
        return (int) this.proxyState.f6380c.p(this.columnInfo.f6926h);
    }

    @Override // g.a.f1.n
    public v<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public String realmGet$thunder_download_tutorial_url() {
        this.proxyState.f6382e.f();
        return this.proxyState.f6380c.q(this.columnInfo.q);
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public String realmGet$title() {
        this.proxyState.f6382e.f();
        return this.proxyState.f6380c.q(this.columnInfo.f6925g);
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public int realmGet$type() {
        this.proxyState.f6382e.f();
        return (int) this.proxyState.f6380c.p(this.columnInfo.f6931m);
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public int realmGet$user_id() {
        this.proxyState.f6382e.f();
        return (int) this.proxyState.f6380c.p(this.columnInfo.r);
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public String realmGet$vip_url() {
        this.proxyState.f6382e.f();
        return this.proxyState.f6380c.q(this.columnInfo.p);
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public int realmGet$width() {
        this.proxyState.f6382e.f();
        return (int) this.proxyState.f6380c.p(this.columnInfo.f6927i);
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public void realmSet$cover(String str) {
        v<Km2Video> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.f6929k, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.f6929k, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6382e.f();
        if (str == null) {
            this.proxyState.f6380c.f(this.columnInfo.f6929k);
        } else {
            this.proxyState.f6380c.a(this.columnInfo.f6929k, str);
        }
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public void realmSet$gold(float f2) {
        v<Km2Video> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                Table d2 = pVar.d();
                long j2 = this.columnInfo.s;
                long l2 = pVar.l();
                d2.a();
                Table.nativeSetFloat(d2.a, j2, l2, f2, true);
                return;
            }
            return;
        }
        vVar.f6382e.f();
        this.proxyState.f6380c.b(this.columnInfo.s, f2);
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public void realmSet$height(int i2) {
        v<Km2Video> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                pVar.d().p(this.columnInfo.f6928j, pVar.l(), i2, true);
                return;
            }
            return;
        }
        vVar.f6382e.f();
        this.proxyState.f6380c.u(this.columnInfo.f6928j, i2);
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public void realmSet$id(String str) {
        v<Km2Video> vVar = this.proxyState;
        if (vVar.b) {
            return;
        }
        vVar.f6382e.f();
        throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public void realmSet$is_vip(String str) {
        v<Km2Video> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.t, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.t, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6382e.f();
        if (str == null) {
            this.proxyState.f6380c.f(this.columnInfo.t);
        } else {
            this.proxyState.f6380c.a(this.columnInfo.t, str);
        }
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public void realmSet$m3u8_url(String str) {
        v<Km2Video> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.o, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.o, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6382e.f();
        if (str == null) {
            this.proxyState.f6380c.f(this.columnInfo.o);
        } else {
            this.proxyState.f6380c.a(this.columnInfo.o, str);
        }
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public void realmSet$nickname(String str) {
        v<Km2Video> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.f6930l, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.f6930l, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6382e.f();
        if (str == null) {
            this.proxyState.f6380c.f(this.columnInfo.f6930l);
        } else {
            this.proxyState.f6380c.a(this.columnInfo.f6930l, str);
        }
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public void realmSet$normal_url(String str) {
        v<Km2Video> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.n, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.n, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6382e.f();
        if (str == null) {
            this.proxyState.f6380c.f(this.columnInfo.n);
        } else {
            this.proxyState.f6380c.a(this.columnInfo.n, str);
        }
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public void realmSet$praise_num(int i2) {
        v<Km2Video> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                pVar.d().p(this.columnInfo.f6926h, pVar.l(), i2, true);
                return;
            }
            return;
        }
        vVar.f6382e.f();
        this.proxyState.f6380c.u(this.columnInfo.f6926h, i2);
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public void realmSet$thunder_download_tutorial_url(String str) {
        v<Km2Video> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.q, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.q, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6382e.f();
        if (str == null) {
            this.proxyState.f6380c.f(this.columnInfo.q);
        } else {
            this.proxyState.f6380c.a(this.columnInfo.q, str);
        }
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public void realmSet$title(String str) {
        v<Km2Video> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.f6925g, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.f6925g, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6382e.f();
        if (str == null) {
            this.proxyState.f6380c.f(this.columnInfo.f6925g);
        } else {
            this.proxyState.f6380c.a(this.columnInfo.f6925g, str);
        }
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public void realmSet$type(int i2) {
        v<Km2Video> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                pVar.d().p(this.columnInfo.f6931m, pVar.l(), i2, true);
                return;
            }
            return;
        }
        vVar.f6382e.f();
        this.proxyState.f6380c.u(this.columnInfo.f6931m, i2);
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public void realmSet$user_id(int i2) {
        v<Km2Video> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                pVar.d().p(this.columnInfo.r, pVar.l(), i2, true);
                return;
            }
            return;
        }
        vVar.f6382e.f();
        this.proxyState.f6380c.u(this.columnInfo.r, i2);
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public void realmSet$vip_url(String str) {
        v<Km2Video> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.p, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.p, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6382e.f();
        if (str == null) {
            this.proxyState.f6380c.f(this.columnInfo.p);
        } else {
            this.proxyState.f6380c.a(this.columnInfo.p, str);
        }
    }

    @Override // com.comeback.data.ui.km2.bean.Km2Video, g.a.w0
    public void realmSet$width(int i2) {
        v<Km2Video> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                pVar.d().p(this.columnInfo.f6927i, pVar.l(), i2, true);
                return;
            }
            return;
        }
        vVar.f6382e.f();
        this.proxyState.f6380c.u(this.columnInfo.f6927i, i2);
    }

    public String toString() {
        if (g0.isValid(this)) {
            StringBuilder q = f.b.a.a.a.q("Km2Video = proxy[", "{id:");
            f.b.a.a.a.C(q, realmGet$id() != null ? realmGet$id() : "null", "}", ",", "{title:");
            f.b.a.a.a.C(q, realmGet$title() != null ? realmGet$title() : "null", "}", ",", "{praise_num:");
            q.append(realmGet$praise_num());
            q.append("}");
            q.append(",");
            q.append("{width:");
            q.append(realmGet$width());
            q.append("}");
            q.append(",");
            q.append("{height:");
            q.append(realmGet$height());
            q.append("}");
            q.append(",");
            q.append("{cover:");
            f.b.a.a.a.C(q, realmGet$cover() != null ? realmGet$cover() : "null", "}", ",", "{nickname:");
            f.b.a.a.a.C(q, realmGet$nickname() != null ? realmGet$nickname() : "null", "}", ",", "{type:");
            q.append(realmGet$type());
            q.append("}");
            q.append(",");
            q.append("{normal_url:");
            f.b.a.a.a.C(q, realmGet$normal_url() != null ? realmGet$normal_url() : "null", "}", ",", "{m3u8_url:");
            f.b.a.a.a.C(q, realmGet$m3u8_url() != null ? realmGet$m3u8_url() : "null", "}", ",", "{vip_url:");
            f.b.a.a.a.C(q, realmGet$vip_url() != null ? realmGet$vip_url() : "null", "}", ",", "{thunder_download_tutorial_url:");
            f.b.a.a.a.C(q, realmGet$thunder_download_tutorial_url() != null ? realmGet$thunder_download_tutorial_url() : "null", "}", ",", "{user_id:");
            q.append(realmGet$user_id());
            q.append("}");
            q.append(",");
            q.append("{gold:");
            q.append(realmGet$gold());
            q.append("}");
            q.append(",");
            q.append("{is_vip:");
            q.append(realmGet$is_vip() != null ? realmGet$is_vip() : "null");
            q.append("}");
            q.append("]");
            return q.toString();
        }
        return "Invalid object";
    }

    public static void insert(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long nativeFindFirstString;
        long j2;
        Table e2 = xVar.f6392j.e(Km2Video.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6392j;
        k0Var.a();
        a aVar = (a) k0Var.f6361f.a(Km2Video.class);
        long j4 = aVar.f6924f;
        while (it.hasNext()) {
            Km2Video km2Video = (Km2Video) it.next();
            if (!map.containsKey(km2Video)) {
                if (km2Video instanceof n) {
                    n nVar = (n) km2Video;
                    if (nVar.realmGet$proxyState().f6382e != null && nVar.realmGet$proxyState().f6382e.b.f6272c.equals(xVar.b.f6272c)) {
                        map.put(km2Video, Long.valueOf(nVar.realmGet$proxyState().f6380c.l()));
                    }
                }
                String realmGet$id = km2Video.realmGet$id();
                if (realmGet$id == null) {
                    nativeFindFirstString = Table.nativeFindFirstNull(j3, j4);
                } else {
                    nativeFindFirstString = Table.nativeFindFirstString(j3, j4, realmGet$id);
                }
                if (nativeFindFirstString == -1) {
                    long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j4, realmGet$id);
                    map.put(km2Video, Long.valueOf(createRowWithPrimaryKey));
                    String realmGet$title = km2Video.realmGet$title();
                    if (realmGet$title != null) {
                        j2 = j4;
                        Table.nativeSetString(j3, aVar.f6925g, createRowWithPrimaryKey, realmGet$title, false);
                    } else {
                        j2 = j4;
                    }
                    Table.nativeSetLong(j3, aVar.f6926h, createRowWithPrimaryKey, km2Video.realmGet$praise_num(), false);
                    Table.nativeSetLong(j3, aVar.f6927i, createRowWithPrimaryKey, km2Video.realmGet$width(), false);
                    Table.nativeSetLong(j3, aVar.f6928j, createRowWithPrimaryKey, km2Video.realmGet$height(), false);
                    String realmGet$cover = km2Video.realmGet$cover();
                    if (realmGet$cover != null) {
                        Table.nativeSetString(j3, aVar.f6929k, createRowWithPrimaryKey, realmGet$cover, false);
                    }
                    String realmGet$nickname = km2Video.realmGet$nickname();
                    if (realmGet$nickname != null) {
                        Table.nativeSetString(j3, aVar.f6930l, createRowWithPrimaryKey, realmGet$nickname, false);
                    }
                    Table.nativeSetLong(j3, aVar.f6931m, createRowWithPrimaryKey, km2Video.realmGet$type(), false);
                    String realmGet$normal_url = km2Video.realmGet$normal_url();
                    if (realmGet$normal_url != null) {
                        Table.nativeSetString(j3, aVar.n, createRowWithPrimaryKey, realmGet$normal_url, false);
                    }
                    String realmGet$m3u8_url = km2Video.realmGet$m3u8_url();
                    if (realmGet$m3u8_url != null) {
                        Table.nativeSetString(j3, aVar.o, createRowWithPrimaryKey, realmGet$m3u8_url, false);
                    }
                    String realmGet$vip_url = km2Video.realmGet$vip_url();
                    if (realmGet$vip_url != null) {
                        Table.nativeSetString(j3, aVar.p, createRowWithPrimaryKey, realmGet$vip_url, false);
                    }
                    String realmGet$thunder_download_tutorial_url = km2Video.realmGet$thunder_download_tutorial_url();
                    if (realmGet$thunder_download_tutorial_url != null) {
                        Table.nativeSetString(j3, aVar.q, createRowWithPrimaryKey, realmGet$thunder_download_tutorial_url, false);
                    }
                    Table.nativeSetLong(j3, aVar.r, createRowWithPrimaryKey, km2Video.realmGet$user_id(), false);
                    Table.nativeSetFloat(j3, aVar.s, createRowWithPrimaryKey, km2Video.realmGet$gold(), false);
                    String realmGet$is_vip = km2Video.realmGet$is_vip();
                    if (realmGet$is_vip != null) {
                        Table.nativeSetString(j3, aVar.t, createRowWithPrimaryKey, realmGet$is_vip, false);
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
        Table e2 = xVar.f6392j.e(Km2Video.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6392j;
        k0Var.a();
        a aVar = (a) k0Var.f6361f.a(Km2Video.class);
        long j4 = aVar.f6924f;
        while (it.hasNext()) {
            Km2Video km2Video = (Km2Video) it.next();
            if (!map.containsKey(km2Video)) {
                if (km2Video instanceof n) {
                    n nVar = (n) km2Video;
                    if (nVar.realmGet$proxyState().f6382e != null && nVar.realmGet$proxyState().f6382e.b.f6272c.equals(xVar.b.f6272c)) {
                        map.put(km2Video, Long.valueOf(nVar.realmGet$proxyState().f6380c.l()));
                    }
                }
                String realmGet$id = km2Video.realmGet$id();
                if (realmGet$id == null) {
                    nativeFindFirstString = Table.nativeFindFirstNull(j3, j4);
                } else {
                    nativeFindFirstString = Table.nativeFindFirstString(j3, j4, realmGet$id);
                }
                long createRowWithPrimaryKey = nativeFindFirstString == -1 ? OsObject.createRowWithPrimaryKey(e2, j4, realmGet$id) : nativeFindFirstString;
                map.put(km2Video, Long.valueOf(createRowWithPrimaryKey));
                String realmGet$title = km2Video.realmGet$title();
                if (realmGet$title != null) {
                    j2 = j4;
                    Table.nativeSetString(j3, aVar.f6925g, createRowWithPrimaryKey, realmGet$title, false);
                } else {
                    j2 = j4;
                    Table.nativeSetNull(j3, aVar.f6925g, createRowWithPrimaryKey, false);
                }
                long j5 = createRowWithPrimaryKey;
                Table.nativeSetLong(j3, aVar.f6926h, j5, km2Video.realmGet$praise_num(), false);
                Table.nativeSetLong(j3, aVar.f6927i, j5, km2Video.realmGet$width(), false);
                Table.nativeSetLong(j3, aVar.f6928j, j5, km2Video.realmGet$height(), false);
                String realmGet$cover = km2Video.realmGet$cover();
                if (realmGet$cover != null) {
                    Table.nativeSetString(j3, aVar.f6929k, createRowWithPrimaryKey, realmGet$cover, false);
                } else {
                    Table.nativeSetNull(j3, aVar.f6929k, createRowWithPrimaryKey, false);
                }
                String realmGet$nickname = km2Video.realmGet$nickname();
                if (realmGet$nickname != null) {
                    Table.nativeSetString(j3, aVar.f6930l, createRowWithPrimaryKey, realmGet$nickname, false);
                } else {
                    Table.nativeSetNull(j3, aVar.f6930l, createRowWithPrimaryKey, false);
                }
                Table.nativeSetLong(j3, aVar.f6931m, createRowWithPrimaryKey, km2Video.realmGet$type(), false);
                String realmGet$normal_url = km2Video.realmGet$normal_url();
                if (realmGet$normal_url != null) {
                    Table.nativeSetString(j3, aVar.n, createRowWithPrimaryKey, realmGet$normal_url, false);
                } else {
                    Table.nativeSetNull(j3, aVar.n, createRowWithPrimaryKey, false);
                }
                String realmGet$m3u8_url = km2Video.realmGet$m3u8_url();
                if (realmGet$m3u8_url != null) {
                    Table.nativeSetString(j3, aVar.o, createRowWithPrimaryKey, realmGet$m3u8_url, false);
                } else {
                    Table.nativeSetNull(j3, aVar.o, createRowWithPrimaryKey, false);
                }
                String realmGet$vip_url = km2Video.realmGet$vip_url();
                if (realmGet$vip_url != null) {
                    Table.nativeSetString(j3, aVar.p, createRowWithPrimaryKey, realmGet$vip_url, false);
                } else {
                    Table.nativeSetNull(j3, aVar.p, createRowWithPrimaryKey, false);
                }
                String realmGet$thunder_download_tutorial_url = km2Video.realmGet$thunder_download_tutorial_url();
                if (realmGet$thunder_download_tutorial_url != null) {
                    Table.nativeSetString(j3, aVar.q, createRowWithPrimaryKey, realmGet$thunder_download_tutorial_url, false);
                } else {
                    Table.nativeSetNull(j3, aVar.q, createRowWithPrimaryKey, false);
                }
                long j6 = createRowWithPrimaryKey;
                Table.nativeSetLong(j3, aVar.r, j6, km2Video.realmGet$user_id(), false);
                Table.nativeSetFloat(j3, aVar.s, j6, km2Video.realmGet$gold(), false);
                String realmGet$is_vip = km2Video.realmGet$is_vip();
                if (realmGet$is_vip != null) {
                    Table.nativeSetString(j3, aVar.t, createRowWithPrimaryKey, realmGet$is_vip, false);
                } else {
                    Table.nativeSetNull(j3, aVar.t, createRowWithPrimaryKey, false);
                }
                j4 = j2;
            }
        }
    }
}
