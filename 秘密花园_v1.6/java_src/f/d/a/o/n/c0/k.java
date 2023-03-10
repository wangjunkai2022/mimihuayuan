package f.d.a.o.n.c0;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import f.d.a.u.j.a;
import f.d.a.u.j.d;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* compiled from: SafeKeyGenerator.java */
/* loaded from: classes.dex */
public class k {
    public final f.d.a.u.f<f.d.a.o.f, String> a = new f.d.a.u.f<>(1000);
    public final Pools.Pool<b> b = f.d.a.u.j.a.a(10, new a(this));

    /* compiled from: SafeKeyGenerator.java */
    /* loaded from: classes.dex */
    public class a implements a.b<b> {
        public a(k kVar) {
        }

        @Override // f.d.a.u.j.a.b
        public b a() {
            try {
                return new b(MessageDigest.getInstance("SHA-256"));
            } catch (NoSuchAlgorithmException e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    /* compiled from: SafeKeyGenerator.java */
    /* loaded from: classes.dex */
    public static final class b implements a.d {
        public final MessageDigest a;
        public final f.d.a.u.j.d b = new d.b();

        public b(MessageDigest messageDigest) {
            this.a = messageDigest;
        }

        @Override // f.d.a.u.j.a.d
        @NonNull
        public f.d.a.u.j.d c() {
            return this.b;
        }
    }

    public String a(f.d.a.o.f fVar) {
        String a2;
        synchronized (this.a) {
            a2 = this.a.a(fVar);
        }
        if (a2 == null) {
            b acquire = this.b.acquire();
            c.a.a.b.g.h.s(acquire, "Argument must not be null");
            b bVar = acquire;
            try {
                fVar.b(bVar.a);
                a2 = f.d.a.u.i.n(bVar.a.digest());
            } finally {
                this.b.release(bVar);
            }
        }
        synchronized (this.a) {
            this.a.d(fVar, a2);
        }
        return a2;
    }
}
