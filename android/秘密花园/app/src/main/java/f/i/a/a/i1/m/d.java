package f.i.a.a.i1.m;

import androidx.annotation.NonNull;
import c.a.a.b.g.h;
import f.i.a.a.i1.e;
import f.i.a.a.i1.f;
import f.i.a.a.i1.i;
import f.i.a.a.i1.j;
import java.util.ArrayDeque;
import java.util.PriorityQueue;

/* compiled from: CeaDecoder.java */
/* loaded from: classes.dex */
public abstract class d implements f {
    public final ArrayDeque<b> a = new ArrayDeque<>();
    public final ArrayDeque<j> b;

    /* renamed from: c  reason: collision with root package name */
    public final PriorityQueue<b> f5280c;

    /* renamed from: d  reason: collision with root package name */
    public b f5281d;

    /* renamed from: e  reason: collision with root package name */
    public long f5282e;

    /* renamed from: f  reason: collision with root package name */
    public long f5283f;

    /* compiled from: CeaDecoder.java */
    /* loaded from: classes.dex */
    public static final class b extends i implements Comparable<b> {

        /* renamed from: g  reason: collision with root package name */
        public long f5284g;

        public b() {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // java.lang.Comparable
        public int compareTo(@NonNull b bVar) {
            b bVar2 = bVar;
            if (h() == bVar2.h()) {
                long j2 = this.f5956d - bVar2.f5956d;
                if (j2 == 0) {
                    j2 = this.f5284g - bVar2.f5284g;
                    if (j2 == 0) {
                        return 0;
                    }
                }
                if (j2 > 0) {
                    return 1;
                }
            } else if (h()) {
                return 1;
            }
            return -1;
        }

        public b(a aVar) {
        }
    }

    /* compiled from: CeaDecoder.java */
    /* loaded from: classes.dex */
    public final class c extends j {
        public c(a aVar) {
        }

        @Override // f.i.a.a.y0.f
        public final void i() {
            d dVar = d.this;
            if (dVar != null) {
                this.a = 0;
                this.f5240c = null;
                dVar.b.add(this);
                return;
            }
            throw null;
        }
    }

    public d() {
        for (int i2 = 0; i2 < 10; i2++) {
            this.a.add(new b(null));
        }
        this.b = new ArrayDeque<>();
        for (int i3 = 0; i3 < 2; i3++) {
            this.b.add(new c(null));
        }
        this.f5280c = new PriorityQueue<>();
    }

    @Override // f.i.a.a.y0.c
    public void a() {
    }

    @Override // f.i.a.a.i1.f
    public void b(long j2) {
        this.f5282e = j2;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // f.i.a.a.y0.c
    public void c(i iVar) throws Exception {
        i iVar2 = iVar;
        h.m(iVar2 == this.f5281d);
        if (iVar2.g()) {
            i(this.f5281d);
        } else {
            b bVar = this.f5281d;
            long j2 = this.f5283f;
            this.f5283f = 1 + j2;
            bVar.f5284g = j2;
            this.f5280c.add(bVar);
        }
        this.f5281d = null;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // f.i.a.a.y0.c
    public j d() throws Exception {
        if (this.b.isEmpty()) {
            return null;
        }
        while (!this.f5280c.isEmpty() && this.f5280c.peek().f5956d <= this.f5282e) {
            b poll = this.f5280c.poll();
            if (poll.h()) {
                j pollFirst = this.b.pollFirst();
                pollFirst.e(4);
                i(poll);
                return pollFirst;
            }
            g(poll);
            if (h()) {
                e f2 = f();
                if (!poll.g()) {
                    j pollFirst2 = this.b.pollFirst();
                    long j2 = poll.f5956d;
                    pollFirst2.b = j2;
                    pollFirst2.f5240c = f2;
                    pollFirst2.f5241d = j2;
                    i(poll);
                    return pollFirst2;
                }
            }
            i(poll);
        }
        return null;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // f.i.a.a.y0.c
    public i e() throws Exception {
        h.v(this.f5281d == null);
        if (this.a.isEmpty()) {
            return null;
        }
        b pollFirst = this.a.pollFirst();
        this.f5281d = pollFirst;
        return pollFirst;
    }

    public abstract e f();

    @Override // f.i.a.a.y0.c
    public void flush() {
        this.f5283f = 0;
        this.f5282e = 0;
        while (!this.f5280c.isEmpty()) {
            i(this.f5280c.poll());
        }
        b bVar = this.f5281d;
        if (bVar != null) {
            i(bVar);
            this.f5281d = null;
        }
    }

    public abstract void g(i iVar);

    public abstract boolean h();

    public final void i(b bVar) {
        bVar.i();
        this.a.add(bVar);
    }
}
