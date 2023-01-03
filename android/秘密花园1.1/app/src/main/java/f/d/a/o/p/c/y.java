package f.d.a.o.p.c;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import f.d.a.o.p.c.n;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: StreamBitmapDecoder.java */
/* loaded from: classes.dex */
public class y implements f.d.a.o.j<InputStream, Bitmap> {
    public final n a;
    public final f.d.a.o.n.b0.b b;

    /* compiled from: StreamBitmapDecoder.java */
    /* loaded from: classes.dex */
    public static class a implements n.b {
        public final v a;
        public final f.d.a.u.c b;

        public a(v vVar, f.d.a.u.c cVar) {
            this.a = vVar;
            this.b = cVar;
        }

        @Override // f.d.a.o.p.c.n.b
        public void a(f.d.a.o.n.b0.d dVar, Bitmap bitmap) throws IOException {
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

    public y(n nVar, f.d.a.o.n.b0.b bVar) {
        this.a = nVar;
        this.b = bVar;
    }

    @Override // f.d.a.o.j
    public f.d.a.o.n.w<Bitmap> a(@NonNull InputStream inputStream, int i2, int i3, @NonNull f.d.a.o.h hVar) throws IOException {
        v vVar;
        boolean z;
        f.d.a.u.c poll;
        InputStream inputStream2 = inputStream;
        if (inputStream2 instanceof v) {
            vVar = (v) inputStream2;
            z = false;
        } else {
            vVar = new v(inputStream2, this.b);
            z = true;
        }
        synchronized (f.d.a.u.c.f3784c) {
            poll = f.d.a.u.c.f3784c.poll();
        }
        if (poll == null) {
            poll = new f.d.a.u.c();
        }
        poll.a = vVar;
        try {
            return this.a.a(new f.d.a.u.g(poll), i2, i3, hVar, new a(vVar, poll));
        } finally {
            poll.d();
            if (z) {
                vVar.e();
            }
        }
    }

    @Override // f.d.a.o.j
    public boolean b(@NonNull InputStream inputStream, @NonNull f.d.a.o.h hVar) throws IOException {
        if (this.a != null) {
            return true;
        }
        throw null;
    }
}
