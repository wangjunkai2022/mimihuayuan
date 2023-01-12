package g.a;

import android.content.Context;
import g.a.x;
import io.realm.CompactOnLaunchCallback;
import io.realm.exceptions.RealmException;
import io.realm.exceptions.RealmFileException;
import io.realm.internal.OsRealmConfig;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;

/* compiled from: RealmConfiguration.java */
/* loaded from: classes.dex */
public class b0 {
    public static final Object p;
    public static final g.a.f1.o q;
    public static Boolean r;
    public final File a;
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final String f6272c;

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f6274e;

    /* renamed from: f  reason: collision with root package name */
    public final long f6275f;

    /* renamed from: g  reason: collision with root package name */
    public final d0 f6276g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f6277h;

    /* renamed from: i  reason: collision with root package name */
    public final OsRealmConfig.c f6278i;

    /* renamed from: j  reason: collision with root package name */
    public final g.a.f1.o f6279j;

    /* renamed from: k  reason: collision with root package name */
    public final g.a.m1.b f6280k;

    /* renamed from: m  reason: collision with root package name */
    public final boolean f6282m;
    public final CompactOnLaunchCallback n;
    public final boolean o;

    /* renamed from: d  reason: collision with root package name */
    public final String f6273d = null;

    /* renamed from: l  reason: collision with root package name */
    public final x.a f6281l = null;

    /* compiled from: RealmConfiguration.java */
    /* loaded from: classes.dex */
    public static class a {
        public File a;
        public String b;

        /* renamed from: c  reason: collision with root package name */
        public byte[] f6283c;

        /* renamed from: d  reason: collision with root package name */
        public long f6284d;

        /* renamed from: e  reason: collision with root package name */
        public d0 f6285e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f6286f;

        /* renamed from: g  reason: collision with root package name */
        public OsRealmConfig.c f6287g;

        /* renamed from: h  reason: collision with root package name */
        public HashSet<Object> f6288h = new HashSet<>();

        /* renamed from: i  reason: collision with root package name */
        public HashSet<Class<? extends e0>> f6289i = new HashSet<>();

        /* renamed from: j  reason: collision with root package name */
        public g.a.m1.b f6290j;

        /* renamed from: k  reason: collision with root package name */
        public boolean f6291k;

        /* renamed from: l  reason: collision with root package name */
        public CompactOnLaunchCallback f6292l;

        public a(Context context) {
            if (context != null) {
                g.a.f1.m.a(context);
                this.a = context.getFilesDir();
                this.b = "default.realm";
                this.f6283c = null;
                this.f6284d = 0L;
                this.f6285e = null;
                this.f6286f = false;
                this.f6287g = OsRealmConfig.c.FULL;
                this.f6291k = false;
                this.f6292l = null;
                Object obj = b0.p;
                if (obj != null) {
                    this.f6288h.add(obj);
                    return;
                }
                return;
            }
            throw new IllegalStateException("Call `Realm.init(Context)` before creating a RealmConfiguration");
        }

        public b0 a() {
            g.a.f1.o aVar;
            if (this.f6291k) {
                throw new IllegalStateException("Only Realms provided using 'assetFile(path)' can be marked read-only. No such Realm was provided.");
            }
            if (this.f6290j == null && b0.d()) {
                this.f6290j = new g.a.m1.a();
            }
            File file = this.a;
            String str = this.b;
            File file2 = new File(this.a, this.b);
            try {
                String canonicalPath = file2.getCanonicalPath();
                byte[] bArr = this.f6283c;
                long j2 = this.f6284d;
                d0 d0Var = this.f6285e;
                boolean z = this.f6286f;
                OsRealmConfig.c cVar = this.f6287g;
                HashSet<Object> hashSet = this.f6288h;
                HashSet<Class<? extends e0>> hashSet2 = this.f6289i;
                if (hashSet2.size() > 0) {
                    aVar = new g.a.f1.v.b(b0.q, hashSet2);
                } else if (hashSet.size() == 1) {
                    aVar = b0.b(hashSet.iterator().next().getClass().getCanonicalName());
                } else {
                    g.a.f1.o[] oVarArr = new g.a.f1.o[hashSet.size()];
                    int i2 = 0;
                    for (Object obj : hashSet) {
                        oVarArr[i2] = b0.b(obj.getClass().getCanonicalName());
                        i2++;
                    }
                    aVar = new g.a.f1.v.a(oVarArr);
                }
                return new b0(file, str, canonicalPath, null, bArr, j2, d0Var, z, cVar, aVar, this.f6290j, null, this.f6291k, this.f6292l, false);
            } catch (IOException e2) {
                RealmFileException.Kind kind = RealmFileException.Kind.ACCESS_ERROR;
                StringBuilder o = f.b.a.a.a.o("Could not resolve the canonical path to the Realm file: ");
                o.append(file2.getAbsolutePath());
                throw new RealmFileException(kind, o.toString(), e2);
            }
        }
    }

    static {
        Object Q = x.Q();
        p = Q;
        if (Q != null) {
            g.a.f1.o b = b(Q.getClass().getCanonicalName());
            if (b.j()) {
                q = b;
                return;
            }
            throw new ExceptionInInitializerError("RealmTransformer doesn't seem to be applied. Please update the project configuration to use the Realm Gradle plugin. See https://realm.io/news/android-installation-change/");
        }
        q = null;
    }

    public b0(File file, String str, String str2, String str3, byte[] bArr, long j2, d0 d0Var, boolean z, OsRealmConfig.c cVar, g.a.f1.o oVar, g.a.m1.b bVar, x.a aVar, boolean z2, CompactOnLaunchCallback compactOnLaunchCallback, boolean z3) {
        this.a = file;
        this.b = str;
        this.f6272c = str2;
        this.f6274e = bArr;
        this.f6275f = j2;
        this.f6276g = d0Var;
        this.f6277h = z;
        this.f6278i = cVar;
        this.f6279j = oVar;
        this.f6280k = bVar;
        this.f6282m = z2;
        this.n = compactOnLaunchCallback;
        this.o = z3;
    }

    public static g.a.f1.o b(String str) {
        String[] split = str.split("\\.");
        String format = String.format(Locale.US, "io.realm.%s%s", split[split.length - 1], "Mediator");
        try {
            Constructor<?> constructor = Class.forName(format).getDeclaredConstructors()[0];
            constructor.setAccessible(true);
            return (g.a.f1.o) constructor.newInstance(new Object[0]);
        } catch (ClassNotFoundException e2) {
            throw new RealmException(f.b.a.a.a.f("Could not find ", format), e2);
        } catch (IllegalAccessException e3) {
            throw new RealmException(f.b.a.a.a.f("Could not create an instance of ", format), e3);
        } catch (InstantiationException e4) {
            throw new RealmException(f.b.a.a.a.f("Could not create an instance of ", format), e4);
        } catch (InvocationTargetException e5) {
            throw new RealmException(f.b.a.a.a.f("Could not create an instance of ", format), e5);
        }
    }

    public static synchronized boolean d() {
        boolean booleanValue;
        synchronized (b0.class) {
            if (r == null) {
                try {
                    Class.forName("io.reactivex.Flowable");
                    r = Boolean.TRUE;
                } catch (ClassNotFoundException unused) {
                    r = Boolean.FALSE;
                }
            }
            booleanValue = r.booleanValue();
        }
        return booleanValue;
    }

    public byte[] a() {
        byte[] bArr = this.f6274e;
        if (bArr == null) {
            return null;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }

    public g.a.m1.b c() {
        g.a.m1.b bVar = this.f6280k;
        if (bVar != null) {
            return bVar;
        }
        throw new UnsupportedOperationException("RxJava seems to be missing from the classpath. Remember to add it as a compile dependency. See https://realm.io/docs/java/latest/#rxjava for more details.");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b0.class != obj.getClass()) {
            return false;
        }
        b0 b0Var = (b0) obj;
        if (this.f6275f == b0Var.f6275f && this.f6277h == b0Var.f6277h && this.f6282m == b0Var.f6282m && this.o == b0Var.o) {
            File file = this.a;
            if (file == null ? b0Var.a == null : file.equals(b0Var.a)) {
                String str = this.b;
                if (str == null ? b0Var.b == null : str.equals(b0Var.b)) {
                    if (this.f6272c.equals(b0Var.f6272c)) {
                        String str2 = this.f6273d;
                        if (str2 == null ? b0Var.f6273d == null : str2.equals(b0Var.f6273d)) {
                            if (Arrays.equals(this.f6274e, b0Var.f6274e)) {
                                d0 d0Var = this.f6276g;
                                if (d0Var == null ? b0Var.f6276g == null : d0Var.equals(b0Var.f6276g)) {
                                    if (this.f6278i == b0Var.f6278i && this.f6279j.equals(b0Var.f6279j)) {
                                        g.a.m1.b bVar = this.f6280k;
                                        if (bVar == null ? b0Var.f6280k == null : bVar.equals(b0Var.f6280k)) {
                                            x.a aVar = this.f6281l;
                                            if (aVar == null ? b0Var.f6281l == null : aVar.equals(b0Var.f6281l)) {
                                                CompactOnLaunchCallback compactOnLaunchCallback = this.n;
                                                CompactOnLaunchCallback compactOnLaunchCallback2 = b0Var.n;
                                                return compactOnLaunchCallback != null ? compactOnLaunchCallback.equals(compactOnLaunchCallback2) : compactOnLaunchCallback2 == null;
                                            }
                                            return false;
                                        }
                                        return false;
                                    }
                                    return false;
                                }
                                return false;
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        File file = this.a;
        int hashCode = (file != null ? file.hashCode() : 0) * 31;
        String str = this.b;
        int hashCode2 = (this.f6272c.hashCode() + ((hashCode + (str != null ? str.hashCode() : 0)) * 31)) * 31;
        String str2 = this.f6273d;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        int hashCode4 = Arrays.hashCode(this.f6274e);
        long j2 = this.f6275f;
        int i2 = (((hashCode4 + ((hashCode2 + hashCode3) * 31)) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        d0 d0Var = this.f6276g;
        int hashCode5 = d0Var != null ? d0Var.hashCode() : 0;
        int hashCode6 = (this.f6279j.hashCode() + ((this.f6278i.hashCode() + ((((i2 + hashCode5) * 31) + (this.f6277h ? 1 : 0)) * 31)) * 31)) * 31;
        g.a.m1.b bVar = this.f6280k;
        int hashCode7 = (hashCode6 + (bVar != null ? bVar.hashCode() : 0)) * 31;
        x.a aVar = this.f6281l;
        int hashCode8 = (((hashCode7 + (aVar != null ? aVar.hashCode() : 0)) * 31) + (this.f6282m ? 1 : 0)) * 31;
        CompactOnLaunchCallback compactOnLaunchCallback = this.n;
        return ((hashCode8 + (compactOnLaunchCallback != null ? compactOnLaunchCallback.hashCode() : 0)) * 31) + (this.o ? 1 : 0);
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("realmDirectory: ");
        File file = this.a;
        o.append(file != null ? file.toString() : "");
        o.append(com.umeng.commonsdk.internal.utils.g.a);
        o.append("realmFileName : ");
        o.append(this.b);
        o.append(com.umeng.commonsdk.internal.utils.g.a);
        o.append("canonicalPath: ");
        f.b.a.a.a.C(o, this.f6272c, com.umeng.commonsdk.internal.utils.g.a, "key: ", "[length: ");
        o.append(this.f6274e == null ? 0 : 64);
        o.append("]");
        o.append(com.umeng.commonsdk.internal.utils.g.a);
        o.append("schemaVersion: ");
        o.append(Long.toString(this.f6275f));
        o.append(com.umeng.commonsdk.internal.utils.g.a);
        o.append("migration: ");
        o.append(this.f6276g);
        o.append(com.umeng.commonsdk.internal.utils.g.a);
        o.append("deleteRealmIfMigrationNeeded: ");
        o.append(this.f6277h);
        o.append(com.umeng.commonsdk.internal.utils.g.a);
        o.append("durability: ");
        o.append(this.f6278i);
        o.append(com.umeng.commonsdk.internal.utils.g.a);
        o.append("schemaMediator: ");
        o.append(this.f6279j);
        o.append(com.umeng.commonsdk.internal.utils.g.a);
        o.append("readOnly: ");
        o.append(this.f6282m);
        o.append(com.umeng.commonsdk.internal.utils.g.a);
        o.append("compactOnLaunch: ");
        o.append(this.n);
        return o.toString();
    }
}
