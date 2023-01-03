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
        public long f6811e;

        /* renamed from: f  reason: collision with root package name */
        public long f6812f;

        /* renamed from: g  reason: collision with root package name */
        public long f6813g;

        /* renamed from: h  reason: collision with root package name */
        public long f6814h;

        /* renamed from: i  reason: collision with root package name */
        public long f6815i;

        /* renamed from: j  reason: collision with root package name */
        public long f6816j;

        /* renamed from: k  reason: collision with root package name */
        public long f6817k;

        /* renamed from: l  reason: collision with root package name */
        public long f6818l;

        /* renamed from: m  reason: collision with root package name */
        public long f6819m;
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
            this.f6812f = a("id", "id", a);
            this.f6813g = a(NotificationCompatJellybean.KEY_TITLE, NotificationCompatJellybean.KEY_TITLE, a);
            this.f6814h = a("lanmu_id", "lanmu_id", a);
            this.f6815i = a("create_time", "create_time", a);
            this.f6816j = a("update_time", "update_time", a);
            this.f6817k = a("sort", "sort", a);
            this.f6818l = a(NotificationCompat.CATEGORY_STATUS, NotificationCompat.CATEGORY_STATUS, a);
            this.f6819m = a("view", "view", a);
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
            this.f6811e = a.a();
        }

        @Override // g.a.f1.c
        public final void b(c cVar, c cVar2) {
            a aVar = (a) cVar;
            a aVar2 = (a) cVar2;
            aVar2.f6812f = aVar.f6812f;
            aVar2.f6813g = aVar.f6813g;
            aVar2.f6814h = aVar.f6814h;
            aVar2.f6815i = aVar.f6815i;
            aVar2.f6816j = aVar.f6816j;
            aVar2.f6817k = aVar.f6817k;
            aVar2.f6818l = aVar.f6818l;
            aVar2.f6819m = aVar.f6819m;
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
            aVar2.f6811e = aVar.f6811e;
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
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(xVar.f6317j.e(DsItemBean.class), aVar.f6811e, set);
        osObjectBuilder.g(aVar.f6812f, dsItemBean.realmGet$id());
        osObjectBuilder.g(aVar.f6813g, dsItemBean.realmGet$title());
        osObjectBuilder.g(aVar.f6814h, dsItemBean.realmGet$lanmu_id());
        osObjectBuilder.g(aVar.f6815i, dsItemBean.realmGet$create_time());
        osObjectBuilder.g(aVar.f6816j, dsItemBean.realmGet$update_time());
        osObjectBuilder.g(aVar.f6817k, dsItemBean.realmGet$sort());
        osObjectBuilder.g(aVar.f6818l, dsItemBean.realmGet$status());
        osObjectBuilder.g(aVar.f6819m, dsItemBean.realmGet$view());
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

    /* JADX WARNING: Removed duplicated region for block: B:33:0x0092  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x009c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.comeback.data.ui.ds.bean.DsItemBean copyOrUpdate(g.a.x r9, io.realm.com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy.a r10, com.comeback.data.ui.ds.bean.DsItemBean r11, boolean r12, java.util.Map<g.a.e0, g.a.f1.n> r13, java.util.Set<g.a.m> r14) {
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
            com.comeback.data.ui.ds.bean.DsItemBean r1 = (com.comeback.data.ui.ds.bean.DsItemBean) r1
            return r1
        L_0x0047:
            r1 = 0
            r2 = 0
            if (r12 == 0) goto L_0x008e
            java.lang.Class<com.comeback.data.ui.ds.bean.DsItemBean> r3 = com.comeback.data.ui.ds.bean.DsItemBean.class
            g.a.k0 r4 = r9.f6317j
            io.realm.internal.Table r3 = r4.e(r3)
            long r4 = r10.f6812f
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
            io.realm.com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy r1 = new io.realm.com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy     // Catch: all -> 0x0089
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
            com.comeback.data.ui.ds.bean.DsItemBean r9 = update(r1, r2, r3, r4, r5, r6)
            goto L_0x00a0
        L_0x009c:
            com.comeback.data.ui.ds.bean.DsItemBean r9 = copy(r9, r10, r11, r12, r13, r14)
        L_0x00a0:
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

    /* JADX WARNING: Removed duplicated region for block: B:100:0x01d6  */
    /* JADX WARNING: Removed duplicated region for block: B:106:0x01ef  */
    /* JADX WARNING: Removed duplicated region for block: B:112:0x0208  */
    /* JADX WARNING: Removed duplicated region for block: B:118:0x0221  */
    /* JADX WARNING: Removed duplicated region for block: B:124:0x023a  */
    /* JADX WARNING: Removed duplicated region for block: B:130:0x0253  */
    /* JADX WARNING: Removed duplicated region for block: B:136:0x026c  */
    /* JADX WARNING: Removed duplicated region for block: B:142:0x0285  */
    /* JADX WARNING: Removed duplicated region for block: B:148:0x029e  */
    /* JADX WARNING: Removed duplicated region for block: B:154:0x02bb  */
    /* JADX WARNING: Removed duplicated region for block: B:160:0x02d8  */
    /* JADX WARNING: Removed duplicated region for block: B:166:0x02f5  */
    /* JADX WARNING: Removed duplicated region for block: B:172:0x0312  */
    /* JADX WARNING: Removed duplicated region for block: B:178:0x032f  */
    /* JADX WARNING: Removed duplicated region for block: B:184:0x034c  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0074  */
    /* JADX WARNING: Removed duplicated region for block: B:190:0x0369  */
    /* JADX WARNING: Removed duplicated region for block: B:196:0x0386  */
    /* JADX WARNING: Removed duplicated region for block: B:202:0x03a3  */
    /* JADX WARNING: Removed duplicated region for block: B:208:0x03c0  */
    /* JADX WARNING: Removed duplicated region for block: B:214:0x03dd  */
    /* JADX WARNING: Removed duplicated region for block: B:220:0x03fa  */
    /* JADX WARNING: Removed duplicated region for block: B:226:0x0417  */
    /* JADX WARNING: Removed duplicated region for block: B:232:0x0434  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00aa  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00c3  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00dc  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00f5  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x010e  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x0127  */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x0140  */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x0159  */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x0172  */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x018b  */
    /* JADX WARNING: Removed duplicated region for block: B:88:0x01a4  */
    /* JADX WARNING: Removed duplicated region for block: B:94:0x01bd  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.comeback.data.ui.ds.bean.DsItemBean createOrUpdateUsingJsonObject(g.a.x r8, org.json.JSONObject r9, boolean r10) throws org.json.JSONException {
        /*
        // Method dump skipped, instructions count: 1098
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
            } else if (!nextName.equals("contentType")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                dsItemBean.realmSet$contentType(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                dsItemBean.realmSet$contentType(null);
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
        long j2;
        if (dsItemBean instanceof n) {
            n nVar = (n) dsItemBean;
            if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                return nVar.realmGet$proxyState().f6305c.l();
            }
        }
        Table e2 = xVar.f6317j.e(DsItemBean.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(DsItemBean.class);
        long j4 = aVar.f6812f;
        String realmGet$id = dsItemBean.realmGet$id();
        if (realmGet$id == null) {
            j2 = Table.nativeFindFirstNull(j3, j4);
        } else {
            j2 = Table.nativeFindFirstString(j3, j4, realmGet$id);
        }
        if (j2 == -1) {
            long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j4, realmGet$id);
            map.put(dsItemBean, Long.valueOf(createRowWithPrimaryKey));
            String realmGet$title = dsItemBean.realmGet$title();
            if (realmGet$title != null) {
                Table.nativeSetString(j3, aVar.f6813g, createRowWithPrimaryKey, realmGet$title, false);
            }
            String realmGet$lanmu_id = dsItemBean.realmGet$lanmu_id();
            if (realmGet$lanmu_id != null) {
                Table.nativeSetString(j3, aVar.f6814h, createRowWithPrimaryKey, realmGet$lanmu_id, false);
            }
            String realmGet$create_time = dsItemBean.realmGet$create_time();
            if (realmGet$create_time != null) {
                Table.nativeSetString(j3, aVar.f6815i, createRowWithPrimaryKey, realmGet$create_time, false);
            }
            String realmGet$update_time = dsItemBean.realmGet$update_time();
            if (realmGet$update_time != null) {
                Table.nativeSetString(j3, aVar.f6816j, createRowWithPrimaryKey, realmGet$update_time, false);
            }
            String realmGet$sort = dsItemBean.realmGet$sort();
            if (realmGet$sort != null) {
                Table.nativeSetString(j3, aVar.f6817k, createRowWithPrimaryKey, realmGet$sort, false);
            }
            String realmGet$status = dsItemBean.realmGet$status();
            if (realmGet$status != null) {
                Table.nativeSetString(j3, aVar.f6818l, createRowWithPrimaryKey, realmGet$status, false);
            }
            String realmGet$view = dsItemBean.realmGet$view();
            if (realmGet$view != null) {
                Table.nativeSetString(j3, aVar.f6819m, createRowWithPrimaryKey, realmGet$view, false);
            }
            String realmGet$image = dsItemBean.realmGet$image();
            if (realmGet$image != null) {
                Table.nativeSetString(j3, aVar.n, createRowWithPrimaryKey, realmGet$image, false);
            }
            String realmGet$type = dsItemBean.realmGet$type();
            if (realmGet$type != null) {
                Table.nativeSetString(j3, aVar.o, createRowWithPrimaryKey, realmGet$type, false);
            }
            String realmGet$auther = dsItemBean.realmGet$auther();
            if (realmGet$auther != null) {
                Table.nativeSetString(j3, aVar.p, createRowWithPrimaryKey, realmGet$auther, false);
            }
            String realmGet$desc = dsItemBean.realmGet$desc();
            if (realmGet$desc != null) {
                Table.nativeSetString(j3, aVar.q, createRowWithPrimaryKey, realmGet$desc, false);
            }
            String realmGet$mark = dsItemBean.realmGet$mark();
            if (realmGet$mark != null) {
                Table.nativeSetString(j3, aVar.r, createRowWithPrimaryKey, realmGet$mark, false);
            }
            String realmGet$ticai_id = dsItemBean.realmGet$ticai_id();
            if (realmGet$ticai_id != null) {
                Table.nativeSetString(j3, aVar.s, createRowWithPrimaryKey, realmGet$ticai_id, false);
            }
            String realmGet$duzhequn_id = dsItemBean.realmGet$duzhequn_id();
            if (realmGet$duzhequn_id != null) {
                Table.nativeSetString(j3, aVar.t, createRowWithPrimaryKey, realmGet$duzhequn_id, false);
            }
            String realmGet$diyu_id = dsItemBean.realmGet$diyu_id();
            if (realmGet$diyu_id != null) {
                Table.nativeSetString(j3, aVar.u, createRowWithPrimaryKey, realmGet$diyu_id, false);
            }
            String realmGet$mhstatus = dsItemBean.realmGet$mhstatus();
            if (realmGet$mhstatus != null) {
                Table.nativeSetString(j3, aVar.v, createRowWithPrimaryKey, realmGet$mhstatus, false);
            }
            String realmGet$tjswitch = dsItemBean.realmGet$tjswitch();
            if (realmGet$tjswitch != null) {
                Table.nativeSetString(j3, aVar.w, createRowWithPrimaryKey, realmGet$tjswitch, false);
            }
            String realmGet$isfree = dsItemBean.realmGet$isfree();
            if (realmGet$isfree != null) {
                Table.nativeSetString(j3, aVar.x, createRowWithPrimaryKey, realmGet$isfree, false);
            }
            String realmGet$cjid = dsItemBean.realmGet$cjid();
            if (realmGet$cjid != null) {
                Table.nativeSetString(j3, aVar.y, createRowWithPrimaryKey, realmGet$cjid, false);
            }
            String realmGet$cjstatus = dsItemBean.realmGet$cjstatus();
            if (realmGet$cjstatus != null) {
                Table.nativeSetString(j3, aVar.z, createRowWithPrimaryKey, realmGet$cjstatus, false);
            }
            String realmGet$cjname = dsItemBean.realmGet$cjname();
            if (realmGet$cjname != null) {
                Table.nativeSetString(j3, aVar.A, createRowWithPrimaryKey, realmGet$cjname, false);
            }
            String realmGet$keyword = dsItemBean.realmGet$keyword();
            if (realmGet$keyword != null) {
                Table.nativeSetString(j3, aVar.B, createRowWithPrimaryKey, realmGet$keyword, false);
            }
            String realmGet$last_chapter_title = dsItemBean.realmGet$last_chapter_title();
            if (realmGet$last_chapter_title != null) {
                Table.nativeSetString(j3, aVar.C, createRowWithPrimaryKey, realmGet$last_chapter_title, false);
            }
            String realmGet$searchnums = dsItemBean.realmGet$searchnums();
            if (realmGet$searchnums != null) {
                Table.nativeSetString(j3, aVar.D, createRowWithPrimaryKey, realmGet$searchnums, false);
            }
            String realmGet$last_chapter = dsItemBean.realmGet$last_chapter();
            if (realmGet$last_chapter != null) {
                Table.nativeSetString(j3, aVar.E, createRowWithPrimaryKey, realmGet$last_chapter, false);
            }
            String realmGet$isjingpin = dsItemBean.realmGet$isjingpin();
            if (realmGet$isjingpin != null) {
                Table.nativeSetString(j3, aVar.F, createRowWithPrimaryKey, realmGet$isjingpin, false);
            }
            String realmGet$xianmian = dsItemBean.realmGet$xianmian();
            if (realmGet$xianmian != null) {
                Table.nativeSetString(j3, aVar.G, createRowWithPrimaryKey, realmGet$xianmian, false);
            }
            String realmGet$cover = dsItemBean.realmGet$cover();
            if (realmGet$cover != null) {
                Table.nativeSetString(j3, aVar.H, createRowWithPrimaryKey, realmGet$cover, false);
            }
            String realmGet$ishot = dsItemBean.realmGet$ishot();
            if (realmGet$ishot != null) {
                Table.nativeSetString(j3, aVar.I, createRowWithPrimaryKey, realmGet$ishot, false);
            }
            String realmGet$issole = dsItemBean.realmGet$issole();
            if (realmGet$issole != null) {
                Table.nativeSetString(j3, aVar.J, createRowWithPrimaryKey, realmGet$issole, false);
            }
            String realmGet$isnew = dsItemBean.realmGet$isnew();
            if (realmGet$isnew != null) {
                Table.nativeSetString(j3, aVar.K, createRowWithPrimaryKey, realmGet$isnew, false);
            }
            String realmGet$h = dsItemBean.realmGet$h();
            if (realmGet$h != null) {
                Table.nativeSetString(j3, aVar.L, createRowWithPrimaryKey, realmGet$h, false);
            }
            String realmGet$vipcanread = dsItemBean.realmGet$vipcanread();
            if (realmGet$vipcanread != null) {
                Table.nativeSetString(j3, aVar.M, createRowWithPrimaryKey, realmGet$vipcanread, false);
            }
            String realmGet$pingfen = dsItemBean.realmGet$pingfen();
            if (realmGet$pingfen != null) {
                Table.nativeSetString(j3, aVar.N, createRowWithPrimaryKey, realmGet$pingfen, false);
            }
            String realmGet$contentType = dsItemBean.realmGet$contentType();
            if (realmGet$contentType != null) {
                Table.nativeSetString(j3, aVar.O, createRowWithPrimaryKey, realmGet$contentType, false);
            }
            return createRowWithPrimaryKey;
        }
        Table.s(realmGet$id);
        throw null;
    }

    public static long insertOrUpdate(x xVar, DsItemBean dsItemBean, Map<e0, Long> map) {
        long j2;
        if (dsItemBean instanceof n) {
            n nVar = (n) dsItemBean;
            if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                return nVar.realmGet$proxyState().f6305c.l();
            }
        }
        Table e2 = xVar.f6317j.e(DsItemBean.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(DsItemBean.class);
        long j4 = aVar.f6812f;
        String realmGet$id = dsItemBean.realmGet$id();
        if (realmGet$id == null) {
            j2 = Table.nativeFindFirstNull(j3, j4);
        } else {
            j2 = Table.nativeFindFirstString(j3, j4, realmGet$id);
        }
        if (j2 == -1) {
            j2 = OsObject.createRowWithPrimaryKey(e2, j4, realmGet$id);
        }
        map.put(dsItemBean, Long.valueOf(j2));
        String realmGet$title = dsItemBean.realmGet$title();
        if (realmGet$title != null) {
            Table.nativeSetString(j3, aVar.f6813g, j2, realmGet$title, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6813g, j2, false);
        }
        String realmGet$lanmu_id = dsItemBean.realmGet$lanmu_id();
        if (realmGet$lanmu_id != null) {
            Table.nativeSetString(j3, aVar.f6814h, j2, realmGet$lanmu_id, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6814h, j2, false);
        }
        String realmGet$create_time = dsItemBean.realmGet$create_time();
        if (realmGet$create_time != null) {
            Table.nativeSetString(j3, aVar.f6815i, j2, realmGet$create_time, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6815i, j2, false);
        }
        String realmGet$update_time = dsItemBean.realmGet$update_time();
        if (realmGet$update_time != null) {
            Table.nativeSetString(j3, aVar.f6816j, j2, realmGet$update_time, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6816j, j2, false);
        }
        String realmGet$sort = dsItemBean.realmGet$sort();
        if (realmGet$sort != null) {
            Table.nativeSetString(j3, aVar.f6817k, j2, realmGet$sort, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6817k, j2, false);
        }
        String realmGet$status = dsItemBean.realmGet$status();
        if (realmGet$status != null) {
            Table.nativeSetString(j3, aVar.f6818l, j2, realmGet$status, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6818l, j2, false);
        }
        String realmGet$view = dsItemBean.realmGet$view();
        if (realmGet$view != null) {
            Table.nativeSetString(j3, aVar.f6819m, j2, realmGet$view, false);
        } else {
            Table.nativeSetNull(j3, aVar.f6819m, j2, false);
        }
        String realmGet$image = dsItemBean.realmGet$image();
        if (realmGet$image != null) {
            Table.nativeSetString(j3, aVar.n, j2, realmGet$image, false);
        } else {
            Table.nativeSetNull(j3, aVar.n, j2, false);
        }
        String realmGet$type = dsItemBean.realmGet$type();
        if (realmGet$type != null) {
            Table.nativeSetString(j3, aVar.o, j2, realmGet$type, false);
        } else {
            Table.nativeSetNull(j3, aVar.o, j2, false);
        }
        String realmGet$auther = dsItemBean.realmGet$auther();
        if (realmGet$auther != null) {
            Table.nativeSetString(j3, aVar.p, j2, realmGet$auther, false);
        } else {
            Table.nativeSetNull(j3, aVar.p, j2, false);
        }
        String realmGet$desc = dsItemBean.realmGet$desc();
        if (realmGet$desc != null) {
            Table.nativeSetString(j3, aVar.q, j2, realmGet$desc, false);
        } else {
            Table.nativeSetNull(j3, aVar.q, j2, false);
        }
        String realmGet$mark = dsItemBean.realmGet$mark();
        if (realmGet$mark != null) {
            Table.nativeSetString(j3, aVar.r, j2, realmGet$mark, false);
        } else {
            Table.nativeSetNull(j3, aVar.r, j2, false);
        }
        String realmGet$ticai_id = dsItemBean.realmGet$ticai_id();
        if (realmGet$ticai_id != null) {
            Table.nativeSetString(j3, aVar.s, j2, realmGet$ticai_id, false);
        } else {
            Table.nativeSetNull(j3, aVar.s, j2, false);
        }
        String realmGet$duzhequn_id = dsItemBean.realmGet$duzhequn_id();
        if (realmGet$duzhequn_id != null) {
            Table.nativeSetString(j3, aVar.t, j2, realmGet$duzhequn_id, false);
        } else {
            Table.nativeSetNull(j3, aVar.t, j2, false);
        }
        String realmGet$diyu_id = dsItemBean.realmGet$diyu_id();
        if (realmGet$diyu_id != null) {
            Table.nativeSetString(j3, aVar.u, j2, realmGet$diyu_id, false);
        } else {
            Table.nativeSetNull(j3, aVar.u, j2, false);
        }
        String realmGet$mhstatus = dsItemBean.realmGet$mhstatus();
        if (realmGet$mhstatus != null) {
            Table.nativeSetString(j3, aVar.v, j2, realmGet$mhstatus, false);
        } else {
            Table.nativeSetNull(j3, aVar.v, j2, false);
        }
        String realmGet$tjswitch = dsItemBean.realmGet$tjswitch();
        if (realmGet$tjswitch != null) {
            Table.nativeSetString(j3, aVar.w, j2, realmGet$tjswitch, false);
        } else {
            Table.nativeSetNull(j3, aVar.w, j2, false);
        }
        String realmGet$isfree = dsItemBean.realmGet$isfree();
        if (realmGet$isfree != null) {
            Table.nativeSetString(j3, aVar.x, j2, realmGet$isfree, false);
        } else {
            Table.nativeSetNull(j3, aVar.x, j2, false);
        }
        String realmGet$cjid = dsItemBean.realmGet$cjid();
        if (realmGet$cjid != null) {
            Table.nativeSetString(j3, aVar.y, j2, realmGet$cjid, false);
        } else {
            Table.nativeSetNull(j3, aVar.y, j2, false);
        }
        String realmGet$cjstatus = dsItemBean.realmGet$cjstatus();
        if (realmGet$cjstatus != null) {
            Table.nativeSetString(j3, aVar.z, j2, realmGet$cjstatus, false);
        } else {
            Table.nativeSetNull(j3, aVar.z, j2, false);
        }
        String realmGet$cjname = dsItemBean.realmGet$cjname();
        if (realmGet$cjname != null) {
            Table.nativeSetString(j3, aVar.A, j2, realmGet$cjname, false);
        } else {
            Table.nativeSetNull(j3, aVar.A, j2, false);
        }
        String realmGet$keyword = dsItemBean.realmGet$keyword();
        if (realmGet$keyword != null) {
            Table.nativeSetString(j3, aVar.B, j2, realmGet$keyword, false);
        } else {
            Table.nativeSetNull(j3, aVar.B, j2, false);
        }
        String realmGet$last_chapter_title = dsItemBean.realmGet$last_chapter_title();
        if (realmGet$last_chapter_title != null) {
            Table.nativeSetString(j3, aVar.C, j2, realmGet$last_chapter_title, false);
        } else {
            Table.nativeSetNull(j3, aVar.C, j2, false);
        }
        String realmGet$searchnums = dsItemBean.realmGet$searchnums();
        if (realmGet$searchnums != null) {
            Table.nativeSetString(j3, aVar.D, j2, realmGet$searchnums, false);
        } else {
            Table.nativeSetNull(j3, aVar.D, j2, false);
        }
        String realmGet$last_chapter = dsItemBean.realmGet$last_chapter();
        if (realmGet$last_chapter != null) {
            Table.nativeSetString(j3, aVar.E, j2, realmGet$last_chapter, false);
        } else {
            Table.nativeSetNull(j3, aVar.E, j2, false);
        }
        String realmGet$isjingpin = dsItemBean.realmGet$isjingpin();
        if (realmGet$isjingpin != null) {
            Table.nativeSetString(j3, aVar.F, j2, realmGet$isjingpin, false);
        } else {
            Table.nativeSetNull(j3, aVar.F, j2, false);
        }
        String realmGet$xianmian = dsItemBean.realmGet$xianmian();
        if (realmGet$xianmian != null) {
            Table.nativeSetString(j3, aVar.G, j2, realmGet$xianmian, false);
        } else {
            Table.nativeSetNull(j3, aVar.G, j2, false);
        }
        String realmGet$cover = dsItemBean.realmGet$cover();
        if (realmGet$cover != null) {
            Table.nativeSetString(j3, aVar.H, j2, realmGet$cover, false);
        } else {
            Table.nativeSetNull(j3, aVar.H, j2, false);
        }
        String realmGet$ishot = dsItemBean.realmGet$ishot();
        if (realmGet$ishot != null) {
            Table.nativeSetString(j3, aVar.I, j2, realmGet$ishot, false);
        } else {
            Table.nativeSetNull(j3, aVar.I, j2, false);
        }
        String realmGet$issole = dsItemBean.realmGet$issole();
        if (realmGet$issole != null) {
            Table.nativeSetString(j3, aVar.J, j2, realmGet$issole, false);
        } else {
            Table.nativeSetNull(j3, aVar.J, j2, false);
        }
        String realmGet$isnew = dsItemBean.realmGet$isnew();
        if (realmGet$isnew != null) {
            Table.nativeSetString(j3, aVar.K, j2, realmGet$isnew, false);
        } else {
            Table.nativeSetNull(j3, aVar.K, j2, false);
        }
        String realmGet$h = dsItemBean.realmGet$h();
        if (realmGet$h != null) {
            Table.nativeSetString(j3, aVar.L, j2, realmGet$h, false);
        } else {
            Table.nativeSetNull(j3, aVar.L, j2, false);
        }
        String realmGet$vipcanread = dsItemBean.realmGet$vipcanread();
        if (realmGet$vipcanread != null) {
            Table.nativeSetString(j3, aVar.M, j2, realmGet$vipcanread, false);
        } else {
            Table.nativeSetNull(j3, aVar.M, j2, false);
        }
        String realmGet$pingfen = dsItemBean.realmGet$pingfen();
        if (realmGet$pingfen != null) {
            Table.nativeSetString(j3, aVar.N, j2, realmGet$pingfen, false);
        } else {
            Table.nativeSetNull(j3, aVar.N, j2, false);
        }
        String realmGet$contentType = dsItemBean.realmGet$contentType();
        if (realmGet$contentType != null) {
            Table.nativeSetString(j3, aVar.O, j2, realmGet$contentType, false);
        } else {
            Table.nativeSetNull(j3, aVar.O, j2, false);
        }
        return j2;
    }

    public static com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy newProxyInstance(g.a.a aVar, p pVar) {
        a.c cVar = g.a.a.f6189i.get();
        k0 G = aVar.G();
        G.a();
        c a2 = G.f6286f.a(DsItemBean.class);
        List<String> emptyList = Collections.emptyList();
        cVar.a = aVar;
        cVar.b = pVar;
        cVar.f6194c = a2;
        cVar.f6195d = false;
        cVar.f6196e = emptyList;
        com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy com_comeback_data_ui_ds_bean_dsitembeanrealmproxy = new com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy();
        cVar.a();
        return com_comeback_data_ui_ds_bean_dsitembeanrealmproxy;
    }

    public static DsItemBean update(x xVar, a aVar, DsItemBean dsItemBean, DsItemBean dsItemBean2, Map<e0, n> map, Set<m> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(xVar.f6317j.e(DsItemBean.class), aVar.f6811e, set);
        osObjectBuilder.g(aVar.f6812f, dsItemBean2.realmGet$id());
        osObjectBuilder.g(aVar.f6813g, dsItemBean2.realmGet$title());
        osObjectBuilder.g(aVar.f6814h, dsItemBean2.realmGet$lanmu_id());
        osObjectBuilder.g(aVar.f6815i, dsItemBean2.realmGet$create_time());
        osObjectBuilder.g(aVar.f6816j, dsItemBean2.realmGet$update_time());
        osObjectBuilder.g(aVar.f6817k, dsItemBean2.realmGet$sort());
        osObjectBuilder.g(aVar.f6818l, dsItemBean2.realmGet$status());
        osObjectBuilder.g(aVar.f6819m, dsItemBean2.realmGet$view());
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

    @Override // java.lang.Object
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy com_comeback_data_ui_ds_bean_dsitembeanrealmproxy = (com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy) obj;
        String str = this.proxyState.f6307e.b.f6197c;
        String str2 = com_comeback_data_ui_ds_bean_dsitembeanrealmproxy.proxyState.f6307e.b.f6197c;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        String j2 = this.proxyState.f6305c.d().j();
        String j3 = com_comeback_data_ui_ds_bean_dsitembeanrealmproxy.proxyState.f6305c.d().j();
        if (j2 == null ? j3 == null : j2.equals(j3)) {
            return this.proxyState.f6305c.l() == com_comeback_data_ui_ds_bean_dsitembeanrealmproxy.proxyState.f6305c.l();
        }
        return false;
    }

    @Override // java.lang.Object
    public int hashCode() {
        v<DsItemBean> vVar = this.proxyState;
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
            v<DsItemBean> vVar = new v<>(this);
            this.proxyState = vVar;
            vVar.f6307e = cVar.a;
            vVar.f6305c = cVar.b;
            vVar.f6308f = cVar.f6195d;
            if (vVar == null) {
                throw null;
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$auther() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.p);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$cjid() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.y);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$cjname() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.A);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$cjstatus() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.z);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$contentType() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.O);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$cover() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.H);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$create_time() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6815i);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$desc() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.q);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$diyu_id() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.u);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$duzhequn_id() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.t);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$h() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.L);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$id() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6812f);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$image() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.n);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$isfree() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.x);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$ishot() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.I);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$isjingpin() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.F);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$isnew() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.K);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$issole() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.J);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$keyword() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.B);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$lanmu_id() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6814h);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$last_chapter() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.E);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$last_chapter_title() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.C);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$mark() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.r);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$mhstatus() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.v);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$pingfen() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.N);
    }

    @Override // g.a.f1.n
    public v<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$searchnums() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.D);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$sort() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6817k);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$status() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6818l);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$ticai_id() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.s);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$title() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6813g);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$tjswitch() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.w);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$type() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.o);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$update_time() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6816j);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$view() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.f6819m);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$vipcanread() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.M);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public String realmGet$xianmian() {
        this.proxyState.f6307e.f();
        return this.proxyState.f6305c.q(this.columnInfo.G);
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$auther(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.p);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.p, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.p, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.p, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$cjid(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.y);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.y, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.y, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.y, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$cjname(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.A);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.A, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.A, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.A, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$cjstatus(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.z);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.z, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.z, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.z, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$contentType(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.O);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.O, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.O, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.O, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$cover(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.H);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.H, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.H, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.H, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$create_time(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6815i);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6815i, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6815i, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6815i, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$desc(String str) {
        v<DsItemBean> vVar = this.proxyState;
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

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$diyu_id(String str) {
        v<DsItemBean> vVar = this.proxyState;
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

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$duzhequn_id(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.t);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.t, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.t, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.t, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$h(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.L);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.L, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.L, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.L, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$id(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$image(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.n);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.n, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.n, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.n, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$isfree(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.x);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.x, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.x, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.x, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$ishot(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.I);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.I, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.I, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.I, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$isjingpin(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.F);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.F, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.F, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.F, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$isnew(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.K);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.K, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.K, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.K, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$issole(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.J);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.J, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.J, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.J, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$keyword(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.B);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.B, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.B, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.B, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$lanmu_id(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6814h);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6814h, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6814h, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6814h, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$last_chapter(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.E);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.E, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.E, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.E, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$last_chapter_title(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.C);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.C, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.C, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.C, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$mark(String str) {
        v<DsItemBean> vVar = this.proxyState;
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

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$mhstatus(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.v);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.v, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.v, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.v, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$pingfen(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.N);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.N, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.N, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.N, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$searchnums(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.D);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.D, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.D, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.D, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$sort(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6817k);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6817k, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6817k, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6817k, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$status(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6818l);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6818l, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6818l, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6818l, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$ticai_id(String str) {
        v<DsItemBean> vVar = this.proxyState;
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

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$title(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6813g);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6813g, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6813g, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6813g, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$tjswitch(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.w);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.w, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.w, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.w, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$type(String str) {
        v<DsItemBean> vVar = this.proxyState;
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

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$update_time(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6816j);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6816j, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6816j, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6816j, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$view(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.f6819m);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.f6819m, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.f6819m, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.f6819m, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$vipcanread(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.M);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.M, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.M, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.M, pVar.l(), str, true);
            }
        }
    }

    @Override // com.comeback.data.ui.ds.bean.DsItemBean, g.a.r0
    public void realmSet$xianmian(String str) {
        v<DsItemBean> vVar = this.proxyState;
        if (!vVar.b) {
            vVar.f6307e.f();
            if (str == null) {
                this.proxyState.f6305c.f(this.columnInfo.G);
            } else {
                this.proxyState.f6305c.a(this.columnInfo.G, str);
            }
        } else if (vVar.f6308f) {
            p pVar = vVar.f6305c;
            if (str == null) {
                pVar.d().q(this.columnInfo.G, pVar.l(), true);
            } else {
                pVar.d().r(this.columnInfo.G, pVar.l(), str, true);
            }
        }
    }

    @Override // java.lang.Object
    public String toString() {
        if (!g0.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder q = f.b.a.a.a.q("DsItemBean = proxy[", "{id:");
        String str = "null";
        f.b.a.a.a.C(q, realmGet$id() != null ? realmGet$id() : str, "}", ",", "{title:");
        f.b.a.a.a.C(q, realmGet$title() != null ? realmGet$title() : str, "}", ",", "{lanmu_id:");
        f.b.a.a.a.C(q, realmGet$lanmu_id() != null ? realmGet$lanmu_id() : str, "}", ",", "{create_time:");
        f.b.a.a.a.C(q, realmGet$create_time() != null ? realmGet$create_time() : str, "}", ",", "{update_time:");
        f.b.a.a.a.C(q, realmGet$update_time() != null ? realmGet$update_time() : str, "}", ",", "{sort:");
        f.b.a.a.a.C(q, realmGet$sort() != null ? realmGet$sort() : str, "}", ",", "{status:");
        f.b.a.a.a.C(q, realmGet$status() != null ? realmGet$status() : str, "}", ",", "{view:");
        f.b.a.a.a.C(q, realmGet$view() != null ? realmGet$view() : str, "}", ",", "{image:");
        f.b.a.a.a.C(q, realmGet$image() != null ? realmGet$image() : str, "}", ",", "{type:");
        f.b.a.a.a.C(q, realmGet$type() != null ? realmGet$type() : str, "}", ",", "{auther:");
        f.b.a.a.a.C(q, realmGet$auther() != null ? realmGet$auther() : str, "}", ",", "{desc:");
        f.b.a.a.a.C(q, realmGet$desc() != null ? realmGet$desc() : str, "}", ",", "{mark:");
        f.b.a.a.a.C(q, realmGet$mark() != null ? realmGet$mark() : str, "}", ",", "{ticai_id:");
        f.b.a.a.a.C(q, realmGet$ticai_id() != null ? realmGet$ticai_id() : str, "}", ",", "{duzhequn_id:");
        f.b.a.a.a.C(q, realmGet$duzhequn_id() != null ? realmGet$duzhequn_id() : str, "}", ",", "{diyu_id:");
        f.b.a.a.a.C(q, realmGet$diyu_id() != null ? realmGet$diyu_id() : str, "}", ",", "{mhstatus:");
        f.b.a.a.a.C(q, realmGet$mhstatus() != null ? realmGet$mhstatus() : str, "}", ",", "{tjswitch:");
        f.b.a.a.a.C(q, realmGet$tjswitch() != null ? realmGet$tjswitch() : str, "}", ",", "{isfree:");
        f.b.a.a.a.C(q, realmGet$isfree() != null ? realmGet$isfree() : str, "}", ",", "{cjid:");
        f.b.a.a.a.C(q, realmGet$cjid() != null ? realmGet$cjid() : str, "}", ",", "{cjstatus:");
        f.b.a.a.a.C(q, realmGet$cjstatus() != null ? realmGet$cjstatus() : str, "}", ",", "{cjname:");
        f.b.a.a.a.C(q, realmGet$cjname() != null ? realmGet$cjname() : str, "}", ",", "{keyword:");
        f.b.a.a.a.C(q, realmGet$keyword() != null ? realmGet$keyword() : str, "}", ",", "{last_chapter_title:");
        f.b.a.a.a.C(q, realmGet$last_chapter_title() != null ? realmGet$last_chapter_title() : str, "}", ",", "{searchnums:");
        f.b.a.a.a.C(q, realmGet$searchnums() != null ? realmGet$searchnums() : str, "}", ",", "{last_chapter:");
        f.b.a.a.a.C(q, realmGet$last_chapter() != null ? realmGet$last_chapter() : str, "}", ",", "{isjingpin:");
        f.b.a.a.a.C(q, realmGet$isjingpin() != null ? realmGet$isjingpin() : str, "}", ",", "{xianmian:");
        f.b.a.a.a.C(q, realmGet$xianmian() != null ? realmGet$xianmian() : str, "}", ",", "{cover:");
        f.b.a.a.a.C(q, realmGet$cover() != null ? realmGet$cover() : str, "}", ",", "{ishot:");
        f.b.a.a.a.C(q, realmGet$ishot() != null ? realmGet$ishot() : str, "}", ",", "{issole:");
        f.b.a.a.a.C(q, realmGet$issole() != null ? realmGet$issole() : str, "}", ",", "{isnew:");
        f.b.a.a.a.C(q, realmGet$isnew() != null ? realmGet$isnew() : str, "}", ",", "{h:");
        f.b.a.a.a.C(q, realmGet$h() != null ? realmGet$h() : str, "}", ",", "{vipcanread:");
        f.b.a.a.a.C(q, realmGet$vipcanread() != null ? realmGet$vipcanread() : str, "}", ",", "{pingfen:");
        f.b.a.a.a.C(q, realmGet$pingfen() != null ? realmGet$pingfen() : str, "}", ",", "{contentType:");
        if (realmGet$contentType() != null) {
            str = realmGet$contentType();
        }
        q.append(str);
        q.append("}");
        q.append("]");
        return q.toString();
    }

    public static void insert(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long j2;
        DsItemBean dsItemBean;
        Table e2 = xVar.f6317j.e(DsItemBean.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(DsItemBean.class);
        long j4 = aVar.f6812f;
        while (it.hasNext()) {
            DsItemBean dsItemBean2 = (DsItemBean) it.next();
            if (!map.containsKey(dsItemBean2)) {
                if (dsItemBean2 instanceof n) {
                    n nVar = (n) dsItemBean2;
                    if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                        map.put(dsItemBean2, Long.valueOf(nVar.realmGet$proxyState().f6305c.l()));
                    }
                }
                String realmGet$id = dsItemBean2.realmGet$id();
                if (realmGet$id == null) {
                    j2 = Table.nativeFindFirstNull(j3, j4);
                } else {
                    j2 = Table.nativeFindFirstString(j3, j4, realmGet$id);
                }
                if (j2 == -1) {
                    long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(e2, j4, realmGet$id);
                    map.put(dsItemBean2, Long.valueOf(createRowWithPrimaryKey));
                    String realmGet$title = dsItemBean2.realmGet$title();
                    if (realmGet$title != null) {
                        dsItemBean = dsItemBean2;
                        Table.nativeSetString(j3, aVar.f6813g, createRowWithPrimaryKey, realmGet$title, false);
                    } else {
                        dsItemBean = dsItemBean2;
                    }
                    String realmGet$lanmu_id = dsItemBean.realmGet$lanmu_id();
                    if (realmGet$lanmu_id != null) {
                        Table.nativeSetString(j3, aVar.f6814h, createRowWithPrimaryKey, realmGet$lanmu_id, false);
                    }
                    String realmGet$create_time = dsItemBean.realmGet$create_time();
                    if (realmGet$create_time != null) {
                        Table.nativeSetString(j3, aVar.f6815i, createRowWithPrimaryKey, realmGet$create_time, false);
                    }
                    String realmGet$update_time = dsItemBean.realmGet$update_time();
                    if (realmGet$update_time != null) {
                        Table.nativeSetString(j3, aVar.f6816j, createRowWithPrimaryKey, realmGet$update_time, false);
                    }
                    String realmGet$sort = dsItemBean.realmGet$sort();
                    if (realmGet$sort != null) {
                        Table.nativeSetString(j3, aVar.f6817k, createRowWithPrimaryKey, realmGet$sort, false);
                    }
                    String realmGet$status = dsItemBean.realmGet$status();
                    if (realmGet$status != null) {
                        Table.nativeSetString(j3, aVar.f6818l, createRowWithPrimaryKey, realmGet$status, false);
                    }
                    String realmGet$view = dsItemBean.realmGet$view();
                    if (realmGet$view != null) {
                        Table.nativeSetString(j3, aVar.f6819m, createRowWithPrimaryKey, realmGet$view, false);
                    }
                    String realmGet$image = dsItemBean.realmGet$image();
                    if (realmGet$image != null) {
                        Table.nativeSetString(j3, aVar.n, createRowWithPrimaryKey, realmGet$image, false);
                    }
                    String realmGet$type = dsItemBean.realmGet$type();
                    if (realmGet$type != null) {
                        Table.nativeSetString(j3, aVar.o, createRowWithPrimaryKey, realmGet$type, false);
                    }
                    String realmGet$auther = dsItemBean.realmGet$auther();
                    if (realmGet$auther != null) {
                        Table.nativeSetString(j3, aVar.p, createRowWithPrimaryKey, realmGet$auther, false);
                    }
                    String realmGet$desc = dsItemBean.realmGet$desc();
                    if (realmGet$desc != null) {
                        Table.nativeSetString(j3, aVar.q, createRowWithPrimaryKey, realmGet$desc, false);
                    }
                    String realmGet$mark = dsItemBean.realmGet$mark();
                    if (realmGet$mark != null) {
                        Table.nativeSetString(j3, aVar.r, createRowWithPrimaryKey, realmGet$mark, false);
                    }
                    String realmGet$ticai_id = dsItemBean.realmGet$ticai_id();
                    if (realmGet$ticai_id != null) {
                        Table.nativeSetString(j3, aVar.s, createRowWithPrimaryKey, realmGet$ticai_id, false);
                    }
                    String realmGet$duzhequn_id = dsItemBean.realmGet$duzhequn_id();
                    if (realmGet$duzhequn_id != null) {
                        Table.nativeSetString(j3, aVar.t, createRowWithPrimaryKey, realmGet$duzhequn_id, false);
                    }
                    String realmGet$diyu_id = dsItemBean.realmGet$diyu_id();
                    if (realmGet$diyu_id != null) {
                        Table.nativeSetString(j3, aVar.u, createRowWithPrimaryKey, realmGet$diyu_id, false);
                    }
                    String realmGet$mhstatus = dsItemBean.realmGet$mhstatus();
                    if (realmGet$mhstatus != null) {
                        Table.nativeSetString(j3, aVar.v, createRowWithPrimaryKey, realmGet$mhstatus, false);
                    }
                    String realmGet$tjswitch = dsItemBean.realmGet$tjswitch();
                    if (realmGet$tjswitch != null) {
                        Table.nativeSetString(j3, aVar.w, createRowWithPrimaryKey, realmGet$tjswitch, false);
                    }
                    String realmGet$isfree = dsItemBean.realmGet$isfree();
                    if (realmGet$isfree != null) {
                        Table.nativeSetString(j3, aVar.x, createRowWithPrimaryKey, realmGet$isfree, false);
                    }
                    String realmGet$cjid = dsItemBean.realmGet$cjid();
                    if (realmGet$cjid != null) {
                        Table.nativeSetString(j3, aVar.y, createRowWithPrimaryKey, realmGet$cjid, false);
                    }
                    String realmGet$cjstatus = dsItemBean.realmGet$cjstatus();
                    if (realmGet$cjstatus != null) {
                        Table.nativeSetString(j3, aVar.z, createRowWithPrimaryKey, realmGet$cjstatus, false);
                    }
                    String realmGet$cjname = dsItemBean.realmGet$cjname();
                    if (realmGet$cjname != null) {
                        Table.nativeSetString(j3, aVar.A, createRowWithPrimaryKey, realmGet$cjname, false);
                    }
                    String realmGet$keyword = dsItemBean.realmGet$keyword();
                    if (realmGet$keyword != null) {
                        Table.nativeSetString(j3, aVar.B, createRowWithPrimaryKey, realmGet$keyword, false);
                    }
                    String realmGet$last_chapter_title = dsItemBean.realmGet$last_chapter_title();
                    if (realmGet$last_chapter_title != null) {
                        Table.nativeSetString(j3, aVar.C, createRowWithPrimaryKey, realmGet$last_chapter_title, false);
                    }
                    String realmGet$searchnums = dsItemBean.realmGet$searchnums();
                    if (realmGet$searchnums != null) {
                        Table.nativeSetString(j3, aVar.D, createRowWithPrimaryKey, realmGet$searchnums, false);
                    }
                    String realmGet$last_chapter = dsItemBean.realmGet$last_chapter();
                    if (realmGet$last_chapter != null) {
                        Table.nativeSetString(j3, aVar.E, createRowWithPrimaryKey, realmGet$last_chapter, false);
                    }
                    String realmGet$isjingpin = dsItemBean.realmGet$isjingpin();
                    if (realmGet$isjingpin != null) {
                        Table.nativeSetString(j3, aVar.F, createRowWithPrimaryKey, realmGet$isjingpin, false);
                    }
                    String realmGet$xianmian = dsItemBean.realmGet$xianmian();
                    if (realmGet$xianmian != null) {
                        Table.nativeSetString(j3, aVar.G, createRowWithPrimaryKey, realmGet$xianmian, false);
                    }
                    String realmGet$cover = dsItemBean.realmGet$cover();
                    if (realmGet$cover != null) {
                        Table.nativeSetString(j3, aVar.H, createRowWithPrimaryKey, realmGet$cover, false);
                    }
                    String realmGet$ishot = dsItemBean.realmGet$ishot();
                    if (realmGet$ishot != null) {
                        Table.nativeSetString(j3, aVar.I, createRowWithPrimaryKey, realmGet$ishot, false);
                    }
                    String realmGet$issole = dsItemBean.realmGet$issole();
                    if (realmGet$issole != null) {
                        Table.nativeSetString(j3, aVar.J, createRowWithPrimaryKey, realmGet$issole, false);
                    }
                    String realmGet$isnew = dsItemBean.realmGet$isnew();
                    if (realmGet$isnew != null) {
                        Table.nativeSetString(j3, aVar.K, createRowWithPrimaryKey, realmGet$isnew, false);
                    }
                    String realmGet$h = dsItemBean.realmGet$h();
                    if (realmGet$h != null) {
                        Table.nativeSetString(j3, aVar.L, createRowWithPrimaryKey, realmGet$h, false);
                    }
                    String realmGet$vipcanread = dsItemBean.realmGet$vipcanread();
                    if (realmGet$vipcanread != null) {
                        Table.nativeSetString(j3, aVar.M, createRowWithPrimaryKey, realmGet$vipcanread, false);
                    }
                    String realmGet$pingfen = dsItemBean.realmGet$pingfen();
                    if (realmGet$pingfen != null) {
                        Table.nativeSetString(j3, aVar.N, createRowWithPrimaryKey, realmGet$pingfen, false);
                    }
                    String realmGet$contentType = dsItemBean.realmGet$contentType();
                    if (realmGet$contentType != null) {
                        Table.nativeSetString(j3, aVar.O, createRowWithPrimaryKey, realmGet$contentType, false);
                    }
                } else {
                    Table.s(realmGet$id);
                    throw null;
                }
            }
        }
    }

    public static void insertOrUpdate(x xVar, Iterator<? extends e0> it, Map<e0, Long> map) {
        long j2;
        DsItemBean dsItemBean;
        Table e2 = xVar.f6317j.e(DsItemBean.class);
        long j3 = e2.a;
        k0 k0Var = xVar.f6317j;
        k0Var.a();
        a aVar = (a) k0Var.f6286f.a(DsItemBean.class);
        long j4 = aVar.f6812f;
        while (it.hasNext()) {
            DsItemBean dsItemBean2 = (DsItemBean) it.next();
            if (!map.containsKey(dsItemBean2)) {
                if (dsItemBean2 instanceof n) {
                    n nVar = (n) dsItemBean2;
                    if (nVar.realmGet$proxyState().f6307e != null && nVar.realmGet$proxyState().f6307e.b.f6197c.equals(xVar.b.f6197c)) {
                        map.put(dsItemBean2, Long.valueOf(nVar.realmGet$proxyState().f6305c.l()));
                    }
                }
                String realmGet$id = dsItemBean2.realmGet$id();
                if (realmGet$id == null) {
                    j2 = Table.nativeFindFirstNull(j3, j4);
                } else {
                    j2 = Table.nativeFindFirstString(j3, j4, realmGet$id);
                }
                long createRowWithPrimaryKey = j2 == -1 ? OsObject.createRowWithPrimaryKey(e2, j4, realmGet$id) : j2;
                map.put(dsItemBean2, Long.valueOf(createRowWithPrimaryKey));
                String realmGet$title = dsItemBean2.realmGet$title();
                if (realmGet$title != null) {
                    dsItemBean = dsItemBean2;
                    Table.nativeSetString(j3, aVar.f6813g, createRowWithPrimaryKey, realmGet$title, false);
                } else {
                    dsItemBean = dsItemBean2;
                    Table.nativeSetNull(j3, aVar.f6813g, createRowWithPrimaryKey, false);
                }
                String realmGet$lanmu_id = dsItemBean.realmGet$lanmu_id();
                if (realmGet$lanmu_id != null) {
                    Table.nativeSetString(j3, aVar.f6814h, createRowWithPrimaryKey, realmGet$lanmu_id, false);
                } else {
                    Table.nativeSetNull(j3, aVar.f6814h, createRowWithPrimaryKey, false);
                }
                String realmGet$create_time = dsItemBean.realmGet$create_time();
                if (realmGet$create_time != null) {
                    Table.nativeSetString(j3, aVar.f6815i, createRowWithPrimaryKey, realmGet$create_time, false);
                } else {
                    Table.nativeSetNull(j3, aVar.f6815i, createRowWithPrimaryKey, false);
                }
                String realmGet$update_time = dsItemBean.realmGet$update_time();
                if (realmGet$update_time != null) {
                    Table.nativeSetString(j3, aVar.f6816j, createRowWithPrimaryKey, realmGet$update_time, false);
                } else {
                    Table.nativeSetNull(j3, aVar.f6816j, createRowWithPrimaryKey, false);
                }
                String realmGet$sort = dsItemBean.realmGet$sort();
                if (realmGet$sort != null) {
                    Table.nativeSetString(j3, aVar.f6817k, createRowWithPrimaryKey, realmGet$sort, false);
                } else {
                    Table.nativeSetNull(j3, aVar.f6817k, createRowWithPrimaryKey, false);
                }
                String realmGet$status = dsItemBean.realmGet$status();
                if (realmGet$status != null) {
                    Table.nativeSetString(j3, aVar.f6818l, createRowWithPrimaryKey, realmGet$status, false);
                } else {
                    Table.nativeSetNull(j3, aVar.f6818l, createRowWithPrimaryKey, false);
                }
                String realmGet$view = dsItemBean.realmGet$view();
                if (realmGet$view != null) {
                    Table.nativeSetString(j3, aVar.f6819m, createRowWithPrimaryKey, realmGet$view, false);
                } else {
                    Table.nativeSetNull(j3, aVar.f6819m, createRowWithPrimaryKey, false);
                }
                String realmGet$image = dsItemBean.realmGet$image();
                if (realmGet$image != null) {
                    Table.nativeSetString(j3, aVar.n, createRowWithPrimaryKey, realmGet$image, false);
                } else {
                    Table.nativeSetNull(j3, aVar.n, createRowWithPrimaryKey, false);
                }
                String realmGet$type = dsItemBean.realmGet$type();
                if (realmGet$type != null) {
                    Table.nativeSetString(j3, aVar.o, createRowWithPrimaryKey, realmGet$type, false);
                } else {
                    Table.nativeSetNull(j3, aVar.o, createRowWithPrimaryKey, false);
                }
                String realmGet$auther = dsItemBean.realmGet$auther();
                if (realmGet$auther != null) {
                    Table.nativeSetString(j3, aVar.p, createRowWithPrimaryKey, realmGet$auther, false);
                } else {
                    Table.nativeSetNull(j3, aVar.p, createRowWithPrimaryKey, false);
                }
                String realmGet$desc = dsItemBean.realmGet$desc();
                if (realmGet$desc != null) {
                    Table.nativeSetString(j3, aVar.q, createRowWithPrimaryKey, realmGet$desc, false);
                } else {
                    Table.nativeSetNull(j3, aVar.q, createRowWithPrimaryKey, false);
                }
                String realmGet$mark = dsItemBean.realmGet$mark();
                if (realmGet$mark != null) {
                    Table.nativeSetString(j3, aVar.r, createRowWithPrimaryKey, realmGet$mark, false);
                } else {
                    Table.nativeSetNull(j3, aVar.r, createRowWithPrimaryKey, false);
                }
                String realmGet$ticai_id = dsItemBean.realmGet$ticai_id();
                if (realmGet$ticai_id != null) {
                    Table.nativeSetString(j3, aVar.s, createRowWithPrimaryKey, realmGet$ticai_id, false);
                } else {
                    Table.nativeSetNull(j3, aVar.s, createRowWithPrimaryKey, false);
                }
                String realmGet$duzhequn_id = dsItemBean.realmGet$duzhequn_id();
                if (realmGet$duzhequn_id != null) {
                    Table.nativeSetString(j3, aVar.t, createRowWithPrimaryKey, realmGet$duzhequn_id, false);
                } else {
                    Table.nativeSetNull(j3, aVar.t, createRowWithPrimaryKey, false);
                }
                String realmGet$diyu_id = dsItemBean.realmGet$diyu_id();
                if (realmGet$diyu_id != null) {
                    Table.nativeSetString(j3, aVar.u, createRowWithPrimaryKey, realmGet$diyu_id, false);
                } else {
                    Table.nativeSetNull(j3, aVar.u, createRowWithPrimaryKey, false);
                }
                String realmGet$mhstatus = dsItemBean.realmGet$mhstatus();
                if (realmGet$mhstatus != null) {
                    Table.nativeSetString(j3, aVar.v, createRowWithPrimaryKey, realmGet$mhstatus, false);
                } else {
                    Table.nativeSetNull(j3, aVar.v, createRowWithPrimaryKey, false);
                }
                String realmGet$tjswitch = dsItemBean.realmGet$tjswitch();
                if (realmGet$tjswitch != null) {
                    Table.nativeSetString(j3, aVar.w, createRowWithPrimaryKey, realmGet$tjswitch, false);
                } else {
                    Table.nativeSetNull(j3, aVar.w, createRowWithPrimaryKey, false);
                }
                String realmGet$isfree = dsItemBean.realmGet$isfree();
                if (realmGet$isfree != null) {
                    Table.nativeSetString(j3, aVar.x, createRowWithPrimaryKey, realmGet$isfree, false);
                } else {
                    Table.nativeSetNull(j3, aVar.x, createRowWithPrimaryKey, false);
                }
                String realmGet$cjid = dsItemBean.realmGet$cjid();
                if (realmGet$cjid != null) {
                    Table.nativeSetString(j3, aVar.y, createRowWithPrimaryKey, realmGet$cjid, false);
                } else {
                    Table.nativeSetNull(j3, aVar.y, createRowWithPrimaryKey, false);
                }
                String realmGet$cjstatus = dsItemBean.realmGet$cjstatus();
                if (realmGet$cjstatus != null) {
                    Table.nativeSetString(j3, aVar.z, createRowWithPrimaryKey, realmGet$cjstatus, false);
                } else {
                    Table.nativeSetNull(j3, aVar.z, createRowWithPrimaryKey, false);
                }
                String realmGet$cjname = dsItemBean.realmGet$cjname();
                if (realmGet$cjname != null) {
                    Table.nativeSetString(j3, aVar.A, createRowWithPrimaryKey, realmGet$cjname, false);
                } else {
                    Table.nativeSetNull(j3, aVar.A, createRowWithPrimaryKey, false);
                }
                String realmGet$keyword = dsItemBean.realmGet$keyword();
                if (realmGet$keyword != null) {
                    Table.nativeSetString(j3, aVar.B, createRowWithPrimaryKey, realmGet$keyword, false);
                } else {
                    Table.nativeSetNull(j3, aVar.B, createRowWithPrimaryKey, false);
                }
                String realmGet$last_chapter_title = dsItemBean.realmGet$last_chapter_title();
                if (realmGet$last_chapter_title != null) {
                    Table.nativeSetString(j3, aVar.C, createRowWithPrimaryKey, realmGet$last_chapter_title, false);
                } else {
                    Table.nativeSetNull(j3, aVar.C, createRowWithPrimaryKey, false);
                }
                String realmGet$searchnums = dsItemBean.realmGet$searchnums();
                if (realmGet$searchnums != null) {
                    Table.nativeSetString(j3, aVar.D, createRowWithPrimaryKey, realmGet$searchnums, false);
                } else {
                    Table.nativeSetNull(j3, aVar.D, createRowWithPrimaryKey, false);
                }
                String realmGet$last_chapter = dsItemBean.realmGet$last_chapter();
                if (realmGet$last_chapter != null) {
                    Table.nativeSetString(j3, aVar.E, createRowWithPrimaryKey, realmGet$last_chapter, false);
                } else {
                    Table.nativeSetNull(j3, aVar.E, createRowWithPrimaryKey, false);
                }
                String realmGet$isjingpin = dsItemBean.realmGet$isjingpin();
                if (realmGet$isjingpin != null) {
                    Table.nativeSetString(j3, aVar.F, createRowWithPrimaryKey, realmGet$isjingpin, false);
                } else {
                    Table.nativeSetNull(j3, aVar.F, createRowWithPrimaryKey, false);
                }
                String realmGet$xianmian = dsItemBean.realmGet$xianmian();
                if (realmGet$xianmian != null) {
                    Table.nativeSetString(j3, aVar.G, createRowWithPrimaryKey, realmGet$xianmian, false);
                } else {
                    Table.nativeSetNull(j3, aVar.G, createRowWithPrimaryKey, false);
                }
                String realmGet$cover = dsItemBean.realmGet$cover();
                if (realmGet$cover != null) {
                    Table.nativeSetString(j3, aVar.H, createRowWithPrimaryKey, realmGet$cover, false);
                } else {
                    Table.nativeSetNull(j3, aVar.H, createRowWithPrimaryKey, false);
                }
                String realmGet$ishot = dsItemBean.realmGet$ishot();
                if (realmGet$ishot != null) {
                    Table.nativeSetString(j3, aVar.I, createRowWithPrimaryKey, realmGet$ishot, false);
                } else {
                    Table.nativeSetNull(j3, aVar.I, createRowWithPrimaryKey, false);
                }
                String realmGet$issole = dsItemBean.realmGet$issole();
                if (realmGet$issole != null) {
                    Table.nativeSetString(j3, aVar.J, createRowWithPrimaryKey, realmGet$issole, false);
                } else {
                    Table.nativeSetNull(j3, aVar.J, createRowWithPrimaryKey, false);
                }
                String realmGet$isnew = dsItemBean.realmGet$isnew();
                if (realmGet$isnew != null) {
                    Table.nativeSetString(j3, aVar.K, createRowWithPrimaryKey, realmGet$isnew, false);
                } else {
                    Table.nativeSetNull(j3, aVar.K, createRowWithPrimaryKey, false);
                }
                String realmGet$h = dsItemBean.realmGet$h();
                if (realmGet$h != null) {
                    Table.nativeSetString(j3, aVar.L, createRowWithPrimaryKey, realmGet$h, false);
                } else {
                    Table.nativeSetNull(j3, aVar.L, createRowWithPrimaryKey, false);
                }
                String realmGet$vipcanread = dsItemBean.realmGet$vipcanread();
                if (realmGet$vipcanread != null) {
                    Table.nativeSetString(j3, aVar.M, createRowWithPrimaryKey, realmGet$vipcanread, false);
                } else {
                    Table.nativeSetNull(j3, aVar.M, createRowWithPrimaryKey, false);
                }
                String realmGet$pingfen = dsItemBean.realmGet$pingfen();
                if (realmGet$pingfen != null) {
                    Table.nativeSetString(j3, aVar.N, createRowWithPrimaryKey, realmGet$pingfen, false);
                } else {
                    Table.nativeSetNull(j3, aVar.N, createRowWithPrimaryKey, false);
                }
                String realmGet$contentType = dsItemBean.realmGet$contentType();
                if (realmGet$contentType != null) {
                    Table.nativeSetString(j3, aVar.O, createRowWithPrimaryKey, realmGet$contentType, false);
                } else {
                    Table.nativeSetNull(j3, aVar.O, createRowWithPrimaryKey, false);
                }
            }
        }
    }
}
