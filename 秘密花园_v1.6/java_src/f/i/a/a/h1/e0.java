package f.i.a.a.h1;

import android.os.Handler;
import androidx.annotation.Nullable;
import f.i.a.a.u0;
import java.io.IOException;
/* compiled from: MediaSource.java */
/* loaded from: classes.dex */
public interface e0 {

    /* compiled from: MediaSource.java */
    /* loaded from: classes.dex */
    public interface b {
        void f(e0 e0Var, u0 u0Var, @Nullable Object obj);
    }

    @Nullable
    Object a();

    void b() throws IOException;

    d0 c(a aVar, f.i.a.a.l1.e eVar, long j2);

    void d(d0 d0Var);

    void e(b bVar, @Nullable f.i.a.a.l1.i0 i0Var);

    void g(Handler handler, f0 f0Var);

    void h(f0 f0Var);

    void i(b bVar);

    /* compiled from: MediaSource.java */
    /* loaded from: classes.dex */
    public static final class a {
        public final Object a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final int f4825c;

        /* renamed from: d  reason: collision with root package name */
        public final long f4826d;

        /* renamed from: e  reason: collision with root package name */
        public final int f4827e;

        public a(Object obj) {
            this.a = obj;
            this.b = -1;
            this.f4825c = -1;
            this.f4826d = -1L;
            this.f4827e = -1;
        }

        public a a(Object obj) {
            return this.a.equals(obj) ? this : new a(obj, this.b, this.f4825c, this.f4826d, this.f4827e);
        }

        public boolean b() {
            return this.b != -1;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.a.equals(aVar.a) && this.b == aVar.b && this.f4825c == aVar.f4825c && this.f4826d == aVar.f4826d && this.f4827e == aVar.f4827e;
        }

        public int hashCode() {
            return ((((((((this.a.hashCode() + 527) * 31) + this.b) * 31) + this.f4825c) * 31) + ((int) this.f4826d)) * 31) + this.f4827e;
        }

        public a(Object obj, int i2, int i3, long j2) {
            this.a = obj;
            this.b = i2;
            this.f4825c = i3;
            this.f4826d = j2;
            this.f4827e = -1;
        }

        public a(Object obj, int i2, int i3, long j2, int i4) {
            this.a = obj;
            this.b = i2;
            this.f4825c = i3;
            this.f4826d = j2;
            this.f4827e = i4;
        }

        public a(Object obj, long j2, int i2) {
            this.a = obj;
            this.b = -1;
            this.f4825c = -1;
            this.f4826d = j2;
            this.f4827e = i2;
        }
    }
}
