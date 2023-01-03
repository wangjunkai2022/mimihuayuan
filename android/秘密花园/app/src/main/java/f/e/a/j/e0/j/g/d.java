package f.e.a.j.e0.j.g;

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
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: OkHttpStreamFetcher.java */
/* loaded from: classes.dex */
public class d implements f.d.a.o.m.d<InputStream>, g {

    /* renamed from: h  reason: collision with root package name */
    public static final String f3855h = e.a("eAkrEB8Df1YHBVwCCg==");
    public final f.a a;
    public final f.d.a.o.o.g b;

    /* renamed from: c  reason: collision with root package name */
    public InputStream f3856c;

    /* renamed from: d  reason: collision with root package name */
    public i0 f3857d;

    /* renamed from: e  reason: collision with root package name */
    public d.a<? super InputStream> f3858e;

    /* renamed from: f  reason: collision with root package name */
    public volatile f f3859f;

    /* renamed from: g  reason: collision with root package name */
    public ByteArrayOutputStream f3860g = null;

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
            if (this.f3856c != null) {
                this.f3856c.close();
            }
            if (this.f3860g != null) {
                this.f3860g.close();
            }
        } catch (IOException unused) {
        }
        i0 i0Var = this.f3857d;
        if (i0Var != null) {
            i0Var.close();
        }
        this.f3858e = null;
    }

    @Override // i.g
    public void c(@NonNull f fVar, @NonNull h0 h0Var) {
        this.f3857d = h0Var.f6452h;
        if (h0Var.g()) {
            i0 i0Var = this.f3857d;
            h.s(i0Var, "Argument must not be null");
            InputStream bVar = new b(this.f3857d.d(), i0Var.g());
            this.f3856c = bVar;
            d.a<? super InputStream> aVar = this.f3858e;
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
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                IvParameterSpec ivParameterSpec = new IvParameterSpec(Base64.decode(e.a("WztRHV0gSgE7HFdQUxA7Jk0hDxIeBAQO"), 0));
                SecretKeySpec secretKeySpec = new SecretKeySpec(Base64.decode(e.a("QBMEExsWWHspUmU+UyNaB3w7NxQhIgQO"), 0), e.a("dicw"));
                try {
                    Cipher instance = Cipher.getInstance(e.a("dicwSygxehwjLXc0TToCD1MLDQM="));
                    instance.init(2, secretKeySpec, ivParameterSpec);
                    byteArray = instance.doFinal(byteArray);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                bVar = new ByteArrayInputStream(byteArray);
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            aVar.d(bVar);
            return;
        }
        this.f3858e.c(new f.d.a.o.e(h0Var.f6448d, h0Var.f6449e));
    }

    @Override // f.d.a.o.m.d
    public void cancel() {
        f fVar = this.f3859f;
        if (fVar != null) {
            fVar.cancel();
        }
    }

    @Override // i.g
    public void d(@NonNull f fVar, @NonNull IOException iOException) {
        if (Log.isLoggable(f3855h, 3)) {
            e.a("eAkrEB8DGVUSD1gCHEoXBBcNARAKGlcTAQNHEhQe");
        }
        this.f3858e.c(iOException);
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
        this.f3858e = aVar;
        this.f3859f = this.a.a(b);
        this.f3859f.W(this);
    }
}
