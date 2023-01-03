package f.i.a.a.l1.k0;

import androidx.recyclerview.widget.RecyclerView;
import f.i.a.a.l1.k0.b;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.y;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: CacheDataSink.java */
/* loaded from: classes.dex */
public final class c implements f.i.a.a.l1.k {
    public final b a;
    public final long b;

    /* renamed from: c  reason: collision with root package name */
    public final int f5538c;

    /* renamed from: d  reason: collision with root package name */
    public f.i.a.a.l1.p f5539d;

    /* renamed from: e  reason: collision with root package name */
    public long f5540e;

    /* renamed from: f  reason: collision with root package name */
    public File f5541f;

    /* renamed from: g  reason: collision with root package name */
    public OutputStream f5542g;

    /* renamed from: h  reason: collision with root package name */
    public FileOutputStream f5543h;

    /* renamed from: i  reason: collision with root package name */
    public long f5544i;

    /* renamed from: j  reason: collision with root package name */
    public long f5545j;

    /* renamed from: k  reason: collision with root package name */
    public y f5546k;

    /* compiled from: CacheDataSink.java */
    /* loaded from: classes.dex */
    public static class a extends b.a {
        public a(IOException iOException) {
            super(iOException);
        }
    }

    public c(b bVar, long j2, int i2) {
        c.a.a.b.g.h.w(j2 > 0 || j2 == -1, "fragmentSize must be positive or C.LENGTH_UNSET.");
        int i3 = (j2 > (-1L) ? 1 : (j2 == (-1L) ? 0 : -1));
        if (i3 != 0) {
            int i4 = (j2 > 2097152L ? 1 : (j2 == 2097152L ? 0 : -1));
        }
        if (bVar != null) {
            this.a = bVar;
            this.b = i3 == 0 ? RecyclerView.FOREVER_NS : j2;
            this.f5538c = i2;
            return;
        }
        throw null;
    }

    @Override // f.i.a.a.l1.k
    public void a(byte[] bArr, int i2, int i3) throws a {
        if (this.f5539d == null) {
            return;
        }
        int i4 = 0;
        while (i4 < i3) {
            try {
                if (this.f5544i == this.f5540e) {
                    c();
                    d();
                }
                int min = (int) Math.min(i3 - i4, this.f5540e - this.f5544i);
                this.f5542g.write(bArr, i2 + i4, min);
                i4 += min;
                long j2 = min;
                this.f5544i += j2;
                this.f5545j += j2;
            } catch (IOException e2) {
                throw new a(e2);
            }
        }
    }

    @Override // f.i.a.a.l1.k
    public void b(f.i.a.a.l1.p pVar) throws a {
        if (pVar.f5606f == -1 && pVar.b(4)) {
            this.f5539d = null;
            return;
        }
        this.f5539d = pVar;
        this.f5540e = pVar.b(16) ? this.b : RecyclerView.FOREVER_NS;
        this.f5545j = 0L;
        try {
            d();
        } catch (IOException e2) {
            throw new a(e2);
        }
    }

    public final void c() throws IOException {
        OutputStream outputStream = this.f5542g;
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.flush();
            h0.l(this.f5542g);
            this.f5542g = null;
            File file = this.f5541f;
            this.f5541f = null;
            this.a.b(file, this.f5544i);
        } catch (Throwable th) {
            h0.l(this.f5542g);
            this.f5542g = null;
            File file2 = this.f5541f;
            this.f5541f = null;
            file2.delete();
            throw th;
        }
    }

    @Override // f.i.a.a.l1.k
    public void close() throws a {
        if (this.f5539d == null) {
            return;
        }
        try {
            c();
        } catch (IOException e2) {
            throw new a(e2);
        }
    }

    public final void d() throws IOException {
        long j2 = this.f5539d.f5606f;
        long min = j2 != -1 ? Math.min(j2 - this.f5545j, this.f5540e) : -1L;
        b bVar = this.a;
        f.i.a.a.l1.p pVar = this.f5539d;
        this.f5541f = bVar.a(pVar.f5607g, pVar.f5604d + this.f5545j, min);
        FileOutputStream fileOutputStream = new FileOutputStream(this.f5541f);
        this.f5543h = fileOutputStream;
        if (this.f5538c > 0) {
            y yVar = this.f5546k;
            if (yVar == null) {
                this.f5546k = new y(this.f5543h, this.f5538c);
            } else {
                yVar.d(fileOutputStream);
            }
            this.f5542g = this.f5546k;
        } else {
            this.f5542g = fileOutputStream;
        }
        this.f5544i = 0L;
    }
}
