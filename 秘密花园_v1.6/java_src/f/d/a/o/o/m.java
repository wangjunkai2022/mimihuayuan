package f.d.a.o.o;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Queue;
/* compiled from: ModelCache.java */
/* loaded from: classes.dex */
public class m<A, B> {
    public final f.d.a.u.f<b<A>, B> a;

    /* compiled from: ModelCache.java */
    /* loaded from: classes.dex */
    public class a extends f.d.a.u.f<b<A>, B> {
        public a(m mVar, long j2) {
            super(j2);
        }

        @Override // f.d.a.u.f
        public void c(@NonNull Object obj, @Nullable Object obj2) {
            b<?> bVar = (b) obj;
            if (bVar != null) {
                synchronized (b.f3737d) {
                    b.f3737d.offer(bVar);
                }
                return;
            }
            throw null;
        }
    }

    /* compiled from: ModelCache.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static final class b<A> {

        /* renamed from: d  reason: collision with root package name */
        public static final Queue<b<?>> f3737d = f.d.a.u.i.d(0);
        public int a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public A f3738c;

        public static <A> b<A> a(A a, int i2, int i3) {
            b<A> bVar;
            synchronized (f3737d) {
                bVar = (b<A>) f3737d.poll();
            }
            if (bVar == null) {
                bVar = new b<>();
            }
            bVar.f3738c = a;
            bVar.b = i2;
            bVar.a = i3;
            return bVar;
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                b bVar = (b) obj;
                return this.b == bVar.b && this.a == bVar.a && this.f3738c.equals(bVar.f3738c);
            }
            return false;
        }

        public int hashCode() {
            return this.f3738c.hashCode() + (((this.a * 31) + this.b) * 31);
        }
    }

    public m(long j2) {
        this.a = new a(this, j2);
    }
}
