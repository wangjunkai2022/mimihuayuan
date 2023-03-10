package f.e.a.j.n.p.f;

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
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
/* compiled from: OkHttpStreamFetcher.java */
/* loaded from: classes.dex */
public class d implements f.d.a.o.m.d<InputStream>, g {

    /* renamed from: g  reason: collision with root package name */
    public static final String f4000g = e.a("eAkrEB8Df1YHBVwCCg==");
    public final f.a a;
    public final f.d.a.o.o.g b;

    /* renamed from: c  reason: collision with root package name */
    public InputStream f4001c;

    /* renamed from: d  reason: collision with root package name */
    public i0 f4002d;

    /* renamed from: e  reason: collision with root package name */
    public d.a<? super InputStream> f4003e;

    /* renamed from: f  reason: collision with root package name */
    public volatile f f4004f;

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
            if (this.f4001c != null) {
                this.f4001c.close();
            }
        } catch (IOException unused) {
        }
        i0 i0Var = this.f4002d;
        if (i0Var != null) {
            i0Var.close();
        }
        this.f4003e = null;
    }

    @Override // i.g
    public void c(@NonNull f fVar, @NonNull h0 h0Var) {
        this.f4002d = h0Var.f6536h;
        if (h0Var.g()) {
            i0 i0Var = this.f4002d;
            h.s(i0Var, "Argument must not be null");
            this.f4001c = new f.d.a.u.b(this.f4002d.d(), i0Var.g());
            if (h0Var.b.b.f6863j.endsWith(e.a("GQEGBg=="))) {
                this.f4003e.d(f.e.a.j.n.p.a.a(this.f4001c));
                return;
            } else {
                this.f4003e.d(this.f4001c);
                return;
            }
        }
        this.f4003e.c(new f.d.a.o.e(h0Var.f6532d, h0Var.f6533e));
    }

    @Override // f.d.a.o.m.d
    public void cancel() {
        f fVar = this.f4004f;
        if (fVar != null) {
            fVar.cancel();
        }
    }

    @Override // i.g
    public void d(@NonNull f fVar, @NonNull IOException iOException) {
        if (Log.isLoggable(f4000g, 3)) {
            e.a("eAkrEB8DGVUSD1gCHEoXBBcNARAKGlcTAQNHEhQe");
        }
        this.f4003e.c(iOException);
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
        this.f4003e = aVar;
        this.f4004f = this.a.a(b);
        this.f4004f.W(this);
    }
}
