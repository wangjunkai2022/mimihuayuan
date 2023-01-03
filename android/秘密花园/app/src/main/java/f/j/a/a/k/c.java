package f.j.a.a.k;

import android.content.Context;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import f.j.a.a.f.g;
import f.j.a.a.f.h;
import f.j.a.a.f.i;
import f.j.a.a.k.c;
import f.j.a.a.m.b;

/* compiled from: InternalClassics.java */
/* loaded from: classes.dex */
public abstract class c<T extends c> extends b implements g {

    /* renamed from: d  reason: collision with root package name */
    public TextView f6169d;

    /* renamed from: e  reason: collision with root package name */
    public ImageView f6170e;

    /* renamed from: f  reason: collision with root package name */
    public ImageView f6171f;

    /* renamed from: g  reason: collision with root package name */
    public h f6172g;

    /* renamed from: h  reason: collision with root package name */
    public d f6173h;

    /* renamed from: i  reason: collision with root package name */
    public d f6174i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f6175j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f6176k;

    /* renamed from: l  reason: collision with root package name */
    public int f6177l;

    /* renamed from: m  reason: collision with root package name */
    public int f6178m = 500;
    public int n = 20;
    public int o = 20;
    public int p = 0;

    public c(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.b = f.j.a.a.g.c.f6132d;
    }

    @Override // f.j.a.a.k.b, f.j.a.a.f.g
    public void b(@NonNull i iVar, int i2, int i3) {
        ImageView imageView = this.f6171f;
        if (imageView.getVisibility() != 0) {
            imageView.setVisibility(0);
            Drawable drawable = this.f6171f.getDrawable();
            if (drawable instanceof Animatable) {
                ((Animatable) drawable).start();
            } else {
                imageView.animate().rotation(36000.0f).setDuration(100000);
            }
        }
    }

    @Override // f.j.a.a.k.b, f.j.a.a.f.g
    public void e(@NonNull h hVar, int i2, int i3) {
        this.f6172g = hVar;
        ((SmartRefreshLayout.k) hVar).c(this, this.f6177l);
    }

    @Override // f.j.a.a.k.b, f.j.a.a.f.g
    public int i(@NonNull i iVar, boolean z) {
        ImageView imageView = this.f6171f;
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof Animatable) {
            Animatable animatable = (Animatable) drawable;
            if (animatable.isRunning()) {
                animatable.stop();
            }
        } else {
            imageView.animate().rotation(0.0f).setDuration(0);
        }
        imageView.setVisibility(8);
        return this.f6178m;
    }

    @Override // f.j.a.a.k.b, f.j.a.a.f.g
    public void k(@NonNull i iVar, int i2, int i3) {
        b(iVar, i2, i3);
    }

    public T o(@ColorInt int i2) {
        this.f6175j = true;
        this.f6169d.setTextColor(i2);
        d dVar = this.f6173h;
        if (dVar != null) {
            dVar.a.setColor(i2);
            this.f6170e.invalidateDrawable(this.f6173h);
        }
        d dVar2 = this.f6174i;
        if (dVar2 != null) {
            dVar2.a.setColor(i2);
            this.f6171f.invalidateDrawable(this.f6174i);
        }
        return this;
    }

    @Override // android.view.View, android.view.ViewGroup
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ImageView imageView = this.f6170e;
        ImageView imageView2 = this.f6171f;
        imageView.animate().cancel();
        imageView2.animate().cancel();
        Drawable drawable = this.f6171f.getDrawable();
        if (drawable instanceof Animatable) {
            Animatable animatable = (Animatable) drawable;
            if (animatable.isRunning()) {
                animatable.stop();
            }
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        if (this.p == 0) {
            this.n = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            this.o = paddingBottom;
            if (this.n == 0 || paddingBottom == 0) {
                int paddingLeft = getPaddingLeft();
                int paddingRight = getPaddingRight();
                int i4 = this.n;
                if (i4 == 0) {
                    i4 = b.d(20.0f);
                }
                this.n = i4;
                int i5 = this.o;
                if (i5 == 0) {
                    i5 = b.d(20.0f);
                }
                this.o = i5;
                setPadding(paddingLeft, this.n, paddingRight, i5);
            }
            setClipToPadding(false);
        }
        if (View.MeasureSpec.getMode(i3) == 1073741824) {
            int size = View.MeasureSpec.getSize(i3);
            int i6 = this.p;
            if (size < i6) {
                int i7 = (size - i6) / 2;
                setPadding(getPaddingLeft(), i7, getPaddingRight(), i7);
            } else {
                setPadding(getPaddingLeft(), 0, getPaddingRight(), 0);
            }
        } else {
            setPadding(getPaddingLeft(), this.n, getPaddingRight(), this.o);
        }
        super.onMeasure(i2, i3);
        if (this.p == 0) {
            for (int i8 = 0; i8 < getChildCount(); i8++) {
                int measuredHeight = getChildAt(i8).getMeasuredHeight();
                if (this.p < measuredHeight) {
                    this.p = measuredHeight;
                }
            }
        }
    }

    public T p(@ColorInt int i2) {
        this.f6176k = true;
        this.f6177l = i2;
        h hVar = this.f6172g;
        if (hVar != null) {
            ((SmartRefreshLayout.k) hVar).c(this, i2);
        }
        return this;
    }

    @Override // f.j.a.a.k.b, f.j.a.a.f.g
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (iArr.length > 0) {
            if (!(getBackground() instanceof BitmapDrawable) && !this.f6176k) {
                p(iArr[0]);
                this.f6176k = false;
            }
            if (!this.f6175j) {
                if (iArr.length > 1) {
                    o(iArr[1]);
                } else {
                    int i2 = -1;
                    if (iArr[0] == -1) {
                        i2 = -10066330;
                    }
                    o(i2);
                }
                this.f6175j = false;
            }
        }
    }
}
