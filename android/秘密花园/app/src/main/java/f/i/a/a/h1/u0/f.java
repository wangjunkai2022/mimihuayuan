package f.i.a.a.h1.u0;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import f.i.a.a.b1.g;
import f.i.a.a.b1.t.d;
import f.i.a.a.b1.x.a;
import f.i.a.a.b1.x.b0;
import f.i.a.a.b1.x.c;
import f.i.a.a.b1.x.e;
import f.i.a.a.h1.u0.i;
import f.i.a.a.m1.e0;
import f.i.a.a.m1.r;
import java.io.EOFException;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* compiled from: DefaultHlsExtractorFactory.java */
/* loaded from: classes.dex */
public final class f implements i {
    public final int b = 0;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f5027c = true;

    public static i.a b(g gVar) {
        boolean z = true;
        boolean z2 = (gVar instanceof e) || (gVar instanceof a) || (gVar instanceof c) || (gVar instanceof d);
        if (!(gVar instanceof b0) && !(gVar instanceof f.i.a.a.b1.u.d)) {
            z = false;
        }
        return new i.a(gVar, z2, z);
    }

    public static f.i.a.a.b1.u.d c(e0 e0Var, f.i.a.a.z0.e eVar, @Nullable List<f.i.a.a.b0> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        return new f.i.a.a.b1.u.d(0, e0Var, null, eVar, list, null);
    }

    public static b0 d(int i2, boolean z, f.i.a.a.b0 b0Var, List<f.i.a.a.b0> list, e0 e0Var) {
        int i3 = i2 | 16;
        if (list != null) {
            i3 |= 32;
        } else if (z) {
            list = Collections.singletonList(f.i.a.a.b0.q(null, "application/cea-608", 0, null, null));
        } else {
            list = Collections.emptyList();
        }
        String str = b0Var.f4010f;
        if (!TextUtils.isEmpty(str)) {
            if (!"audio/mp4a-latm".equals(r.a(str))) {
                i3 |= 2;
            }
            if (!"video/avc".equals(r.g(str))) {
                i3 |= 4;
            }
        }
        return new b0(2, e0Var, new f.i.a.a.b1.x.g(i3, list));
    }

    public static boolean e(g gVar, f.i.a.a.b1.d dVar) throws InterruptedException, IOException {
        try {
            return gVar.i(dVar);
        } catch (EOFException unused) {
            return false;
        } finally {
            dVar.f4044f = 0;
        }
    }

    @Override // f.i.a.a.h1.u0.i
    public i.a a(g gVar, Uri uri, f.i.a.a.b0 b0Var, List<f.i.a.a.b0> list, f.i.a.a.z0.e eVar, e0 e0Var, Map<String, List<String>> map, f.i.a.a.b1.d dVar) throws InterruptedException, IOException {
        g gVar2;
        i.a aVar;
        if (gVar != null) {
            if ((gVar instanceof b0) || (gVar instanceof f.i.a.a.b1.u.d)) {
                return b(gVar);
            }
            if (gVar instanceof r) {
                aVar = b(new r(b0Var.A, e0Var));
            } else if (gVar instanceof e) {
                aVar = b(new e());
            } else if (gVar instanceof a) {
                aVar = b(new a());
            } else if (gVar instanceof c) {
                aVar = b(new c());
            } else {
                aVar = gVar instanceof d ? b(new d(0, -9223372036854775807L)) : null;
            }
            if (aVar == null) {
                StringBuilder o = f.b.a.a.a.o("Unexpected previousExtractor type: ");
                o.append(gVar.getClass().getSimpleName());
                throw new IllegalArgumentException(o.toString());
            }
        }
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            lastPathSegment = "";
        }
        if ("text/vtt".equals(b0Var.f4013i) || lastPathSegment.endsWith(".webvtt") || lastPathSegment.endsWith(".vtt")) {
            gVar2 = new r(b0Var.A, e0Var);
        } else if (lastPathSegment.endsWith(".aac")) {
            gVar2 = new e();
        } else if (lastPathSegment.endsWith(".ac3") || lastPathSegment.endsWith(".ec3")) {
            gVar2 = new a();
        } else if (lastPathSegment.endsWith(".ac4")) {
            gVar2 = new c();
        } else if (lastPathSegment.endsWith(".mp3")) {
            gVar2 = new d(0, 0);
        } else if (lastPathSegment.endsWith(".mp4") || lastPathSegment.startsWith(".m4", lastPathSegment.length() - 4) || lastPathSegment.startsWith(".mp4", lastPathSegment.length() - 5) || lastPathSegment.startsWith(".cmf", lastPathSegment.length() - 5)) {
            gVar2 = c(e0Var, eVar, list);
        } else {
            gVar2 = d(this.b, this.f5027c, b0Var, list, e0Var);
        }
        dVar.f4044f = 0;
        if (e(gVar2, dVar)) {
            return b(gVar2);
        }
        if (!(gVar2 instanceof r)) {
            r rVar = new r(b0Var.A, e0Var);
            if (e(rVar, dVar)) {
                return b(rVar);
            }
        }
        if (!(gVar2 instanceof e)) {
            e eVar2 = new e();
            if (e(eVar2, dVar)) {
                return b(eVar2);
            }
        }
        if (!(gVar2 instanceof a)) {
            a aVar2 = new a();
            if (e(aVar2, dVar)) {
                return b(aVar2);
            }
        }
        if (!(gVar2 instanceof c)) {
            c cVar = new c();
            if (e(cVar, dVar)) {
                return b(cVar);
            }
        }
        if (!(gVar2 instanceof d)) {
            d dVar2 = new d(0, 0);
            if (e(dVar2, dVar)) {
                return b(dVar2);
            }
        }
        if (!(gVar2 instanceof f.i.a.a.b1.u.d)) {
            f.i.a.a.b1.u.d c2 = c(e0Var, eVar, list);
            if (e(c2, dVar)) {
                return b(c2);
            }
        }
        if (!(gVar2 instanceof b0)) {
            b0 d2 = d(this.b, this.f5027c, b0Var, list, e0Var);
            if (e(d2, dVar)) {
                return b(d2);
            }
        }
        return b(gVar2);
    }
}
