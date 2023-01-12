package f.e.a.j.l0.h.e;

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

/* compiled from: OkHttpStreamFetcher.java */
/* loaded from: classes.dex */
public class a implements f.d.a.o.m.d<InputStream>, g {

    /* renamed from: h  reason: collision with root package name */
    public static final String f3983h = e.a("eAkrEB8Df1YHBVwCCg==");
    public final f.a a;
    public final f.d.a.o.o.g b;

    /* renamed from: c  reason: collision with root package name */
    public InputStream f3984c;

    /* renamed from: d  reason: collision with root package name */
    public i0 f3985d;

    /* renamed from: e  reason: collision with root package name */
    public d.a<? super InputStream> f3986e;

    /* renamed from: f  reason: collision with root package name */
    public volatile f f3987f;

    /* renamed from: g  reason: collision with root package name */
    public ByteArrayOutputStream f3988g = null;

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
            if (this.f3984c != null) {
                this.f3984c.close();
            }
            if (this.f3988g != null) {
                this.f3988g.close();
            }
        } catch (IOException unused) {
        }
        i0 i0Var = this.f3985d;
        if (i0Var != null) {
            i0Var.close();
        }
        this.f3986e = null;
    }

    @Override // i.g
    public void c(@NonNull f fVar, @NonNull h0 h0Var) {
        Closeable closeable;
        this.f3985d = h0Var.f6527h;
        if (h0Var.g()) {
            i0 i0Var = this.f3985d;
            h.s(i0Var, "Argument must not be null");
            f.d.a.u.b bVar = new f.d.a.u.b(this.f3985d.d(), i0Var.g());
            this.f3984c = bVar;
            d.a<? super InputStream> aVar = this.f3986e;
            try {
                String h2 = h(g(bVar));
                closeable = new ByteArrayInputStream(Base64.decode(h2.substring(h2.indexOf(44) + 1), 0));
            } catch (Exception e2) {
                e2.printStackTrace();
                closeable = this.f3984c;
            }
            aVar.d(closeable);
            return;
        }
        this.f3986e.c(new f.d.a.o.e(h0Var.f6523d, h0Var.f6524e));
    }

    @Override // f.d.a.o.m.d
    public void cancel() {
        f fVar = this.f3987f;
        if (fVar != null) {
            fVar.cancel();
        }
    }

    @Override // i.g
    public void d(@NonNull f fVar, @NonNull IOException iOException) {
        if (Log.isLoggable(f3983h, 3)) {
            e.a("eAkrEB8DGVUSD1gCHEoXBBcNARAKGlcTAQNHEhQe");
        }
        this.f3986e.c(iOException);
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
        this.f3986e = aVar;
        this.f3987f = this.a.a(b);
        this.f3987f.W(this);
    }

    public final String g(InputStream inputStream) {
        try {
            try {
                this.f3988g = new ByteArrayOutputStream();
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    this.f3988g.write(bArr, 0, read);
                }
                String byteArrayOutputStream = this.f3988g.toString(e.a("YjYlSVM="));
                if (this.f3988g == null) {
                    return byteArrayOutputStream;
                }
                try {
                    this.f3988g.close();
                    return byteArrayOutputStream;
                } catch (IOException e2) {
                    e2.printStackTrace();
                    return byteArrayOutputStream;
                }
            } catch (IOException e3) {
                e3.printStackTrace();
                ByteArrayOutputStream byteArrayOutputStream2 = this.f3988g;
                if (byteArrayOutputStream2 != null) {
                    try {
                        byteArrayOutputStream2.close();
                        return null;
                    } catch (IOException e4) {
                        e4.printStackTrace();
                        return null;
                    }
                }
                return null;
            }
        } catch (Throwable th) {
            ByteArrayOutputStream byteArrayOutputStream3 = this.f3988g;
            if (byteArrayOutputStream3 != null) {
                try {
                    byteArrayOutputStream3.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
    }

    public final String h(String str) {
        try {
            return str.replace(e.a("HUg="), e.a("Cg==")).replace(e.a("E0Y="), e.a("fQ==")).replace(e.a("FEE="), e.a("fw==")).replace(e.a("aTw="), e.a("dg=="));
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }
}
