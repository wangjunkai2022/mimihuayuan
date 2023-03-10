package l;

import i.f;
/* compiled from: HttpServiceMethod.java */
/* loaded from: classes2.dex */
public abstract class o<ResponseT, ReturnT> extends i0<ReturnT> {
    public final f0 a;
    public final f.a b;

    /* renamed from: c  reason: collision with root package name */
    public final l<i.i0, ResponseT> f7292c;

    /* compiled from: HttpServiceMethod.java */
    /* loaded from: classes2.dex */
    public static final class a<ResponseT, ReturnT> extends o<ResponseT, ReturnT> {

        /* renamed from: d  reason: collision with root package name */
        public final e<ResponseT, ReturnT> f7293d;

        public a(f0 f0Var, f.a aVar, l<i.i0, ResponseT> lVar, e<ResponseT, ReturnT> eVar) {
            super(f0Var, aVar, lVar);
            this.f7293d = eVar;
        }

        @Override // l.o
        public ReturnT b(d<ResponseT> dVar, Object[] objArr) {
            return this.f7293d.b(dVar);
        }
    }

    /* compiled from: HttpServiceMethod.java */
    /* loaded from: classes2.dex */
    public static final class b<ResponseT> extends o<ResponseT, Object> {

        /* renamed from: d  reason: collision with root package name */
        public final e<ResponseT, d<ResponseT>> f7294d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f7295e;

        public b(f0 f0Var, f.a aVar, l<i.i0, ResponseT> lVar, e<ResponseT, d<ResponseT>> eVar, boolean z) {
            super(f0Var, aVar, lVar);
            this.f7294d = eVar;
            this.f7295e = z;
        }

        @Override // l.o
        public Object b(d<ResponseT> dVar, Object[] objArr) {
            d<ResponseT> b = this.f7294d.b(dVar);
            h.m.a aVar = (h.m.a) objArr[objArr.length - 1];
            try {
                if (this.f7295e) {
                    return j.b.e(b, aVar);
                }
                return j.b.d(b, aVar);
            } catch (Exception e2) {
                return j.b.z(e2, aVar);
            }
        }
    }

    /* compiled from: HttpServiceMethod.java */
    /* loaded from: classes2.dex */
    public static final class c<ResponseT> extends o<ResponseT, Object> {

        /* renamed from: d  reason: collision with root package name */
        public final e<ResponseT, d<ResponseT>> f7296d;

        public c(f0 f0Var, f.a aVar, l<i.i0, ResponseT> lVar, e<ResponseT, d<ResponseT>> eVar) {
            super(f0Var, aVar, lVar);
            this.f7296d = eVar;
        }

        @Override // l.o
        public Object b(d<ResponseT> dVar, Object[] objArr) {
            d<ResponseT> b = this.f7296d.b(dVar);
            h.m.a aVar = (h.m.a) objArr[objArr.length - 1];
            try {
                return j.b.f(b, aVar);
            } catch (Exception e2) {
                return j.b.z(e2, aVar);
            }
        }
    }

    public o(f0 f0Var, f.a aVar, l<i.i0, ResponseT> lVar) {
        this.a = f0Var;
        this.b = aVar;
        this.f7292c = lVar;
    }

    public abstract ReturnT b(d<ResponseT> dVar, Object[] objArr);
}
