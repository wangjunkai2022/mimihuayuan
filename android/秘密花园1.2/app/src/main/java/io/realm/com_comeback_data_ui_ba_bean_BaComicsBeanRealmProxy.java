package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationCompatJellybean;
import com.comeback.data.ui.ba.bean.BaComicsBean;
import g.a.a;
import g.a.e0;
import g.a.f1.c;
import g.a.f1.n;
import g.a.f1.p;
import g.a.g0;
import g.a.k0;
import g.a.m;
import g.a.p0;
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
public class com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy extends BaComicsBean implements n, p0 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public a columnInfo;
    public v<BaComicsBean> proxyState;

    /* loaded from: classes.dex */
    public static final class a extends c {

        /* renamed from: e  reason: collision with root package name */
        public long f6871e;

        /* renamed from: f  reason: collision with root package name */
        public long f6872f;

        /* renamed from: g  reason: collision with root package name */
        public long f6873g;

        /* renamed from: h  reason: collision with root package name */
        public long f6874h;

        /* renamed from: i  reason: collision with root package name */
        public long f6875i;

        /* renamed from: j  reason: collision with root package name */
        public long f6876j;

        /* renamed from: k  reason: collision with root package name */
        public long f6877k;

        /* renamed from: l  reason: collision with root package name */
        public long f6878l;

        /* renamed from: m  reason: collision with root package name */
        public long f6879m;
        public long n;
        public long o;
        public long p;
        public long q;
        public long r;

        public a(OsSchemaInfo osSchemaInfo) {
            super(13, true);
            OsObjectSchemaInfo a = osSchemaInfo.a("BaComicsBean");
            this.f6872f = a(NotificationCompat.CarExtender.KEY_AUTHOR, NotificationCompat.CarExtender.KEY_AUTHOR, a);
            this.f6873g = a("describes", "describes", a);
            this.f6874h = a("follow_num", "follow_num", a);
            this.f6875i = a("heat", "heat", a);
            this.f6876j = a("is_adult", "is_adult", a);
            this.f6877k = a("is_end", "is_end", a);
            this.f6878l = a("show_id", "show_id", a);
            this.f6879m = a("small_picture", "small_picture", a);
            this.n = a(NotificationCompatJellybean.KEY_TITLE, NotificationCompatJellybean.KEY_TITLE, a);
            this.o = a("total", "total", a);
            this.p = a("update_episodes", "update_episodes", a);
            this.q = a("update_time", "update_time", a);
            this.r = a("watch_num", "watch_num", a);
            this.f6871e = a.a();
        }

        @Override // g.a.f1.c
        public final void b(c cVar, c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f6872f = aVar.f6872f;
            aVar2.f6873g = aVar.f6873g;
            aVar2.f6874h = aVar.f6874h;
            aVar2.f6875i = aVar.f6875i;
            aVar2.f6876j = aVar.f6876j;
            aVar2.f6877k = aVar.f6877k;
            aVar2.f6878l = aVar.f6878l;
            aVar2.f6879m = aVar.f6879m;
            aVar2.n = aVar.n;
            aVar2.o = aVar.o;
            aVar2.p = aVar.p;
            aVar2.q = aVar.q;
            aVar2.r = aVar.r;
            aVar2.f6871e = aVar.f6871e;
        }
    }

    public com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy() {
        this.proxyState.b = false;
    }

    public static BaComicsBean copy(x xVar, a aVar, BaComicsBean baComicsBean, boolean z, Map<e0, n> map, Set<m> set) {
        n nVar = map.get(baComicsBean);
        if (nVar != null) {
            return (BaComicsBean) nVar;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(xVar.f6392j.e(BaComicsBean.class), aVar.f6871e, set);
        osObjectBuilder.g(aVar.f6872f, baComicsBean.realmGet$author());
        osObjectBuilder.g(aVar.f6873g, baComicsBean.realmGet$describes());
        long j2 = aVar.f6874h;
        Double valueOf = Double.valueOf(baComicsBean.realmGet$follow_num());
        if (valueOf == null) {
            OsObjectBuilder.nativeAddNull(osObjectBuilder.f7033c, j2);
        } else {
            OsObjectBuilder.nativeAddDouble(osObjectBuilder.f7033c, j2, valueOf.doubleValue());
        }
        osObjectBuilder.e(aVar.f6875i, Integer.valueOf(baComicsBean.realmGet$heat()));
        osObjectBuilder.e(aVar.f6876j, Integer.valueOf(baComicsBean.realmGet$is_adult()));
        osObjectBuilder.e(aVar.f6877k, Integer.valueOf(baComicsBean.realmGet$is_end()));
        osObjectBuilder.g(aVar.f6878l, baComicsBean.realmGet$show_id());
        osObjectBuilder.g(aVar.f6879m, baComicsBean.realmGet$small_picture());
        osObjectBuilder.g(aVar.n, baComicsBean.realmGet$title());
        osObjectBuilder.e(aVar.o, Integer.valueOf(baComicsBean.realmGet$total()));
        osObjectBuilder.e(aVar.p, Integer.valueOf(baComicsBean.realmGet$update_episodes()));
        osObjectBuilder.e(aVar.q, Integer.valueOf(baComicsBean.realmGet$update_time()));
        osObjectBuilder.e(aVar.r, Integer.valueOf(baComicsBean.realmGet$watch_num()));
        com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy newProxyInstance = newProxyInstance(xVar, osObjectBuilder.E());
        map.put(baComicsBean, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.comeback.data.ui.ba.bean.BaComicsBean copyOrUpdate(g.a.x r9, io.realm.com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy.a r10, com.comeback.data.ui.ba.bean.BaComicsBean r11, boolean r12, java.util.Map<g.a.e0, g.a.f1.n> r13, java.util.Set<g.a.m> r14) {
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
            com.comeback.data.ui.ba.bean.BaComicsBean r1 = (com.comeback.data.ui.ba.bean.BaComicsBean) r1
            return r1
        L47:
            r1 = 0
            r2 = 0
            if (r12 == 0) goto L8e
            java.lang.Class<com.comeback.data.ui.ba.bean.BaComicsBean> r3 = com.comeback.data.ui.ba.bean.BaComicsBean.class
            g.a.k0 r4 = r9.f6392j
            io.realm.internal.Table r3 = r4.e(r3)
            long r4 = r10.f6878l
            java.lang.String r6 = r11.realmGet$show_id()
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
            io.realm.com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy r1 = new io.realm.com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy     // Catch: java.lang.Throwable -> L89
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
            com.comeback.data.ui.ba.bean.BaComicsBean r9 = update(r1, r2, r3, r4, r5, r6)
            goto La0
        L9c:
            com.comeback.data.ui.ba.bean.BaComicsBean r9 = copy(r9, r10, r11, r12, r13, r14)
        La0:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy.copyOrUpdate(g.a.x, io.realm.com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a, com.comeback.data.ui.ba.bean.BaComicsBean, boolean, java.util.Map, java.util.Set):com.comeback.data.ui.ba.bean.BaComicsBean");
    }

    public static a createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new a(osSchemaInfo);
    }

    public static BaComicsBean createDetachedCopy(BaComicsBean baComicsBean, int i2, int i3, Map<e0, n.a<e0>> map) {
        BaComicsBean baComicsBean2;
        if (i2 > i3 || baComicsBean == null) {
            return null;
        }
        n.a<e0> aVar = map.get(baComicsBean);
        if (aVar == null) {
            baComicsBean2 = new BaComicsBean();
            map.put(baComicsBean, new n.a<>(i2, baComicsBean2));
        } else if (i2 >= aVar.a) {
            return (BaComicsBean) aVar.b;
        } else {
            aVar.a = i2;
            baComicsBean2 = (BaComicsBean) aVar.b;
        }
        baComicsBean2.realmSet$author(baComicsBean.realmGet$author());
        baComicsBean2.realmSet$describes(baComicsBean.realmGet$describes());
        baComicsBean2.realmSet$follow_num(baComicsBean.realmGet$follow_num());
        baComicsBean2.realmSet$heat(baComicsBean.realmGet$heat());
        baComicsBean2.realmSet$is_adult(baComicsBean.realmGet$is_adult());
        baComicsBean2.realmSet$is_end(baComicsBean.realmGet$is_end());
        baComicsBean2.realmSet$show_id(baComicsBean.realmGet$show_id());
        baComicsBean2.realmSet$small_picture(baComicsBean.realmGet$small_picture());
        baComicsBean2.realmSet$title(baComicsBean.realmGet$title());
        baComicsBean2.realmSet$total(baComicsBean.realmGet$total());
        baComicsBean2.realmSet$update_episodes(baComicsBean.realmGet$update_episodes());
        baComicsBean2.realmSet$update_time(baComicsBean.realmGet$update_time());
        baComicsBean2.realmSet$watch_num(baComicsBean.realmGet$watch_num());
        return baComicsBean2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.b bVar = new OsObjectSchemaInfo.b("BaComicsBean", 13, 0);
        bVar.a(NotificationCompat.CarExtender.KEY_AUTHOR, RealmFieldType.STRING, false, false, false);
        bVar.a("describes", RealmFieldType.STRING, false, false, false);
        bVar.a("follow_num", RealmFieldType.DOUBLE, false, false, true);
        bVar.a("heat", RealmFieldType.INTEGER, false, false, true);
        bVar.a("is_adult", RealmFieldType.INTEGER, false, false, true);
        bVar.a("is_end", RealmFieldType.INTEGER, false, false, true);
        bVar.a("show_id", RealmFieldType.STRING, true, true, false);
        bVar.a("small_picture", RealmFieldType.STRING, false, false, false);
        bVar.a(NotificationCompatJellybean.KEY_TITLE, RealmFieldType.STRING, false, false, false);
        bVar.a("total", RealmFieldType.INTEGER, false, false, true);
        bVar.a("update_episodes", RealmFieldType.INTEGER, false, false, true);
        bVar.a("update_time", RealmFieldType.INTEGER, false, false, true);
        bVar.a("watch_num", RealmFieldType.INTEGER, false, false, true);
        return bVar.b();
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.comeback.data.ui.ba.bean.BaComicsBean createOrUpdateUsingJsonObject(g.a.x r8, org.json.JSONObject r9, boolean r10) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 502
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy.createOrUpdateUsingJsonObject(g.a.x, org.json.JSONObject, boolean):com.comeback.data.ui.ba.bean.BaComicsBean");
    }

    @TargetApi(11)
    public static BaComicsBean createUsingJsonStream(x xVar, JsonReader jsonReader) throws IOException {
        BaComicsBean baComicsBean = new BaComicsBean();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals(NotificationCompat.CarExtender.KEY_AUTHOR)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    baComicsBean.realmSet$author(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    baComicsBean.realmSet$author(null);
                }
            } else if (nextName.equals("describes")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    baComicsBean.realmSet$describes(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    baComicsBean.realmSet$describes(null);
                }
            } else if (nextName.equals("follow_num")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    baComicsBean.realmSet$follow_num(jsonReader.nextDouble());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'follow_num' to null.");
                }
            } else if (nextName.equals("heat")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    baComicsBean.realmSet$heat(jsonReader.nextInt());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'heat' to null.");
                }
            } else if (nextName.equals("is_adult")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    baComicsBean.realmSet$is_adult(jsonReader.nextInt());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'is_adult' to null.");
                }
            } else if (nextName.equals("is_end")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    baComicsBean.realmSet$is_end(jsonReader.nextInt());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'is_end' to null.");
                }
            } else if (nextName.equals("show_id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    baComicsBean.realmSet$show_id(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    baComicsBean.realmSet$show_id(null);
                }
                z = true;
            } else if (nextName.equals("small_picture")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    baComicsBean.realmSet$small_picture(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    baComicsBean.realmSet$small_picture(null);
                }
            } else if (nextName.equals(NotificationCompatJellybean.KEY_TITLE)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    baComicsBean.realmSet$title(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    baComicsBean.realmSet$title(null);
                }
            } else if (nextName.equals("total")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    baComicsBean.realmSet$total(jsonReader.nextInt());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'total' to null.");
                }
            } else if (nextName.equals("update_episodes")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    baComicsBean.realmSet$update_episodes(jsonReader.nextInt());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'update_episodes' to null.");
                }
            } else if (nextName.equals("update_time")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    baComicsBean.realmSet$update_time(jsonReader.nextInt());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'update_time' to null.");
                }
            } else if (nextName.equals("watch_num")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    baComicsBean.realmSet$watch_num(jsonReader.nextInt());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'watch_num' to null.");
                }
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        if (z) {
            return (BaComicsBean) xVar.L(baComicsBean, new m[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'show_id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "BaComicsBean";
    }

    public static long insert(x xVar, BaComicsBean baComicsBean, Map<e0, Long> map) {
        long nativeFindFirstString;
        if (baComicsBean instanceof n) {
            n nVar = (n) baComicsBean;
            if (nVar.realmGet$proxyState().f6382e != null && nVar.realmGet$proxyState().f6382e.b.f6272c.equals(xVar.b.f6272c)) {
                return nVar.realmGet$proxyState().f6380c.l();
            }
        }
        Table e2 = xVar.f6392j.e(BaComicsBean.class);
        long j2 = e2.a;
        k0 k0Var = xVar.f6392j;
        k0Var.a();
        a aVar = (a) k0Var.f6361f.a(BaComicsBean.class);
        long j3 = aVar.f6878l;
        String realmGet$show_id = baComicsBean.realmGet$show_id();
        if (realmGet$show_id == null) {
            nativeFindFirstString = Table.nativeFindFirstNull(j2, j3);
        } else {
            nativeFindFirstString = Table.nativeFindFirstString(j2, j3, realmGet$show_id);
        }
        if (nativeFindFirstString == -1) {
            long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j3, realmGet$show_id);
            map.put(baComicsBean, Long.valueOf(createRowWithPrimaryKey));
            String realmGet$author = baComicsBean.realmGet$author();
            if (realmGet$author != null) {
                Table.nativeSetString(j2, aVar.f6872f, createRowWithPrimaryKey, realmGet$author, false);
            }
            String realmGet$describes = baComicsBean.realmGet$describes();
            if (realmGet$describes != null) {
                Table.nativeSetString(j2, aVar.f6873g, createRowWithPrimaryKey, realmGet$describes, false);
            }
            Table.nativeSetDouble(j2, aVar.f6874h, createRowWithPrimaryKey, baComicsBean.realmGet$follow_num(), false);
            Table.nativeSetLong(j2, aVar.f6875i, createRowWithPrimaryKey, baComicsBean.realmGet$heat(), false);
            Table.nativeSetLong(j2, aVar.f6876j, createRowWithPrimaryKey, baComicsBean.realmGet$is_adult(), false);
            Table.nativeSetLong(j2, aVar.f6877k, createRowWithPrimaryKey, baComicsBean.realmGet$is_end(), false);
            String realmGet$small_picture = baComicsBean.realmGet$small_picture();
            if (realmGet$small_picture != null) {
                Table.nativeSetString(j2, aVar.f6879m, createRowWithPrimaryKey, realmGet$small_picture, false);
            }
            String realmGet$title = baComicsBean.realmGet$title();
            if (realmGet$title != null) {
                Table.nativeSetString(j2, aVar.n, createRowWithPrimaryKey, realmGet$title, false);
            }
            Table.nativeSetLong(j2, aVar.o, createRowWithPrimaryKey, baComicsBean.realmGet$total(), false);
            Table.nativeSetLong(j2, aVar.p, createRowWithPrimaryKey, baComicsBean.realmGet$update_episodes(), false);
            Table.nativeSetLong(j2, aVar.q, createRowWithPrimaryKey, baComicsBean.realmGet$update_time(), false);
            Table.nativeSetLong(j2, aVar.r, createRowWithPrimaryKey, baComicsBean.realmGet$watch_num(), false);
            return createRowWithPrimaryKey;
        }
        Table.s(realmGet$show_id);
        throw null;
    }

    public static long insertOrUpdate(x xVar, BaComicsBean baComicsBean, Map<e0, Long> map) {
        long nativeFindFirstString;
        if (baComicsBean instanceof n) {
            n nVar = (n) baComicsBean;
            if (nVar.realmGet$proxyState().f6382e != null && nVar.realmGet$proxyState().f6382e.b.f6272c.equals(xVar.b.f6272c)) {
                return nVar.realmGet$proxyState().f6380c.l();
            }
        }
        Table e2 = xVar.f6392j.e(BaComicsBean.class);
        long j2 = e2.a;
        k0 k0Var = xVar.f6392j;
        k0Var.a();
        a aVar = (a) k0Var.f6361f.a(BaComicsBean.class);
        long j3 = aVar.f6878l;
        String realmGet$show_id = baComicsBean.realmGet$show_id();
        if (realmGet$show_id == null) {
            nativeFindFirstString = Table.nativeFindFirstNull(j2, j3);
        } else {
            nativeFindFirstString = Table.nativeFindFirstString(j2, j3, realmGet$show_id);
        }
        if (nativeFindFirstString == -1) {
            nativeFindFirstString = OsObject.createRowWithPrimaryKey(e2, j3, realmGet$show_id);
        }
        long j4 = nativeFindFirstString;
        map.put(baComicsBean, Long.valueOf(j4));
        String realmGet$author = baComicsBean.realmGet$author();
        if (realmGet$author != null) {
            Table.nativeSetString(j2, aVar.f6872f, j4, realmGet$author, false);
        } else {
            Table.nativeSetNull(j2, aVar.f6872f, j4, false);
        }
        String realmGet$describes = baComicsBean.realmGet$describes();
        if (realmGet$describes != null) {
            Table.nativeSetString(j2, aVar.f6873g, j4, realmGet$describes, false);
        } else {
            Table.nativeSetNull(j2, aVar.f6873g, j4, false);
        }
        Table.nativeSetDouble(j2, aVar.f6874h, j4, baComicsBean.realmGet$follow_num(), false);
        Table.nativeSetLong(j2, aVar.f6875i, j4, baComicsBean.realmGet$heat(), false);
        Table.nativeSetLong(j2, aVar.f6876j, j4, baComicsBean.realmGet$is_adult(), false);
        Table.nativeSetLong(j2, aVar.f6877k, j4, baComicsBean.realmGet$is_end(), false);
        String realmGet$small_picture = baComicsBean.realmGet$small_picture();
        if (realmGet$small_picture != null) {
            Table.nativeSetString(j2, aVar.f6879m, j4, realmGet$small_picture, false);
        } else {
            Table.nativeSetNull(j2, aVar.f6879m, j4, false);
        }
        String realmGet$title = baComicsBean.realmGet$title();
        if (realmGet$title != null) {
            Table.nativeSetString(j2, aVar.n, j4, realmGet$title, false);
        } else {
            Table.nativeSetNull(j2, aVar.n, j4, false);
        }
        Table.nativeSetLong(j2, aVar.o, j4, baComicsBean.realmGet$total(), false);
        Table.nativeSetLong(j2, aVar.p, j4, baComicsBean.realmGet$update_episodes(), false);
        Table.nativeSetLong(j2, aVar.q, j4, baComicsBean.realmGet$update_time(), false);
        Table.nativeSetLong(j2, aVar.r, j4, baComicsBean.realmGet$watch_num(), false);
        return j4;
    }

    public static com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy newProxyInstance(g.a.a aVar, p pVar) {
        a.c cVar = g.a.a.f6264i.get();
        k0 G = aVar.G();
        G.a();
        c a2 = G.f6361f.a(BaComicsBean.class);
        List<String> emptyList = Collections.emptyList();
        cVar.a = aVar;
        cVar.b = pVar;
        cVar.f6269c = a2;
        cVar.f6270d = false;
        cVar.f6271e = emptyList;
        com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy com_comeback_data_ui_ba_bean_bacomicsbeanrealmproxy = new com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy();
        cVar.a();
        return com_comeback_data_ui_ba_bean_bacomicsbeanrealmproxy;
    }

    public static BaComicsBean update(x xVar, a aVar, BaComicsBean baComicsBean, BaComicsBean baComicsBean2, Map<e0, n> map, Set<m> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(xVar.f6392j.e(BaComicsBean.class), aVar.f6871e, set);
        osObjectBuilder.g(aVar.f6872f, baComicsBean2.realmGet$author());
        osObjectBuilder.g(aVar.f6873g, baComicsBean2.realmGet$describes());
        long j2 = aVar.f6874h;
        Double valueOf = Double.valueOf(baComicsBean2.realmGet$follow_num());
        if (valueOf == null) {
            OsObjectBuilder.nativeAddNull(osObjectBuilder.f7033c, j2);
        } else {
            OsObjectBuilder.nativeAddDouble(osObjectBuilder.f7033c, j2, valueOf.doubleValue());
        }
        osObjectBuilder.e(aVar.f6875i, Integer.valueOf(baComicsBean2.realmGet$heat()));
        osObjectBuilder.e(aVar.f6876j, Integer.valueOf(baComicsBean2.realmGet$is_adult()));
        osObjectBuilder.e(aVar.f6877k, Integer.valueOf(baComicsBean2.realmGet$is_end()));
        osObjectBuilder.g(aVar.f6878l, baComicsBean2.realmGet$show_id());
        osObjectBuilder.g(aVar.f6879m, baComicsBean2.realmGet$small_picture());
        osObjectBuilder.g(aVar.n, baComicsBean2.realmGet$title());
        osObjectBuilder.e(aVar.o, Integer.valueOf(baComicsBean2.realmGet$total()));
        osObjectBuilder.e(aVar.p, Integer.valueOf(baComicsBean2.realmGet$update_episodes()));
        osObjectBuilder.e(aVar.q, Integer.valueOf(baComicsBean2.realmGet$update_time()));
        osObjectBuilder.e(aVar.r, Integer.valueOf(baComicsBean2.realmGet$watch_num()));
        osObjectBuilder.F();
        return baComicsBean;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy com_comeback_data_ui_ba_bean_bacomicsbeanrealmproxy = (com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy) obj;
        String str = this.proxyState.f6382e.b.f6272c;
        String str2 = com_comeback_data_ui_ba_bean_bacomicsbeanrealmproxy.proxyState.f6382e.b.f6272c;
        if (str == null ? str2 == null : str.equals(str2)) {
            String j2 = this.proxyState.f6380c.d().j();
            String j3 = com_comeback_data_ui_ba_bean_bacomicsbeanrealmproxy.proxyState.f6380c.d().j();
            if (j2 == null ? j3 == null : j2.equals(j3)) {
                return this.proxyState.f6380c.l() == com_comeback_data_ui_ba_bean_bacomicsbeanrealmproxy.proxyState.f6380c.l();
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        v<BaComicsBean> vVar = this.proxyState;
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
        v<BaComicsBean> vVar = new v<>(this);
        this.proxyState = vVar;
        vVar.f6382e = cVar.a;
        vVar.f6380c = cVar.b;
        vVar.f6383f = cVar.f6270d;
        if (vVar == null) {
            throw null;
        }
    }

    @Override // com.comeback.data.ui.ba.bean.BaComicsBean, g.a.p0
    public String realmGet$author() {
        this.proxyState.f6382e.f();
        return this.proxyState.f6380c.q(this.columnInfo.f6872f);
    }

    @Override // com.comeback.data.ui.ba.bean.BaComicsBean, g.a.p0
    public String realmGet$describes() {
        this.proxyState.f6382e.f();
        return this.proxyState.f6380c.q(this.columnInfo.f6873g);
    }

    @Override // com.comeback.data.ui.ba.bean.BaComicsBean, g.a.p0
    public double realmGet$follow_num() {
        this.proxyState.f6382e.f();
        return this.proxyState.f6380c.k(this.columnInfo.f6874h);
    }

    @Override // com.comeback.data.ui.ba.bean.BaComicsBean, g.a.p0
    public int realmGet$heat() {
        this.proxyState.f6382e.f();
        return (int) this.proxyState.f6380c.p(this.columnInfo.f6875i);
    }

    @Override // com.comeback.data.ui.ba.bean.BaComicsBean, g.a.p0
    public int realmGet$is_adult() {
        this.proxyState.f6382e.f();
        return (int) this.proxyState.f6380c.p(this.columnInfo.f6876j);
    }

    @Override // com.comeback.data.ui.ba.bean.BaComicsBean, g.a.p0
    public int realmGet$is_end() {
        this.proxyState.f6382e.f();
        return (int) this.proxyState.f6380c.p(this.columnInfo.f6877k);
    }

    @Override // g.a.f1.n
    public v<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.comeback.data.ui.ba.bean.BaComicsBean, g.a.p0
    public String realmGet$show_id() {
        this.proxyState.f6382e.f();
        return this.proxyState.f6380c.q(this.columnInfo.f6878l);
    }

    @Override // com.comeback.data.ui.ba.bean.BaComicsBean, g.a.p0
    public String realmGet$small_picture() {
        this.proxyState.f6382e.f();
        return this.proxyState.f6380c.q(this.columnInfo.f6879m);
    }

    @Override // com.comeback.data.ui.ba.bean.BaComicsBean, g.a.p0
    public String realmGet$title() {
        this.proxyState.f6382e.f();
        return this.proxyState.f6380c.q(this.columnInfo.n);
    }

    @Override // com.comeback.data.ui.ba.bean.BaComicsBean, g.a.p0
    public int realmGet$total() {
        this.proxyState.f6382e.f();
        return (int) this.proxyState.f6380c.p(this.columnInfo.o);
    }

    @Override // com.comeback.data.ui.ba.bean.BaComicsBean, g.a.p0
    public int realmGet$update_episodes() {
        this.proxyState.f6382e.f();
        return (int) this.proxyState.f6380c.p(this.columnInfo.p);
    }

    @Override // com.comeback.data.ui.ba.bean.BaComicsBean, g.a.p0
    public int realmGet$update_time() {
        this.proxyState.f6382e.f();
        return (int) this.proxyState.f6380c.p(this.columnInfo.q);
    }

    @Override // com.comeback.data.ui.ba.bean.BaComicsBean, g.a.p0
    public int realmGet$watch_num() {
        this.proxyState.f6382e.f();
        return (int) this.proxyState.f6380c.p(this.columnInfo.r);
    }

    @Override // com.comeback.data.ui.ba.bean.BaComicsBean, g.a.p0
    public void realmSet$author(String str) {
        v<BaComicsBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.f6872f, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.f6872f, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6382e.f();
        if (str == null) {
            this.proxyState.f6380c.f(this.columnInfo.f6872f);
        } else {
            this.proxyState.f6380c.a(this.columnInfo.f6872f, str);
        }
    }

    @Override // com.comeback.data.ui.ba.bean.BaComicsBean, g.a.p0
    public void realmSet$describes(String str) {
        v<BaComicsBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.f6873g, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.f6873g, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6382e.f();
        if (str == null) {
            this.proxyState.f6380c.f(this.columnInfo.f6873g);
        } else {
            this.proxyState.f6380c.a(this.columnInfo.f6873g, str);
        }
    }

    @Override // com.comeback.data.ui.ba.bean.BaComicsBean, g.a.p0
    public void realmSet$follow_num(double d2) {
        v<BaComicsBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                Table d3 = pVar.d();
                long j2 = this.columnInfo.f6874h;
                long l2 = pVar.l();
                d3.a();
                Table.nativeSetDouble(d3.a, j2, l2, d2, true);
                return;
            }
            return;
        }
        vVar.f6382e.f();
        this.proxyState.f6380c.C(this.columnInfo.f6874h, d2);
    }

    @Override // com.comeback.data.ui.ba.bean.BaComicsBean, g.a.p0
    public void realmSet$heat(int i2) {
        v<BaComicsBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                pVar.d().p(this.columnInfo.f6875i, pVar.l(), i2, true);
                return;
            }
            return;
        }
        vVar.f6382e.f();
        this.proxyState.f6380c.u(this.columnInfo.f6875i, i2);
    }

    @Override // com.comeback.data.ui.ba.bean.BaComicsBean, g.a.p0
    public void realmSet$is_adult(int i2) {
        v<BaComicsBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                pVar.d().p(this.columnInfo.f6876j, pVar.l(), i2, true);
                return;
            }
            return;
        }
        vVar.f6382e.f();
        this.proxyState.f6380c.u(this.columnInfo.f6876j, i2);
    }

    @Override // com.comeback.data.ui.ba.bean.BaComicsBean, g.a.p0
    public void realmSet$is_end(int i2) {
        v<BaComicsBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                pVar.d().p(this.columnInfo.f6877k, pVar.l(), i2, true);
                return;
            }
            return;
        }
        vVar.f6382e.f();
        this.proxyState.f6380c.u(this.columnInfo.f6877k, i2);
    }

    @Override // com.comeback.data.ui.ba.bean.BaComicsBean, g.a.p0
    public void realmSet$show_id(String str) {
        v<BaComicsBean> vVar = this.proxyState;
        if (vVar.b) {
            return;
        }
        vVar.f6382e.f();
        throw new RealmException("Primary key field 'show_id' cannot be changed after object was created.");
    }

    @Override // com.comeback.data.ui.ba.bean.BaComicsBean, g.a.p0
    public void realmSet$small_picture(String str) {
        v<BaComicsBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.f6879m, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.f6879m, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6382e.f();
        if (str == null) {
            this.proxyState.f6380c.f(this.columnInfo.f6879m);
        } else {
            this.proxyState.f6380c.a(this.columnInfo.f6879m, str);
        }
    }

    @Override // com.comeback.data.ui.ba.bean.BaComicsBean, g.a.p0
    public void realmSet$title(String str) {
        v<BaComicsBean> vVar = this.proxyState;
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

    @Override // com.comeback.data.ui.ba.bean.BaComicsBean, g.a.p0
    public void realmSet$total(int i2) {
        v<BaComicsBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                pVar.d().p(this.columnInfo.o, pVar.l(), i2, true);
                return;
            }
            return;
        }
        vVar.f6382e.f();
        this.proxyState.f6380c.u(this.columnInfo.o, i2);
    }

    @Override // com.comeback.data.ui.ba.bean.BaComicsBean, g.a.p0
    public void realmSet$update_episodes(int i2) {
        v<BaComicsBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                pVar.d().p(this.columnInfo.p, pVar.l(), i2, true);
                return;
            }
            return;
        }
        vVar.f6382e.f();
        this.proxyState.f6380c.u(this.columnInfo.p, i2);
    }

    @Override // com.comeback.data.ui.ba.bean.BaComicsBean, g.a.p0
    public void realmSet$update_time(int i2) {
        v<BaComicsBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6383f) {
                p pVar = vVar.f6380c;
                pVar.d().p(this.columnInfo.q, pVar.l(), i2, true);
                return;
            }
            return;
        }
        vVar.f6382e.f();
        this.proxyState.f6380c.u(this.columnInfo.q, i2);
    }

    @Override // com.comeback.data.ui.ba.bean.BaComicsBean, g.a.p0
    public void realmSet$watch_num(int i2) {
        v<BaComicsBean> vVar = this.proxyState;
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

    public String toString() {
        if (g0.isValid(this)) {
            StringBuilder q = f.b.a.a.a.q("BaComicsBean = proxy[", "{author:");
            f.b.a.a.a.C(q, realmGet$author() != null ? realmGet$author() : "null", "}", ",", "{describes:");
            f.b.a.a.a.C(q, realmGet$describes() != null ? realmGet$describes() : "null", "}", ",", "{follow_num:");
            q.append(realmGet$follow_num());
            q.append("}");
            q.append(",");
            q.append("{heat:");
            q.append(realmGet$heat());
            q.append("}");
            q.append(",");
            q.append("{is_adult:");
            q.append(realmGet$is_adult());
            q.append("}");
            q.append(",");
            q.append("{is_end:");
            q.append(realmGet$is_end());
            q.append("}");
            q.append(",");
            q.append("{show_id:");
            f.b.a.a.a.C(q, realmGet$show_id() != null ? realmGet$show_id() : "null", "}", ",", "{small_picture:");
            f.b.a.a.a.C(q, realmGet$small_picture() != null ? realmGet$small_picture() : "null", "}", ",", "{title:");
            f.b.a.a.a.C(q, realmGet$title() != null ? realmGet$title() : "null", "}", ",", "{total:");
            q.append(realmGet$total());
            q.append("}");
            q.append(",");
            q.append("{update_episodes:");
            q.append(realmGet$update_episodes());
            q.append("}");
            q.append(",");
            q.append("{update_time:");
            q.append(realmGet$update_time());
            q.append("}");
            q.append(",");
            q.append("{watch_num:");
            q.append(realmGet$watch_num());
            return f.b.a.a.a.l(q, "}", "]");
        }
        return "Invalid object";
    }

    public static void insert(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long nativeFindFirstString;
        long j2;
        Table e2 = xVar.f6392j.e(BaComicsBean.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6392j;
        k0Var.a();
        a aVar = (a) k0Var.f6361f.a(BaComicsBean.class);
        long j4 = aVar.f6878l;
        while (it.hasNext()) {
            BaComicsBean baComicsBean = (BaComicsBean) it.next();
            if (!map.containsKey(baComicsBean)) {
                if (baComicsBean instanceof n) {
                    n nVar = (n) baComicsBean;
                    if (nVar.realmGet$proxyState().f6382e != null && nVar.realmGet$proxyState().f6382e.b.f6272c.equals(xVar.b.f6272c)) {
                        map.put(baComicsBean, Long.valueOf(nVar.realmGet$proxyState().f6380c.l()));
                    }
                }
                String realmGet$show_id = baComicsBean.realmGet$show_id();
                if (realmGet$show_id == null) {
                    nativeFindFirstString = Table.nativeFindFirstNull(j3, j4);
                } else {
                    nativeFindFirstString = Table.nativeFindFirstString(j3, j4, realmGet$show_id);
                }
                if (nativeFindFirstString == -1) {
                    long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j4, realmGet$show_id);
                    map.put(baComicsBean, Long.valueOf(createRowWithPrimaryKey));
                    String realmGet$author = baComicsBean.realmGet$author();
                    if (realmGet$author != null) {
                        j2 = j4;
                        Table.nativeSetString(j3, aVar.f6872f, createRowWithPrimaryKey, realmGet$author, false);
                    } else {
                        j2 = j4;
                    }
                    String realmGet$describes = baComicsBean.realmGet$describes();
                    if (realmGet$describes != null) {
                        Table.nativeSetString(j3, aVar.f6873g, createRowWithPrimaryKey, realmGet$describes, false);
                    }
                    Table.nativeSetDouble(j3, aVar.f6874h, createRowWithPrimaryKey, baComicsBean.realmGet$follow_num(), false);
                    Table.nativeSetLong(j3, aVar.f6875i, createRowWithPrimaryKey, baComicsBean.realmGet$heat(), false);
                    Table.nativeSetLong(j3, aVar.f6876j, createRowWithPrimaryKey, baComicsBean.realmGet$is_adult(), false);
                    Table.nativeSetLong(j3, aVar.f6877k, createRowWithPrimaryKey, baComicsBean.realmGet$is_end(), false);
                    String realmGet$small_picture = baComicsBean.realmGet$small_picture();
                    if (realmGet$small_picture != null) {
                        Table.nativeSetString(j3, aVar.f6879m, createRowWithPrimaryKey, realmGet$small_picture, false);
                    }
                    String realmGet$title = baComicsBean.realmGet$title();
                    if (realmGet$title != null) {
                        Table.nativeSetString(j3, aVar.n, createRowWithPrimaryKey, realmGet$title, false);
                    }
                    Table.nativeSetLong(j3, aVar.o, createRowWithPrimaryKey, baComicsBean.realmGet$total(), false);
                    Table.nativeSetLong(j3, aVar.p, createRowWithPrimaryKey, baComicsBean.realmGet$update_episodes(), false);
                    Table.nativeSetLong(j3, aVar.q, createRowWithPrimaryKey, baComicsBean.realmGet$update_time(), false);
                    Table.nativeSetLong(j3, aVar.r, createRowWithPrimaryKey, baComicsBean.realmGet$watch_num(), false);
                    j4 = j2;
                } else {
                    Table.s(realmGet$show_id);
                    throw null;
                }
            }
        }
    }

    public static void insertOrUpdate(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long nativeFindFirstString;
        long j2;
        Table e2 = xVar.f6392j.e(BaComicsBean.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6392j;
        k0Var.a();
        a aVar = (a) k0Var.f6361f.a(BaComicsBean.class);
        long j4 = aVar.f6878l;
        while (it.hasNext()) {
            BaComicsBean baComicsBean = (BaComicsBean) it.next();
            if (!map.containsKey(baComicsBean)) {
                if (baComicsBean instanceof n) {
                    n nVar = (n) baComicsBean;
                    if (nVar.realmGet$proxyState().f6382e != null && nVar.realmGet$proxyState().f6382e.b.f6272c.equals(xVar.b.f6272c)) {
                        map.put(baComicsBean, Long.valueOf(nVar.realmGet$proxyState().f6380c.l()));
                    }
                }
                String realmGet$show_id = baComicsBean.realmGet$show_id();
                if (realmGet$show_id == null) {
                    nativeFindFirstString = Table.nativeFindFirstNull(j3, j4);
                } else {
                    nativeFindFirstString = Table.nativeFindFirstString(j3, j4, realmGet$show_id);
                }
                long createRowWithPrimaryKey = nativeFindFirstString == -1 ? OsObject.createRowWithPrimaryKey(e2, j4, realmGet$show_id) : nativeFindFirstString;
                map.put(baComicsBean, Long.valueOf(createRowWithPrimaryKey));
                String realmGet$author = baComicsBean.realmGet$author();
                if (realmGet$author != null) {
                    j2 = j4;
                    Table.nativeSetString(j3, aVar.f6872f, createRowWithPrimaryKey, realmGet$author, false);
                } else {
                    j2 = j4;
                    Table.nativeSetNull(j3, aVar.f6872f, createRowWithPrimaryKey, false);
                }
                String realmGet$describes = baComicsBean.realmGet$describes();
                if (realmGet$describes != null) {
                    Table.nativeSetString(j3, aVar.f6873g, createRowWithPrimaryKey, realmGet$describes, false);
                } else {
                    Table.nativeSetNull(j3, aVar.f6873g, createRowWithPrimaryKey, false);
                }
                long j5 = createRowWithPrimaryKey;
                Table.nativeSetDouble(j3, aVar.f6874h, j5, baComicsBean.realmGet$follow_num(), false);
                Table.nativeSetLong(j3, aVar.f6875i, j5, baComicsBean.realmGet$heat(), false);
                Table.nativeSetLong(j3, aVar.f6876j, j5, baComicsBean.realmGet$is_adult(), false);
                Table.nativeSetLong(j3, aVar.f6877k, j5, baComicsBean.realmGet$is_end(), false);
                String realmGet$small_picture = baComicsBean.realmGet$small_picture();
                if (realmGet$small_picture != null) {
                    Table.nativeSetString(j3, aVar.f6879m, createRowWithPrimaryKey, realmGet$small_picture, false);
                } else {
                    Table.nativeSetNull(j3, aVar.f6879m, createRowWithPrimaryKey, false);
                }
                String realmGet$title = baComicsBean.realmGet$title();
                if (realmGet$title != null) {
                    Table.nativeSetString(j3, aVar.n, createRowWithPrimaryKey, realmGet$title, false);
                } else {
                    Table.nativeSetNull(j3, aVar.n, createRowWithPrimaryKey, false);
                }
                long j6 = createRowWithPrimaryKey;
                Table.nativeSetLong(j3, aVar.o, j6, baComicsBean.realmGet$total(), false);
                Table.nativeSetLong(j3, aVar.p, j6, baComicsBean.realmGet$update_episodes(), false);
                Table.nativeSetLong(j3, aVar.q, j6, baComicsBean.realmGet$update_time(), false);
                Table.nativeSetLong(j3, aVar.r, j6, baComicsBean.realmGet$watch_num(), false);
                j4 = j2;
            }
        }
    }
}
