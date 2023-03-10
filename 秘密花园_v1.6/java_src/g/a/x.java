package g.a;

import android.content.Context;
import io.realm.exceptions.RealmException;
import io.realm.exceptions.RealmMigrationNeededException;
import io.realm.exceptions.RealmPrimaryKeyConstraintException;
import io.realm.internal.OsObject;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.Table;
import io.realm.internal.UncheckedRow;
import io.realm.internal.Util;
import io.realm.log.RealmLog;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
/* compiled from: Realm.java */
/* loaded from: classes.dex */
public class x extends g.a.a {

    /* renamed from: k  reason: collision with root package name */
    public static final Object f6399k = new Object();

    /* renamed from: l  reason: collision with root package name */
    public static b0 f6400l;

    /* renamed from: j  reason: collision with root package name */
    public final k0 f6401j;

    /* compiled from: Realm.java */
    /* loaded from: classes.dex */
    public interface a {

        /* compiled from: Realm.java */
        /* renamed from: g.a.x$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public interface InterfaceC0101a {
            void a(Throwable th);
        }

        /* compiled from: Realm.java */
        /* loaded from: classes.dex */
        public interface b {
            void a();
        }

        void a(x xVar);
    }

    public x(OsSharedRealm osSharedRealm) {
        super(osSharedRealm);
        this.f6401j = new l(this, new g.a.f1.b(this.b.f6288j, osSharedRealm.getSchemaInfo()));
    }

    public static x P() {
        b0 b0Var;
        synchronized (f6399k) {
            b0Var = f6400l;
        }
        if (b0Var == null) {
            if (g.a.a.f6271g == null) {
                throw new IllegalStateException("Call `Realm.init(Context)` before calling this method.");
            }
            throw new IllegalStateException("Set default configuration by using `Realm.setDefaultConfiguration(RealmConfiguration)`.");
        }
        return (x) z.b(b0Var, x.class);
    }

    public static Object Q() {
        try {
            Constructor<?> constructor = Class.forName("io.realm.DefaultRealmModule").getDeclaredConstructors()[0];
            constructor.setAccessible(true);
            return constructor.newInstance(new Object[0]);
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (IllegalAccessException e2) {
            throw new RealmException(f.b.a.a.a.f("Could not create an instance of ", "io.realm.DefaultRealmModule"), e2);
        } catch (InstantiationException e3) {
            throw new RealmException(f.b.a.a.a.f("Could not create an instance of ", "io.realm.DefaultRealmModule"), e3);
        } catch (InvocationTargetException e4) {
            throw new RealmException(f.b.a.a.a.f("Could not create an instance of ", "io.realm.DefaultRealmModule"), e4);
        }
    }

    public static synchronized void R(Context context) {
        synchronized (x.class) {
            S(context, "");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void S(android.content.Context r7, java.lang.String r8) {
        /*
            android.content.Context r8 = g.a.a.f6271g
            if (r8 != 0) goto Lb5
            if (r7 == 0) goto Lad
            java.io.File r8 = r7.getFilesDir()
            if (r8 == 0) goto L18
            boolean r0 = r8.exists()
            if (r0 == 0) goto L13
            goto L5c
        L13:
            r8.mkdirs()     // Catch: java.lang.SecurityException -> L17
            goto L18
        L17:
        L18:
            if (r8 == 0) goto L20
            boolean r8 = r8.exists()
            if (r8 != 0) goto L4c
        L20:
            r8 = 5
            long[] r8 = new long[r8]
            r8 = {x00b6: FILL_ARRAY_DATA  , data: [1, 2, 5, 10, 16} // fill-array
            r0 = 200(0xc8, double:9.9E-322)
            r2 = 0
            r4 = -1
        L2b:
            java.io.File r5 = r7.getFilesDir()
            if (r5 == 0) goto L3b
            java.io.File r5 = r7.getFilesDir()
            boolean r5 = r5.exists()
            if (r5 != 0) goto L4c
        L3b:
            int r4 = r4 + 1
            r5 = 4
            int r5 = java.lang.Math.min(r4, r5)
            r5 = r8[r5]
            android.os.SystemClock.sleep(r5)
            long r2 = r2 + r5
            int r5 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r5 <= 0) goto L2b
        L4c:
            java.io.File r8 = r7.getFilesDir()
            if (r8 == 0) goto L91
            java.io.File r8 = r7.getFilesDir()
            boolean r8 = r8.exists()
            if (r8 == 0) goto L91
        L5c:
            g.a.f1.m.a(r7)
            g.a.b0$a r8 = new g.a.b0$a
            r8.<init>(r7)
            g.a.b0 r8 = r8.a()
            T(r8)
            g.a.f1.j r8 = g.a.f1.j.b()
            if (r8 == 0) goto L8f
            android.content.Context r8 = r7.getApplicationContext()
            if (r8 == 0) goto L7e
            android.content.Context r8 = r7.getApplicationContext()
            g.a.a.f6271g = r8
            goto L80
        L7e:
            g.a.a.f6271g = r7
        L80:
            java.io.File r8 = new java.io.File
            java.io.File r7 = r7.getFilesDir()
            java.lang.String r0 = ".realm.temp"
            r8.<init>(r7, r0)
            io.realm.internal.OsSharedRealm.initialize(r8)
            goto Lb5
        L8f:
            r7 = 0
            throw r7
        L91:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "Context.getFilesDir() returns "
            java.lang.StringBuilder r0 = f.b.a.a.a.o(r0)
            java.io.File r7 = r7.getFilesDir()
            r0.append(r7)
            java.lang.String r7 = " which is not an existing directory. See https://issuetracker.google.com/issues/36918154"
            r0.append(r7)
            java.lang.String r7 = r0.toString()
            r8.<init>(r7)
            throw r8
        Lad:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            java.lang.String r8 = "Non-null context required."
            r7.<init>(r8)
            throw r7
        Lb5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: g.a.x.S(android.content.Context, java.lang.String):void");
    }

    public static void T(b0 b0Var) {
        synchronized (f6399k) {
            f6400l = b0Var;
        }
    }

    @Override // g.a.a
    public k0 G() {
        return this.f6401j;
    }

    public final <E extends e0> void J(E e2) {
        if (e2 == null) {
            throw new IllegalArgumentException("Null objects cannot be copied into Realm.");
        }
    }

    public final <E extends e0> E K(E e2, boolean z, Map<e0, g.a.f1.n> map, Set<m> set) {
        f();
        if (I()) {
            try {
                return (E) this.b.f6288j.b(this, e2, z, map, set);
            } catch (IllegalStateException e3) {
                if (e3.getMessage().startsWith("Attempting to create an object of type")) {
                    throw new RealmPrimaryKeyConstraintException(e3.getMessage());
                }
                throw e3;
            }
        }
        throw new IllegalStateException("`copyOrUpdate` can only be called inside a write transaction.");
    }

    public <E extends e0> E L(E e2, m... mVarArr) {
        J(e2);
        return (E) K(e2, false, new HashMap(), Util.b(mVarArr));
    }

    public <E extends e0> E M(Class<E> cls, Object obj, boolean z, List<String> list) {
        Table e2 = this.f6401j.e(cls);
        g.a.f1.o oVar = this.b.f6288j;
        UncheckedRow createWithPrimaryKey = OsObject.createWithPrimaryKey(e2, obj);
        k0 k0Var = this.f6401j;
        k0Var.a();
        return (E) oVar.i(cls, this, createWithPrimaryKey, k0Var.f6370f.a(cls), z, list);
    }

    public void N(a aVar) {
        d();
        try {
            aVar.a(this);
            g();
        } catch (Throwable th) {
            if (I()) {
                e();
            } else {
                RealmLog.c("Could not cancel transaction, not currently in a transaction.", new Object[0]);
            }
            throw th;
        }
    }

    public g.a.f1.t.b O(a aVar, a.b bVar) {
        f();
        boolean a2 = ((g.a.f1.s.a) this.f6275d.capabilities).a();
        ((g.a.f1.s.a) this.f6275d.capabilities).b("Callback cannot be delivered on current thread.");
        return new g.a.f1.t.b(g.a.a.f6272h.a(new w(this, this.b, aVar, a2, bVar, this.f6275d.realmNotifier, null)), g.a.a.f6272h);
    }

    public x(z zVar) {
        super(zVar, new OsSchemaInfo(zVar.f6406c.f6288j.d().values()));
        this.f6401j = new l(this, new g.a.f1.b(this.b.f6288j, this.f6275d.getSchemaInfo()));
        b0 b0Var = this.b;
        if (b0Var.f6291m) {
            g.a.f1.o oVar = b0Var.f6288j;
            for (Class<? extends e0> cls : oVar.f()) {
                String k2 = Table.k(oVar.g(cls));
                if (!this.f6275d.hasTable(k2)) {
                    this.f6275d.close();
                    throw new RealmMigrationNeededException(this.b.f6281c, String.format(Locale.US, "Cannot open the read only Realm. '%s' is missing.", Table.e(k2)));
                }
            }
        }
    }
}
