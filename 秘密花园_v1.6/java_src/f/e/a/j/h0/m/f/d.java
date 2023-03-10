package f.e.a.j.h0.m.f;

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
    public static final String f3958h = e.a("eAkrEB8Df1YHBVwCCg==");
    public final f.a a;
    public final f.d.a.o.o.g b;

    /* renamed from: c  reason: collision with root package name */
    public InputStream f3959c;

    /* renamed from: d  reason: collision with root package name */
    public i0 f3960d;

    /* renamed from: e  reason: collision with root package name */
    public d.a<? super InputStream> f3961e;

    /* renamed from: f  reason: collision with root package name */
    public volatile f f3962f;

    /* renamed from: g  reason: collision with root package name */
    public ByteArrayOutputStream f3963g = null;

    public d(f.a aVar, f.d.a.o.o.g gVar) {
        this.a = aVar;
        this.b = gVar;
    }

    public static byte[] g(String str) {
        byte[] bArr;
        int length = str.length();
        if (length % 2 == 1) {
            length++;
            bArr = new byte[length / 2];
            str = e.a("Bw==") + str;
        } else {
            bArr = new byte[length / 2];
        }
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int i4 = i2 + 2;
            bArr[i3] = (byte) Integer.parseInt(str.substring(i2, i4), 16);
            i3++;
            i2 = i4;
        }
        return bArr;
    }

    @Override // f.d.a.o.m.d
    @NonNull
    public Class<InputStream> a() {
        return InputStream.class;
    }

    @Override // f.d.a.o.m.d
    public void b() {
        try {
            if (this.f3959c != null) {
                this.f3959c.close();
            }
            if (this.f3963g != null) {
                this.f3963g.close();
            }
        } catch (IOException unused) {
        }
        i0 i0Var = this.f3960d;
        if (i0Var != null) {
            i0Var.close();
        }
        this.f3961e = null;
    }

    @Override // i.g
    public void c(@NonNull f fVar, @NonNull h0 h0Var) {
        this.f3960d = h0Var.f6536h;
        if (h0Var.g()) {
            i0 i0Var = this.f3960d;
            h.s(i0Var, "Argument must not be null");
            InputStream bVar = new f.d.a.u.b(this.f3960d.d(), i0Var.g());
            this.f3959c = bVar;
            d.a<? super InputStream> aVar = this.f3961e;
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
                String a = e.a("dVAlV1NHCwtFUHJeTVJQLwYnICFdQnoHNlYBUjtYVl4=");
                String a2 = e.a("clJSIS82DwBAV3BUTyslKHRVISFbRgwKRCICUkwuUVk=");
                SecretKeySpec secretKeySpec = new SecretKeySpec(g(a), e.a("dicw"));
                IvParameterSpec ivParameterSpec = new IvParameterSpec(g(a2));
                try {
                    Cipher cipher = Cipher.getInstance(e.a("dicwSygxehwjLXc0TToCD1MLDQM="));
                    cipher.init(2, secretKeySpec, ivParameterSpec);
                    byteArray = cipher.doFinal(byteArray);
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
        this.f3961e.c(new f.d.a.o.e(h0Var.f6532d, h0Var.f6533e));
    }

    @Override // f.d.a.o.m.d
    public void cancel() {
        f fVar = this.f3962f;
        if (fVar != null) {
            fVar.cancel();
        }
    }

    @Override // i.g
    public void d(@NonNull f fVar, @NonNull IOException iOException) {
        if (Log.isLoggable(f3958h, 3)) {
            e.a("eAkrEB8DGVUSD1gCHEoXBBcNARAKGlcTAQNHEhQe");
        }
        this.f3961e.c(iOException);
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
        this.f3961e = aVar;
        this.f3962f = this.a.a(b);
        this.f3962f.W(this);
    }
}
