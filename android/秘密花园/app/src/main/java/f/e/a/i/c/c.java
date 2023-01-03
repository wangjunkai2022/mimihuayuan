package f.e.a.i.c;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import f.d.a.i;
import f.d.a.j;
import f.d.a.p.h;
import f.d.a.p.m;
import f.d.a.s.e;

/* compiled from: GlideRequests.java */
/* loaded from: classes.dex */
public class c extends j {
    public c(@NonNull f.d.a.c cVar, @NonNull h hVar, @NonNull m mVar, @NonNull Context context) {
        super(cVar, hVar, mVar, context);
    }

    @Override // f.d.a.j
    @NonNull
    @CheckResult
    public i j(@NonNull Class cls) {
        return new b(this.a, this, cls, this.b);
    }

    @Override // f.d.a.j
    @NonNull
    @CheckResult
    public i k() {
        return (b) j(Bitmap.class).a(j.f3395l);
    }

    @Override // f.d.a.j
    @NonNull
    @CheckResult
    public i l() {
        return (b) super.l();
    }

    @Override // f.d.a.j
    @NonNull
    @CheckResult
    public i n(@Nullable @DrawableRes @RawRes Integer num) {
        return (b) l().H(num);
    }

    @Override // f.d.a.j
    @NonNull
    @CheckResult
    public i o(@Nullable Object obj) {
        i<Drawable> l2 = l();
        b bVar = (b) l2;
        bVar.F = obj;
        bVar.I = true;
        return (b) l2;
    }

    @Override // f.d.a.j
    @NonNull
    @CheckResult
    public i p(@Nullable String str) {
        i<Drawable> l2 = l();
        l2.J(str);
        return (b) l2;
    }

    @Override // f.d.a.j
    public void s(@NonNull e eVar) {
        if (eVar instanceof a) {
            super.s(eVar);
        } else {
            super.s(new a().a(eVar));
        }
    }
}
