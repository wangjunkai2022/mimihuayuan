package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.comeback.data.ui.main.bean.VideoCacheBean;
import com.tencent.smtt.sdk.TbsReaderView;
import com.tencent.smtt.sdk.TbsVideoCacheTask;
import g.a.a;
import g.a.c1;
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
public class com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy extends VideoCacheBean implements n, c1 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public a columnInfo;
    public v<VideoCacheBean> proxyState;

    /* loaded from: classes.dex */
    public static final class a extends c {

        /* renamed from: e  reason: collision with root package name */
        public long f6971e;

        /* renamed from: f  reason: collision with root package name */
        public long f6972f;

        /* renamed from: g  reason: collision with root package name */
        public long f6973g;

        /* renamed from: h  reason: collision with root package name */
        public long f6974h;

        /* renamed from: i  reason: collision with root package name */
        public long f6975i;

        /* renamed from: j  reason: collision with root package name */
        public long f6976j;

        /* renamed from: k  reason: collision with root package name */
        public long f6977k;

        public a(OsSchemaInfo osSchemaInfo) {
            super(6, true);
            OsObjectSchemaInfo a = osSchemaInfo.a("VideoCacheBean");
            this.f6972f = a("name", "name", a);
            this.f6973g = a(TbsVideoCacheTask.KEY_VIDEO_CACHE_PARAM_URL, TbsVideoCacheTask.KEY_VIDEO_CACHE_PARAM_URL, a);
            this.f6974h = a("downloadFinish", "downloadFinish", a);
            this.f6975i = a("cachePath", "cachePath", a);
            this.f6976j = a(TbsReaderView.KEY_TEMP_PATH, TbsReaderView.KEY_TEMP_PATH, a);
            this.f6977k = a("md5", "md5", a);
            this.f6971e = a.a();
        }

        @Override // g.a.f1.c
        public final void b(c cVar, c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f6972f = aVar.f6972f;
            aVar2.f6973g = aVar.f6973g;
            aVar2.f6974h = aVar.f6974h;
            aVar2.f6975i = aVar.f6975i;
            aVar2.f6976j = aVar.f6976j;
            aVar2.f6977k = aVar.f6977k;
            aVar2.f6971e = aVar.f6971e;
        }
    }

    public com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy() {
        this.proxyState.b = false;
    }

    public static VideoCacheBean copy(x xVar, a aVar, VideoCacheBean videoCacheBean, boolean z, Map<e0, n> map, Set<m> set) {
        n nVar = map.get(videoCacheBean);
        if (nVar != null) {
            return (VideoCacheBean) nVar;
        }
        Table e2 = xVar.f6401j.e(VideoCacheBean.class);
        long j2 = aVar.f6971e;
        OsSharedRealm osSharedRealm = e2.f7037c;
        long nativePtr = osSharedRealm.getNativePtr();
        long j3 = e2.a;
        long nativeCreateBuilder = OsObjectBuilder.nativeCreateBuilder(j2 + 1);
        h hVar = osSharedRealm.context;
        set.contains(m.CHECK_SAME_VALUES_BEFORE_SET);
        long j4 = aVar.f6972f;
        String realmGet$name = videoCacheBean.realmGet$name();
        if (realmGet$name == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j4);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j4, realmGet$name);
        }
        long j5 = aVar.f6973g;
        String realmGet$url = videoCacheBean.realmGet$url();
        if (realmGet$url == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j5);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j5, realmGet$url);
        }
        long j6 = aVar.f6974h;
        Boolean valueOf = Boolean.valueOf(videoCacheBean.realmGet$downloadFinish());
        if (valueOf == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j6);
        } else {
            OsObjectBuilder.nativeAddBoolean(nativeCreateBuilder, j6, valueOf.booleanValue());
        }
        long j7 = aVar.f6975i;
        String realmGet$cachePath = videoCacheBean.realmGet$cachePath();
        if (realmGet$cachePath == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j7);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j7, realmGet$cachePath);
        }
        long j8 = aVar.f6976j;
        String realmGet$tempPath = videoCacheBean.realmGet$tempPath();
        if (realmGet$tempPath == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j8);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j8, realmGet$tempPath);
        }
        long j9 = aVar.f6977k;
        String realmGet$md5 = videoCacheBean.realmGet$md5();
        if (realmGet$md5 == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j9);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j9, realmGet$md5);
        }
        try {
            UncheckedRow uncheckedRow = new UncheckedRow(hVar, e2, OsObjectBuilder.nativeCreateOrUpdate(nativePtr, j3, nativeCreateBuilder, false, false));
            OsObjectBuilder.nativeDestroyBuilder(nativeCreateBuilder);
            com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy newProxyInstance = newProxyInstance(xVar, uncheckedRow);
            map.put(videoCacheBean, newProxyInstance);
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
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.comeback.data.ui.main.bean.VideoCacheBean copyOrUpdate(g.a.x r9, io.realm.com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy.a r10, com.comeback.data.ui.main.bean.VideoCacheBean r11, boolean r12, java.util.Map<g.a.e0, g.a.f1.n> r13, java.util.Set<g.a.m> r14) {
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
            com.comeback.data.ui.main.bean.VideoCacheBean r1 = (com.comeback.data.ui.main.bean.VideoCacheBean) r1
            return r1
        L47:
            r1 = 0
            r2 = 0
            if (r12 == 0) goto L8e
            java.lang.Class<com.comeback.data.ui.main.bean.VideoCacheBean> r3 = com.comeback.data.ui.main.bean.VideoCacheBean.class
            g.a.k0 r4 = r9.f6401j
            io.realm.internal.Table r3 = r4.e(r3)
            long r4 = r10.f6973g
            java.lang.String r6 = r11.realmGet$url()
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
            io.realm.com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy r1 = new io.realm.com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy     // Catch: java.lang.Throwable -> L89
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
            com.comeback.data.ui.main.bean.VideoCacheBean r9 = update(r1, r2, r3, r4, r5, r6)
            goto La0
        L9c:
            com.comeback.data.ui.main.bean.VideoCacheBean r9 = copy(r9, r10, r11, r12, r13, r14)
        La0:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy.copyOrUpdate(g.a.x, io.realm.com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy$a, com.comeback.data.ui.main.bean.VideoCacheBean, boolean, java.util.Map, java.util.Set):com.comeback.data.ui.main.bean.VideoCacheBean");
    }

    public static a createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new a(osSchemaInfo);
    }

    public static VideoCacheBean createDetachedCopy(VideoCacheBean videoCacheBean, int i2, int i3, Map<e0, n.a<e0>> map) {
        VideoCacheBean videoCacheBean2;
        if (i2 > i3 || videoCacheBean == null) {
            return null;
        }
        n.a<e0> aVar = map.get(videoCacheBean);
        if (aVar == null) {
            videoCacheBean2 = new VideoCacheBean();
            map.put(videoCacheBean, new n.a<>(i2, videoCacheBean2));
        } else if (i2 >= aVar.a) {
            return (VideoCacheBean) aVar.b;
        } else {
            aVar.a = i2;
            videoCacheBean2 = (VideoCacheBean) aVar.b;
        }
        videoCacheBean2.realmSet$name(videoCacheBean.realmGet$name());
        videoCacheBean2.realmSet$url(videoCacheBean.realmGet$url());
        videoCacheBean2.realmSet$downloadFinish(videoCacheBean.realmGet$downloadFinish());
        videoCacheBean2.realmSet$cachePath(videoCacheBean.realmGet$cachePath());
        videoCacheBean2.realmSet$tempPath(videoCacheBean.realmGet$tempPath());
        videoCacheBean2.realmSet$md5(videoCacheBean.realmGet$md5());
        return videoCacheBean2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        long[] jArr = new long[6];
        long[] jArr2 = new long[0];
        jArr[0] = Property.nativeCreatePersistedProperty("name", Property.a(RealmFieldType.STRING, false), false, false);
        int i2 = 0 + 1;
        jArr[i2] = Property.nativeCreatePersistedProperty(TbsVideoCacheTask.KEY_VIDEO_CACHE_PARAM_URL, Property.a(RealmFieldType.STRING, false), true, true);
        int i3 = i2 + 1;
        jArr[i3] = Property.nativeCreatePersistedProperty("downloadFinish", Property.a(RealmFieldType.BOOLEAN, true), false, false);
        int i4 = i3 + 1;
        jArr[i4] = Property.nativeCreatePersistedProperty("cachePath", Property.a(RealmFieldType.STRING, false), false, false);
        int i5 = i4 + 1;
        jArr[i5] = Property.nativeCreatePersistedProperty(TbsReaderView.KEY_TEMP_PATH, Property.a(RealmFieldType.STRING, false), false, false);
        int i6 = i5 + 1;
        jArr[i6] = Property.nativeCreatePersistedProperty("md5", Property.a(RealmFieldType.STRING, false), false, false);
        if (i6 + 1 != -1) {
            OsObjectSchemaInfo osObjectSchemaInfo = new OsObjectSchemaInfo("VideoCacheBean", null);
            OsObjectSchemaInfo.nativeAddProperties(osObjectSchemaInfo.a, jArr, jArr2);
            return osObjectSchemaInfo;
        }
        throw new IllegalStateException("'OsObjectSchemaInfo.build()' has been called before on this object.");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x010a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.comeback.data.ui.main.bean.VideoCacheBean createOrUpdateUsingJsonObject(g.a.x r9, org.json.JSONObject r10, boolean r11) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy.createOrUpdateUsingJsonObject(g.a.x, org.json.JSONObject, boolean):com.comeback.data.ui.main.bean.VideoCacheBean");
    }

    @TargetApi(11)
    public static VideoCacheBean createUsingJsonStream(x xVar, JsonReader jsonReader) throws IOException {
        VideoCacheBean videoCacheBean = new VideoCacheBean();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("name")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    videoCacheBean.realmSet$name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    videoCacheBean.realmSet$name(null);
                }
            } else if (nextName.equals(TbsVideoCacheTask.KEY_VIDEO_CACHE_PARAM_URL)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    videoCacheBean.realmSet$url(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    videoCacheBean.realmSet$url(null);
                }
                z = true;
            } else if (nextName.equals("downloadFinish")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    videoCacheBean.realmSet$downloadFinish(jsonReader.nextBoolean());
                } else {
                    throw f.b.a.a.a.x(jsonReader, "Trying to set non-nullable field 'downloadFinish' to null.");
                }
            } else if (nextName.equals("cachePath")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    videoCacheBean.realmSet$cachePath(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    videoCacheBean.realmSet$cachePath(null);
                }
            } else if (nextName.equals(TbsReaderView.KEY_TEMP_PATH)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    videoCacheBean.realmSet$tempPath(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    videoCacheBean.realmSet$tempPath(null);
                }
            } else if (nextName.equals("md5")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    videoCacheBean.realmSet$md5(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    videoCacheBean.realmSet$md5(null);
                }
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        if (z) {
            return (VideoCacheBean) xVar.L(videoCacheBean, new m[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'url'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "VideoCacheBean";
    }

    public static long insert(x xVar, VideoCacheBean videoCacheBean, Map<e0, Long> map) {
        long nativeFindFirstString;
        if (videoCacheBean instanceof n) {
            n nVar = (n) videoCacheBean;
            if (nVar.realmGet$proxyState().f6391e != null && nVar.realmGet$proxyState().f6391e.b.f6281c.equals(xVar.b.f6281c)) {
                return nVar.realmGet$proxyState().f6389c.l();
            }
        }
        Table e2 = xVar.f6401j.e(VideoCacheBean.class);
        long j2 = e2.a;
        k0 k0Var = xVar.f6401j;
        k0Var.a();
        a aVar = (a) k0Var.f6370f.a(VideoCacheBean.class);
        long j3 = aVar.f6973g;
        String realmGet$url = videoCacheBean.realmGet$url();
        if (realmGet$url == null) {
            nativeFindFirstString = Table.nativeFindFirstNull(j2, j3);
        } else {
            nativeFindFirstString = Table.nativeFindFirstString(j2, j3, realmGet$url);
        }
        if (nativeFindFirstString == -1) {
            long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j3, realmGet$url);
            map.put(videoCacheBean, Long.valueOf(createRowWithPrimaryKey));
            String realmGet$name = videoCacheBean.realmGet$name();
            if (realmGet$name != null) {
                Table.nativeSetString(j2, aVar.f6972f, createRowWithPrimaryKey, realmGet$name, false);
            }
            Table.nativeSetBoolean(j2, aVar.f6974h, createRowWithPrimaryKey, videoCacheBean.realmGet$downloadFinish(), false);
            String realmGet$cachePath = videoCacheBean.realmGet$cachePath();
            if (realmGet$cachePath != null) {
                Table.nativeSetString(j2, aVar.f6975i, createRowWithPrimaryKey, realmGet$cachePath, false);
            }
            String realmGet$tempPath = videoCacheBean.realmGet$tempPath();
            if (realmGet$tempPath != null) {
                Table.nativeSetString(j2, aVar.f6976j, createRowWithPrimaryKey, realmGet$tempPath, false);
            }
            String realmGet$md5 = videoCacheBean.realmGet$md5();
            if (realmGet$md5 != null) {
                Table.nativeSetString(j2, aVar.f6977k, createRowWithPrimaryKey, realmGet$md5, false);
            }
            return createRowWithPrimaryKey;
        }
        Table.s(realmGet$url);
        throw null;
    }

    public static long insertOrUpdate(x xVar, VideoCacheBean videoCacheBean, Map<e0, Long> map) {
        long nativeFindFirstString;
        if (videoCacheBean instanceof n) {
            n nVar = (n) videoCacheBean;
            if (nVar.realmGet$proxyState().f6391e != null && nVar.realmGet$proxyState().f6391e.b.f6281c.equals(xVar.b.f6281c)) {
                return nVar.realmGet$proxyState().f6389c.l();
            }
        }
        Table e2 = xVar.f6401j.e(VideoCacheBean.class);
        long j2 = e2.a;
        k0 k0Var = xVar.f6401j;
        k0Var.a();
        a aVar = (a) k0Var.f6370f.a(VideoCacheBean.class);
        long j3 = aVar.f6973g;
        String realmGet$url = videoCacheBean.realmGet$url();
        if (realmGet$url == null) {
            nativeFindFirstString = Table.nativeFindFirstNull(j2, j3);
        } else {
            nativeFindFirstString = Table.nativeFindFirstString(j2, j3, realmGet$url);
        }
        if (nativeFindFirstString == -1) {
            nativeFindFirstString = OsObject.createRowWithPrimaryKey(e2, j3, realmGet$url);
        }
        long j4 = nativeFindFirstString;
        map.put(videoCacheBean, Long.valueOf(j4));
        String realmGet$name = videoCacheBean.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(j2, aVar.f6972f, j4, realmGet$name, false);
        } else {
            Table.nativeSetNull(j2, aVar.f6972f, j4, false);
        }
        Table.nativeSetBoolean(j2, aVar.f6974h, j4, videoCacheBean.realmGet$downloadFinish(), false);
        String realmGet$cachePath = videoCacheBean.realmGet$cachePath();
        if (realmGet$cachePath != null) {
            Table.nativeSetString(j2, aVar.f6975i, j4, realmGet$cachePath, false);
        } else {
            Table.nativeSetNull(j2, aVar.f6975i, j4, false);
        }
        String realmGet$tempPath = videoCacheBean.realmGet$tempPath();
        if (realmGet$tempPath != null) {
            Table.nativeSetString(j2, aVar.f6976j, j4, realmGet$tempPath, false);
        } else {
            Table.nativeSetNull(j2, aVar.f6976j, j4, false);
        }
        String realmGet$md5 = videoCacheBean.realmGet$md5();
        if (realmGet$md5 != null) {
            Table.nativeSetString(j2, aVar.f6977k, j4, realmGet$md5, false);
        } else {
            Table.nativeSetNull(j2, aVar.f6977k, j4, false);
        }
        return j4;
    }

    public static com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy newProxyInstance(g.a.a aVar, p pVar) {
        a.c cVar = g.a.a.f6273i.get();
        k0 G = aVar.G();
        G.a();
        c a2 = G.f6370f.a(VideoCacheBean.class);
        List<String> emptyList = Collections.emptyList();
        cVar.a = aVar;
        cVar.b = pVar;
        cVar.f6278c = a2;
        cVar.f6279d = false;
        cVar.f6280e = emptyList;
        com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy com_comeback_data_ui_main_bean_videocachebeanrealmproxy = new com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy();
        cVar.a();
        return com_comeback_data_ui_main_bean_videocachebeanrealmproxy;
    }

    public static VideoCacheBean update(x xVar, a aVar, VideoCacheBean videoCacheBean, VideoCacheBean videoCacheBean2, Map<e0, n> map, Set<m> set) {
        Table e2 = xVar.f6401j.e(VideoCacheBean.class);
        long j2 = aVar.f6971e;
        OsSharedRealm osSharedRealm = e2.f7037c;
        long nativePtr = osSharedRealm.getNativePtr();
        long j3 = e2.a;
        long nativeCreateBuilder = OsObjectBuilder.nativeCreateBuilder(j2 + 1);
        h hVar = osSharedRealm.context;
        boolean contains = set.contains(m.CHECK_SAME_VALUES_BEFORE_SET);
        long j4 = aVar.f6972f;
        String realmGet$name = videoCacheBean2.realmGet$name();
        if (realmGet$name == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j4);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j4, realmGet$name);
        }
        long j5 = aVar.f6973g;
        String realmGet$url = videoCacheBean2.realmGet$url();
        if (realmGet$url == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j5);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j5, realmGet$url);
        }
        long j6 = aVar.f6974h;
        Boolean valueOf = Boolean.valueOf(videoCacheBean2.realmGet$downloadFinish());
        if (valueOf == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j6);
        } else {
            OsObjectBuilder.nativeAddBoolean(nativeCreateBuilder, j6, valueOf.booleanValue());
        }
        long j7 = aVar.f6975i;
        String realmGet$cachePath = videoCacheBean2.realmGet$cachePath();
        if (realmGet$cachePath == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j7);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j7, realmGet$cachePath);
        }
        long j8 = aVar.f6976j;
        String realmGet$tempPath = videoCacheBean2.realmGet$tempPath();
        if (realmGet$tempPath == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j8);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j8, realmGet$tempPath);
        }
        long j9 = aVar.f6977k;
        String realmGet$md5 = videoCacheBean2.realmGet$md5();
        if (realmGet$md5 == null) {
            OsObjectBuilder.nativeAddNull(nativeCreateBuilder, j9);
        } else {
            OsObjectBuilder.nativeAddString(nativeCreateBuilder, j9, realmGet$md5);
        }
        try {
            OsObjectBuilder.nativeCreateOrUpdate(nativePtr, j3, nativeCreateBuilder, true, contains);
            return videoCacheBean;
        } finally {
            OsObjectBuilder.nativeDestroyBuilder(nativeCreateBuilder);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy com_comeback_data_ui_main_bean_videocachebeanrealmproxy = (com_comeback_data_ui_main_bean_VideoCacheBeanRealmProxy) obj;
        String str = this.proxyState.f6391e.b.f6281c;
        String str2 = com_comeback_data_ui_main_bean_videocachebeanrealmproxy.proxyState.f6391e.b.f6281c;
        if (str == null ? str2 == null : str.equals(str2)) {
            String j2 = this.proxyState.f6389c.d().j();
            String j3 = com_comeback_data_ui_main_bean_videocachebeanrealmproxy.proxyState.f6389c.d().j();
            if (j2 == null ? j3 == null : j2.equals(j3)) {
                return this.proxyState.f6389c.l() == com_comeback_data_ui_main_bean_videocachebeanrealmproxy.proxyState.f6389c.l();
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        v<VideoCacheBean> vVar = this.proxyState;
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
        v<VideoCacheBean> vVar = new v<>(this);
        this.proxyState = vVar;
        vVar.f6391e = cVar.a;
        vVar.f6389c = cVar.b;
        vVar.f6392f = cVar.f6279d;
        if (vVar == null) {
            throw null;
        }
    }

    @Override // com.comeback.data.ui.main.bean.VideoCacheBean, g.a.c1
    public String realmGet$cachePath() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.f6975i);
    }

    @Override // com.comeback.data.ui.main.bean.VideoCacheBean, g.a.c1
    public boolean realmGet$downloadFinish() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.m(this.columnInfo.f6974h);
    }

    @Override // com.comeback.data.ui.main.bean.VideoCacheBean, g.a.c1
    public String realmGet$md5() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.f6977k);
    }

    @Override // com.comeback.data.ui.main.bean.VideoCacheBean, g.a.c1
    public String realmGet$name() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.f6972f);
    }

    @Override // g.a.f1.n
    public v<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.comeback.data.ui.main.bean.VideoCacheBean, g.a.c1
    public String realmGet$tempPath() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.f6976j);
    }

    @Override // com.comeback.data.ui.main.bean.VideoCacheBean, g.a.c1
    public String realmGet$url() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.f6973g);
    }

    @Override // com.comeback.data.ui.main.bean.VideoCacheBean, g.a.c1
    public void realmSet$cachePath(String str) {
        v<VideoCacheBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.f6975i, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.f6975i, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.f6975i);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.f6975i, str);
        }
    }

    @Override // com.comeback.data.ui.main.bean.VideoCacheBean, g.a.c1
    public void realmSet$downloadFinish(boolean z) {
        v<VideoCacheBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                pVar.d().o(this.columnInfo.f6974h, pVar.l(), z, true);
                return;
            }
            return;
        }
        vVar.f6391e.f();
        this.proxyState.f6389c.i(this.columnInfo.f6974h, z);
    }

    @Override // com.comeback.data.ui.main.bean.VideoCacheBean, g.a.c1
    public void realmSet$md5(String str) {
        v<VideoCacheBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.f6977k, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.f6977k, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.f6977k);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.f6977k, str);
        }
    }

    @Override // com.comeback.data.ui.main.bean.VideoCacheBean, g.a.c1
    public void realmSet$name(String str) {
        v<VideoCacheBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.f6972f, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.f6972f, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.f6972f);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.f6972f, str);
        }
    }

    @Override // com.comeback.data.ui.main.bean.VideoCacheBean, g.a.c1
    public void realmSet$tempPath(String str) {
        v<VideoCacheBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.f6976j, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.f6976j, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.f6976j);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.f6976j, str);
        }
    }

    @Override // com.comeback.data.ui.main.bean.VideoCacheBean, g.a.c1
    public void realmSet$url(String str) {
        v<VideoCacheBean> vVar = this.proxyState;
        if (vVar.b) {
            return;
        }
        vVar.f6391e.f();
        throw new RealmException("Primary key field 'url' cannot be changed after object was created.");
    }

    public String toString() {
        if (g0.isValid(this)) {
            StringBuilder q = f.b.a.a.a.q("VideoCacheBean = proxy[", "{name:");
            f.b.a.a.a.C(q, realmGet$name() != null ? realmGet$name() : "null", "}", ",", "{url:");
            f.b.a.a.a.C(q, realmGet$url() != null ? realmGet$url() : "null", "}", ",", "{downloadFinish:");
            q.append(realmGet$downloadFinish());
            q.append("}");
            q.append(",");
            q.append("{cachePath:");
            f.b.a.a.a.C(q, realmGet$cachePath() != null ? realmGet$cachePath() : "null", "}", ",", "{tempPath:");
            f.b.a.a.a.C(q, realmGet$tempPath() != null ? realmGet$tempPath() : "null", "}", ",", "{md5:");
            q.append(realmGet$md5() != null ? realmGet$md5() : "null");
            q.append("}");
            q.append("]");
            return q.toString();
        }
        return "Invalid object";
    }

    public static void insert(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long nativeFindFirstString;
        VideoCacheBean videoCacheBean;
        Table e2 = xVar.f6401j.e(VideoCacheBean.class);
        long j2 = e2.a;
        k0 k0Var = xVar.f6401j;
        k0Var.a();
        a aVar = (a) k0Var.f6370f.a(VideoCacheBean.class);
        long j3 = aVar.f6973g;
        while (it.hasNext()) {
            VideoCacheBean videoCacheBean2 = (VideoCacheBean) it.next();
            if (!map.containsKey(videoCacheBean2)) {
                if (videoCacheBean2 instanceof n) {
                    n nVar = (n) videoCacheBean2;
                    if (nVar.realmGet$proxyState().f6391e != null && nVar.realmGet$proxyState().f6391e.b.f6281c.equals(xVar.b.f6281c)) {
                        map.put(videoCacheBean2, Long.valueOf(nVar.realmGet$proxyState().f6389c.l()));
                    }
                }
                String realmGet$url = videoCacheBean2.realmGet$url();
                if (realmGet$url == null) {
                    nativeFindFirstString = Table.nativeFindFirstNull(j2, j3);
                } else {
                    nativeFindFirstString = Table.nativeFindFirstString(j2, j3, realmGet$url);
                }
                if (nativeFindFirstString == -1) {
                    long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j3, realmGet$url);
                    map.put(videoCacheBean2, Long.valueOf(createRowWithPrimaryKey));
                    String realmGet$name = videoCacheBean2.realmGet$name();
                    if (realmGet$name != null) {
                        videoCacheBean = videoCacheBean2;
                        Table.nativeSetString(j2, aVar.f6972f, createRowWithPrimaryKey, realmGet$name, false);
                    } else {
                        videoCacheBean = videoCacheBean2;
                    }
                    Table.nativeSetBoolean(j2, aVar.f6974h, createRowWithPrimaryKey, videoCacheBean.realmGet$downloadFinish(), false);
                    String realmGet$cachePath = videoCacheBean.realmGet$cachePath();
                    if (realmGet$cachePath != null) {
                        Table.nativeSetString(j2, aVar.f6975i, createRowWithPrimaryKey, realmGet$cachePath, false);
                    }
                    String realmGet$tempPath = videoCacheBean.realmGet$tempPath();
                    if (realmGet$tempPath != null) {
                        Table.nativeSetString(j2, aVar.f6976j, createRowWithPrimaryKey, realmGet$tempPath, false);
                    }
                    String realmGet$md5 = videoCacheBean.realmGet$md5();
                    if (realmGet$md5 != null) {
                        Table.nativeSetString(j2, aVar.f6977k, createRowWithPrimaryKey, realmGet$md5, false);
                    }
                } else {
                    Table.s(realmGet$url);
                    throw null;
                }
            }
        }
    }

    public static void insertOrUpdate(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long nativeFindFirstString;
        VideoCacheBean videoCacheBean;
        Table e2 = xVar.f6401j.e(VideoCacheBean.class);
        long j2 = e2.a;
        k0 k0Var = xVar.f6401j;
        k0Var.a();
        a aVar = (a) k0Var.f6370f.a(VideoCacheBean.class);
        long j3 = aVar.f6973g;
        while (it.hasNext()) {
            VideoCacheBean videoCacheBean2 = (VideoCacheBean) it.next();
            if (!map.containsKey(videoCacheBean2)) {
                if (videoCacheBean2 instanceof n) {
                    n nVar = (n) videoCacheBean2;
                    if (nVar.realmGet$proxyState().f6391e != null && nVar.realmGet$proxyState().f6391e.b.f6281c.equals(xVar.b.f6281c)) {
                        map.put(videoCacheBean2, Long.valueOf(nVar.realmGet$proxyState().f6389c.l()));
                    }
                }
                String realmGet$url = videoCacheBean2.realmGet$url();
                if (realmGet$url == null) {
                    nativeFindFirstString = Table.nativeFindFirstNull(j2, j3);
                } else {
                    nativeFindFirstString = Table.nativeFindFirstString(j2, j3, realmGet$url);
                }
                long createRowWithPrimaryKey = nativeFindFirstString == -1 ? OsObject.createRowWithPrimaryKey(e2, j3, realmGet$url) : nativeFindFirstString;
                map.put(videoCacheBean2, Long.valueOf(createRowWithPrimaryKey));
                String realmGet$name = videoCacheBean2.realmGet$name();
                if (realmGet$name != null) {
                    videoCacheBean = videoCacheBean2;
                    Table.nativeSetString(j2, aVar.f6972f, createRowWithPrimaryKey, realmGet$name, false);
                } else {
                    videoCacheBean = videoCacheBean2;
                    Table.nativeSetNull(j2, aVar.f6972f, createRowWithPrimaryKey, false);
                }
                Table.nativeSetBoolean(j2, aVar.f6974h, createRowWithPrimaryKey, videoCacheBean.realmGet$downloadFinish(), false);
                String realmGet$cachePath = videoCacheBean.realmGet$cachePath();
                if (realmGet$cachePath != null) {
                    Table.nativeSetString(j2, aVar.f6975i, createRowWithPrimaryKey, realmGet$cachePath, false);
                } else {
                    Table.nativeSetNull(j2, aVar.f6975i, createRowWithPrimaryKey, false);
                }
                String realmGet$tempPath = videoCacheBean.realmGet$tempPath();
                if (realmGet$tempPath != null) {
                    Table.nativeSetString(j2, aVar.f6976j, createRowWithPrimaryKey, realmGet$tempPath, false);
                } else {
                    Table.nativeSetNull(j2, aVar.f6976j, createRowWithPrimaryKey, false);
                }
                String realmGet$md5 = videoCacheBean.realmGet$md5();
                if (realmGet$md5 != null) {
                    Table.nativeSetString(j2, aVar.f6977k, createRowWithPrimaryKey, realmGet$md5, false);
                } else {
                    Table.nativeSetNull(j2, aVar.f6977k, createRowWithPrimaryKey, false);
                }
            }
        }
    }
}
