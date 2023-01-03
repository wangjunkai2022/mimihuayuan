package j;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* compiled from: Timeout.kt */
/* loaded from: classes.dex */
public class b0 {

    /* renamed from: d  reason: collision with root package name */
    public static final b0 f6968d = new a();
    public boolean a;
    public long b;

    /* renamed from: c  reason: collision with root package name */
    public long f6969c;

    /* compiled from: Timeout.kt */
    /* loaded from: classes.dex */
    public static final class a extends b0 {
        @Override // j.b0
        public b0 d(long j2) {
            return this;
        }

        @Override // j.b0
        public void f() {
        }

        @Override // j.b0
        public b0 g(long j2, TimeUnit timeUnit) {
            if (timeUnit != null) {
                return this;
            }
            h.o.c.g.f("unit");
            throw null;
        }
    }

    public b0 a() {
        this.a = false;
        return this;
    }

    public b0 b() {
        this.f6969c = 0L;
        return this;
    }

    public long c() {
        if (this.a) {
            return this.b;
        }
        throw new IllegalStateException("No deadline".toString());
    }

    public b0 d(long j2) {
        this.a = true;
        this.b = j2;
        return this;
    }

    public boolean e() {
        return this.a;
    }

    public void f() throws IOException {
        if (!Thread.interrupted()) {
            if (this.a && this.b - System.nanoTime() <= 0) {
                throw new InterruptedIOException("deadline reached");
            }
            return;
        }
        Thread.currentThread().interrupt();
        throw new InterruptedIOException("interrupted");
    }

    public b0 g(long j2, TimeUnit timeUnit) {
        if (timeUnit == null) {
            h.o.c.g.f("unit");
            throw null;
        }
        if (j2 >= 0) {
            this.f6969c = timeUnit.toNanos(j2);
            return this;
        }
        throw new IllegalArgumentException(f.b.a.a.a.c("timeout < 0: ", j2).toString());
    }
}
