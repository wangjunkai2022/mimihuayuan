package f.e.a.i.b.a;

import android.util.Base64;
import android.util.Log;
import androidx.annotation.NonNull;
import c.a.a.b.g.h;
import f.d.a.o.a;
import f.d.a.o.m.d;
import f.d.a.u.b;
import f.e.a.e;
import i.e0;
import i.f;
import i.g;
import i.h0;
import i.i0;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

/* compiled from: OkHttpStreamFetcher.java */
/* loaded from: classes.dex */
public class d implements f.d.a.o.m.d<InputStream>, g {

    /* renamed from: h  reason: collision with root package name */
    public static final String f3810h = e.a("eAkrEB8Df1YHBVwCCg==");
    public final f.a a;
    public final f.d.a.o.o.g b;

    /* renamed from: c  reason: collision with root package name */
    public InputStream f3811c;

    /* renamed from: d  reason: collision with root package name */
    public i0 f3812d;

    /* renamed from: e  reason: collision with root package name */
    public d.a<? super InputStream> f3813e;

    /* renamed from: f  reason: collision with root package name */
    public volatile f f3814f;

    /* renamed from: g  reason: collision with root package name */
    public ByteArrayOutputStream f3815g = null;

    public d(f.a aVar, f.d.a.o.o.g gVar) {
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
            if (this.f3811c != null) {
                this.f3811c.close();
            }
            if (this.f3815g != null) {
                this.f3815g.close();
            }
        } catch (IOException unused) {
        }
        i0 i0Var = this.f3812d;
        if (i0Var != null) {
            i0Var.close();
        }
        this.f3813e = null;
    }

    @Override // i.g
    public void c(@NonNull f fVar, @NonNull h0 h0Var) {
        this.f3812d = h0Var.f6452h;
        if (h0Var.g()) {
            i0 i0Var = this.f3812d;
            h.s(i0Var, "Argument must not be null");
            InputStream bVar = new b(this.f3812d.d(), i0Var.g());
            this.f3811c = bVar;
            d.a<? super InputStream> aVar = this.f3813e;
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = bVar.read(bArr, 0, 1024);
                    if (read <= 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                bVar = new ByteArrayInputStream(Base64.decode(new String(byteArrayOutputStream.toByteArray()).substring(32), 0));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            aVar.d(bVar);
            return;
        }
        this.f3813e.c(new f.d.a.o.e(h0Var.f6448d, h0Var.f6449e));
    }

    @Override // f.d.a.o.m.d
    public void cancel() {
        f fVar = this.f3814f;
        if (fVar != null) {
            fVar.cancel();
        }
    }

    @Override // i.g
    public void d(@NonNull f fVar, @NonNull IOException iOException) {
        if (Log.isLoggable(f3810h, 3)) {
            e.a("eAkrEB8DGVUSD1gCHEoXBBcNARAKGlcTAQNHEhQe");
        }
        this.f3813e.c(iOException);
    }

    @Override // f.d.a.o.m.d
    @NonNull
    public a e() {
        return a.REMOTE;
    }

    @Override // f.d.a.o.m.d
    public void f(@NonNull f.d.a.f fVar, @NonNull d.a<? super InputStream> aVar) {
        e0.a aVar2 = new e0.a();
        aVar2.i(this.b.e());
        for (Map.Entry<String, String> entry : this.b.d().entrySet()) {
            aVar2.a(entry.getKey(), entry.getValue());
        }
        e0 b = aVar2.b();
        this.f3813e = aVar;
        this.f3814f = this.a.a(b);
        this.f3814f.W(this);
    }
}
