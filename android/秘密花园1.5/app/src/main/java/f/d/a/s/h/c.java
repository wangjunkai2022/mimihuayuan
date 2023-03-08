package f.d.a.s.h;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: CustomTarget.java */
/* loaded from: classes.dex */
public abstract class c<T> implements h<T> {
    public final int a;
    public final int b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public f.d.a.s.b f3852c;

    public c() {
        if (f.d.a.u.i.m(Integer.MIN_VALUE, Integer.MIN_VALUE)) {
            this.a = Integer.MIN_VALUE;
            this.b = Integer.MIN_VALUE;
            return;
        }
        throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: -2147483648 and height: -2147483648");
    }

    @Override // f.d.a.s.h.h
    public final void a(@NonNull g gVar) {
    }

    @Override // f.d.a.s.h.h
    public void c(@Nullable Drawable drawable) {
    }

    @Override // f.d.a.p.i
    public void d() {
    }

    @Override // f.d.a.s.h.h
    public void e(@Nullable Drawable drawable) {
    }

    @Override // f.d.a.s.h.h
    @Nullable
    public final f.d.a.s.b f() {
        return this.f3852c;
    }

    @Override // f.d.a.s.h.h
    public final void h(@NonNull g gVar) {
        gVar.e(this.a, this.b);
    }

    @Override // f.d.a.s.h.h
    public final void i(@Nullable f.d.a.s.b bVar) {
        this.f3852c = bVar;
    }

    @Override // f.d.a.p.i
    public void onDestroy() {
    }

    @Override // f.d.a.p.i
    public void onStart() {
    }
}
