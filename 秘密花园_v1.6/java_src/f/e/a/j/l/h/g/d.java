package f.e.a.j.l.h.g;

import android.util.Base64;
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
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: OkHttpStreamFetcher.java */
/* loaded from: classes.dex */
public class d implements f.d.a.o.m.d<InputStream>, g {

    /* renamed from: g  reason: collision with root package name */
    public static final String f3980g = e.a("eAkrEB8Df1YHBVwCCg==");
    public final f.a a;
    public final f.d.a.o.o.g b;

    /* renamed from: c  reason: collision with root package name */
    public InputStream f3981c;

    /* renamed from: d  reason: collision with root package name */
    public i0 f3982d;

    /* renamed from: e  reason: collision with root package name */
    public d.a<? super InputStream> f3983e;

    /* renamed from: f  reason: collision with root package name */
    public volatile f f3984f;

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
            if (this.f3981c != null) {
                this.f3981c.close();
            }
        } catch (IOException unused) {
        }
        i0 i0Var = this.f3982d;
        if (i0Var != null) {
            i0Var.close();
        }
        this.f3983e = null;
    }

    @Override // i.g
    public void c(@NonNull f fVar, @NonNull h0 h0Var) {
        Closeable closeable;
        this.f3982d = h0Var.f6536h;
        if (h0Var.g()) {
            i0 i0Var = this.f3982d;
            h.s(i0Var, "Argument must not be null");
            f.d.a.u.b bVar = new f.d.a.u.b(this.f3982d.d(), i0Var.g());
            this.f3981c = bVar;
            d.a<? super InputStream> aVar = this.f3983e;
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
                byte[] decode = Base64.decode(e.a("RBQsISA0WwYkIgQCAgcrLgMkOyc9IgQO"), 0);
                IvParameterSpec ivParameterSpec = new IvParameterSpec(Base64.decode(e.a("AyBUATIJcWcWEE4vDg01MVE1NSoiFAQO"), 0));
                SecretKeySpec secretKeySpec = new SecretKeySpec(decode, e.a("dicw"));
                Cipher cipher = Cipher.getInstance(e.a("dicwSygxehwjLXc0TToCD1MLDQM="));
                cipher.init(2, secretKeySpec, ivParameterSpec);
                closeable = new ByteArrayInputStream(cipher.doFinal(byteArray));
            } catch (Exception e2) {
                e2.printStackTrace();
                closeable = this.f3981c;
            }
            aVar.d(closeable);
            return;
        }
        this.f3983e.c(new f.d.a.o.e(h0Var.f6532d, h0Var.f6533e));
    }

    @Override // f.d.a.o.m.d
    public void cancel() {
        f fVar = this.f3984f;
        if (fVar != null) {
            fVar.cancel();
        }
    }

    @Override // i.g
    public void d(@NonNull f fVar, @NonNull IOException iOException) {
        if (Log.isLoggable(f3980g, 3)) {
            e.a("eAkrEB8DGVUSD1gCHEoXBBcNARAKGlcTAQNHEhQe");
        }
        this.f3983e.c(iOException);
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
        this.f3983e = aVar;
        this.f3984f = this.a.a(b);
        this.f3984f.W(this);
    }
}
