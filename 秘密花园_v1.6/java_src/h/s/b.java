package h.s;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* compiled from: Strings.kt */
/* loaded from: classes.dex */
public final class b implements h.r.c<h.p.c> {
    public final CharSequence a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final int f6425c;

    /* renamed from: d  reason: collision with root package name */
    public final h.o.b.c<CharSequence, Integer, h.c<Integer, Integer>> f6426d;

    /* compiled from: Strings.kt */
    /* loaded from: classes.dex */
    public static final class a implements Iterator<h.p.c>, h.o.c.o.a {
        public int a = -1;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public int f6427c;

        /* renamed from: d  reason: collision with root package name */
        public h.p.c f6428d;

        /* renamed from: e  reason: collision with root package name */
        public int f6429e;

        public a() {
            int i2 = b.this.b;
            int length = b.this.a.length();
            if (length >= 0) {
                if (i2 < 0) {
                    i2 = 0;
                } else if (i2 > length) {
                    i2 = length;
                }
                this.b = i2;
                this.f6427c = i2;
                return;
            }
            throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + length + " is less than minimum 0.");
        }

        /* JADX WARN: Code restructure failed: missing block: B:8:0x0019, code lost:
            if (r4 < r0) goto L13;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                r6 = this;
                int r0 = r6.f6427c
                r1 = 0
                if (r0 >= 0) goto Lc
                r6.a = r1
                r0 = 0
                r6.f6428d = r0
                goto L86
            Lc:
                h.s.b r0 = h.s.b.this
                int r0 = r0.f6425c
                r2 = -1
                r3 = 1
                if (r0 <= 0) goto L1b
                int r4 = r6.f6429e
                int r4 = r4 + r3
                r6.f6429e = r4
                if (r4 >= r0) goto L27
            L1b:
                int r0 = r6.f6427c
                h.s.b r4 = h.s.b.this
                java.lang.CharSequence r4 = r4.a
                int r4 = r4.length()
                if (r0 <= r4) goto L3b
            L27:
                int r0 = r6.b
                h.p.c r1 = new h.p.c
                h.s.b r4 = h.s.b.this
                java.lang.CharSequence r4 = r4.a
                int r4 = h.s.d.e(r4)
                r1.<init>(r0, r4)
                r6.f6428d = r1
                r6.f6427c = r2
                goto L84
            L3b:
                h.s.b r0 = h.s.b.this
                h.o.b.c<java.lang.CharSequence, java.lang.Integer, h.c<java.lang.Integer, java.lang.Integer>> r4 = r0.f6426d
                java.lang.CharSequence r0 = r0.a
                int r5 = r6.f6427c
                java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
                java.lang.Object r0 = r4.b(r0, r5)
                h.c r0 = (h.c) r0
                if (r0 != 0) goto L63
                int r0 = r6.b
                h.p.c r1 = new h.p.c
                h.s.b r4 = h.s.b.this
                java.lang.CharSequence r4 = r4.a
                int r4 = h.s.d.e(r4)
                r1.<init>(r0, r4)
                r6.f6428d = r1
                r6.f6427c = r2
                goto L84
            L63:
                A r2 = r0.a
                java.lang.Number r2 = (java.lang.Number) r2
                int r2 = r2.intValue()
                B r0 = r0.b
                java.lang.Number r0 = (java.lang.Number) r0
                int r0 = r0.intValue()
                int r4 = r6.b
                h.p.c r4 = h.p.d.c(r4, r2)
                r6.f6428d = r4
                int r2 = r2 + r0
                r6.b = r2
                if (r0 != 0) goto L81
                r1 = 1
            L81:
                int r2 = r2 + r1
                r6.f6427c = r2
            L84:
                r6.a = r3
            L86:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: h.s.b.a.a():void");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.a == -1) {
                a();
            }
            return this.a == 1;
        }

        @Override // java.util.Iterator
        public h.p.c next() {
            if (this.a == -1) {
                a();
            }
            if (this.a != 0) {
                h.p.c cVar = this.f6428d;
                if (cVar != null) {
                    this.f6428d = null;
                    this.a = -1;
                    return cVar;
                }
                throw new h.f("null cannot be cast to non-null type kotlin.ranges.IntRange");
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(CharSequence charSequence, int i2, int i3, h.o.b.c<? super CharSequence, ? super Integer, h.c<Integer, Integer>> cVar) {
        if (charSequence == null) {
            h.o.c.g.f("input");
            throw null;
        }
        this.a = charSequence;
        this.b = i2;
        this.f6425c = i3;
        this.f6426d = cVar;
    }

    @Override // h.r.c
    public Iterator<h.p.c> iterator() {
        return new a();
    }
}
