package f.e.a.j.t.e.f;

import android.util.Log;
import androidx.annotation.NonNull;
import c.a.a.b.g.h;
import f.d.a.o.m.d;
import f.d.a.u.b;
import f.e.a.e;
import f.e.a.j.t.e.a;
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
    public static final String f3951h = e.a("eAkrEB8Df1YHBVwCCg==");
    public final f.a a;
    public final f.d.a.o.o.g b;

    /* renamed from: c  reason: collision with root package name */
    public InputStream f3952c;

    /* renamed from: d  reason: collision with root package name */
    public i0 f3953d;

    /* renamed from: e  reason: collision with root package name */
    public d.a<? super InputStream> f3954e;

    /* renamed from: f  reason: collision with root package name */
    public volatile f f3955f;

    /* renamed from: g  reason: collision with root package name */
    public ByteArrayOutputStream f3956g = null;

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
            if (this.f3952c != null) {
                this.f3952c.close();
            }
            if (this.f3956g != null) {
                this.f3956g.close();
            }
        } catch (IOException unused) {
        }
        i0 i0Var = this.f3953d;
        if (i0Var != null) {
            i0Var.close();
        }
        this.f3954e = null;
    }

    @Override // i.g
    public void c(@NonNull f fVar, @NonNull h0 h0Var) {
        this.f3953d = h0Var.f6452h;
        if (h0Var.g()) {
            i0 i0Var = this.f3953d;
            h.s(i0Var, "Argument must not be null");
            this.f3952c = new b(this.f3953d.d(), i0Var.g());
            if (h0Var.b.b.f6779j.endsWith(e.a("GQEGBg=="))) {
                this.f3954e.d(a.b(this.f3952c));
            } else {
                this.f3954e.d(this.f3952c);
            }
        } else {
            this.f3954e.c(new f.d.a.o.e(h0Var.f6448d, h0Var.f6449e));
        }
    }

    @Override // f.d.a.o.m.d
    public void cancel() {
        f fVar = this.f3955f;
        if (fVar != null) {
            fVar.cancel();
        }
    }

    @Override // i.g
    public void d(@NonNull f fVar, @NonNull IOException iOException) {
        if (Log.isLoggable(f3951h, 3)) {
            e.a("eAkrEB8DGVUSD1gCHEoXBBcNARAKGlcTAQNHEhQe");
        }
        this.f3954e.c(iOException);
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
        this.f3954e = aVar;
        this.f3955f = this.a.a(b);
        this.f3955f.W(this);
    }
}
