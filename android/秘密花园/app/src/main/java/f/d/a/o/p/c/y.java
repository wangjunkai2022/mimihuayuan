package f.d.a.o.p.c;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import f.d.a.o.h;
import f.d.a.o.j;
import f.d.a.o.n.b0.b;
import f.d.a.o.n.b0.d;
import f.d.a.o.n.w;
import f.d.a.o.p.c.n;
import f.d.a.u.c;
import f.d.a.u.g;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: StreamBitmapDecoder.java */
/* loaded from: classes.dex */
public class y implements j<InputStream, Bitmap> {
    public final n a;
    public final b b;

    /* compiled from: StreamBitmapDecoder.java */
    /* loaded from: classes.dex */
    public static class a implements n.b {
        public final v a;
        public final c b;

        public a(v vVar, c cVar) {
            this.a = vVar;
            this.b = cVar;
        }

        @Override // f.d.a.o.p.c.n.b
        public void a(d dVar, Bitmap bitmap) throws IOException {
            IOException iOException = this.b.b;
            if (iOException != null) {
                if (bitmap != null) {
                    dVar.b(bitmap);
                }
                throw iOException;
            }
        }

        @Override // f.d.a.o.p.c.n.b
        public void b() {
            v vVar = this.a;
            synchronized (vVar) {
                vVar.f3704c = vVar.a.length;
            }
        }
    }

    public y(n nVar, b bVar) {
        this.a = nVar;
        this.b = bVar;
    }

    /* Return type fixed from 'f.d.a.o.n.w' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, f.d.a.o.h] */
    @Override // f.d.a.o.j
    public w<Bitmap> a(@NonNull InputStream inputStream, int i2, int i3, @NonNull h hVar) throws IOException {
        v vVar;
        boolean z;
        c poll;
        InputStream inputStream2 = inputStream;
        if (inputStream2 instanceof v) {
            vVar = (v) inputStream2;
            z = false;
        } else {
            vVar = new v(inputStream2, this.b);
            z = true;
        }
        synchronized (c.f3784c) {
            poll = c.f3784c.poll();
        }
        if (poll == null) {
            poll = new c();
        }
        poll.a = vVar;
        try {
            return this.a.a(new g(poll), i2, i3, hVar, new a(vVar, poll));
        } finally {
            poll.d();
            if (z) {
                vVar.e();
            }
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, f.d.a.o.h] */
    @Override // f.d.a.o.j
    public boolean b(@NonNull InputStream inputStream, @NonNull h hVar) throws IOException {
        if (this.a != null) {
            return true;
        }
        throw null;
    }
}
