package f.e.a.j.u.e.f;

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
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

/* compiled from: OkHttpStreamFetcher.java */
/* loaded from: classes.dex */
public class d implements f.d.a.o.m.d<InputStream>, g {

    /* renamed from: h  reason: collision with root package name */
    public static final String f4026h = e.a("eAkrEB8Df1YHBVwCCg==");
    public final f.a a;
    public final f.d.a.o.o.g b;

    /* renamed from: c  reason: collision with root package name */
    public InputStream f4027c;

    /* renamed from: d  reason: collision with root package name */
    public i0 f4028d;

    /* renamed from: e  reason: collision with root package name */
    public d.a<? super InputStream> f4029e;

    /* renamed from: f  reason: collision with root package name */
    public volatile f f4030f;

    /* renamed from: g  reason: collision with root package name */
    public ByteArrayOutputStream f4031g = null;

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
            if (this.f4027c != null) {
                this.f4027c.close();
            }
            if (this.f4031g != null) {
                this.f4031g.close();
            }
        } catch (IOException unused) {
        }
        i0 i0Var = this.f4028d;
        if (i0Var != null) {
            i0Var.close();
        }
        this.f4029e = null;
    }

    @Override // i.g
    public void c(@NonNull f fVar, @NonNull h0 h0Var) {
        this.f4028d = h0Var.f6527h;
        if (h0Var.g()) {
            i0 i0Var = this.f4028d;
            h.s(i0Var, "Argument must not be null");
            this.f4027c = new f.d.a.u.b(this.f4028d.d(), i0Var.g());
            if (h0Var.b.b.f6854j.endsWith(e.a("GQEGBg=="))) {
                this.f4029e.d(f.e.a.j.u.e.a.b(this.f4027c));
                return;
            } else {
                this.f4029e.d(this.f4027c);
                return;
            }
        }
        this.f4029e.c(new f.d.a.o.e(h0Var.f6523d, h0Var.f6524e));
    }

    @Override // f.d.a.o.m.d
    public void cancel() {
        f fVar = this.f4030f;
        if (fVar != null) {
            fVar.cancel();
        }
    }

    @Override // i.g
    public void d(@NonNull f fVar, @NonNull IOException iOException) {
        if (Log.isLoggable(f4026h, 3)) {
            e.a("eAkrEB8DGVUSD1gCHEoXBBcNARAKGlcTAQNHEhQe");
        }
        this.f4029e.c(iOException);
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
        this.f4029e = aVar;
        this.f4030f = this.a.a(b);
        this.f4030f.W(this);
    }
}
