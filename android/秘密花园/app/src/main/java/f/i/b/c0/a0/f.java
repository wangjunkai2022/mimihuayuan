package f.i.b.c0.a0;

import f.i.b.e0.c;
import f.i.b.l;
import f.i.b.o;
import f.i.b.q;
import f.i.b.r;
import f.i.b.t;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

/* compiled from: JsonTreeWriter.java */
/* loaded from: classes.dex */
public final class f extends c {
    public static final Writer o = new a();
    public static final t p = new t("closed");

    /* renamed from: m  reason: collision with root package name */
    public String f6011m;

    /* renamed from: l  reason: collision with root package name */
    public final List<o> f6010l = new ArrayList();
    public o n = q.a;

    /* compiled from: JsonTreeWriter.java */
    /* loaded from: classes.dex */
    public static class a extends Writer {
        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i2, int i3) {
            throw new AssertionError();
        }
    }

    public f() {
        super(o);
    }

    @Override // f.i.b.e0.c
    public c E() throws IOException {
        if (this.f6010l.isEmpty() || this.f6011m != null) {
            throw new IllegalStateException();
        } else if (T() instanceof l) {
            List<o> list = this.f6010l;
            list.remove(list.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // f.i.b.e0.c
    public c F() throws IOException {
        if (this.f6010l.isEmpty() || this.f6011m != null) {
            throw new IllegalStateException();
        } else if (T() instanceof r) {
            List<o> list = this.f6010l;
            list.remove(list.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // f.i.b.e0.c
    public c G(String str) throws IOException {
        if (this.f6010l.isEmpty() || this.f6011m != null) {
            throw new IllegalStateException();
        } else if (T() instanceof r) {
            this.f6011m = str;
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // f.i.b.e0.c
    public c I() throws IOException {
        U(q.a);
        return this;
    }

    @Override // f.i.b.e0.c
    public c N(long j2) throws IOException {
        U(new t((Number) Long.valueOf(j2)));
        return this;
    }

    @Override // f.i.b.e0.c
    public c O(Boolean bool) throws IOException {
        if (bool == null) {
            U(q.a);
            return this;
        }
        U(new t(bool));
        return this;
    }

    @Override // f.i.b.e0.c
    public c P(Number number) throws IOException {
        if (number == null) {
            U(q.a);
            return this;
        }
        if (!this.f6094f) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        U(new t(number));
        return this;
    }

    @Override // f.i.b.e0.c
    public c Q(String str) throws IOException {
        if (str == null) {
            U(q.a);
            return this;
        }
        U(new t(str));
        return this;
    }

    @Override // f.i.b.e0.c
    public c R(boolean z) throws IOException {
        U(new t(Boolean.valueOf(z)));
        return this;
    }

    public final o T() {
        List<o> list = this.f6010l;
        return list.get(list.size() - 1);
    }

    public final void U(o oVar) {
        if (this.f6011m != null) {
            if (!(oVar instanceof q) || this.f6097i) {
                ((r) T()).c(this.f6011m, oVar);
            }
            this.f6011m = null;
        } else if (this.f6010l.isEmpty()) {
            this.n = oVar;
        } else {
            o T = T();
            if (T instanceof l) {
                ((l) T).a.add(oVar);
                return;
            }
            throw new IllegalStateException();
        }
    }

    @Override // f.i.b.e0.c, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f6010l.isEmpty()) {
            this.f6010l.add(p);
            return;
        }
        throw new IOException("Incomplete document");
    }

    @Override // f.i.b.e0.c
    public c e() throws IOException {
        l lVar = new l();
        U(lVar);
        this.f6010l.add(lVar);
        return this;
    }

    @Override // f.i.b.e0.c
    public c f() throws IOException {
        r rVar = new r();
        U(rVar);
        this.f6010l.add(rVar);
        return this;
    }

    @Override // f.i.b.e0.c, java.io.Flushable
    public void flush() throws IOException {
    }
}
