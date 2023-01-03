package f.i.a.a.h1.u0;

import android.net.Uri;
import androidx.annotation.Nullable;
import c.a.a.b.g.h;
import f.i.a.a.l1.i0;
import f.i.a.a.l1.m;
import f.i.a.a.l1.o;
import f.i.a.a.l1.p;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: Aes128DataSource.java */
/* loaded from: classes.dex */
public class d implements m {
    public final m a;
    public final byte[] b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f5025c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public CipherInputStream f5026d;

    public d(m mVar, byte[] bArr, byte[] bArr2) {
        this.a = mVar;
        this.b = bArr;
        this.f5025c = bArr2;
    }

    @Override // f.i.a.a.l1.m
    public final Map<String, List<String>> a() {
        return this.a.a();
    }

    @Override // f.i.a.a.l1.m
    public final long b(p pVar) throws IOException {
        try {
            Cipher instance = Cipher.getInstance("AES/CBC/PKCS7Padding");
            try {
                instance.init(2, new SecretKeySpec(this.b, "AES"), new IvParameterSpec(this.f5025c));
                o oVar = new o(this.a, pVar);
                this.f5026d = new CipherInputStream(oVar, instance);
                if (oVar.f5600d) {
                    return -1;
                }
                oVar.a.b(oVar.b);
                oVar.f5600d = true;
                return -1;
            } catch (InvalidAlgorithmParameterException | InvalidKeyException e2) {
                throw new RuntimeException(e2);
            }
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e3) {
            throw new RuntimeException(e3);
        }
    }

    @Override // f.i.a.a.l1.m
    public final void c(i0 i0Var) {
        this.a.c(i0Var);
    }

    @Override // f.i.a.a.l1.m
    public void close() throws IOException {
        if (this.f5026d != null) {
            this.f5026d = null;
            this.a.close();
        }
    }

    @Override // f.i.a.a.l1.m
    @Nullable
    public final Uri d() {
        return this.a.d();
    }

    @Override // f.i.a.a.l1.m
    public final int read(byte[] bArr, int i2, int i3) throws IOException {
        h.t(this.f5026d);
        int read = this.f5026d.read(bArr, i2, i3);
        if (read < 0) {
            return -1;
        }
        return read;
    }
}
