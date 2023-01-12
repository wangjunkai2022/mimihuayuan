package f.e.a.j.n0.c.f;

import android.util.Log;
import androidx.annotation.NonNull;
import c.a.a.b.g.h;
import f.d.a.o.m.d;
import f.e.a.e;
import i.e0;
import i.f;
import i.g;
import i.h0;
import i.i0;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

/* compiled from: OkHttpStreamFetcher.java */
/* loaded from: classes.dex */
public class a implements f.d.a.o.m.d<InputStream>, g {

    /* renamed from: g  reason: collision with root package name */
    public static final String f4002g = e.a("eAkrEB8Df1YHBVwCCg==");
    public final f.a a;
    public final f.d.a.o.o.g b;

    /* renamed from: c  reason: collision with root package name */
    public InputStream f4003c;

    /* renamed from: d  reason: collision with root package name */
    public i0 f4004d;

    /* renamed from: e  reason: collision with root package name */
    public d.a<? super InputStream> f4005e;

    /* renamed from: f  reason: collision with root package name */
    public volatile f f4006f;

    public a(f.a aVar, f.d.a.o.o.g gVar) {
        this.a = aVar;
        this.b = gVar;
    }

    @Override // f.d.a.o.m.d
    @NonNull
    public Class<InputStream> a() {
        return InputStream.class;
    }

    @Override // f.d.a.o.m.d
    public void b() {
        try {
            if (this.f4003c != null) {
                this.f4003c.close();
            }
        } catch (IOException unused) {
        }
        i0 i0Var = this.f4004d;
        if (i0Var != null) {
            i0Var.close();
        }
        this.f4005e = null;
    }

    @Override // i.g
    public void c(@NonNull f fVar, @NonNull h0 h0Var) {
        Closeable closeable;
        this.f4004d = h0Var.f6527h;
        if (h0Var.g()) {
            i0 i0Var = this.f4004d;
            h.s(i0Var, "Argument must not be null");
            this.f4003c = new f.d.a.u.b(this.f4004d.d(), i0Var.g());
            d.a<? super InputStream> aVar = this.f4005e;
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[1];
                this.f4003c.read(bArr);
                byte b = bArr[0];
                byte[] bArr2 = new byte[4096];
                while (true) {
                    int read = this.f4003c.read(bArr2);
                    if (read == -1) {
                        break;
                    }
                    for (int i2 = 0; i2 < 4096; i2++) {
                        bArr2[i2] = (byte) (bArr2[i2] ^ b);
                    }
                    byteArrayOutputStream.write(bArr2, 0, read);
                }
                closeable = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
            } catch (Exception e2) {
                e2.printStackTrace();
                closeable = this.f4003c;
            }
            aVar.d(closeable);
            return;
        }
        this.f4005e.c(new f.d.a.o.e(h0Var.f6523d, h0Var.f6524e));
    }

    @Override // f.d.a.o.m.d
    public void cancel() {
        f fVar = this.f4006f;
        if (fVar != null) {
            fVar.cancel();
        }
    }

    @Override // i.g
    public void d(@NonNull f fVar, @NonNull IOException iOException) {
        if (Log.isLoggable(f4002g, 3)) {
            e.a("eAkrEB8DGVUSD1gCHEoXBBcNARAKGlcTAQNHEhQe");
        }
        this.f4005e.c(iOException);
    }

    @Override // f.d.a.o.m.d
    @NonNull
    public f.d.a.o.a e() {
        return f.d.a.o.a.REMOTE;
    }

    @Override // f.d.a.o.m.d
    public void f(@NonNull f.d.a.f fVar, @NonNull d.a<? super InputStream> aVar) {
        e0.a aVar2 = new e0.a();
        aVar2.i(this.b.e());
        for (Map.Entry<String, String> entry : this.b.d().entrySet()) {
            aVar2.a(entry.getKey(), entry.getValue());
        }
        e0 b = aVar2.b();
        this.f4005e = aVar;
        this.f4006f = this.a.a(b);
        this.f4006f.W(this);
    }
}
