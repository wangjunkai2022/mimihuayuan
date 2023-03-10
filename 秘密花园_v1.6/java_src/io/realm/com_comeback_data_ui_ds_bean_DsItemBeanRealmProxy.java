package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationCompatJellybean;
import com.comeback.data.ui.ds.bean.DsItemBean;
import g.a.a;
import g.a.e0;
import g.a.f1.c;
import g.a.f1.n;
import g.a.f1.p;
import g.a.g0;
import g.a.k0;
import g.a.m;
import g.a.r0;
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
public class com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy extends DsItemBean implements n, r0 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public a columnInfo;
    public v<DsItemBean> proxyState;

    /* loaded from: classes.dex */
    public static final class a extends c {
        public long A;
        public long B;
        public long C;
        public long D;
        public long E;
        public long F;
        public long G;
        public long H;
        public long I;
        public long J;
        public long K;
        public long L;
        public long M;
        public long N;
        public long O;

        /* renamed from: e  reason: collision with root package name */
        public long f6895e;

        /* renamed from: f  reason: collision with root package name */
        public long f6896f;

        /* renamed from: g  reason: collision with root package name */
        public long f6897g;

        /* renamed from: h  reason: collision with root package name */
        public long f6898h;

        /* renamed from: i  reason: collision with root package name */
        public long f6899i;

        /* renamed from: j  reason: collision with root package name */
        public long f6900j;

        /* renamed from: k  reason: collision with root package name */
        public long f6901k;

        /* renamed from: l  reason: collision with root package name */
        public long f6902l;

        /* renamed from: m  reason: collision with root package name */
        public long f6903m;
        public long n;
        public long o;
        public long p;
        public long q;
        public long r;
        public long s;
        public long t;
        public long u;
        public long v;
        public long w;
        public long x;
        public long y;
        public long z;

        public a(OsSchemaInfo osSchemaInfo) {
            super(36, true);
            OsObjectSchemaInfo a = osSchemaInfo.a("DsItemBean");
            this.f6896f = a("id", "id", a);
            this.f6897g = a(NotificationCompatJellybean.KEY_TITLE, NotificationCompatJellybean.KEY_TITLE, a);
            this.f6898h = a("lanmu_id", "lanmu_id", a);
            this.f6899i = a("create_time", "create_time", a);
            this.f6900j = a("update_time", "update_time", a);
            this.f6901k = a("sort", "sort", a);
            this.f6902l = a(NotificationCompat.CATEGORY_STATUS, NotificationCompat.CATEGORY_STATUS, a);
            this.f6903m = a("view", "view", a);
            this.n = a("image", "image", a);
            this.o = a("type", "type", a);
            this.p = a("auther", "auther", a);
            this.q = a("desc", "desc", a);
            this.r = a("mark", "mark", a);
            this.s = a("ticai_id", "ticai_id", a);
            this.t = a("duzhequn_id", "duzhequn_id", a);
            this.u = a("diyu_id", "diyu_id", a);
            this.v = a("mhstatus", "mhstatus", a);
            this.w = a("tjswitch", "tjswitch", a);
            this.x = a("isfree", "isfree", a);
            this.y = a("cjid", "cjid", a);
            this.z = a("cjstatus", "cjstatus", a);
            this.A = a("cjname", "cjname", a);
            this.B = a("keyword", "keyword", a);
            this.C = a("last_chapter_title", "last_chapter_title", a);
            this.D = a("searchnums", "searchnums", a);
            this.E = a("last_chapter", "last_chapter", a);
            this.F = a("isjingpin", "isjingpin", a);
            this.G = a("xianmian", "xianmian", a);
            this.H = a("cover", "cover", a);
            this.I = a("ishot", "ishot", a);
            this.J = a("issole", "issole", a);
            this.K = a("isnew", "isnew", a);
            this.L = a("h", "h", a);
            this.M = a("vipcanread", "vipcanread", a);
            this.N = a("pingfen", "pingfen", a);
            this.O = a("contentType", "contentType", a);
            this.f6895e = a.a();
        }

        @Override // g.a.f1.c
        public final void b(c cVar, c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f6896f = aVar.f6896f;
            aVar2.f6897g = aVar.f6897g;
            aVar2.f6898h = aVar.f6898h;
            aVar2.f6899i = aVar.f6899i;
            aVar2.f6900j = aVar.f6900j;
            aVar2.f6901k = aVar.f6901k;
            aVar2.f6902l = aVar.f6902l;
            aVar2.f6903m = aVar.f6903m;
            aVar2.n = aVar.n;
            aVar2.o = aVar.o;
            aVar2.p = aVar.p;
            aVar2.q = aVar.q;
            aVar2.r = aVar.r;
            aVar2.s = aVar.s;
            aVar2.t = aVar.t;
            aVar2.u = aVar.u;
            aVar2.v = aVar.v;
            aVar2.w = aVar.w;
            aVar2.x = aVar.x;
            aVar2.y = aVar.y;
            aVar2.z = aVar.z;
            aVar2.A = aVar.A;
            aVar2.B = aVar.B;
            aVar2.C = aVar.C;
            aVar2.D = aVar.D;
            aVar2.E = aVar.E;
            aVar2.F = aVar.F;
            aVar2.G = aVar.G;
            aVar2.H = aVar.H;
            aVar2.I = aVar.I;
            aVar2.J = aVar.J;
            aVar2.K = aVar.K;
            aVar2.L = aVar.L;
            aVar2.M = aVar.M;
            aVar2.N = aVar.N;
            aVar2.O = aVar.O;
            aVar2.f6895e = aVar.f6895e;
        }
    }

    public com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy() {
        this.proxyState.b = false;
    }

    public static DsItemBean copy(x xVar, a aVar, DsItemBean dsItemBean, boolean z, Map<e0, n> map, Set<m> set) {
        n nVar = map.get(dsItemBean);
        if (nVar != null) {
            return (DsItemBean) nVar;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(xVar.f6401j.e(DsItemBean.class), aVar.f6895e, set);
        osObjectBuilder.g(aVar.f6896f, dsItemBean.realmGet$id());
        osObjectBuilder.g(aVar.f6897g, dsItemBean.realmGet$title());
        osObjectBuilder.g(aVar.f6898h, dsItemBean.realmGet$lanmu_id());
        osObjectBuilder.g(aVar.f6899i, dsItemBean.realmGet$create_time());
        osObjectBuilder.g(aVar.f6900j, dsItemBean.realmGet$update_time());
        osObjectBuilder.g(aVar.f6901k, dsItemBean.realmGet$sort());
        osObjectBuilder.g(aVar.f6902l, dsItemBean.realmGet$status());
        osObjectBuilder.g(aVar.f6903m, dsItemBean.realmGet$view());
        osObjectBuilder.g(aVar.n, dsItemBean.realmGet$image());
        osObjectBuilder.g(aVar.o, dsItemBean.realmGet$type());
        osObjectBuilder.g(aVar.p, dsItemBean.realmGet$auther());
        osObjectBuilder.g(aVar.q, dsItemBean.realmGet$desc());
        osObjectBuilder.g(aVar.r, dsItemBean.realmGet$mark());
        osObjectBuilder.g(aVar.s, dsItemBean.realmGet$ticai_id());
        osObjectBuilder.g(aVar.t, dsItemBean.realmGet$duzhequn_id());
        osObjectBuilder.g(aVar.u, dsItemBean.realmGet$diyu_id());
        osObjectBuilder.g(aVar.v, dsItemBean.realmGet$mhstatus());
        osObjectBuilder.g(aVar.w, dsItemBean.realmGet$tjswitch());
        osObjectBuilder.g(aVar.x, dsItemBean.realmGet$isfree());
        osObjectBuilder.g(aVar.y, dsItemBean.realmGet$cjid());
        osObjectBuilder.g(aVar.z, dsItemBean.realmGet$cjstatus());
        osObjectBuilder.g(aVar.A, dsItemBean.realmGet$cjname());
        osObjectBuilder.g(aVar.B, dsItemBean.realmGet$keyword());
        osObjectBuilder.g(aVar.C, dsItemBean.realmGet$last_chapter_title());
        osObjectBuilder.g(aVar.D, dsItemBean.realmGet$searchnums());
        osObjectBuilder.g(aVar.E, dsItemBean.realmGet$last_chapter());
        osObjectBuilder.g(aVar.F, dsItemBean.realmGet$isjingpin());
        osObjectBuilder.g(aVar.G, dsItemBean.realmGet$xianmian());
        osObjectBuilder.g(aVar.H, dsItemBean.realmGet$cover());
        osObjectBuilder.g(aVar.I, dsItemBean.realmGet$ishot());
        osObjectBuilder.g(aVar.J, dsItemBean.realmGet$issole());
        osObjectBuilder.g(aVar.K, dsItemBean.realmGet$isnew());
        osObjectBuilder.g(aVar.L, dsItemBean.realmGet$h());
        osObjectBuilder.g(aVar.M, dsItemBean.realmGet$vipcanread());
        osObjectBuilder.g(aVar.N, dsItemBean.realmGet$pingfen());
        osObjectBuilder.g(aVar.O, dsItemBean.realmGet$contentType());
        com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy newProxyInstance = newProxyInstance(xVar, osObjectBuilder.E());
        map.put(dsItemBean, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.comeback.data.ui.ds.bean.DsItemBean copyOrUpdate(g.a.x r9, io.realm.com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy.a r10, com.comeback.data.ui.ds.bean.DsItemBean r11, boolean r12, java.util.Map<g.a.e0, g.a.f1.n> r13, java.util.Set<g.a.m> r14) {
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
            com.comeback.data.ui.ds.bean.DsItemBean r1 = (com.comeback.data.ui.ds.bean.DsItemBean) r1
            return r1
        L47:
            r1 = 0
            r2 = 0
            if (r12 == 0) goto L8e
            java.lang.Class<com.comeback.data.ui.ds.bean.DsItemBean> r3 = com.comeback.data.ui.ds.bean.DsItemBean.class
            g.a.k0 r4 = r9.f6401j
            io.realm.internal.Table r3 = r4.e(r3)
            long r4 = r10.f6896f
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
            io.realm.com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy r1 = new io.realm.com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy     // Catch: java.lang.Throwable -> L89
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
            com.comeback.data.ui.ds.bean.DsItemBean r9 = update(r1, r2, r3, r4, r5, r6)
            goto La0
        L9c:
            com.comeback.data.ui.ds.bean.DsItemBean r9 = copy(r9, r10, r11, r12, r13, r14)
        La0:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy.copyOrUpdate(g.a.x, io.realm.com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a, com.comeback.data.ui.ds.bean.DsItemBean, boolean, java.util.Map, java.util.Set):com.comeback.data.ui.ds.bean.DsItemBean");
    }

    public static a createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new a(osSchemaInfo);
    }

    public static DsItemBean createDetachedCopy(DsItemBean dsItemBean, int i2, int i3, Map<e0, n.a<e0>> map) {
        DsItemBean dsItemBean2;
        if (i2 > i3 || dsItemBean == null) {
            return null;
        }
        n.a<e0> aVar = map.get(dsItemBean);
        if (aVar == null) {
            dsItemBean2 = new DsItemBean();
            map.put(dsItemBean, new n.a<>(i2, dsItemBean2));
        } else if (i2 >= aVar.a) {
            return (DsItemBean) aVar.b;
        } else {
            aVar.a = i2;
            dsItemBean2 = (DsItemBean) aVar.b;
        }
        dsItemBean2.realmSet$id(dsItemBean.realmGet$id());
        dsItemBean2.realmSet$title(dsItemBean.realmGet$title());
        dsItemBean2.realmSet$lanmu_id(dsItemBean.realmGet$lanmu_id());
        dsItemBean2.realmSet$create_time(dsItemBean.realmGet$create_time());
        dsItemBean2.realmSet$update_time(dsItemBean.realmGet$update_time());
        dsItemBean2.realmSet$sort(dsItemBean.realmGet$sort());
        dsItemBean2.realmSet$status(dsItemBean.realmGet$status());
        dsItemBean2.realmSet$view(dsItemBean.realmGet$view());
        dsItemBean2.realmSet$image(dsItemBean.realmGet$image());
        dsItemBean2.realmSet$type(dsItemBean.realmGet$type());
        dsItemBean2.realmSet$auther(dsItemBean.realmGet$auther());
        dsItemBean2.realmSet$desc(dsItemBean.realmGet$desc());
        dsItemBean2.realmSet$mark(dsItemBean.realmGet$mark());
        dsItemBean2.realmSet$ticai_id(dsItemBean.realmGet$ticai_id());
        dsItemBean2.realmSet$duzhequn_id(dsItemBean.realmGet$duzhequn_id());
        dsItemBean2.realmSet$diyu_id(dsItemBean.realmGet$diyu_id());
        dsItemBean2.realmSet$mhstatus(dsItemBean.realmGet$mhstatus());
        dsItemBean2.realmSet$tjswitch(dsItemBean.realmGet$tjswitch());
        dsItemBean2.realmSet$isfree(dsItemBean.realmGet$isfree());
        dsItemBean2.realmSet$cjid(dsItemBean.realmGet$cjid());
        dsItemBean2.realmSet$cjstatus(dsItemBean.realmGet$cjstatus());
        dsItemBean2.realmSet$cjname(dsItemBean.realmGet$cjname());
        dsItemBean2.realmSet$keyword(dsItemBean.realmGet$keyword());
        dsItemBean2.realmSet$last_chapter_title(dsItemBean.realmGet$last_chapter_title());
        dsItemBean2.realmSet$searchnums(dsItemBean.realmGet$searchnums());
        dsItemBean2.realmSet$last_chapter(dsItemBean.realmGet$last_chapter());
        dsItemBean2.realmSet$isjingpin(dsItemBean.realmGet$isjingpin());
        dsItemBean2.realmSet$xianmian(dsItemBean.realmGet$xianmian());
        dsItemBean2.realmSet$cover(dsItemBean.realmGet$cover());
        dsItemBean2.realmSet$ishot(dsItemBean.realmGet$ishot());
        dsItemBean2.realmSet$issole(dsItemBean.realmGet$issole());
        dsItemBean2.realmSet$isnew(dsItemBean.realmGet$isnew());
        dsItemBean2.realmSet$h(dsItemBean.realmGet$h());
        dsItemBean2.realmSet$vipcanread(dsItemBean.realmGet$vipcanread());
        dsItemBean2.realmSet$pingfen(dsItemBean.realmGet$pingfen());
        dsItemBean2.realmSet$contentType(dsItemBean.realmGet$contentType());
        return dsItemBean2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.b bVar = new OsObjectSchemaInfo.b("DsItemBean", 36, 0);
        bVar.a("id", RealmFieldType.STRING, true, true, false);
        bVar.a(NotificationCompatJellybean.KEY_TITLE, RealmFieldType.STRING, false, false, false);
        bVar.a("lanmu_id", RealmFieldType.STRING, false, false, false);
        bVar.a("create_time", RealmFieldType.STRING, false, false, false);
        bVar.a("update_time", RealmFieldType.STRING, false, false, false);
        bVar.a("sort", RealmFieldType.STRING, false, false, false);
        bVar.a(NotificationCompat.CATEGORY_STATUS, RealmFieldType.STRING, false, false, false);
        bVar.a("view", RealmFieldType.STRING, false, false, false);
        bVar.a("image", RealmFieldType.STRING, false, false, false);
        bVar.a("type", RealmFieldType.STRING, false, false, false);
        bVar.a("auther", RealmFieldType.STRING, false, false, false);
        bVar.a("desc", RealmFieldType.STRING, false, false, false);
        bVar.a("mark", RealmFieldType.STRING, false, false, false);
        bVar.a("ticai_id", RealmFieldType.STRING, false, false, false);
        bVar.a("duzhequn_id", RealmFieldType.STRING, false, false, false);
        bVar.a("diyu_id", RealmFieldType.STRING, false, false, false);
        bVar.a("mhstatus", RealmFieldType.STRING, false, false, false);
        bVar.a("tjswitch", RealmFieldType.STRING, false, false, false);
        bVar.a("isfree", RealmFieldType.STRING, false, false, false);
        bVar.a("cjid", RealmFieldType.STRING, false, false, false);
        bVar.a("cjstatus", RealmFieldType.STRING, false, false, false);
        bVar.a("cjname", RealmFieldType.STRING, false, false, false);
        bVar.a("keyword", RealmFieldType.STRING, false, false, false);
        bVar.a("last_chapter_title", RealmFieldType.STRING, false, false, false);
        bVar.a("searchnums", RealmFieldType.STRING, false, false, false);
        bVar.a("last_chapter", RealmFieldType.STRING, false, false, false);
        bVar.a("isjingpin", RealmFieldType.STRING, false, false, false);
        bVar.a("xianmian", RealmFieldType.STRING, false, false, false);
        bVar.a("cover", RealmFieldType.STRING, false, false, false);
        bVar.a("ishot", RealmFieldType.STRING, false, false, false);
        bVar.a("issole", RealmFieldType.STRING, false, false, false);
        bVar.a("isnew", RealmFieldType.STRING, false, false, false);
        bVar.a("h", RealmFieldType.STRING, false, false, false);
        bVar.a("vipcanread", RealmFieldType.STRING, false, false, false);
        bVar.a("pingfen", RealmFieldType.STRING, false, false, false);
        bVar.a("contentType", RealmFieldType.STRING, false, false, false);
        return bVar.b();
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02bb  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x02f5  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0312  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x034c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0369  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0386  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x03a3  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x03fa  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0417  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0434  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.comeback.data.ui.ds.bean.DsItemBean createOrUpdateUsingJsonObject(g.a.x r8, org.json.JSONObject r9, boolean r10) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 1098
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy.createOrUpdateUsingJsonObject(g.a.x, org.json.JSONObject, boolean):com.comeback.data.ui.ds.bean.DsItemBean");
    }

    @TargetApi(11)
    public static DsItemBean createUsingJsonStream(x xVar, JsonReader jsonReader) throws IOException {
        DsItemBean dsItemBean = new DsItemBean();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$id(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$id(null);
                }
                z = true;
            } else if (nextName.equals(NotificationCompatJellybean.KEY_TITLE)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$title(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$title(null);
                }
            } else if (nextName.equals("lanmu_id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$lanmu_id(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$lanmu_id(null);
                }
            } else if (nextName.equals("create_time")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$create_time(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$create_time(null);
                }
            } else if (nextName.equals("update_time")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$update_time(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$update_time(null);
                }
            } else if (nextName.equals("sort")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$sort(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$sort(null);
                }
            } else if (nextName.equals(NotificationCompat.CATEGORY_STATUS)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$status(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$status(null);
                }
            } else if (nextName.equals("view")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$view(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$view(null);
                }
            } else if (nextName.equals("image")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$image(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$image(null);
                }
            } else if (nextName.equals("type")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$type(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$type(null);
                }
            } else if (nextName.equals("auther")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$auther(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$auther(null);
                }
            } else if (nextName.equals("desc")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$desc(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$desc(null);
                }
            } else if (nextName.equals("mark")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$mark(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$mark(null);
                }
            } else if (nextName.equals("ticai_id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$ticai_id(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$ticai_id(null);
                }
            } else if (nextName.equals("duzhequn_id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$duzhequn_id(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$duzhequn_id(null);
                }
            } else if (nextName.equals("diyu_id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$diyu_id(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$diyu_id(null);
                }
            } else if (nextName.equals("mhstatus")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$mhstatus(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$mhstatus(null);
                }
            } else if (nextName.equals("tjswitch")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$tjswitch(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$tjswitch(null);
                }
            } else if (nextName.equals("isfree")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$isfree(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$isfree(null);
                }
            } else if (nextName.equals("cjid")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$cjid(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$cjid(null);
                }
            } else if (nextName.equals("cjstatus")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$cjstatus(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$cjstatus(null);
                }
            } else if (nextName.equals("cjname")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$cjname(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$cjname(null);
                }
            } else if (nextName.equals("keyword")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$keyword(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$keyword(null);
                }
            } else if (nextName.equals("last_chapter_title")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$last_chapter_title(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$last_chapter_title(null);
                }
            } else if (nextName.equals("searchnums")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$searchnums(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$searchnums(null);
                }
            } else if (nextName.equals("last_chapter")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$last_chapter(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$last_chapter(null);
                }
            } else if (nextName.equals("isjingpin")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$isjingpin(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$isjingpin(null);
                }
            } else if (nextName.equals("xianmian")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$xianmian(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$xianmian(null);
                }
            } else if (nextName.equals("cover")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$cover(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$cover(null);
                }
            } else if (nextName.equals("ishot")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$ishot(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$ishot(null);
                }
            } else if (nextName.equals("issole")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$issole(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$issole(null);
                }
            } else if (nextName.equals("isnew")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$isnew(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$isnew(null);
                }
            } else if (nextName.equals("h")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$h(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$h(null);
                }
            } else if (nextName.equals("vipcanread")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$vipcanread(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$vipcanread(null);
                }
            } else if (nextName.equals("pingfen")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$pingfen(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$pingfen(null);
                }
            } else if (nextName.equals("contentType")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dsItemBean.realmSet$contentType(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dsItemBean.realmSet$contentType(null);
                }
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        if (z) {
            return (DsItemBean) xVar.L(dsItemBean, new m[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "DsItemBean";
    }

    public static long insert(x xVar, DsItemBean dsItemBean, Map<e0, Long> map) {
        long nativeFindFirstString;
        if (dsItemBean instanceof n) {
            n nVar = (n) dsItemBean;
            if (nVar.realmGet$proxyState().f6391e != null && nVar.realmGet$proxyState().f6391e.b.f6281c.equals(xVar.b.f6281c)) {
                return nVar.realmGet$proxyState().f6389c.l();
            }
        }
        Table e2 = xVar.f6401j.e(DsItemBean.class);
        long j2 = e2.a;
        k0 k0Var = xVar.f6401j;
        k0Var.a();
        a aVar = (a) k0Var.f6370f.a(DsItemBean.class);
        long j3 = aVar.f6896f;
        String realmGet$id = dsItemBean.realmGet$id();
        if (realmGet$id == null) {
            nativeFindFirstString = Table.nativeFindFirstNull(j2, j3);
        } else {
            nativeFindFirstString = Table.nativeFindFirstString(j2, j3, realmGet$id);
        }
        if (nativeFindFirstString == -1) {
            long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j3, realmGet$id);
            map.put(dsItemBean, Long.valueOf(createRowWithPrimaryKey));
            String realmGet$title = dsItemBean.realmGet$title();
            if (realmGet$title != null) {
                Table.nativeSetString(j2, aVar.f6897g, createRowWithPrimaryKey, realmGet$title, false);
            }
            String realmGet$lanmu_id = dsItemBean.realmGet$lanmu_id();
            if (realmGet$lanmu_id != null) {
                Table.nativeSetString(j2, aVar.f6898h, createRowWithPrimaryKey, realmGet$lanmu_id, false);
            }
            String realmGet$create_time = dsItemBean.realmGet$create_time();
            if (realmGet$create_time != null) {
                Table.nativeSetString(j2, aVar.f6899i, createRowWithPrimaryKey, realmGet$create_time, false);
            }
            String realmGet$update_time = dsItemBean.realmGet$update_time();
            if (realmGet$update_time != null) {
                Table.nativeSetString(j2, aVar.f6900j, createRowWithPrimaryKey, realmGet$update_time, false);
            }
            String realmGet$sort = dsItemBean.realmGet$sort();
            if (realmGet$sort != null) {
                Table.nativeSetString(j2, aVar.f6901k, createRowWithPrimaryKey, realmGet$sort, false);
            }
            String realmGet$status = dsItemBean.realmGet$status();
            if (realmGet$status != null) {
                Table.nativeSetString(j2, aVar.f6902l, createRowWithPrimaryKey, realmGet$status, false);
            }
            String realmGet$view = dsItemBean.realmGet$view();
            if (realmGet$view != null) {
                Table.nativeSetString(j2, aVar.f6903m, createRowWithPrimaryKey, realmGet$view, false);
            }
            String realmGet$image = dsItemBean.realmGet$image();
            if (realmGet$image != null) {
                Table.nativeSetString(j2, aVar.n, createRowWithPrimaryKey, realmGet$image, false);
            }
            String realmGet$type = dsItemBean.realmGet$type();
            if (realmGet$type != null) {
                Table.nativeSetString(j2, aVar.o, createRowWithPrimaryKey, realmGet$type, false);
            }
            String realmGet$auther = dsItemBean.realmGet$auther();
            if (realmGet$auther != null) {
                Table.nativeSetString(j2, aVar.p, createRowWithPrimaryKey, realmGet$auther, false);
            }
            String realmGet$desc = dsItemBean.realmGet$desc();
            if (realmGet$desc != null) {
                Table.nativeSetString(j2, aVar.q, createRowWithPrimaryKey, realmGet$desc, false);
            }
            String realmGet$mark = dsItemBean.realmGet$mark();
            if (realmGet$mark != null) {
                Table.nativeSetString(j2, aVar.r, createRowWithPrimaryKey, realmGet$mark, false);
            }
            String realmGet$ticai_id = dsItemBean.realmGet$ticai_id();
            if (realmGet$ticai_id != null) {
                Table.nativeSetString(j2, aVar.s, createRowWithPrimaryKey, realmGet$ticai_id, false);
            }
            String realmGet$duzhequn_id = dsItemBean.realmGet$duzhequn_id();
            if (realmGet$duzhequn_id != null) {
                Table.nativeSetString(j2, aVar.t, createRowWithPrimaryKey, realmGet$duzhequn_id, false);
            }
            String realmGet$diyu_id = dsItemBean.realmGet$diyu_id();
            if (realmGet$diyu_id != null) {
                Table.nativeSetString(j2, aVar.u, createRowWithPrimaryKey, realmGet$diyu_id, false);
            }
            String realmGet$mhstatus = dsItemBean.realmGet$mhstatus();
            if (realmGet$mhstatus != null) {
                Table.nativeSetString(j2, aVar.v, createRowWithPrimaryKey, realmGet$mhstatus, false);
            }
            String realmGet$tjswitch = dsItemBean.realmGet$tjswitch();
            if (realmGet$tjswitch != null) {
                Table.nativeSetString(j2, aVar.w, createRowWithPrimaryKey, realmGet$tjswitch, false);
            }
            String realmGet$isfree = dsItemBean.realmGet$isfree();
            if (realmGet$isfree != null) {
                Table.nativeSetString(j2, aVar.x, createRowWithPrimaryKey, realmGet$isfree, false);
            }
            String realmGet$cjid = dsItemBean.realmGet$cjid();
            if (realmGet$cjid != null) {
                Table.nativeSetString(j2, aVar.y, createRowWithPrimaryKey, realmGet$cjid, false);
            }
            String realmGet$cjstatus = dsItemBean.realmGet$cjstatus();
            if (realmGet$cjstatus != null) {
                Table.nativeSetString(j2, aVar.z, createRowWithPrimaryKey, realmGet$cjstatus, false);
            }
            String realmGet$cjname = dsItemBean.realmGet$cjname();
            if (realmGet$cjname != null) {
                Table.nativeSetString(j2, aVar.A, createRowWithPrimaryKey, realmGet$cjname, false);
            }
            String realmGet$keyword = dsItemBean.realmGet$keyword();
            if (realmGet$keyword != null) {
                Table.nativeSetString(j2, aVar.B, createRowWithPrimaryKey, realmGet$keyword, false);
            }
            String realmGet$last_chapter_title = dsItemBean.realmGet$last_chapter_title();
            if (realmGet$last_chapter_title != null) {
                Table.nativeSetString(j2, aVar.C, createRowWithPrimaryKey, realmGet$last_chapter_title, false);
            }
            String realmGet$searchnums = dsItemBean.realmGet$searchnums();
            if (realmGet$searchnums != null) {
                Table.nativeSetString(j2, aVar.D, createRowWithPrimaryKey, realmGet$searchnums, false);
            }
            String realmGet$last_chapter = dsItemBean.realmGet$last_chapter();
            if (realmGet$last_chapter != null) {
                Table.nativeSetString(j2, aVar.E, createRowWithPrimaryKey, realmGet$last_chapter, false);
            }
            String realmGet$isjingpin = dsItemBean.realmGet$isjingpin();
            if (realmGet$isjingpin != null) {
                Table.nativeSetString(j2, aVar.F, createRowWithPrimaryKey, realmGet$isjingpin, false);
            }
            String realmGet$xianmian = dsItemBean.realmGet$xianmian();
            if (realmGet$xianmian != null) {
                Table.nativeSetString(j2, aVar.G, createRowWithPrimaryKey, realmGet$xianmian, false);
            }
            String realmGet$cover = dsItemBean.realmGet$cover();
            if (realmGet$cover != null) {
                Table.nativeSetString(j2, aVar.H, createRowWithPrimaryKey, realmGet$cover, false);
            }
            String realmGet$ishot = dsItemBean.realmGet$ishot();
            if (realmGet$ishot != null) {
                Table.nativeSetString(j2, aVar.I, createRowWithPrimaryKey, realmGet$ishot, false);
            }
            String realmGet$issole = dsItemBean.realmGet$issole();
            if (realmGet$issole != null) {
                Table.nativeSetString(j2, aVar.J, createRowWithPrimaryKey, realmGet$issole, false);
            }
            String realmGet$isnew = dsItemBean.realmGet$isnew();
            if (realmGet$isnew != null) {
                Table.nativeSetString(j2, aVar.K, createRowWithPrimaryKey, realmGet$isnew, false);
            }
            String realmGet$h = dsItemBean.realmGet$h();
            if (realmGet$h != null) {
                Table.nativeSetString(j2, aVar.L, createRowWithPrimaryKey, realmGet$h, false);
            }
            String realmGet$vipcanread = dsItemBean.realmGet$vipcanread();
            if (realmGet$vipcanread != null) {
                Table.nativeSetString(j2, aVar.M, createRowWithPrimaryKey, realmGet$vipcanread, false);
            }
            String realmGet$pingfen = dsItemBean.realmGet$pingfen();
            if (realmGet$pingfen != null) {
                Table.nativeSetString(j2, aVar.N, createRowWithPrimaryKey, realmGet$pingfen, false);
            }
            String realmGet$contentType = dsItemBean.realmGet$contentType();
            if (realmGet$contentType != null) {
                Table.nativeSetString(j2, aVar.O, createRowWithPrimaryKey, realmGet$contentType, false);
            }
            return createRowWithPrimaryKey;
        }
        Table.s(realmGet$id);
        throw null;
    }

    public static long insertOrUpdate(x xVar, DsItemBean dsItemBean, Map<e0, Long> map) {
        long nativeFindFirstString;
        if (dsItemBean instanceof n) {
            n nVar = (n) dsItemBean;
            if (nVar.realmGet$proxyState().f6391e != null && nVar.realmGet$proxyState().f6391e.b.f6281c.equals(xVar.b.f6281c)) {
                return nVar.realmGet$proxyState().f6389c.l();
            }
        }
        Table e2 = xVar.f6401j.e(DsItemBean.class);
        long j2 = e2.a;
        k0 k0Var = xVar.f6401j;
        k0Var.a();
        a aVar = (a) k0Var.f6370f.a(DsItemBean.class);
        long j3 = aVar.f6896f;
        String realmGet$id = dsItemBean.realmGet$id();
        if (realmGet$id == null) {
            nativeFindFirstString = Table.nativeFindFirstNull(j2, j3);
        } else {
            nativeFindFirstString = Table.nativeFindFirstString(j2, j3, realmGet$id);
        }
        if (nativeFindFirstString == -1) {
            nativeFindFirstString = OsObject.createRowWithPrimaryKey(e2, j3, realmGet$id);
        }
        long j4 = nativeFindFirstString;
        map.put(dsItemBean, Long.valueOf(j4));
        String realmGet$title = dsItemBean.realmGet$title();
        if (realmGet$title != null) {
            Table.nativeSetString(j2, aVar.f6897g, j4, realmGet$title, false);
        } else {
            Table.nativeSetNull(j2, aVar.f6897g, j4, false);
        }
        String realmGet$lanmu_id = dsItemBean.realmGet$lanmu_id();
        if (realmGet$lanmu_id != null) {
            Table.nativeSetString(j2, aVar.f6898h, j4, realmGet$lanmu_id, false);
        } else {
            Table.nativeSetNull(j2, aVar.f6898h, j4, false);
        }
        String realmGet$create_time = dsItemBean.realmGet$create_time();
        if (realmGet$create_time != null) {
            Table.nativeSetString(j2, aVar.f6899i, j4, realmGet$create_time, false);
        } else {
            Table.nativeSetNull(j2, aVar.f6899i, j4, false);
        }
        String realmGet$update_time = dsItemBean.realmGet$update_time();
        if (realmGet$update_time != null) {
            Table.nativeSetString(j2, aVar.f6900j, j4, realmGet$update_time, false);
        } else {
            Table.nativeSetNull(j2, aVar.f6900j, j4, false);
        }
        String realmGet$sort = dsItemBean.realmGet$sort();
        if (realmGet$sort != null) {
            Table.nativeSetString(j2, aVar.f6901k, j4, realmGet$sort, false);
        } else {
            Table.nativeSetNull(j2, aVar.f6901k, j4, false);
        }
        String realmGet$status = dsItemBean.realmGet$status();
        if (realmGet$status != null) {
            Table.nativeSetString(j2, aVar.f6902l, j4, realmGet$status, false);
        } else {
            Table.nativeSetNull(j2, aVar.f6902l, j4, false);
        }
        String realmGet$view = dsItemBean.realmGet$view();
        if (realmGet$view != null) {
            Table.nativeSetString(j2, aVar.f6903m, j4, realmGet$view, false);
        } else {
            Table.nativeSetNull(j2, aVar.f6903m, j4, false);
        }
        String realmGet$image = dsItemBean.realmGet$image();
        if (realmGet$image != null) {
            Table.nativeSetString(j2, aVar.n, j4, realmGet$image, false);
        } else {
            Table.nativeSetNull(j2, aVar.n, j4, false);
        }
        String realmGet$type = dsItemBean.realmGet$type();
        if (realmGet$type != null) {
            Table.nativeSetString(j2, aVar.o, j4, realmGet$type, false);
        } else {
            Table.nativeSetNull(j2, aVar.o, j4, false);
        }
        String realmGet$auther = dsItemBean.realmGet$auther();
        if (realmGet$auther != null) {
            Table.nativeSetString(j2, aVar.p, j4, realmGet$auther, false);
        } else {
            Table.nativeSetNull(j2, aVar.p, j4, false);
        }
        String realmGet$desc = dsItemBean.realmGet$desc();
        if (realmGet$desc != null) {
            Table.nativeSetString(j2, aVar.q, j4, realmGet$desc, false);
        } else {
            Table.nativeSetNull(j2, aVar.q, j4, false);
        }
        String realmGet$mark = dsItemBean.realmGet$mark();
        if (realmGet$mark != null) {
            Table.nativeSetString(j2, aVar.r, j4, realmGet$mark, false);
        } else {
            Table.nativeSetNull(j2, aVar.r, j4, false);
        }
        String realmGet$ticai_id = dsItemBean.realmGet$ticai_id();
        if (realmGet$ticai_id != null) {
            Table.nativeSetString(j2, aVar.s, j4, realmGet$ticai_id, false);
        } else {
            Table.nativeSetNull(j2, aVar.s, j4, false);
        }
        String realmGet$duzhequn_id = dsItemBean.realmGet$duzhequn_id();
        if (realmGet$duzhequn_id != null) {
            Table.nativeSetString(j2, aVar.t, j4, realmGet$duzhequn_id, false);
        } else {
            Table.nativeSetNull(j2, aVar.t, j4, false);
        }
        String realmGet$diyu_id = dsItemBean.realmGet$diyu_id();
        if (realmGet$diyu_id != null) {
            Table.nativeSetString(j2, aVar.u, j4, realmGet$diyu_id, false);
        } else {
            Table.nativeSetNull(j2, aVar.u, j4, false);
        }
        String realmGet$mhstatus = dsItemBean.realmGet$mhstatus();
        if (realmGet$mhstatus != null) {
            Table.nativeSetString(j2, aVar.v, j4, realmGet$mhstatus, false);
        } else {
            Table.nativeSetNull(j2, aVar.v, j4, false);
        }
        String realmGet$tjswitch = dsItemBean.realmGet$tjswitch();
        if (realmGet$tjswitch != null) {
            Table.nativeSetString(j2, aVar.w, j4, realmGet$tjswitch, false);
        } else {
            Table.nativeSetNull(j2, aVar.w, j4, false);
        }
        String realmGet$isfree = dsItemBean.realmGet$isfree();
        if (realmGet$isfree != null) {
            Table.nativeSetString(j2, aVar.x, j4, realmGet$isfree, false);
        } else {
            Table.nativeSetNull(j2, aVar.x, j4, false);
        }
        String realmGet$cjid = dsItemBean.realmGet$cjid();
        if (realmGet$cjid != null) {
            Table.nativeSetString(j2, aVar.y, j4, realmGet$cjid, false);
        } else {
            Table.nativeSetNull(j2, aVar.y, j4, false);
        }
        String realmGet$cjstatus = dsItemBean.realmGet$cjstatus();
        if (realmGet$cjstatus != null) {
            Table.nativeSetString(j2, aVar.z, j4, realmGet$cjstatus, false);
        } else {
            Table.nativeSetNull(j2, aVar.z, j4, false);
        }
        String realmGet$cjname = dsItemBean.realmGet$cjname();
        if (realmGet$cjname != null) {
            Table.nativeSetString(j2, aVar.A, j4, realmGet$cjname, false);
        } else {
            Table.nativeSetNull(j2, aVar.A, j4, false);
        }
        String realmGet$keyword = dsItemBean.realmGet$keyword();
        if (realmGet$keyword != null) {
            Table.nativeSetString(j2, aVar.B, j4, realmGet$keyword, false);
        } else {
            Table.nativeSetNull(j2, aVar.B, j4, false);
        }
        String realmGet$last_chapter_title = dsItemBean.realmGet$last_chapter_title();
        if (realmGet$last_chapter_title != null) {
            Table.nativeSetString(j2, aVar.C, j4, realmGet$last_chapter_title, false);
        } else {
            Table.nativeSetNull(j2, aVar.C, j4, false);
        }
        String realmGet$searchnums = dsItemBean.realmGet$searchnums();
        if (realmGet$searchnums != null) {
            Table.nativeSetString(j2, aVar.D, j4, realmGet$searchnums, false);
        } else {
            Table.nativeSetNull(j2, aVar.D, j4, false);
        }
        String realmGet$last_chapter = dsItemBean.realmGet$last_chapter();
        if (realmGet$last_chapter != null) {
            Table.nativeSetString(j2, aVar.E, j4, realmGet$last_chapter, false);
        } else {
            Table.nativeSetNull(j2, aVar.E, j4, false);
        }
        String realmGet$isjingpin = dsItemBean.realmGet$isjingpin();
        if (realmGet$isjingpin != null) {
            Table.nativeSetString(j2, aVar.F, j4, realmGet$isjingpin, false);
        } else {
            Table.nativeSetNull(j2, aVar.F, j4, false);
        }
        String realmGet$xianmian = dsItemBean.realmGet$xianmian();
        if (realmGet$xianmian != null) {
            Table.nativeSetString(j2, aVar.G, j4, realmGet$xianmian, false);
        } else {
            Table.nativeSetNull(j2, aVar.G, j4, false);
        }
        String realmGet$cover = dsItemBean.realmGet$cover();
        if (realmGet$cover != null) {
            Table.nativeSetString(j2, aVar.H, j4, realmGet$cover, false);
        } else {
            Table.nativeSetNull(j2, aVar.H, j4, false);
        }
        String realmGet$ishot = dsItemBean.realmGet$ishot();
        if (realmGet$ishot != null) {
            Table.nativeSetString(j2, aVar.I, j4, realmGet$ishot, false);
        } else {
            Table.nativeSetNull(j2, aVar.I, j4, false);
        }
        String realmGet$issole = dsItemBean.realmGet$issole();
        if (realmGet$issole != null) {
            Table.nativeSetString(j2, aVar.J, j4, realmGet$issole, false);
        } else {
            Table.nativeSetNull(j2, aVar.J, j4, false);
        }
        String realmGet$isnew = dsItemBean.realmGet$isnew();
        if (realmGet$isnew != null) {
            Table.nativeSetString(j2, aVar.K, j4, realmGet$isnew, false);
        } else {
            Table.nativeSetNull(j2, aVar.K, j4, false);
        }
        String realmGet$h = dsItemBean.realmGet$h();
        if (realmGet$h != null) {
            Table.nativeSetString(j2, aVar.L, j4, realmGet$h, false);
        } else {
            Table.nativeSetNull(j2, aVar.L, j4, false);
        }
        String realmGet$vipcanread = dsItemBean.realmGet$vipcanread();
        if (realmGet$vipcanread != null) {
            Table.nativeSetString(j2, aVar.M, j4, realmGet$vipcanread, false);
        } else {
            Table.nativeSetNull(j2, aVar.M, j4, false);
        }
        String realmGet$pingfen = dsItemBean.realmGet$pingfen();
        if (realmGet$pingfen != null) {
            Table.nativeSetString(j2, aVar.N, j4, realmGet$pingfen, false);
        } else {
            Table.nativeSetNull(j2, aVar.N, j4, false);
        }
        String realmGet$contentType = dsItemBean.realmGet$contentType();
        if (realmGet$contentType != null) {
            Table.nativeSetString(j2, aVar.O, j4, realmGet$contentType, false);
        } else {
            Table.nativeSetNull(j2, aVar.O, j4, false);
        }
        return j4;
    }

    public static com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy newProxyInstance(g.a.a aVar, p pVar) {
        a.c cVar = g.a.a.f6273i.get();
        k0 G = aVar.G();
        G.a();
        c a2 = G.f6370f.a(DsItemBean.class);
        List<String> emptyList = Collections.emptyList();
        cVar.a = aVar;
        cVar.b = pVar;
        cVar.f6278c = a2;
        cVar.f6279d = false;
        cVar.f6280e = emptyList;
        com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy com_comeback_data_ui_ds_bean_dsitembeanrealmproxy = new com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy();
        cVar.a();
        return com_comeback_data_ui_ds_bean_dsitembeanrealmproxy;
    }

    public static DsItemBean update(x xVar, a aVar, DsItemBean dsItemBean, DsItemBean dsItemBean2, Map<e0, n> map, Set<m> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(xVar.f6401j.e(DsItemBean.class), aVar.f6895e, set);
        osObjectBuilder.g(aVar.f6896f, dsItemBean2.realmGet$id());
        osObjectBuilder.g(aVar.f6897g, dsItemBean2.realmGet$title());
        osObjectBuilder.g(aVar.f6898h, dsItemBean2.realmGet$lanmu_id());
        osObjectBuilder.g(aVar.f6899i, dsItemBean2.realmGet$create_time());
        osObjectBuilder.g(aVar.f6900j, dsItemBean2.realmGet$update_time());
        osObjectBuilder.g(aVar.f6901k, dsItemBean2.realmGet$sort());
        osObjectBuilder.g(aVar.f6902l, dsItemBean2.realmGet$status());
        osObjectBuilder.g(aVar.f6903m, dsItemBean2.realmGet$view());
        osObjectBuilder.g(aVar.n, dsItemBean2.realmGet$image());
        osObjectBuilder.g(aVar.o, dsItemBean2.realmGet$type());
        osObjectBuilder.g(aVar.p, dsItemBean2.realmGet$auther());
        osObjectBuilder.g(aVar.q, dsItemBean2.realmGet$desc());
        osObjectBuilder.g(aVar.r, dsItemBean2.realmGet$mark());
        osObjectBuilder.g(aVar.s, dsItemBean2.realmGet$ticai_id());
        osObjectBuilder.g(aVar.t, dsItemBean2.realmGet$duzhequn_id());
        osObjectBuilder.g(aVar.u, dsItemBean2.realmGet$diyu_id());
        osObjectBuilder.g(aVar.v, dsItemBean2.realmGet$mhstatus());
        osObjectBuilder.g(aVar.w, dsItemBean2.realmGet$tjswitch());
        osObjectBuilder.g(aVar.x, dsItemBean2.realmGet$isfree());
        osObjectBuilder.g(aVar.y, dsItemBean2.realmGet$cjid());
        osObjectBuilder.g(aVar.z, dsItemBean2.realmGet$cjstatus());
        osObjectBuilder.g(aVar.A, dsItemBean2.realmGet$cjname());
        osObjectBuilder.g(aVar.B, dsItemBean2.realmGet$keyword());
        osObjectBuilder.g(aVar.C, dsItemBean2.realmGet$last_chapter_title());
        osObjectBuilder.g(aVar.D, dsItemBean2.realmGet$searchnums());
        osObjectBuilder.g(aVar.E, dsItemBean2.realmGet$last_chapter());
        osObjectBuilder.g(aVar.F, dsItemBean2.realmGet$isjingpin());
        osObjectBuilder.g(aVar.G, dsItemBean2.realmGet$xianmian());
        osObjectBuilder.g(aVar.H, dsItemBean2.realmGet$cover());
        osObjectBuilder.g(aVar.I, dsItemBean2.realmGet$ishot());
        osObjectBuilder.g(aVar.J, dsItemBean2.realmGet$issole());
        osObjectBuilder.g(aVar.K, dsItemBean2.realmGet$isnew());
        osObjectBuilder.g(aVar.L, dsItemBean2.realmGet$h());
        osObjectBuilder.g(aVar.M, dsItemBean2.realmGet$vipcanread());
        osObjectBuilder.g(aVar.N, dsItemBean2.realmGet$pingfen());
        osObjectBuilder.g(aVar.O, dsItemBean2.realmGet$contentType());
        osObjectBuilder.F();
        return dsItemBean;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy com_comeback_data_ui_ds_bean_dsitembeanrealmproxy = (com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy) obj;
        String str = this.proxyState.f6391e.b.f6281c;
        String str2 = com_comeback_data_ui_ds_bean_dsitembeanrealmproxy.proxyState.f6391e.b.f6281c;
        if (str == null ? str2 == null : str.equals(str2)) {
            String j2 = this.proxyState.f6389c.d().j();
            String j3 = com_comeback_data_ui_ds_bean_dsitembeanrealmproxy.proxyState.f6389c.d().j();
            if (j2 == null ? j3 == null : j2.equals(j3)) {
                return this.proxyState.f6389c.l() == com_comeback_data_ui_ds_bean_dsitembeanrealmproxy.proxyState.f6389c.l();
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        v<DsItemBean> vVar = this.proxyState;
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
        v<DsItemBean> vVar = new v<>(this);
        this.proxyState = vVar;
        vVar.f6391e = cVar.a;
        vVar.f6389c = cVar.b;
        vVar.f6392f = cVar.f6279d;
        if (vVar == null) {
            throw null;
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$auther() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.p);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$cjid() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.y);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$cjname() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.A);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$cjstatus() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.z);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$contentType() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.O);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$cover() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.H);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$create_time() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.f6899i);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$desc() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.q);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$diyu_id() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.u);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$duzhequn_id() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.t);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$h() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.L);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$id() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.f6896f);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$image() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.n);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$isfree() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.x);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$ishot() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.I);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$isjingpin() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.F);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$isnew() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.K);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$issole() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.J);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$keyword() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.B);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$lanmu_id() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.f6898h);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$last_chapter() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.E);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$last_chapter_title() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.C);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$mark() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.r);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$mhstatus() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.v);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$pingfen() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.N);
    }

    @Override // g.a.f1.n
    public v<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$searchnums() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.D);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$sort() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.f6901k);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$status() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.f6902l);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$ticai_id() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.s);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$title() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.f6897g);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$tjswitch() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.w);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$type() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.o);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$update_time() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.f6900j);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$view() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.f6903m);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$vipcanread() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.M);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$xianmian() {
        this.proxyState.f6391e.f();
        return this.proxyState.f6389c.q(this.columnInfo.G);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$auther(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
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
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.p);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.p, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$cjid(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.y, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.y, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.y);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.y, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$cjname(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.A, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.A, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.A);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.A, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$cjstatus(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.z, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.z, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.z);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.z, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$contentType(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.O, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.O, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.O);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.O, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$cover(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.H, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.H, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.H);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.H, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$create_time(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.f6899i, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.f6899i, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.f6899i);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.f6899i, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$desc(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
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
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.q);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.q, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$diyu_id(String str) {
        v<DsItemBean> vVar = this.proxyState;
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

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$duzhequn_id(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
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
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.t);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.t, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$h(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.L, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.L, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.L);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.L, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$id(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            return;
        }
        vVar.f6391e.f();
        throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$image(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
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
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.n);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.n, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$isfree(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.x, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.x, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.x);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.x, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$ishot(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.I, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.I, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.I);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.I, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$isjingpin(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.F, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.F, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.F);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.F, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$isnew(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.K, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.K, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.K);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.K, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$issole(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.J, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.J, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.J);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.J, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$keyword(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.B, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.B, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.B);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.B, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$lanmu_id(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.f6898h, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.f6898h, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.f6898h);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.f6898h, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$last_chapter(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.E, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.E, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.E);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.E, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$last_chapter_title(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.C, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.C, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.C);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.C, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$mark(String str) {
        v<DsItemBean> vVar = this.proxyState;
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

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$mhstatus(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.v, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.v, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.v);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.v, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$pingfen(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.N, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.N, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.N);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.N, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$searchnums(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.D, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.D, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.D);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.D, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$sort(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.f6901k, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.f6901k, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.f6901k);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.f6901k, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$status(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.f6902l, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.f6902l, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.f6902l);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.f6902l, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$ticai_id(String str) {
        v<DsItemBean> vVar = this.proxyState;
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

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$title(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.f6897g, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.f6897g, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.f6897g);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.f6897g, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$tjswitch(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.w, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.w, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.w);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.w, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$type(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
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
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.o);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.o, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$update_time(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.f6900j, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.f6900j, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.f6900j);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.f6900j, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$view(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.f6903m, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.f6903m, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.f6903m);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.f6903m, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$vipcanread(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.M, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.M, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.M);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.M, str);
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$xianmian(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (vVar.b) {
            if (vVar.f6392f) {
                p pVar = vVar.f6389c;
                if (str == null) {
                    pVar.d().q(this.columnInfo.G, pVar.l(), true);
                    return;
                } else {
                    pVar.d().r(this.columnInfo.G, pVar.l(), str, true);
                    return;
                }
            }
            return;
        }
        vVar.f6391e.f();
        if (str == null) {
            this.proxyState.f6389c.f(this.columnInfo.G);
        } else {
            this.proxyState.f6389c.a(this.columnInfo.G, str);
        }
    }

    public String toString() {
        if (g0.isValid(this)) {
            StringBuilder q = f.b.a.a.a.q("DsItemBean = proxy[", "{id:");
            f.b.a.a.a.C(q, realmGet$id() != null ? realmGet$id() : "null", "}", ",", "{title:");
            f.b.a.a.a.C(q, realmGet$title() != null ? realmGet$title() : "null", "}", ",", "{lanmu_id:");
            f.b.a.a.a.C(q, realmGet$lanmu_id() != null ? realmGet$lanmu_id() : "null", "}", ",", "{create_time:");
            f.b.a.a.a.C(q, realmGet$create_time() != null ? realmGet$create_time() : "null", "}", ",", "{update_time:");
            f.b.a.a.a.C(q, realmGet$update_time() != null ? realmGet$update_time() : "null", "}", ",", "{sort:");
            f.b.a.a.a.C(q, realmGet$sort() != null ? realmGet$sort() : "null", "}", ",", "{status:");
            f.b.a.a.a.C(q, realmGet$status() != null ? realmGet$status() : "null", "}", ",", "{view:");
            f.b.a.a.a.C(q, realmGet$view() != null ? realmGet$view() : "null", "}", ",", "{image:");
            f.b.a.a.a.C(q, realmGet$image() != null ? realmGet$image() : "null", "}", ",", "{type:");
            f.b.a.a.a.C(q, realmGet$type() != null ? realmGet$type() : "null", "}", ",", "{auther:");
            f.b.a.a.a.C(q, realmGet$auther() != null ? realmGet$auther() : "null", "}", ",", "{desc:");
            f.b.a.a.a.C(q, realmGet$desc() != null ? realmGet$desc() : "null", "}", ",", "{mark:");
            f.b.a.a.a.C(q, realmGet$mark() != null ? realmGet$mark() : "null", "}", ",", "{ticai_id:");
            f.b.a.a.a.C(q, realmGet$ticai_id() != null ? realmGet$ticai_id() : "null", "}", ",", "{duzhequn_id:");
            f.b.a.a.a.C(q, realmGet$duzhequn_id() != null ? realmGet$duzhequn_id() : "null", "}", ",", "{diyu_id:");
            f.b.a.a.a.C(q, realmGet$diyu_id() != null ? realmGet$diyu_id() : "null", "}", ",", "{mhstatus:");
            f.b.a.a.a.C(q, realmGet$mhstatus() != null ? realmGet$mhstatus() : "null", "}", ",", "{tjswitch:");
            f.b.a.a.a.C(q, realmGet$tjswitch() != null ? realmGet$tjswitch() : "null", "}", ",", "{isfree:");
            f.b.a.a.a.C(q, realmGet$isfree() != null ? realmGet$isfree() : "null", "}", ",", "{cjid:");
            f.b.a.a.a.C(q, realmGet$cjid() != null ? realmGet$cjid() : "null", "}", ",", "{cjstatus:");
            f.b.a.a.a.C(q, realmGet$cjstatus() != null ? realmGet$cjstatus() : "null", "}", ",", "{cjname:");
            f.b.a.a.a.C(q, realmGet$cjname() != null ? realmGet$cjname() : "null", "}", ",", "{keyword:");
            f.b.a.a.a.C(q, realmGet$keyword() != null ? realmGet$keyword() : "null", "}", ",", "{last_chapter_title:");
            f.b.a.a.a.C(q, realmGet$last_chapter_title() != null ? realmGet$last_chapter_title() : "null", "}", ",", "{searchnums:");
            f.b.a.a.a.C(q, realmGet$searchnums() != null ? realmGet$searchnums() : "null", "}", ",", "{last_chapter:");
            f.b.a.a.a.C(q, realmGet$last_chapter() != null ? realmGet$last_chapter() : "null", "}", ",", "{isjingpin:");
            f.b.a.a.a.C(q, realmGet$isjingpin() != null ? realmGet$isjingpin() : "null", "}", ",", "{xianmian:");
            f.b.a.a.a.C(q, realmGet$xianmian() != null ? realmGet$xianmian() : "null", "}", ",", "{cover:");
            f.b.a.a.a.C(q, realmGet$cover() != null ? realmGet$cover() : "null", "}", ",", "{ishot:");
            f.b.a.a.a.C(q, realmGet$ishot() != null ? realmGet$ishot() : "null", "}", ",", "{issole:");
            f.b.a.a.a.C(q, realmGet$issole() != null ? realmGet$issole() : "null", "}", ",", "{isnew:");
            f.b.a.a.a.C(q, realmGet$isnew() != null ? realmGet$isnew() : "null", "}", ",", "{h:");
            f.b.a.a.a.C(q, realmGet$h() != null ? realmGet$h() : "null", "}", ",", "{vipcanread:");
            f.b.a.a.a.C(q, realmGet$vipcanread() != null ? realmGet$vipcanread() : "null", "}", ",", "{pingfen:");
            f.b.a.a.a.C(q, realmGet$pingfen() != null ? realmGet$pingfen() : "null", "}", ",", "{contentType:");
            q.append(realmGet$contentType() != null ? realmGet$contentType() : "null");
            q.append("}");
            q.append("]");
            return q.toString();
        }
        return "Invalid object";
    }

    public static void insert(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long nativeFindFirstString;
        DsItemBean dsItemBean;
        Table e2 = xVar.f6401j.e(DsItemBean.class);
        long j2 = e2.a;
        k0 k0Var = xVar.f6401j;
        k0Var.a();
        a aVar = (a) k0Var.f6370f.a(DsItemBean.class);
        long j3 = aVar.f6896f;
        while (it.hasNext()) {
            DsItemBean dsItemBean2 = (DsItemBean) it.next();
            if (!map.containsKey(dsItemBean2)) {
                if (dsItemBean2 instanceof n) {
                    n nVar = (n) dsItemBean2;
                    if (nVar.realmGet$proxyState().f6391e != null && nVar.realmGet$proxyState().f6391e.b.f6281c.equals(xVar.b.f6281c)) {
                        map.put(dsItemBean2, Long.valueOf(nVar.realmGet$proxyState().f6389c.l()));
                    }
                }
                String realmGet$id = dsItemBean2.realmGet$id();
                if (realmGet$id == null) {
                    nativeFindFirstString = Table.nativeFindFirstNull(j2, j3);
                } else {
                    nativeFindFirstString = Table.nativeFindFirstString(j2, j3, realmGet$id);
                }
                if (nativeFindFirstString == -1) {
                    long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j3, realmGet$id);
                    map.put(dsItemBean2, Long.valueOf(createRowWithPrimaryKey));
                    String realmGet$title = dsItemBean2.realmGet$title();
                    if (realmGet$title != null) {
                        dsItemBean = dsItemBean2;
                        Table.nativeSetString(j2, aVar.f6897g, createRowWithPrimaryKey, realmGet$title, false);
                    } else {
                        dsItemBean = dsItemBean2;
                    }
                    String realmGet$lanmu_id = dsItemBean.realmGet$lanmu_id();
                    if (realmGet$lanmu_id != null) {
                        Table.nativeSetString(j2, aVar.f6898h, createRowWithPrimaryKey, realmGet$lanmu_id, false);
                    }
                    String realmGet$create_time = dsItemBean.realmGet$create_time();
                    if (realmGet$create_time != null) {
                        Table.nativeSetString(j2, aVar.f6899i, createRowWithPrimaryKey, realmGet$create_time, false);
                    }
                    String realmGet$update_time = dsItemBean.realmGet$update_time();
                    if (realmGet$update_time != null) {
                        Table.nativeSetString(j2, aVar.f6900j, createRowWithPrimaryKey, realmGet$update_time, false);
                    }
                    String realmGet$sort = dsItemBean.realmGet$sort();
                    if (realmGet$sort != null) {
                        Table.nativeSetString(j2, aVar.f6901k, createRowWithPrimaryKey, realmGet$sort, false);
                    }
                    String realmGet$status = dsItemBean.realmGet$status();
                    if (realmGet$status != null) {
                        Table.nativeSetString(j2, aVar.f6902l, createRowWithPrimaryKey, realmGet$status, false);
                    }
                    String realmGet$view = dsItemBean.realmGet$view();
                    if (realmGet$view != null) {
                        Table.nativeSetString(j2, aVar.f6903m, createRowWithPrimaryKey, realmGet$view, false);
                    }
                    String realmGet$image = dsItemBean.realmGet$image();
                    if (realmGet$image != null) {
                        Table.nativeSetString(j2, aVar.n, createRowWithPrimaryKey, realmGet$image, false);
                    }
                    String realmGet$type = dsItemBean.realmGet$type();
                    if (realmGet$type != null) {
                        Table.nativeSetString(j2, aVar.o, createRowWithPrimaryKey, realmGet$type, false);
                    }
                    String realmGet$auther = dsItemBean.realmGet$auther();
                    if (realmGet$auther != null) {
                        Table.nativeSetString(j2, aVar.p, createRowWithPrimaryKey, realmGet$auther, false);
                    }
                    String realmGet$desc = dsItemBean.realmGet$desc();
                    if (realmGet$desc != null) {
                        Table.nativeSetString(j2, aVar.q, createRowWithPrimaryKey, realmGet$desc, false);
                    }
                    String realmGet$mark = dsItemBean.realmGet$mark();
                    if (realmGet$mark != null) {
                        Table.nativeSetString(j2, aVar.r, createRowWithPrimaryKey, realmGet$mark, false);
                    }
                    String realmGet$ticai_id = dsItemBean.realmGet$ticai_id();
                    if (realmGet$ticai_id != null) {
                        Table.nativeSetString(j2, aVar.s, createRowWithPrimaryKey, realmGet$ticai_id, false);
                    }
                    String realmGet$duzhequn_id = dsItemBean.realmGet$duzhequn_id();
                    if (realmGet$duzhequn_id != null) {
                        Table.nativeSetString(j2, aVar.t, createRowWithPrimaryKey, realmGet$duzhequn_id, false);
                    }
                    String realmGet$diyu_id = dsItemBean.realmGet$diyu_id();
                    if (realmGet$diyu_id != null) {
                        Table.nativeSetString(j2, aVar.u, createRowWithPrimaryKey, realmGet$diyu_id, false);
                    }
                    String realmGet$mhstatus = dsItemBean.realmGet$mhstatus();
                    if (realmGet$mhstatus != null) {
                        Table.nativeSetString(j2, aVar.v, createRowWithPrimaryKey, realmGet$mhstatus, false);
                    }
                    String realmGet$tjswitch = dsItemBean.realmGet$tjswitch();
                    if (realmGet$tjswitch != null) {
                        Table.nativeSetString(j2, aVar.w, createRowWithPrimaryKey, realmGet$tjswitch, false);
                    }
                    String realmGet$isfree = dsItemBean.realmGet$isfree();
                    if (realmGet$isfree != null) {
                        Table.nativeSetString(j2, aVar.x, createRowWithPrimaryKey, realmGet$isfree, false);
                    }
                    String realmGet$cjid = dsItemBean.realmGet$cjid();
                    if (realmGet$cjid != null) {
                        Table.nativeSetString(j2, aVar.y, createRowWithPrimaryKey, realmGet$cjid, false);
                    }
                    String realmGet$cjstatus = dsItemBean.realmGet$cjstatus();
                    if (realmGet$cjstatus != null) {
                        Table.nativeSetString(j2, aVar.z, createRowWithPrimaryKey, realmGet$cjstatus, false);
                    }
                    String realmGet$cjname = dsItemBean.realmGet$cjname();
                    if (realmGet$cjname != null) {
                        Table.nativeSetString(j2, aVar.A, createRowWithPrimaryKey, realmGet$cjname, false);
                    }
                    String realmGet$keyword = dsItemBean.realmGet$keyword();
                    if (realmGet$keyword != null) {
                        Table.nativeSetString(j2, aVar.B, createRowWithPrimaryKey, realmGet$keyword, false);
                    }
                    String realmGet$last_chapter_title = dsItemBean.realmGet$last_chapter_title();
                    if (realmGet$last_chapter_title != null) {
                        Table.nativeSetString(j2, aVar.C, createRowWithPrimaryKey, realmGet$last_chapter_title, false);
                    }
                    String realmGet$searchnums = dsItemBean.realmGet$searchnums();
                    if (realmGet$searchnums != null) {
                        Table.nativeSetString(j2, aVar.D, createRowWithPrimaryKey, realmGet$searchnums, false);
                    }
                    String realmGet$last_chapter = dsItemBean.realmGet$last_chapter();
                    if (realmGet$last_chapter != null) {
                        Table.nativeSetString(j2, aVar.E, createRowWithPrimaryKey, realmGet$last_chapter, false);
                    }
                    String realmGet$isjingpin = dsItemBean.realmGet$isjingpin();
                    if (realmGet$isjingpin != null) {
                        Table.nativeSetString(j2, aVar.F, createRowWithPrimaryKey, realmGet$isjingpin, false);
                    }
                    String realmGet$xianmian = dsItemBean.realmGet$xianmian();
                    if (realmGet$xianmian != null) {
                        Table.nativeSetString(j2, aVar.G, createRowWithPrimaryKey, realmGet$xianmian, false);
                    }
                    String realmGet$cover = dsItemBean.realmGet$cover();
                    if (realmGet$cover != null) {
                        Table.nativeSetString(j2, aVar.H, createRowWithPrimaryKey, realmGet$cover, false);
                    }
                    String realmGet$ishot = dsItemBean.realmGet$ishot();
                    if (realmGet$ishot != null) {
                        Table.nativeSetString(j2, aVar.I, createRowWithPrimaryKey, realmGet$ishot, false);
                    }
                    String realmGet$issole = dsItemBean.realmGet$issole();
                    if (realmGet$issole != null) {
                        Table.nativeSetString(j2, aVar.J, createRowWithPrimaryKey, realmGet$issole, false);
                    }
                    String realmGet$isnew = dsItemBean.realmGet$isnew();
                    if (realmGet$isnew != null) {
                        Table.nativeSetString(j2, aVar.K, createRowWithPrimaryKey, realmGet$isnew, false);
                    }
                    String realmGet$h = dsItemBean.realmGet$h();
                    if (realmGet$h != null) {
                        Table.nativeSetString(j2, aVar.L, createRowWithPrimaryKey, realmGet$h, false);
                    }
                    String realmGet$vipcanread = dsItemBean.realmGet$vipcanread();
                    if (realmGet$vipcanread != null) {
                        Table.nativeSetString(j2, aVar.M, createRowWithPrimaryKey, realmGet$vipcanread, false);
                    }
                    String realmGet$pingfen = dsItemBean.realmGet$pingfen();
                    if (realmGet$pingfen != null) {
                        Table.nativeSetString(j2, aVar.N, createRowWithPrimaryKey, realmGet$pingfen, false);
                    }
                    String realmGet$contentType = dsItemBean.realmGet$contentType();
                    if (realmGet$contentType != null) {
                        Table.nativeSetString(j2, aVar.O, createRowWithPrimaryKey, realmGet$contentType, false);
                    }
                } else {
                    Table.s(realmGet$id);
                    throw null;
                }
            }
        }
    }

    public static void insertOrUpdate(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long nativeFindFirstString;
        DsItemBean dsItemBean;
        Table e2 = xVar.f6401j.e(DsItemBean.class);
        long j2 = e2.a;
        k0 k0Var = xVar.f6401j;
        k0Var.a();
        a aVar = (a) k0Var.f6370f.a(DsItemBean.class);
        long j3 = aVar.f6896f;
        while (it.hasNext()) {
            DsItemBean dsItemBean2 = (DsItemBean) it.next();
            if (!map.containsKey(dsItemBean2)) {
                if (dsItemBean2 instanceof n) {
                    n nVar = (n) dsItemBean2;
                    if (nVar.realmGet$proxyState().f6391e != null && nVar.realmGet$proxyState().f6391e.b.f6281c.equals(xVar.b.f6281c)) {
                        map.put(dsItemBean2, Long.valueOf(nVar.realmGet$proxyState().f6389c.l()));
                    }
                }
                String realmGet$id = dsItemBean2.realmGet$id();
                if (realmGet$id == null) {
                    nativeFindFirstString = Table.nativeFindFirstNull(j2, j3);
                } else {
                    nativeFindFirstString = Table.nativeFindFirstString(j2, j3, realmGet$id);
                }
                long createRowWithPrimaryKey = nativeFindFirstString == -1 ? OsObject.createRowWithPrimaryKey(e2, j3, realmGet$id) : nativeFindFirstString;
                map.put(dsItemBean2, Long.valueOf(createRowWithPrimaryKey));
                String realmGet$title = dsItemBean2.realmGet$title();
                if (realmGet$title != null) {
                    dsItemBean = dsItemBean2;
                    Table.nativeSetString(j2, aVar.f6897g, createRowWithPrimaryKey, realmGet$title, false);
                } else {
                    dsItemBean = dsItemBean2;
                    Table.nativeSetNull(j2, aVar.f6897g, createRowWithPrimaryKey, false);
                }
                String realmGet$lanmu_id = dsItemBean.realmGet$lanmu_id();
                if (realmGet$lanmu_id != null) {
                    Table.nativeSetString(j2, aVar.f6898h, createRowWithPrimaryKey, realmGet$lanmu_id, false);
                } else {
                    Table.nativeSetNull(j2, aVar.f6898h, createRowWithPrimaryKey, false);
                }
                String realmGet$create_time = dsItemBean.realmGet$create_time();
                if (realmGet$create_time != null) {
                    Table.nativeSetString(j2, aVar.f6899i, createRowWithPrimaryKey, realmGet$create_time, false);
                } else {
                    Table.nativeSetNull(j2, aVar.f6899i, createRowWithPrimaryKey, false);
                }
                String realmGet$update_time = dsItemBean.realmGet$update_time();
                if (realmGet$update_time != null) {
                    Table.nativeSetString(j2, aVar.f6900j, createRowWithPrimaryKey, realmGet$update_time, false);
                } else {
                    Table.nativeSetNull(j2, aVar.f6900j, createRowWithPrimaryKey, false);
                }
                String realmGet$sort = dsItemBean.realmGet$sort();
                if (realmGet$sort != null) {
                    Table.nativeSetString(j2, aVar.f6901k, createRowWithPrimaryKey, realmGet$sort, false);
                } else {
                    Table.nativeSetNull(j2, aVar.f6901k, createRowWithPrimaryKey, false);
                }
                String realmGet$status = dsItemBean.realmGet$status();
                if (realmGet$status != null) {
                    Table.nativeSetString(j2, aVar.f6902l, createRowWithPrimaryKey, realmGet$status, false);
                } else {
                    Table.nativeSetNull(j2, aVar.f6902l, createRowWithPrimaryKey, false);
                }
                String realmGet$view = dsItemBean.realmGet$view();
                if (realmGet$view != null) {
                    Table.nativeSetString(j2, aVar.f6903m, createRowWithPrimaryKey, realmGet$view, false);
                } else {
                    Table.nativeSetNull(j2, aVar.f6903m, createRowWithPrimaryKey, false);
                }
                String realmGet$image = dsItemBean.realmGet$image();
                if (realmGet$image != null) {
                    Table.nativeSetString(j2, aVar.n, createRowWithPrimaryKey, realmGet$image, false);
                } else {
                    Table.nativeSetNull(j2, aVar.n, createRowWithPrimaryKey, false);
                }
                String realmGet$type = dsItemBean.realmGet$type();
                if (realmGet$type != null) {
                    Table.nativeSetString(j2, aVar.o, createRowWithPrimaryKey, realmGet$type, false);
                } else {
                    Table.nativeSetNull(j2, aVar.o, createRowWithPrimaryKey, false);
                }
                String realmGet$auther = dsItemBean.realmGet$auther();
                if (realmGet$auther != null) {
                    Table.nativeSetString(j2, aVar.p, createRowWithPrimaryKey, realmGet$auther, false);
                } else {
                    Table.nativeSetNull(j2, aVar.p, createRowWithPrimaryKey, false);
                }
                String realmGet$desc = dsItemBean.realmGet$desc();
                if (realmGet$desc != null) {
                    Table.nativeSetString(j2, aVar.q, createRowWithPrimaryKey, realmGet$desc, false);
                } else {
                    Table.nativeSetNull(j2, aVar.q, createRowWithPrimaryKey, false);
                }
                String realmGet$mark = dsItemBean.realmGet$mark();
                if (realmGet$mark != null) {
                    Table.nativeSetString(j2, aVar.r, createRowWithPrimaryKey, realmGet$mark, false);
                } else {
                    Table.nativeSetNull(j2, aVar.r, createRowWithPrimaryKey, false);
                }
                String realmGet$ticai_id = dsItemBean.realmGet$ticai_id();
                if (realmGet$ticai_id != null) {
                    Table.nativeSetString(j2, aVar.s, createRowWithPrimaryKey, realmGet$ticai_id, false);
                } else {
                    Table.nativeSetNull(j2, aVar.s, createRowWithPrimaryKey, false);
                }
                String realmGet$duzhequn_id = dsItemBean.realmGet$duzhequn_id();
                if (realmGet$duzhequn_id != null) {
                    Table.nativeSetString(j2, aVar.t, createRowWithPrimaryKey, realmGet$duzhequn_id, false);
                } else {
                    Table.nativeSetNull(j2, aVar.t, createRowWithPrimaryKey, false);
                }
                String realmGet$diyu_id = dsItemBean.realmGet$diyu_id();
                if (realmGet$diyu_id != null) {
                    Table.nativeSetString(j2, aVar.u, createRowWithPrimaryKey, realmGet$diyu_id, false);
                } else {
                    Table.nativeSetNull(j2, aVar.u, createRowWithPrimaryKey, false);
                }
                String realmGet$mhstatus = dsItemBean.realmGet$mhstatus();
                if (realmGet$mhstatus != null) {
                    Table.nativeSetString(j2, aVar.v, createRowWithPrimaryKey, realmGet$mhstatus, false);
                } else {
                    Table.nativeSetNull(j2, aVar.v, createRowWithPrimaryKey, false);
                }
                String realmGet$tjswitch = dsItemBean.realmGet$tjswitch();
                if (realmGet$tjswitch != null) {
                    Table.nativeSetString(j2, aVar.w, createRowWithPrimaryKey, realmGet$tjswitch, false);
                } else {
                    Table.nativeSetNull(j2, aVar.w, createRowWithPrimaryKey, false);
                }
                String realmGet$isfree = dsItemBean.realmGet$isfree();
                if (realmGet$isfree != null) {
                    Table.nativeSetString(j2, aVar.x, createRowWithPrimaryKey, realmGet$isfree, false);
                } else {
                    Table.nativeSetNull(j2, aVar.x, createRowWithPrimaryKey, false);
                }
                String realmGet$cjid = dsItemBean.realmGet$cjid();
                if (realmGet$cjid != null) {
                    Table.nativeSetString(j2, aVar.y, createRowWithPrimaryKey, realmGet$cjid, false);
                } else {
                    Table.nativeSetNull(j2, aVar.y, createRowWithPrimaryKey, false);
                }
                String realmGet$cjstatus = dsItemBean.realmGet$cjstatus();
                if (realmGet$cjstatus != null) {
                    Table.nativeSetString(j2, aVar.z, createRowWithPrimaryKey, realmGet$cjstatus, false);
                } else {
                    Table.nativeSetNull(j2, aVar.z, createRowWithPrimaryKey, false);
                }
                String realmGet$cjname = dsItemBean.realmGet$cjname();
                if (realmGet$cjname != null) {
                    Table.nativeSetString(j2, aVar.A, createRowWithPrimaryKey, realmGet$cjname, false);
                } else {
                    Table.nativeSetNull(j2, aVar.A, createRowWithPrimaryKey, false);
                }
                String realmGet$keyword = dsItemBean.realmGet$keyword();
                if (realmGet$keyword != null) {
                    Table.nativeSetString(j2, aVar.B, createRowWithPrimaryKey, realmGet$keyword, false);
                } else {
                    Table.nativeSetNull(j2, aVar.B, createRowWithPrimaryKey, false);
                }
                String realmGet$last_chapter_title = dsItemBean.realmGet$last_chapter_title();
                if (realmGet$last_chapter_title != null) {
                    Table.nativeSetString(j2, aVar.C, createRowWithPrimaryKey, realmGet$last_chapter_title, false);
                } else {
                    Table.nativeSetNull(j2, aVar.C, createRowWithPrimaryKey, false);
                }
                String realmGet$searchnums = dsItemBean.realmGet$searchnums();
                if (realmGet$searchnums != null) {
                    Table.nativeSetString(j2, aVar.D, createRowWithPrimaryKey, realmGet$searchnums, false);
                } else {
                    Table.nativeSetNull(j2, aVar.D, createRowWithPrimaryKey, false);
                }
                String realmGet$last_chapter = dsItemBean.realmGet$last_chapter();
                if (realmGet$last_chapter != null) {
                    Table.nativeSetString(j2, aVar.E, createRowWithPrimaryKey, realmGet$last_chapter, false);
                } else {
                    Table.nativeSetNull(j2, aVar.E, createRowWithPrimaryKey, false);
                }
                String realmGet$isjingpin = dsItemBean.realmGet$isjingpin();
                if (realmGet$isjingpin != null) {
                    Table.nativeSetString(j2, aVar.F, createRowWithPrimaryKey, realmGet$isjingpin, false);
                } else {
                    Table.nativeSetNull(j2, aVar.F, createRowWithPrimaryKey, false);
                }
                String realmGet$xianmian = dsItemBean.realmGet$xianmian();
                if (realmGet$xianmian != null) {
                    Table.nativeSetString(j2, aVar.G, createRowWithPrimaryKey, realmGet$xianmian, false);
                } else {
                    Table.nativeSetNull(j2, aVar.G, createRowWithPrimaryKey, false);
                }
                String realmGet$cover = dsItemBean.realmGet$cover();
                if (realmGet$cover != null) {
                    Table.nativeSetString(j2, aVar.H, createRowWithPrimaryKey, realmGet$cover, false);
                } else {
                    Table.nativeSetNull(j2, aVar.H, createRowWithPrimaryKey, false);
                }
                String realmGet$ishot = dsItemBean.realmGet$ishot();
                if (realmGet$ishot != null) {
                    Table.nativeSetString(j2, aVar.I, createRowWithPrimaryKey, realmGet$ishot, false);
                } else {
                    Table.nativeSetNull(j2, aVar.I, createRowWithPrimaryKey, false);
                }
                String realmGet$issole = dsItemBean.realmGet$issole();
                if (realmGet$issole != null) {
                    Table.nativeSetString(j2, aVar.J, createRowWithPrimaryKey, realmGet$issole, false);
                } else {
                    Table.nativeSetNull(j2, aVar.J, createRowWithPrimaryKey, false);
                }
                String realmGet$isnew = dsItemBean.realmGet$isnew();
                if (realmGet$isnew != null) {
                    Table.nativeSetString(j2, aVar.K, createRowWithPrimaryKey, realmGet$isnew, false);
                } else {
                    Table.nativeSetNull(j2, aVar.K, createRowWithPrimaryKey, false);
                }
                String realmGet$h = dsItemBean.realmGet$h();
                if (realmGet$h != null) {
                    Table.nativeSetString(j2, aVar.L, createRowWithPrimaryKey, realmGet$h, false);
                } else {
                    Table.nativeSetNull(j2, aVar.L, createRowWithPrimaryKey, false);
                }
                String realmGet$vipcanread = dsItemBean.realmGet$vipcanread();
                if (realmGet$vipcanread != null) {
                    Table.nativeSetString(j2, aVar.M, createRowWithPrimaryKey, realmGet$vipcanread, false);
                } else {
                    Table.nativeSetNull(j2, aVar.M, createRowWithPrimaryKey, false);
                }
                String realmGet$pingfen = dsItemBean.realmGet$pingfen();
                if (realmGet$pingfen != null) {
                    Table.nativeSetString(j2, aVar.N, createRowWithPrimaryKey, realmGet$pingfen, false);
                } else {
                    Table.nativeSetNull(j2, aVar.N, createRowWithPrimaryKey, false);
                }
                String realmGet$contentType = dsItemBean.realmGet$contentType();
                if (realmGet$contentType != null) {
                    Table.nativeSetString(j2, aVar.O, createRowWithPrimaryKey, realmGet$contentType, false);
                } else {
                    Table.nativeSetNull(j2, aVar.O, createRowWithPrimaryKey, false);
                }
            }
        }
    }
}
