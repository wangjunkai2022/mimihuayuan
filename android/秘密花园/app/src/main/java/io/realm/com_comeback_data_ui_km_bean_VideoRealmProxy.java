package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.comeback.data.ui.km.bean.Video;
import g.a.a;
import g.a.e0;
import g.a.f1.c;
import g.a.f1.n;
import g.a.f1.p;
import g.a.g0;
import g.a.k0;
import g.a.m;
import g.a.v;
import g.a.x;
import g.a.y0;
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
public class com_comeback_data_ui_km_bean_VideoRealmProxy extends Video implements n, y0 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public a columnInfo;
    public v<Video> proxyState;

    /* loaded from: classes.dex */
    public static final class a extends c {

        /* renamed from: e  reason: collision with root package name */
        public long f6860e;

        /* renamed from: f  reason: collision with root package name */
        public long f6861f;

        /* renamed from: g  reason: collision with root package name */
        public long f6862g;

        /* renamed from: h  reason: collision with root package name */
        public long f6863h;

        /* renamed from: i  reason: collision with root package name */
        public long f6864i;

        /* renamed from: j  reason: collision with root package name */
        public long f6865j;

        /* renamed from: k  reason: collision with root package name */
        public long f6866k;

        /* renamed from: l  reason: collision with root package name */
        public long f6867l;

        /* renamed from: m  reason: collision with root package name */
        public long f6868m;
        public long n;
        public long o;
        public long p;
        public long q;
        public long r;

        public a(OsSchemaInfo osSchemaInfo) {
            super(13, true);
            OsObjectSchemaInfo a = osSchemaInfo.a("Video");
            this.f6861f = a("mu_avatar", "mu_avatar", a);
            this.f6862g = a("mu_id", "mu_id", a);
            this.f6863h = a("mu_name", "mu_name", a);
            this.f6864i = a("mv_comment", "mv_comment", a);
            this.f6865j = a("mv_created", "mv_created", a);
            this.f6866k = a("mv_id", "mv_id", a);
            this.f6867l = a("mv_img_url", "mv_img_url", a);
            this.f6868m = a("mv_like", "mv_like", a);
            this.n = a("mv_play_height", "mv_play_height", a);
            this.o = a("mv_play_url", "mv_play_url", a);
            this.p = a("mv_play_width", "mv_play_width", a);
            this.q = a("mv_title", "mv_title", a);
            this.r = a("is_cat_ads", "is_cat_ads", a);
            this.f6860e = a.a();
        }

        @Override // g.a.f1.c
        public final void b(c cVar, c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f6861f = aVar.f6861f;
            aVar2.f6862g = aVar.f6862g;
            aVar2.f6863h = aVar.f6863h;
            aVar2.f6864i = aVar.f6864i;
            aVar2.f6865j = aVar.f6865j;
            aVar2.f6866k = aVar.f6866k;
            aVar2.f6867l = aVar.f6867l;
            aVar2.f6868m = aVar.f6868m;
            aVar2.n = aVar.n;
            aVar2.o = aVar.o;
            aVar2.p = aVar.p;
            aVar2.q = aVar.q;
            aVar2.r = aVar.r;
            aVar2.f6860e = aVar.f6860e;
        }
    }

    public com_comeback_data_ui_km_bean_VideoRealmProxy() {
        this.proxyState.b = false;
    }

    public static Video copy(x xVar, a aVar, Video video, boolean z, Map<e0, n> map, Set<m> set) {
        n nVar = map.get(video);
        if (nVar != null) {
            return (Video) nVar;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(xVar.f6317j.e(Video.class), aVar.f6860e, set);
        osObjectBuilder.g(aVar.f6861f, video.realmGet$mu_avatar());
        osObjectBuilder.g(aVar.f6862g, video.realmGet$mu_id());
        osObjectBuilder.g(aVar.f6863h, video.realmGet$mu_name());
        osObjectBuilder.g(aVar.f6864i, video.realmGet$mv_comment());
        osObjectBuilder.g(aVar.f6865j, video.realmGet$mv_created());
        osObjectBuilder.g(aVar.f6866k, video.realmGet$mv_id());
        osObjectBuilder.g(aVar.f6867l, video.realmGet$mv_img_url());
        osObjectBuilder.g(aVar.f6868m, video.realmGet$mv_like());
        osObjectBuilder.e(aVar.n, Integer.valueOf(video.realmGet$mv_play_height()));
        osObjectBuilder.g(aVar.o, video.realmGet$mv_play_url());
        osObjectBuilder.e(aVar.p, Integer.valueOf(video.realmGet$mv_play_width()));
        osObjectBuilder.g(aVar.q, video.realmGet$mv_title());
        osObjectBuilder.e(aVar.r, Integer.valueOf(video.realmGet$is_cat_ads()));
        com_comeback_data_ui_km_bean_VideoRealmProxy newProxyInstance = newProxyInstance(xVar, osObjectBuilder.E());
        map.put(video, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x0092  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x009c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.comeback.data.ui.km.bean.Video copyOrUpdate(g.a.x r9, io.realm.com_comeback_data_ui_km_bean_VideoRealmProxy.a r10, com.comeback.data.ui.km.bean.Video r11, boolean r12, java.util.Map<g.a.e0, g.a.f1.n> r13, java.util.Set<g.a.m> r14) {
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
            com.comeback.data.ui.km.bean.Video r1 = (com.comeback.data.ui.km.bean.Video) r1
            return r1
        L_0x0047:
            r1 = 0
            r2 = 0
            if (r12 == 0) goto L_0x008e
            java.lang.Class<com.comeback.data.ui.km.bean.Video> r3 = com.comeback.data.ui.km.bean.Video.class
            g.a.k0 r4 = r9.f6317j
            io.realm.internal.Table r3 = r4.e(r3)
            long r4 = r10.f6866k
            java.lang.String r6 = r11.realmGet$mv_id()
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
            io.realm.com_comeback_data_ui_km_bean_VideoRealmProxy r1 = new io.realm.com_comeback_data_ui_km_bean_VideoRealmProxy     // Catch: all -> 0x0089
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
            com.comeback.data.ui.km.bean.Video r9 = update(r1, r2, r3, r4, r5, r6)
            goto L_0x00a0
        L_0x009c:
            com.comeback.data.ui.km.bean.Video r9 = copy(r9, r10, r11, r12, r13, r14)
        L_0x00a0:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_km_bean_VideoRealmProxy.copyOrUpdate(g.a.x, io.realm.com_comeback_data_ui_km_bean_VideoRealmProxy$a, com.comeback.data.ui.km.bean.Video, boolean, java.util.Map, java.util.Set):com.comeback.data.ui.km.bean.Video");
    }

    public static a createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new a(osSchemaInfo);
    }

    public static Video createDetachedCopy(Video video, int i2, int i3, Map<e0, n.a<e0>> map) {
        Video video2;
        if (i2 > i3 || video == null) {
            return null;
        }
        n.a<e0> aVar = map.get(video);
        if (aVar == null) {
            video2 = new Video();
            map.put(video, new n.a<>(i2, video2));
        } else if (i2 >= aVar.a) {
            return (Video) aVar.b;
        } else {
            aVar.a = i2;
            video2 = (Video) aVar.b;
        }
        video2.realmSet$mu_avatar(video.realmGet$mu_avatar());
        video2.realmSet$mu_id(video.realmGet$mu_id());
        video2.realmSet$mu_name(video.realmGet$mu_name());
        video2.realmSet$mv_comment(video.realmGet$mv_comment());
        video2.realmSet$mv_created(video.realmGet$mv_created());
        video2.realmSet$mv_id(video.realmGet$mv_id());
        video2.realmSet$mv_img_url(video.realmGet$mv_img_url());
        video2.realmSet$mv_like(video.realmGet$mv_like());
        video2.realmSet$mv_play_height(video.realmGet$mv_play_height());
        video2.realmSet$mv_play_url(video.realmGet$mv_play_url());
        video2.realmSet$mv_play_width(video.realmGet$mv_play_width());
        video2.realmSet$mv_title(video.realmGet$mv_title());
        video2.realmSet$is_cat_ads(video.realmGet$is_cat_ads());
        return video2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.b bVar = new OsObjectSchemaInfo.b("Video", 13, 0);
        bVar.a("mu_avatar", RealmFieldType.STRING, false, false, false);
        bVar.a("mu_id", RealmFieldType.STRING, false, false, false);
        bVar.a("mu_name", RealmFieldType.STRING, false, false, false);
        bVar.a("mv_comment", RealmFieldType.STRING, false, false, false);
        bVar.a("mv_created", RealmFieldType.STRING, false, false, false);
        bVar.a("mv_id", RealmFieldType.STRING, true, true, false);
        bVar.a("mv_img_url", RealmFieldType.STRING, false, false, false);
        bVar.a("mv_like", RealmFieldType.STRING, false, false, false);
        bVar.a("mv_play_height", RealmFieldType.INTEGER, false, false, true);
        bVar.a("mv_play_url", RealmFieldType.STRING, false, false, false);
        bVar.a("mv_play_width", RealmFieldType.INTEGER, false, false, true);
        bVar.a("mv_title", RealmFieldType.STRING, false, false, false);
        bVar.a("is_cat_ads", RealmFieldType.INTEGER, false, false, true);
        return bVar.b();
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0074  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00a9  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00c2  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00db  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00f4  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x010d  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x0126  */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x013f  */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x0158  */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x0176  */
    /* JADX WARNING: Removed duplicated region for block: B:83:0x018f  */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x01ad  */
    /* JADX WARNING: Removed duplicated region for block: B:96:0x01c6  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.comeback.data.ui.km.bean.Video createOrUpdateUsingJsonObject(g.a.x r8, org.json.JSONObject r9, boolean r10) throws org.json.JSONException {
        /*
        // Method dump skipped, instructions count: 477
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_km_bean_VideoRealmProxy.createOrUpdateUsingJsonObject(g.a.x, org.json.JSONObject, boolean):com.comeback.data.ui.km.bean.Video");
    }

    @TargetApi(11)
    public static Video createUsingJsonStream(x xVar, JsonReader jsonReader) throws IOException {
        Video video = new Video();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("mu_avatar")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    video.realmSet$mu_avatar(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    video.realmSet$mu_avatar(null);
                }
            } else if (nextName.equals("mu_id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    video.realmSet$mu_id(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    video.realmSet$mu_id(null);
                }
            } else if (nextName.equals("mu_name")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    video.realmSet$mu_name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    video.realmSet$mu_name(null);
                }
            } else if (nextName.equals("mv_comment")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    video.realmSet$mv_comment(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    video.realmSet$mv_comment(null);
                }
            } else if (nextName.equals("mv_created")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    video.realmSet$mv_created(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    video.realmSet$mv_created(null);
                }
            } else if (nextName.equals("mv_id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    video.realmSet$mv_id(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    video.realmSet$mv_id(null);
                }
                z = true;
            } else if (nextName.equals("mv_img_url")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    video.realmSet$mv_img_url(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    video.realmSet$mv_img_url(null);
                }
            } else if (nextName.equals("mv_like")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    video.realmSet$mv_like(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    video.realmSet$mv_like(null);
                }
            } else if (nextName.equals("mv_play_height")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    video.realmSet$mv_play_height(jsonReader.nextInt());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'mv_play_height' to null.");
                }
            } else if (nextName.equals("mv_play_url")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    video.realmSet$mv_play_url(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    video.realmSet$mv_play_url(null);
                }
            } else if (nextName.equals("mv_play_width")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    video.realmSet$mv_play_width(jsonReader.nextInt());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'mv_play_width' to null.");
                }
            } else if (nextName.equals("mv_title")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    video.realmSet$mv_title(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    video.realmSet$mv_title(null);
                }
            } else if (!nextName.equals("is_cat_ads")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                video.realmSet$is_cat_ads(jsonReader.nextInt());
            } else {
                throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'is_cat_ads' to null.");
            }
        }
        jsonReader.endObject();
        if (z) {
            return (Video) xVar.L(video, new m[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'mv_id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "Video";
    }

    public static long insert(x xVar, Video video, Map<e0, Long> map) {
        long j2;
        if (video instanceof n) {
            n nVar = (n) video;
            if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                return nVar.realmGet$proxyState().f6305c.l();
            }
        }
        Table e2 = xVar.f6317j.e(Video.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(Video.class);
        long j4 = aVar.f6866k;
        String realmGet$mv_id = video.realmGet$mv_id();
        if (realmGet$mv_id == null) {
            j2 = Table.nativeFindFirstNull(j3, j4);
        } else {
            j2 = Table.nativeFindFirstString(j3, j4, realmGet$mv_id);
        }
        if (j2 == -1) {
            long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j4, realmGet$mv_id);
            map.put(video, Long.valueOf(createRowWithPrimaryKey));
            String realmGet$mu_avatar = video.realmGet$mu_avatar();
            if (realmGet$mu_avatar != null) {
                Table.nativeSetString(j3, aVar.f6861f, createRowWithPrimaryKey, realmGet$mu_avatar, false);
            }
            String realmGet$mu_id = video.realmGet$mu_id();
            if (realmGet$mu_id != null) {
                Table.nativeSetString(j3, aVar.f6862g, createRowWithPrimaryKey, realmGet$mu_id, false);
            }
            String realmGet$mu_name = video.realmGet$mu_name();
            if (realmGet$mu_name != null) {
                Table.nativeSetString(j3, aVar.f6863h, createRowWithPrimaryKey, realmGet$mu_name, false);
            }
            String realmGet$mv_comment = video.realmGet$mv_comment();
            if (realmGet$mv_comment != null) {
                Table.nativeSetString(j3, aVar.f6864i, createRowWithPrimaryKey, realmGet$mv_comment, false);
            }
            String realmGet$mv_created = video.realmGet$mv_created();
            if (realmGet$mv_created != null) {
                Table.nativeSetString(j3, aVar.f6865j, createRowWithPrimaryKey, realmGet$mv_created, false);
            }
            String realmGet$mv_img_url = video.realmGet$mv_img_url();
            if (realmGet$mv_img_url != null) {
                Table.nativeSetString(j3, aVar.f6867l, createRowWithPrimaryKey, realmGet$mv_img_url, false);
            }
            String realmGet$mv_like = video.realmGet$mv_like();
            if (realmGet$mv_like != null) {
                Table.nativeSetString(j3, aVar.f6868m, createRowWithPrimaryKey, realmGet$mv_like, false);
            }
            Table.nativeSetLong(j3, aVar.n, createRowWithPrimaryKey, (long) video.realmGet$mv_play_height(), false);
            String realmGet$mv_play_url = video.realmGet$mv_play_url();
            if (realmGet$mv_play_url != null) {
                Table.nativeSetString(j3, aVar.o, createRowWithPrimaryKey, realmGet$mv_play_url, false);
            }
            Table.nativeSetLong(j3, aVar.p, createRowWithPrimaryKey, (long) video.realmGet$mv_play_width(), false);
            String realmGet$mv_title = video.realmGet$mv_title();
            if (realmGet$mv_title != null) {
                Table.nativeSetString(j3, aVar.q, createRowWithPrimaryKey, realmGet$mv_title, false);
            }
            Table.nativeSetLong(j3, aVar.r, createRowWithPrimaryKey, (long) video.realmGet$is_cat_ads(), false);
            return createRowWithPrimaryKey;
        }
        Table.s(realmGet$mv_id);
        throw null;
    }

    public static long insertOrUpdate(x xVar, Video video, Map<e0, Long> map) {
        long j2;
        if (video instanceof n) {
            n nVar = (n) video;
            if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                return nVar.realmGet$proxyState().f6305c.l();
            }
        }
        Table e2 = xVar.f6317j.e(Video.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(Video.class);
        long j4 = aVar.f6866k;
        String realmGet$mv_id = video.realmGet$mv_id();
        if (realmGet$mv_id == null) {
            j2 = Table.nativeFindFirstNull(j3, j4);
        } else {
            j2 = Table.nativeFindFirstString(j3, j4, realmGet$mv_id);
        }
        if (j2 == -1) {
            j2 = OsObject.createRowWithPrimaryKey(e2, j4, realmGet$mv_id);
        }
        map.put(video, Long.valueOf(j2));
        String realmGet$mu_avatar = video.realmGet$mu_avatar();
        if (realmGet$mu_avatar != null) {
            Table.nativeSetString(j3, aVar.f6861f, j2, realmGet$mu_avatar, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6861f, j2, false);
        }
        String realmGet$mu_id = video.realmGet$mu_id();
        if (realmGet$mu_id != null) {
            Table.nativeSetString(j3, aVar.f6862g, j2, realmGet$mu_id, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6862g, j2, false);
        }
        String realmGet$mu_name = video.realmGet$mu_name();
        if (realmGet$mu_name != null) {
            Table.nativeSetString(j3, aVar.f6863h, j2, realmGet$mu_name, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6863h, j2, false);
        }
        String realmGet$mv_comment = video.realmGet$mv_comment();
        if (realmGet$mv_comment != null) {
            Table.nativeSetString(j3, aVar.f6864i, j2, realmGet$mv_comment, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6864i, j2, false);
        }
        String realmGet$mv_created = video.realmGet$mv_created();
        if (realmGet$mv_created != null) {
            Table.nativeSetString(j3, aVar.f6865j, j2, realmGet$mv_created, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6865j, j2, false);
        }
        String realmGet$mv_img_url = video.realmGet$mv_img_url();
        if (realmGet$mv_img_url != null) {
            Table.nativeSetString(j3, aVar.f6867l, j2, realmGet$mv_img_url, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6867l, j2, false);
        }
        String realmGet$mv_like = video.realmGet$mv_like();
        if (realmGet$mv_like != null) {
            Table.nativeSetString(j3, aVar.f6868m, j2, realmGet$mv_like, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6868m, j2, false);
        }
        Table.nativeSetLong(j3, aVar.n, j2, (long) video.realmGet$mv_play_height(), false);
        String realmGet$mv_play_url = video.realmGet$mv_play_url();
        if (realmGet$mv_play_url != null) {
            Table.nativeSetString(j3, aVar.o, j2, realmGet$mv_play_url, false);
        } else {
            Table.nativeSetNull(j3, aVar.o, j2, false);
        }
        Table.nativeSetLong(j3, aVar.p, j2, (long) video.realmGet$mv_play_width(), false);
        String realmGet$mv_title = video.realmGet$mv_title();
        if (realmGet$mv_title != null) {
            Table.nativeSetString(j3, aVar.q, j2, realmGet$mv_title, false);
        } else {
            Table.nativeSetNull(j3, aVar.q, j2, false);
        }
        Table.nativeSetLong(j3, aVar.r, j2, (long) video.realmGet$is_cat_ads(), false);
        return j2;
    }

    public static com_comeback_data_ui_km_bean_VideoRealmProxy newProxyInstance(g.a.a aVar, p pVar) {
        a.c cVar = g.a.a.f6189i.get();
        k0 G = aVar.G();
        G.a();
        c a2 = G.f6286f.a(Video.class);
        List<String> emptyList = Collections.emptyList();
        cVar.a = aVar;
        cVar.b = pVar;
        cVar.f6194c = a2;
        cVar.f6195d = false;
        cVar.f6196e = emptyList;
        com_comeback_data_ui_km_bean_VideoRealmProxy com_comeback_data_ui_km_bean_videorealmproxy = new com_comeback_data_ui_km_bean_VideoRealmProxy();
        cVar.a();
        return com_comeback_data_ui_km_bean_videorealmproxy;
    }

    public static Video update(x xVar, a aVar, Video video, Video video2, Map<e0, n> map, Set<m> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(xVar.f6317j.e(Video.class), aVar.f6860e, set);
        osObjectBuilder.g(aVar.f6861f, video2.realmGet$mu_avatar());
        osObjectBuilder.g(aVar.f6862g, video2.realmGet$mu_id());
        osObjectBuilder.g(aVar.f6863h, video2.realmGet$mu_name());
        osObjectBuilder.g(aVar.f6864i, video2.realmGet$mv_comment());
        osObjectBuilder.g(aVar.f6865j, video2.realmGet$mv_created());
        osObjectBuilder.g(aVar.f6866k, video2.realmGet$mv_id());
        osObjectBuilder.g(aVar.f6867l, video2.realmGet$mv_img_url());
        osObjectBuilder.g(aVar.f6868m, video2.realmGet$mv_like());
        osObjectBuilder.e(aVar.n, Integer.valueOf(video2.realmGet$mv_play_height()));
        osObjectBuilder.g(aVar.o, video2.realmGet$mv_play_url());
        osObjectBuilder.e(aVar.p, Integer.valueOf(video2.realmGet$mv_play_width()));
        osObjectBuilder.g(aVar.q, video2.realmGet$mv_title());
        osObjectBuilder.e(aVar.r, Integer.valueOf(video2.realmGet$is_cat_ads()));
        osObjectBuilder.F();
        return video;
    }

    @Override // java.lang.Object
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_comeback_data_ui_km_bean_VideoRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_comeback_data_ui_km_bean_VideoRealmProxy com_comeback_data_ui_km_bean_videorealmproxy = (com_comeback_data_ui_km_bean_VideoRealmProxy) obj;
        String str = this.proxyState.f6307e.b.f6197c;
        String str2 = com_comeback_data_ui_km_bean_videorealmproxy.proxyState.f6307e.b.f6197c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        String j2 = this.proxyState.f6305c.d().j();
        String j3 = com_comeback_data_ui_km_bean_videorealmproxy.proxyState.f6305c.d().j();
        if (j2 == null ? j3 == null : j2.equals(j3)) {
            return this.proxyState.f6305c.l() == com_comeback_data_ui_km_bean_videorealmproxy.proxyState.f6305c.l();
        }
        return false;
    }

    @Override // java.lang.Object
    public int hashCode() {
        v<Video> vVar = this.proxyState;
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
            v<Video> vVar = new v<>(this);
            this.proxyState = vVar;
            vVar.f6307e = cVar.a;
            vVar.f6305c = cVar.b;
            vVar.f6308f = cVar.f6195d;
            if (vVar == null) {
                throw null;
            }
        }
    }

    @Override // com.comeback.data.ui.km.bean.Video, g.a.y0
    public int realmGet$is_cat_ads() {
        this.proxyState.f6307e.f();
        return (int) this.proxyState.f6305c.p(this.columnInfo.r);
    }

    @Override // com.comeback.data.ui.km.bean.Video, g.a.y0
    public String realmGet$mu_avatar() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6861f);
    }

    @Override // com.comeback.data.ui.km.bean.Video, g.a.y0
    public String realmGet$mu_id() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6862g);
    }

    @Override // com.comeback.data.ui.km.bean.Video, g.a.y0
    public String realmGet$mu_name() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6863h);
    }

    @Override // com.comeback.data.ui.km.bean.Video, g.a.y0
    public String realmGet$mv_comment() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6864i);
    }

    @Override // com.comeback.data.ui.km.bean.Video, g.a.y0
    public String realmGet$mv_created() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6865j);
    }

    @Override // com.comeback.data.ui.km.bean.Video, g.a.y0
    public String realmGet$mv_id() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6866k);
    }

    @Override // com.comeback.data.ui.km.bean.Video, g.a.y0
    public String realmGet$mv_img_url() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6867l);
    }

    @Override // com.comeback.data.ui.km.bean.Video, g.a.y0
    public String realmGet$mv_like() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6868m);
    }

    @Override // com.comeback.data.ui.km.bean.Video, g.a.y0
    public int realmGet$mv_play_height() {
        this.proxyState.f6307e.f();
        return (int) this.proxyState.f6305c.p(this.columnInfo.n);
    }

    @Override // com.comeback.data.ui.km.bean.Video, g.a.y0
    public String realmGet$mv_play_url() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.o);
    }

    @Override // com.comeback.data.ui.km.bean.Video, g.a.y0
    public int realmGet$mv_play_width() {
        this.proxyState.f6307e.f();
        return (int) this.proxyState.f6305c.p(this.columnInfo.p);
    }

    @Override // com.comeback.data.ui.km.bean.Video, g.a.y0
    public String realmGet$mv_title() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.q);
    }

    @Override // g.a.f1.n
    public v<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.comeback.data.ui.km.bean.Video, g.a.y0
    public void realmSet$is_cat_ads(int i2) {
        v<Video> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            this.proxyState.f6305c.u(this.columnInfo.r, (long) i2);
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            pVar.d().p(this.columnInfo.r, pVar.l(), (long) i2, true);
        }
    }

    @Override // com.comeback.data.ui.km.bean.Video, g.a.y0
    public void realmSet$mu_avatar(String str) {
        v<Video> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6861f);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6861f, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6861f, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6861f, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.km.bean.Video, g.a.y0
    public void realmSet$mu_id(String str) {
        v<Video> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6862g);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6862g, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6862g, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6862g, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.km.bean.Video, g.a.y0
    public void realmSet$mu_name(String str) {
        v<Video> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6863h);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6863h, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6863h, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6863h, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.km.bean.Video, g.a.y0
    public void realmSet$mv_comment(String str) {
        v<Video> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6864i);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6864i, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6864i, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6864i, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.km.bean.Video, g.a.y0
    public void realmSet$mv_created(String str) {
        v<Video> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6865j);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6865j, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6865j, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6865j, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.km.bean.Video, g.a.y0
    public void realmSet$mv_id(String str) {
        v<Video> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            throw new RealmException("Primary key field 'mv_id' cannot be changed after object was created.");
        }
    }

    @Override // com.comeback.data.ui.km.bean.Video, g.a.y0
    public void realmSet$mv_img_url(String str) {
        v<Video> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6867l);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6867l, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6867l, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6867l, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.km.bean.Video, g.a.y0
    public void realmSet$mv_like(String str) {
        v<Video> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6868m);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6868m, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6868m, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6868m, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.km.bean.Video, g.a.y0
    public void realmSet$mv_play_height(int i2) {
        v<Video> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            this.proxyState.f6305c.u(this.columnInfo.n, (long) i2);
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            pVar.d().p(this.columnInfo.n, pVar.l(), (long) i2, true);
        }
    }

    @Override // com.comeback.data.ui.km.bean.Video, g.a.y0
    public void realmSet$mv_play_url(String str) {
        v<Video> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.o);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.o, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.o, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.o, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.km.bean.Video, g.a.y0
    public void realmSet$mv_play_width(int i2) {
        v<Video> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            this.proxyState.f6305c.u(this.columnInfo.p, (long) i2);
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            pVar.d().p(this.columnInfo.p, pVar.l(), (long) i2, true);
        }
    }

    @Override // com.comeback.data.ui.km.bean.Video, g.a.y0
    public void realmSet$mv_title(String str) {
        v<Video> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.q);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.q, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.q, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.q, pVar.l(), str, true);
            }
        }
    }

    @Override // java.lang.Object
    public String toString() {
        if (!g0.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder q = f.b.a.a.a.q("Video = proxy[", "{mu_avatar:");
        String str = "null";
        f.b.a.a.a.C(q, realmGet$mu_avatar() != null ? realmGet$mu_avatar() : str, "}", ",", "{mu_id:");
        f.b.a.a.a.C(q, realmGet$mu_id() != null ? realmGet$mu_id() : str, "}", ",", "{mu_name:");
        f.b.a.a.a.C(q, realmGet$mu_name() != null ? realmGet$mu_name() : str, "}", ",", "{mv_comment:");
        f.b.a.a.a.C(q, realmGet$mv_comment() != null ? realmGet$mv_comment() : str, "}", ",", "{mv_created:");
        f.b.a.a.a.C(q, realmGet$mv_created() != null ? realmGet$mv_created() : str, "}", ",", "{mv_id:");
        f.b.a.a.a.C(q, realmGet$mv_id() != null ? realmGet$mv_id() : str, "}", ",", "{mv_img_url:");
        f.b.a.a.a.C(q, realmGet$mv_img_url() != null ? realmGet$mv_img_url() : str, "}", ",", "{mv_like:");
        f.b.a.a.a.C(q, realmGet$mv_like() != null ? realmGet$mv_like() : str, "}", ",", "{mv_play_height:");
        q.append(realmGet$mv_play_height());
        q.append("}");
        q.append(",");
        q.append("{mv_play_url:");
        f.b.a.a.a.C(q, realmGet$mv_play_url() != null ? realmGet$mv_play_url() : str, "}", ",", "{mv_play_width:");
        q.append(realmGet$mv_play_width());
        q.append("}");
        q.append(",");
        q.append("{mv_title:");
        if (realmGet$mv_title() != null) {
            str = realmGet$mv_title();
        }
        f.b.a.a.a.C(q, str, "}", ",", "{is_cat_ads:");
        q.append(realmGet$is_cat_ads());
        q.append("}");
        q.append("]");
        return q.toString();
    }

    public static void insert(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long j2;
        long j3;
        Table e2 = xVar.f6317j.e(Video.class);
        long j4 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(Video.class);
        long j5 = aVar.f6866k;
        while (it.hasNext()) {
            Video video = (Video) it.next();
            if (!map.containsKey(video)) {
                if (video instanceof n) {
                    n nVar = (n) video;
                    if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                        map.put(video, Long.valueOf(nVar.realmGet$proxyState().f6305c.l()));
                    }
                }
                String realmGet$mv_id = video.realmGet$mv_id();
                if (realmGet$mv_id == null) {
                    j2 = Table.nativeFindFirstNull(j4, j5);
                } else {
                    j2 = Table.nativeFindFirstString(j4, j5, realmGet$mv_id);
                }
                if (j2 == -1) {
                    long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j5, realmGet$mv_id);
                    map.put(video, Long.valueOf(createRowWithPrimaryKey));
                    String realmGet$mu_avatar = video.realmGet$mu_avatar();
                    if (realmGet$mu_avatar != null) {
                        j3 = j5;
                        Table.nativeSetString(j4, aVar.f6861f, createRowWithPrimaryKey, realmGet$mu_avatar, false);
                    } else {
                        j3 = j5;
                    }
                    String realmGet$mu_id = video.realmGet$mu_id();
                    if (realmGet$mu_id != null) {
                        Table.nativeSetString(j4, aVar.f6862g, createRowWithPrimaryKey, realmGet$mu_id, false);
                    }
                    String realmGet$mu_name = video.realmGet$mu_name();
                    if (realmGet$mu_name != null) {
                        Table.nativeSetString(j4, aVar.f6863h, createRowWithPrimaryKey, realmGet$mu_name, false);
                    }
                    String realmGet$mv_comment = video.realmGet$mv_comment();
                    if (realmGet$mv_comment != null) {
                        Table.nativeSetString(j4, aVar.f6864i, createRowWithPrimaryKey, realmGet$mv_comment, false);
                    }
                    String realmGet$mv_created = video.realmGet$mv_created();
                    if (realmGet$mv_created != null) {
                        Table.nativeSetString(j4, aVar.f6865j, createRowWithPrimaryKey, realmGet$mv_created, false);
                    }
                    String realmGet$mv_img_url = video.realmGet$mv_img_url();
                    if (realmGet$mv_img_url != null) {
                        Table.nativeSetString(j4, aVar.f6867l, createRowWithPrimaryKey, realmGet$mv_img_url, false);
                    }
                    String realmGet$mv_like = video.realmGet$mv_like();
                    if (realmGet$mv_like != null) {
                        Table.nativeSetString(j4, aVar.f6868m, createRowWithPrimaryKey, realmGet$mv_like, false);
                    }
                    Table.nativeSetLong(j4, aVar.n, createRowWithPrimaryKey, (long) video.realmGet$mv_play_height(), false);
                    String realmGet$mv_play_url = video.realmGet$mv_play_url();
                    if (realmGet$mv_play_url != null) {
                        Table.nativeSetString(j4, aVar.o, createRowWithPrimaryKey, realmGet$mv_play_url, false);
                    }
                    Table.nativeSetLong(j4, aVar.p, createRowWithPrimaryKey, (long) video.realmGet$mv_play_width(), false);
                    String realmGet$mv_title = video.realmGet$mv_title();
                    if (realmGet$mv_title != null) {
                        Table.nativeSetString(j4, aVar.q, createRowWithPrimaryKey, realmGet$mv_title, false);
                    }
                    Table.nativeSetLong(j4, aVar.r, createRowWithPrimaryKey, (long) video.realmGet$is_cat_ads(), false);
                    j5 = j3;
                } else {
                    Table.s(realmGet$mv_id);
                    throw null;
                }
            }
        }
    }

    public static void insertOrUpdate(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long j2;
        long j3;
        Table e2 = xVar.f6317j.e(Video.class);
        long j4 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(Video.class);
        long j5 = aVar.f6866k;
        while (it.hasNext()) {
            Video video = (Video) it.next();
            if (!map.containsKey(video)) {
                if (video instanceof n) {
                    n nVar = (n) video;
                    if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                        map.put(video, Long.valueOf(nVar.realmGet$proxyState().f6305c.l()));
                    }
                }
                String realmGet$mv_id = video.realmGet$mv_id();
                if (realmGet$mv_id == null) {
                    j2 = Table.nativeFindFirstNull(j4, j5);
                } else {
                    j2 = Table.nativeFindFirstString(j4, j5, realmGet$mv_id);
                }
                long createRowWithPrimaryKey = j2 == -1 ? OsObject.createRowWithPrimaryKey(e2, j5, realmGet$mv_id) : j2;
                map.put(video, Long.valueOf(createRowWithPrimaryKey));
                String realmGet$mu_avatar = video.realmGet$mu_avatar();
                if (realmGet$mu_avatar != null) {
                    j3 = j5;
                    Table.nativeSetString(j4, aVar.f6861f, createRowWithPrimaryKey, realmGet$mu_avatar, false);
                } else {
                    j3 = j5;
                    Table.nativeSetNull(j4, aVar.f6861f, createRowWithPrimaryKey, false);
                }
                String realmGet$mu_id = video.realmGet$mu_id();
                if (realmGet$mu_id != null) {
                    Table.nativeSetString(j4, aVar.f6862g, createRowWithPrimaryKey, realmGet$mu_id, false);
                } else {
                    Table.nativeSetNull(j4, aVar.f6862g, createRowWithPrimaryKey, false);
                }
                String realmGet$mu_name = video.realmGet$mu_name();
                if (realmGet$mu_name != null) {
                    Table.nativeSetString(j4, aVar.f6863h, createRowWithPrimaryKey, realmGet$mu_name, false);
                } else {
                    Table.nativeSetNull(j4, aVar.f6863h, createRowWithPrimaryKey, false);
                }
                String realmGet$mv_comment = video.realmGet$mv_comment();
                if (realmGet$mv_comment != null) {
                    Table.nativeSetString(j4, aVar.f6864i, createRowWithPrimaryKey, realmGet$mv_comment, false);
                } else {
                    Table.nativeSetNull(j4, aVar.f6864i, createRowWithPrimaryKey, false);
                }
                String realmGet$mv_created = video.realmGet$mv_created();
                if (realmGet$mv_created != null) {
                    Table.nativeSetString(j4, aVar.f6865j, createRowWithPrimaryKey, realmGet$mv_created, false);
                } else {
                    Table.nativeSetNull(j4, aVar.f6865j, createRowWithPrimaryKey, false);
                }
                String realmGet$mv_img_url = video.realmGet$mv_img_url();
                if (realmGet$mv_img_url != null) {
                    Table.nativeSetString(j4, aVar.f6867l, createRowWithPrimaryKey, realmGet$mv_img_url, false);
                } else {
                    Table.nativeSetNull(j4, aVar.f6867l, createRowWithPrimaryKey, false);
                }
                String realmGet$mv_like = video.realmGet$mv_like();
                if (realmGet$mv_like != null) {
                    Table.nativeSetString(j4, aVar.f6868m, createRowWithPrimaryKey, realmGet$mv_like, false);
                } else {
                    Table.nativeSetNull(j4, aVar.f6868m, createRowWithPrimaryKey, false);
                }
                Table.nativeSetLong(j4, aVar.n, createRowWithPrimaryKey, (long) video.realmGet$mv_play_height(), false);
                String realmGet$mv_play_url = video.realmGet$mv_play_url();
                if (realmGet$mv_play_url != null) {
                    Table.nativeSetString(j4, aVar.o, createRowWithPrimaryKey, realmGet$mv_play_url, false);
                } else {
                    Table.nativeSetNull(j4, aVar.o, createRowWithPrimaryKey, false);
                }
                Table.nativeSetLong(j4, aVar.p, createRowWithPrimaryKey, (long) video.realmGet$mv_play_width(), false);
                String realmGet$mv_title = video.realmGet$mv_title();
                if (realmGet$mv_title != null) {
                    Table.nativeSetString(j4, aVar.q, createRowWithPrimaryKey, realmGet$mv_title, false);
                } else {
                    Table.nativeSetNull(j4, aVar.q, createRowWithPrimaryKey, false);
                }
                Table.nativeSetLong(j4, aVar.r, createRowWithPrimaryKey, (long) video.realmGet$is_cat_ads(), false);
                j5 = j3;
            }
        }
    }
}
