package f.i.a.a.b1;

import androidx.annotation.Nullable;
/* compiled from: SeekMap.java */
/* loaded from: classes.dex */
public interface n {

    /* compiled from: SeekMap.java */
    /* loaded from: classes.dex */
    public static final class b implements n {
        public final long a;
        public final a b;

        public b(long j2, long j3) {
            this.a = j2;
            this.b = new a(j3 == 0 ? o.f4143c : new o(0L, j3));
        }

        @Override // f.i.a.a.b1.n
        public boolean g() {
            return false;
        }

        @Override // f.i.a.a.b1.n
        public a h(long j2) {
            return this.b;
        }

        @Override // f.i.a.a.b1.n
        public long j() {
            return this.a;
        }
    }

    boolean g();

    a h(long j2);

    long j();

    /* compiled from: SeekMap.java */
    /* loaded from: classes.dex */
    public static final class a {
        public final o a;
        public final o b;

        public a(o oVar) {
            this.a = oVar;
            this.b = oVar;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.a.equals(aVar.a) && this.b.equals(aVar.b);
        }

        public int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public String toString() {
            String sb;
            StringBuilder o = f.b.a.a.a.o("[");
            o.append(this.a);
            if (this.a.equals(this.b)) {
                sb = "";
            } else {
                StringBuilder o2 = f.b.a.a.a.o(", ");
                o2.append(this.b);
                sb = o2.toString();
            }
            return f.b.a.a.a.l(o, sb, "]");
        }

        public a(o oVar, o oVar2) {
            this.a = oVar;
            this.b = oVar2;
        }
    }
}
