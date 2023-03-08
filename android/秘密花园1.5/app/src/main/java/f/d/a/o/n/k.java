package f.d.a.o.n;

/* compiled from: DiskCacheStrategy.java */
/* loaded from: classes.dex */
public abstract class k {
    public static final k a = new a();
    public static final k b = new b();

    /* renamed from: c  reason: collision with root package name */
    public static final k f3658c = new c();

    /* renamed from: d  reason: collision with root package name */
    public static final k f3659d = new d();

    /* compiled from: DiskCacheStrategy.java */
    /* loaded from: classes.dex */
    public class a extends k {
        @Override // f.d.a.o.n.k
        public boolean a() {
            return true;
        }

        @Override // f.d.a.o.n.k
        public boolean b() {
            return true;
        }

        @Override // f.d.a.o.n.k
        public boolean c(f.d.a.o.a aVar) {
            return aVar == f.d.a.o.a.REMOTE;
        }

        @Override // f.d.a.o.n.k
        public boolean d(boolean z, f.d.a.o.a aVar, f.d.a.o.c cVar) {
            return (aVar == f.d.a.o.a.RESOURCE_DISK_CACHE || aVar == f.d.a.o.a.MEMORY_CACHE) ? false : true;
        }
    }

    /* compiled from: DiskCacheStrategy.java */
    /* loaded from: classes.dex */
    public class b extends k {
        @Override // f.d.a.o.n.k
        public boolean a() {
            return false;
        }

        @Override // f.d.a.o.n.k
        public boolean b() {
            return false;
        }

        @Override // f.d.a.o.n.k
        public boolean c(f.d.a.o.a aVar) {
            return false;
        }

        @Override // f.d.a.o.n.k
        public boolean d(boolean z, f.d.a.o.a aVar, f.d.a.o.c cVar) {
            return false;
        }
    }

    /* compiled from: DiskCacheStrategy.java */
    /* loaded from: classes.dex */
    public class c extends k {
        @Override // f.d.a.o.n.k
        public boolean a() {
            return true;
        }

        @Override // f.d.a.o.n.k
        public boolean b() {
            return false;
        }

        @Override // f.d.a.o.n.k
        public boolean c(f.d.a.o.a aVar) {
            return (aVar == f.d.a.o.a.DATA_DISK_CACHE || aVar == f.d.a.o.a.MEMORY_CACHE) ? false : true;
        }

        @Override // f.d.a.o.n.k
        public boolean d(boolean z, f.d.a.o.a aVar, f.d.a.o.c cVar) {
            return false;
        }
    }

    /* compiled from: DiskCacheStrategy.java */
    /* loaded from: classes.dex */
    public class d extends k {
        @Override // f.d.a.o.n.k
        public boolean a() {
            return true;
        }

        @Override // f.d.a.o.n.k
        public boolean b() {
            return true;
        }

        @Override // f.d.a.o.n.k
        public boolean c(f.d.a.o.a aVar) {
            return aVar == f.d.a.o.a.REMOTE;
        }

        @Override // f.d.a.o.n.k
        public boolean d(boolean z, f.d.a.o.a aVar, f.d.a.o.c cVar) {
            return ((z && aVar == f.d.a.o.a.DATA_DISK_CACHE) || aVar == f.d.a.o.a.LOCAL) && cVar == f.d.a.o.c.TRANSFORMED;
        }
    }

    public abstract boolean a();

    public abstract boolean b();

    public abstract boolean c(f.d.a.o.a aVar);

    public abstract boolean d(boolean z, f.d.a.o.a aVar, f.d.a.o.c cVar);
}
