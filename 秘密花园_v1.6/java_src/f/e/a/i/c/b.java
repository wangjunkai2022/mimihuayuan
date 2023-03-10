package f.e.a.i.c;

import android.content.Context;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import f.d.a.i;
import f.d.a.j;
import f.d.a.o.g;
import f.d.a.o.l;
import f.d.a.o.n.k;
import f.d.a.o.p.c.m;
import java.util.ArrayList;
/* compiled from: GlideRequest.java */
/* loaded from: classes.dex */
public class b<TranscodeType> extends i<TranscodeType> implements Cloneable {
    public b(@NonNull f.d.a.c cVar, @NonNull j jVar, @NonNull Class<TranscodeType> cls, @NonNull Context context) {
        super(cVar, jVar, cls, context);
    }

    @Override // f.d.a.s.a
    @NonNull
    @CheckResult
    public f.d.a.s.a A(boolean z) {
        return (b) super.A(z);
    }

    @Override // f.d.a.i
    @NonNull
    @CheckResult
    public i B(@Nullable f.d.a.s.d dVar) {
        if (dVar != null) {
            if (this.G == null) {
                this.G = new ArrayList();
            }
            this.G.add(dVar);
        }
        return this;
    }

    @Override // f.d.a.i
    @NonNull
    @CheckResult
    public i C(@NonNull f.d.a.s.a aVar) {
        return (b) super.a(aVar);
    }

    @Override // f.d.a.i
    @NonNull
    @CheckResult
    public i H(@Nullable @DrawableRes @RawRes Integer num) {
        return (b) super.H(num);
    }

    @Override // f.d.a.i
    @NonNull
    @CheckResult
    public i I(@Nullable Object obj) {
        this.F = obj;
        this.I = true;
        return this;
    }

    @Override // f.d.a.i
    @NonNull
    @CheckResult
    public i J(@Nullable String str) {
        this.F = str;
        this.I = true;
        return this;
    }

    @Override // f.d.a.i, f.d.a.s.a
    @CheckResult
    /* renamed from: L */
    public b<TranscodeType> d() {
        return (b) super.d();
    }

    @Override // f.d.a.i, f.d.a.s.a
    @NonNull
    @CheckResult
    public f.d.a.s.a a(@NonNull f.d.a.s.a aVar) {
        return (b) super.a(aVar);
    }

    @Override // f.d.a.s.a
    @NonNull
    @CheckResult
    public f.d.a.s.a c() {
        return (b) super.c();
    }

    @Override // f.d.a.s.a
    @NonNull
    @CheckResult
    public f.d.a.s.a e(@NonNull Class cls) {
        return (b) super.e(cls);
    }

    @Override // f.d.a.s.a
    @NonNull
    @CheckResult
    public f.d.a.s.a f(@NonNull k kVar) {
        return (b) super.f(kVar);
    }

    @Override // f.d.a.s.a
    @NonNull
    @CheckResult
    public f.d.a.s.a g(@NonNull m mVar) {
        return (b) super.g(mVar);
    }

    @Override // f.d.a.s.a
    @NonNull
    @CheckResult
    public f.d.a.s.a h() {
        return (b) super.h();
    }

    @Override // f.d.a.s.a
    @NonNull
    @CheckResult
    public f.d.a.s.a i(@NonNull f.d.a.o.b bVar) {
        return (b) super.i(bVar);
    }

    @Override // f.d.a.s.a
    @NonNull
    @CheckResult
    public f.d.a.s.a l() {
        return (b) super.l();
    }

    @Override // f.d.a.s.a
    @NonNull
    @CheckResult
    public f.d.a.s.a m() {
        return (b) super.m();
    }

    @Override // f.d.a.s.a
    @NonNull
    @CheckResult
    public f.d.a.s.a n() {
        return (b) super.n();
    }

    @Override // f.d.a.s.a
    @NonNull
    @CheckResult
    public f.d.a.s.a p(int i2, int i3) {
        return (b) super.p(i2, i3);
    }

    @Override // f.d.a.s.a
    @NonNull
    @CheckResult
    public f.d.a.s.a q(@DrawableRes int i2) {
        return (b) super.q(i2);
    }

    @Override // f.d.a.s.a
    @NonNull
    @CheckResult
    public f.d.a.s.a r(@NonNull f.d.a.f fVar) {
        return (b) super.r(fVar);
    }

    @Override // f.d.a.s.a
    @NonNull
    @CheckResult
    public f.d.a.s.a t(@NonNull g gVar, @NonNull Object obj) {
        return (b) super.t(gVar, obj);
    }

    @Override // f.d.a.s.a
    @NonNull
    @CheckResult
    public f.d.a.s.a u(@NonNull f.d.a.o.f fVar) {
        return (b) super.u(fVar);
    }

    @Override // f.d.a.s.a
    @NonNull
    @CheckResult
    public f.d.a.s.a v(boolean z) {
        return (b) super.v(z);
    }

    @Override // f.d.a.s.a
    @NonNull
    @CheckResult
    public f.d.a.s.a w(@NonNull l lVar) {
        return (b) x(lVar, true);
    }
}
