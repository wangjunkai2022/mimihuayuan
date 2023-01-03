package f.i.b.c0.a0;

import f.i.b.t;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

/* compiled from: JsonTreeWriter.java */
/* loaded from: classes.dex */
public final class f extends f.i.b.e0.c {
    public static final Writer o = new a();
    public static final t p = new t("closed");

    /* renamed from: l  reason: collision with root package name */
    public final List<f.i.b.o> f6010l;

    /* renamed from: m  reason: collision with root package name */
    public String f6011m;
    public f.i.b.o n;

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
        this.f6010l = new ArrayList();
        this.n = f.i.b.q.a;
    }

    @Override // f.i.b.e0.c
    public f.i.b.e0.c E() throws IOException {
        if (!this.f6010l.isEmpty() && this.f6011m == null) {
            if (T() instanceof f.i.b.l) {
                List<f.i.b.o> list = this.f6010l;
                list.remove(list.size() - 1);
                return this;
            }
            throw new IllegalStateException();
        }
        throw new IllegalStateException();
    }

    @Override // f.i.b.e0.c
    public f.i.b.e0.c F() throws IOException {
        if (!this.f6010l.isEmpty() && this.f6011m == null) {
            if (T() instanceof f.i.b.r) {
                List<f.i.b.o> list = this.f6010l;
                list.remove(list.size() - 1);
                return this;
            }
            throw new IllegalStateException();
        }
        throw new IllegalStateException();
    }

    @Override // f.i.b.e0.c
    public f.i.b.e0.c G(String str) throws IOException {
        if (!this.f6010l.isEmpty() && this.f6011m == null) {
            if (T() instanceof f.i.b.r) {
                this.f6011m = str;
                return this;
            }
            throw new IllegalStateException();
        }
        throw new IllegalStateException();
    }

    @Override // f.i.b.e0.c
    public f.i.b.e0.c I() throws IOException {
        U(f.i.b.q.a);
        return this;
    }

    @Override // f.i.b.e0.c
    public f.i.b.e0.c N(long j2) throws IOException {
        U(new t((Number) Long.valueOf(j2)));
        return this;
    }

    @Override // f.i.b.e0.c
    public f.i.b.e0.c O(Boolean bool) throws IOException {
        if (bool == null) {
            U(f.i.b.q.a);
            return this;
        }
        U(new t(bool));
        return this;
    }

    @Override // f.i.b.e0.c
    public f.i.b.e0.c P(Number number) throws IOException {
        if (number == null) {
            U(f.i.b.q.a);
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
    public f.i.b.e0.c Q(String str) throws IOException {
        if (str == null) {
            U(f.i.b.q.a);
            return this;
        }
        U(new t(str));
        return this;
    }

    @Override // f.i.b.e0.c
    public f.i.b.e0.c R(boolean z) throws IOException {
        U(new t(Boolean.valueOf(z)));
        return this;
    }

    public final f.i.b.o T() {
        List<f.i.b.o> list = this.f6010l;
        return list.get(list.size() - 1);
    }

    public final void U(f.i.b.o oVar) {
        if (this.f6011m != null) {
            if (!(oVar instanceof f.i.b.q) || this.f6097i) {
                ((f.i.b.r) T()).c(this.f6011m, oVar);
            }
            this.f6011m = null;
        } else if (this.f6010l.isEmpty()) {
            this.n = oVar;
        } else {
            f.i.b.o T = T();
            if (T instanceof f.i.b.l) {
                ((f.i.b.l) T).a.add(oVar);
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
    public f.i.b.e0.c e() throws IOException {
        f.i.b.l lVar = new f.i.b.l();
        U(lVar);
        this.f6010l.add(lVar);
        return this;
    }

    @Override // f.i.b.e0.c
    public f.i.b.e0.c f() throws IOException {
        f.i.b.r rVar = new f.i.b.r();
        U(rVar);
        this.f6010l.add(rVar);
        return this;
    }

    @Override // f.i.b.e0.c, java.io.Flushable
    public void flush() throws IOException {
    }
}
