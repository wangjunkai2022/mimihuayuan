package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import c.a.a.b.g.h;
import f.d.a.c;
import f.d.a.o.l;
import f.d.a.o.p.g.f;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class GifDrawable extends Drawable implements f.b, Animatable, Animatable2Compat {
    public final a a;
    public boolean b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f89c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f90d;

    /* renamed from: f  reason: collision with root package name */
    public int f92f;

    /* renamed from: h  reason: collision with root package name */
    public boolean f94h;

    /* renamed from: i  reason: collision with root package name */
    public Paint f95i;

    /* renamed from: j  reason: collision with root package name */
    public Rect f96j;

    /* renamed from: k  reason: collision with root package name */
    public List<Animatable2Compat.AnimationCallback> f97k;

    /* renamed from: e  reason: collision with root package name */
    public boolean f91e = true;

    /* renamed from: g  reason: collision with root package name */
    public int f93g = -1;

    /* loaded from: classes.dex */
    public static final class a extends Drawable.ConstantState {
        @VisibleForTesting
        public final f a;

        public a(f fVar) {
            this.a = fVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new GifDrawable(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return new GifDrawable(this);
        }
    }

    public GifDrawable(Context context, f.d.a.m.a aVar, l<Bitmap> lVar, int i2, int i3, Bitmap bitmap) {
        a aVar2 = new a(new f(c.b(context), aVar, i2, i3, lVar, bitmap));
        h.s(aVar2, "Argument must not be null");
        this.a = aVar2;
    }

    @Override // f.d.a.o.p.g.f.b
    public void a() {
        Drawable.Callback callback = getCallback();
        while (callback instanceof Drawable) {
            callback = ((Drawable) callback).getCallback();
        }
        if (callback == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        f.a aVar = this.a.a.f3724j;
        if ((aVar != null ? aVar.f3729e : -1) == this.a.a.a.d() - 1) {
            this.f92f++;
        }
        int i2 = this.f93g;
        if (i2 != -1 && this.f92f >= i2) {
            List<Animatable2Compat.AnimationCallback> list = this.f97k;
            if (list != null) {
                int size = list.size();
                for (int i3 = 0; i3 < size; i3++) {
                    this.f97k.get(i3).onAnimationEnd(this);
                }
            }
            stop();
        }
    }

    public Bitmap b() {
        return this.a.a.f3727m;
    }

    public final Paint c() {
        if (this.f95i == null) {
            this.f95i = new Paint(2);
        }
        return this.f95i;
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void clearAnimationCallbacks() {
        List<Animatable2Compat.AnimationCallback> list = this.f97k;
        if (list != null) {
            list.clear();
        }
    }

    public final void d() {
        h.o(!this.f90d, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
        if (this.a.a.a.d() == 1) {
            invalidateSelf();
        } else if (!this.b) {
            this.b = true;
            f fVar = this.a.a;
            if (fVar.f3725k) {
                throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
            } else if (!fVar.f3717c.contains(this)) {
                boolean isEmpty = fVar.f3717c.isEmpty();
                fVar.f3717c.add(this);
                if (isEmpty && !fVar.f3720f) {
                    fVar.f3720f = true;
                    fVar.f3725k = false;
                    fVar.a();
                }
                invalidateSelf();
            } else {
                throw new IllegalStateException("Cannot subscribe twice in a row");
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Bitmap bitmap;
        if (!this.f90d) {
            if (this.f94h) {
                int intrinsicWidth = getIntrinsicWidth();
                int intrinsicHeight = getIntrinsicHeight();
                Rect bounds = getBounds();
                if (this.f96j == null) {
                    this.f96j = new Rect();
                }
                Gravity.apply(119, intrinsicWidth, intrinsicHeight, bounds, this.f96j);
                this.f94h = false;
            }
            f fVar = this.a.a;
            f.a aVar = fVar.f3724j;
            if (aVar != null) {
                bitmap = aVar.f3731g;
            } else {
                bitmap = fVar.f3727m;
            }
            if (this.f96j == null) {
                this.f96j = new Rect();
            }
            canvas.drawBitmap(bitmap, (Rect) null, this.f96j, c());
        }
    }

    public final void e() {
        this.b = false;
        f fVar = this.a.a;
        fVar.f3717c.remove(this);
        if (fVar.f3717c.isEmpty()) {
            fVar.f3720f = false;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.a.a.q;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.a.a.p;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.b;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f94h = true;
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        if (animationCallback != null) {
            if (this.f97k == null) {
                this.f97k = new ArrayList();
            }
            this.f97k.add(animationCallback);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        c().setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        c().setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        h.o(!this.f90d, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.f91e = z;
        if (!z) {
            e();
        } else if (this.f89c) {
            d();
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f89c = true;
        this.f92f = 0;
        if (this.f91e) {
            d();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f89c = false;
        e();
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        List<Animatable2Compat.AnimationCallback> list = this.f97k;
        if (list == null || animationCallback == null) {
            return false;
        }
        return list.remove(animationCallback);
    }

    public GifDrawable(a aVar) {
        h.s(aVar, "Argument must not be null");
        this.a = aVar;
    }
}
