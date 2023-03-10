package f.i.a.a;

import androidx.annotation.Nullable;
import f.i.a.a.l0;
import f.i.a.a.u0;
/* compiled from: BasePlayer.java */
/* loaded from: classes.dex */
public abstract class o implements l0 {
    public final u0.c a = new u0.c();

    /* compiled from: BasePlayer.java */
    /* loaded from: classes.dex */
    public static final class a {
        public final l0.b a;
        public boolean b;

        public a(l0.b bVar) {
            this.a = bVar;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            return this.a.equals(((a) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }
    }

    /* compiled from: BasePlayer.java */
    /* loaded from: classes.dex */
    public interface b {
        void a(l0.b bVar);
    }

    public final int a() {
        u0 w = w();
        if (w.q()) {
            return -1;
        }
        int z = z();
        int u = u();
        if (u == 1) {
            u = 0;
        }
        return w.e(z, u, x());
    }

    public final int b() {
        u0 w = w();
        if (w.q()) {
            return -1;
        }
        int z = z();
        int u = u();
        if (u == 1) {
            u = 0;
        }
        return w.l(z, u, x());
    }

    public final void c() {
        int a2 = a();
        if (a2 != -1) {
            k(a2, -9223372036854775807L);
        }
    }

    public final void d() {
        int b2 = b();
        if (b2 != -1) {
            k(b2, -9223372036854775807L);
        }
    }
}
