package f.i.a.a.i1.m;

import androidx.annotation.NonNull;
import c.a.a.b.g.h;
import f.i.a.a.i1.i;
import f.i.a.a.i1.j;
import java.util.ArrayDeque;
import java.util.PriorityQueue;
/* compiled from: CeaDecoder.java */
/* loaded from: classes.dex */
public abstract class d implements f.i.a.a.i1.f {
    public final ArrayDeque<b> a = new ArrayDeque<>();
    public final ArrayDeque<j> b;

    /* renamed from: c  reason: collision with root package name */
    public final PriorityQueue<b> f5364c;

    /* renamed from: d  reason: collision with root package name */
    public b f5365d;

    /* renamed from: e  reason: collision with root package name */
    public long f5366e;

    /* renamed from: f  reason: collision with root package name */
    public long f5367f;

    /* compiled from: CeaDecoder.java */
    /* loaded from: classes.dex */
    public static final class b extends i implements Comparable<b> {

        /* renamed from: g  reason: collision with root package name */
        public long f5368g;

        public b() {
        }

        @Override // java.lang.Comparable
        public int compareTo(@NonNull b bVar) {
            b bVar2 = bVar;
            if (h() != bVar2.h()) {
                if (h()) {
                    return 1;
                }
            } else {
                long j2 = this.f6040d - bVar2.f6040d;
                if (j2 == 0) {
                    j2 = this.f5368g - bVar2.f5368g;
                    if (j2 == 0) {
                        return 0;
                    }
                }
                if (j2 > 0) {
                    return 1;
                }
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
                this.f5324c = null;
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
        this.f5364c = new PriorityQueue<>();
    }

    @Override // f.i.a.a.y0.c
    public void a() {
    }

    @Override // f.i.a.a.i1.f
    public void b(long j2) {
        this.f5366e = j2;
    }

    @Override // f.i.a.a.y0.c
    public void c(i iVar) throws Exception {
        i iVar2 = iVar;
        h.m(iVar2 == this.f5365d);
        if (iVar2.g()) {
            i(this.f5365d);
        } else {
            b bVar = this.f5365d;
            long j2 = this.f5367f;
            this.f5367f = 1 + j2;
            bVar.f5368g = j2;
            this.f5364c.add(bVar);
        }
        this.f5365d = null;
    }

    @Override // f.i.a.a.y0.c
    public j d() throws Exception {
        if (this.b.isEmpty()) {
            return null;
        }
        while (!this.f5364c.isEmpty() && this.f5364c.peek().f6040d <= this.f5366e) {
            b poll = this.f5364c.poll();
            if (poll.h()) {
                j pollFirst = this.b.pollFirst();
                pollFirst.e(4);
                i(poll);
                return pollFirst;
            }
            g(poll);
            if (h()) {
                f.i.a.a.i1.e f2 = f();
                if (!poll.g()) {
                    j pollFirst2 = this.b.pollFirst();
                    long j2 = poll.f6040d;
                    pollFirst2.b = j2;
                    pollFirst2.f5324c = f2;
                    pollFirst2.f5325d = j2;
                    i(poll);
                    return pollFirst2;
                }
            }
            i(poll);
        }
        return null;
    }

    @Override // f.i.a.a.y0.c
    public i e() throws Exception {
        h.v(this.f5365d == null);
        if (this.a.isEmpty()) {
            return null;
        }
        b pollFirst = this.a.pollFirst();
        this.f5365d = pollFirst;
        return pollFirst;
    }

    public abstract f.i.a.a.i1.e f();

    @Override // f.i.a.a.y0.c
    public void flush() {
        this.f5367f = 0L;
        this.f5366e = 0L;
        while (!this.f5364c.isEmpty()) {
            i(this.f5364c.poll());
        }
        b bVar = this.f5365d;
        if (bVar != null) {
            i(bVar);
            this.f5365d = null;
        }
    }

    public abstract void g(i iVar);

    public abstract boolean h();

    public final void i(b bVar) {
        bVar.i();
        this.a.add(bVar);
    }
}
