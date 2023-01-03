package f.d.a.n.a;

import android.util.Log;
import androidx.annotation.NonNull;
import c.a.a.b.g.h;
import f.d.a.o.a;
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
    public InputStream f3460c;

    /* renamed from: d  reason: collision with root package name */
    public i0 f3461d;

    /* renamed from: e  reason: collision with root package name */
    public d.a<? super InputStream> f3462e;

    /* renamed from: f  reason: collision with root package name */
    public volatile f f3463f;

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
            if (this.f3460c != null) {
                this.f3460c.close();
            }
        } catch (IOException unused) {
        }
        i0 i0Var = this.f3461d;
        if (i0Var != null) {
            i0Var.close();
        }
        this.f3462e = null;
    }

    @Override // i.g
    public void c(@NonNull f fVar, @NonNull h0 h0Var) {
        this.f3461d = h0Var.f6452h;
        if (h0Var.g()) {
            i0 i0Var = this.f3461d;
            h.s(i0Var, "Argument must not be null");
            f.d.a.u.b bVar = new f.d.a.u.b(this.f3461d.d(), i0Var.g());
            this.f3460c = bVar;
            this.f3462e.d(bVar);
            return;
        }
        this.f3462e.c(new e(h0Var.f6448d, h0Var.f6449e));
    }

    @Override // f.d.a.o.m.d
    public void cancel() {
        f fVar = this.f3463f;
        if (fVar != null) {
            fVar.cancel();
        }
    }

    @Override // i.g
    public void d(@NonNull f fVar, @NonNull IOException iOException) {
        Log.isLoggable("OkHttpFetcher", 3);
        this.f3462e.c(iOException);
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
        this.f3462e = aVar;
        this.f3463f = this.a.a(b);
        this.f3463f.W(this);
    }
}
