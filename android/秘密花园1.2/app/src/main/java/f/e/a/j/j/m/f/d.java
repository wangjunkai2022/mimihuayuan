package f.e.a.j.j.m.f;

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
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: OkHttpStreamFetcher.java */
/* loaded from: classes.dex */
public class d implements f.d.a.o.m.d<InputStream>, g {

    /* renamed from: h  reason: collision with root package name */
    public static final String f3964h = e.a("eAkrEB8Df1YHBVwCCg==");
    public final f.a a;
    public final f.d.a.o.o.g b;

    /* renamed from: c  reason: collision with root package name */
    public InputStream f3965c;

    /* renamed from: d  reason: collision with root package name */
    public i0 f3966d;

    /* renamed from: e  reason: collision with root package name */
    public d.a<? super InputStream> f3967e;

    /* renamed from: f  reason: collision with root package name */
    public volatile f f3968f;

    /* renamed from: g  reason: collision with root package name */
    public ByteArrayOutputStream f3969g = null;

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
            if (this.f3965c != null) {
                this.f3965c.close();
            }
            if (this.f3969g != null) {
                this.f3969g.close();
            }
        } catch (IOException unused) {
        }
        i0 i0Var = this.f3966d;
        if (i0Var != null) {
            i0Var.close();
        }
        this.f3967e = null;
    }

    @Override // i.g
    public void c(@NonNull f fVar, @NonNull h0 h0Var) {
        this.f3966d = h0Var.f6527h;
        if (h0Var.g()) {
            i0 i0Var = this.f3966d;
            h.s(i0Var, "Argument must not be null");
            InputStream bVar = new f.d.a.u.b(this.f3966d.d(), i0Var.g());
            this.f3965c = bVar;
            d.a<? super InputStream> aVar = this.f3967e;
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
                byte[] copyOfRange = Arrays.copyOfRange(byteArray, 0, 16);
                byte[] copyOfRange2 = Arrays.copyOfRange(byteArray, 16, byteArray.length);
                byte[][] g2 = g(32, 16, null, e.a("UlVaUF1GWlURBF0KHwEAHkQLDgceFlJXQAQEUU4LVQ4=").getBytes(e.a("YjYlSVM=")), 0);
                IvParameterSpec ivParameterSpec = new IvParameterSpec(copyOfRange);
                SecretKeySpec secretKeySpec = new SecretKeySpec(g2[0], e.a("dicw"));
                Cipher cipher = Cipher.getInstance(e.a("dicwSyg1exw9CWQGHA4KBVA="));
                cipher.init(2, secretKeySpec, ivParameterSpec);
                bVar = new ByteArrayInputStream(cipher.doFinal(copyOfRange2));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            aVar.d(bVar);
            return;
        }
        this.f3967e.c(new f.d.a.o.e(h0Var.f6523d, h0Var.f6524e));
    }

    @Override // f.d.a.o.m.d
    public void cancel() {
        f fVar = this.f3968f;
        if (fVar != null) {
            fVar.cancel();
        }
    }

    @Override // i.g
    public void d(@NonNull f fVar, @NonNull IOException iOException) {
        if (Log.isLoggable(f3964h, 3)) {
            e.a("eAkrEB8DGVUSD1gCHEoXBBcNARAKGlcTAQNHEhQe");
        }
        this.f3967e.c(iOException);
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
        this.f3967e = aVar;
        this.f3968f = this.a.a(b);
        this.f3968f.W(this);
    }

    public byte[][] g(int i2, int i3, byte[] bArr, byte[] bArr2, int i4) throws Exception {
        MessageDigest messageDigest = MessageDigest.getInstance(e.a("WgZW"));
        int i5 = i2;
        byte[] bArr3 = new byte[i5];
        int i6 = i3;
        byte[] bArr4 = new byte[i6];
        byte[][] bArr5 = {bArr3, bArr4};
        if (bArr2 == null) {
            return bArr5;
        }
        byte[] bArr6 = null;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            messageDigest.reset();
            int i10 = i7 + 1;
            if (i7 > 0) {
                messageDigest.update(bArr6);
            }
            messageDigest.update(bArr2);
            bArr6 = messageDigest.digest();
            for (int i11 = 1; i11 < i4; i11++) {
                messageDigest.reset();
                messageDigest.update(bArr6);
                bArr6 = messageDigest.digest();
            }
            int i12 = 0;
            if (i5 > 0) {
                while (i5 != 0 && i12 != bArr6.length) {
                    bArr3[i8] = bArr6[i12];
                    i5--;
                    i12++;
                    i8++;
                }
            }
            if (i6 > 0 && i12 != bArr6.length) {
                while (i6 != 0 && i12 != bArr6.length) {
                    bArr4[i9] = bArr6[i12];
                    i6--;
                    i12++;
                    i9++;
                }
            }
            if (i5 == 0 && i6 == 0) {
                break;
            }
            i7 = i10;
        }
        for (int i13 = 0; i13 < bArr6.length; i13++) {
            bArr6[i13] = 0;
        }
        return bArr5;
    }
}
