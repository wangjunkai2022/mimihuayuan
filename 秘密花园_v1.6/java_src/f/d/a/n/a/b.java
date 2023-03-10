package f.d.a.n.a;

import android.util.Log;
import androidx.annotation.NonNull;
import c.a.a.b.g.h;
import f.d.a.o.e;
import f.d.a.o.m.d;
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
public class b implements d<InputStream>, g {
    public final f.a a;
    public final f.d.a.o.o.g b;

    /* renamed from: c  reason: collision with root package name */
    public InputStream f3539c;

    /* renamed from: d  reason: collision with root package name */
    public i0 f3540d;

    /* renamed from: e  reason: collision with root package name */
    public d.a<? super InputStream> f3541e;

    /* renamed from: f  reason: collision with root package name */
    public volatile f f3542f;

    public b(f.a aVar, f.d.a.o.o.g gVar) {
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
            if (this.f3539c != null) {
                this.f3539c.close();
            }
        } catch (IOException unused) {
        }
        i0 i0Var = this.f3540d;
        if (i0Var != null) {
            i0Var.close();
        }
        this.f3541e = null;
    }

    @Override // i.g
    public void c(@NonNull f fVar, @NonNull h0 h0Var) {
        this.f3540d = h0Var.f6536h;
        if (h0Var.g()) {
            i0 i0Var = this.f3540d;
            h.s(i0Var, "Argument must not be null");
            f.d.a.u.b bVar = new f.d.a.u.b(this.f3540d.d(), i0Var.g());
            this.f3539c = bVar;
            this.f3541e.d(bVar);
            return;
        }
        this.f3541e.c(new e(h0Var.f6532d, h0Var.f6533e));
    }

    @Override // f.d.a.o.m.d
    public void cancel() {
        f fVar = this.f3542f;
        if (fVar != null) {
            fVar.cancel();
        }
    }

    @Override // i.g
    public void d(@NonNull f fVar, @NonNull IOException iOException) {
        Log.isLoggable("OkHttpFetcher", 3);
        this.f3541e.c(iOException);
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
        this.f3541e = aVar;
        this.f3542f = this.a.a(b);
        this.f3542f.W(this);
    }
}
