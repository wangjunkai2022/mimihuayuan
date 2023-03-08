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

/* compiled from: InternalClassics.java */
/* loaded from: classes.dex */
public abstract class c<T extends c> extends b implements g {

    /* renamed from: d  reason: collision with root package name */
    public TextView f6244d;

    /* renamed from: e  reason: collision with root package name */
    public ImageView f6245e;

    /* renamed from: f  reason: collision with root package name */
    public ImageView f6246f;

    /* renamed from: g  reason: collision with root package name */
    public h f6247g;

    /* renamed from: h  reason: collision with root package name */
    public d f6248h;

    /* renamed from: i  reason: collision with root package name */
    public d f6249i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f6250j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f6251k;

    /* renamed from: l  reason: collision with root package name */
    public int f6252l;

    /* renamed from: m  reason: collision with root package name */
    public int f6253m;
    public int n;
    public int o;
    public int p;

    public c(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f6253m = 500;
        this.n = 20;
        this.o = 20;
        this.p = 0;
        this.b = f.j.a.a.g.c.f6207d;
    }

    @Override // f.j.a.a.k.b, f.j.a.a.f.g
    public void b(@NonNull i iVar, int i2, int i3) {
        ImageView imageView = this.f6246f;
        if (imageView.getVisibility() != 0) {
            imageView.setVisibility(0);
            Drawable drawable = this.f6246f.getDrawable();
            if (drawable instanceof Animatable) {
                ((Animatable) drawable).start();
            } else {
                imageView.animate().rotation(36000.0f).setDuration(100000L);
            }
        }
    }

    @Override // f.j.a.a.k.b, f.j.a.a.f.g
    public void e(@NonNull h hVar, int i2, int i3) {
        this.f6247g = hVar;
        ((SmartRefreshLayout.k) hVar).c(this, this.f6252l);
    }

    @Override // f.j.a.a.k.b, f.j.a.a.f.g
    public int i(@NonNull i iVar, boolean z) {
        ImageView imageView = this.f6246f;
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof Animatable) {
            Animatable animatable = (Animatable) drawable;
            if (animatable.isRunning()) {
                animatable.stop();
            }
        } else {
            imageView.animate().rotation(0.0f).setDuration(0L);
        }
        imageView.setVisibility(8);
        return this.f6253m;
    }

    @Override // f.j.a.a.k.b, f.j.a.a.f.g
    public void k(@NonNull i iVar, int i2, int i3) {
        b(iVar, i2, i3);
    }

    public T o(@ColorInt int i2) {
        this.f6250j = true;
        this.f6244d.setTextColor(i2);
        d dVar = this.f6248h;
        if (dVar != null) {
            dVar.a.setColor(i2);
            this.f6245e.invalidateDrawable(this.f6248h);
        }
        d dVar2 = this.f6249i;
        if (dVar2 != null) {
            dVar2.a.setColor(i2);
            this.f6246f.invalidateDrawable(this.f6249i);
        }
        return this;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ImageView imageView = this.f6245e;
        ImageView imageView2 = this.f6246f;
        imageView.animate().cancel();
        imageView2.animate().cancel();
        Drawable drawable = this.f6246f.getDrawable();
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
                    i4 = f.j.a.a.m.b.d(20.0f);
                }
                this.n = i4;
                int i5 = this.o;
                if (i5 == 0) {
                    i5 = f.j.a.a.m.b.d(20.0f);
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
        this.f6251k = true;
        this.f6252l = i2;
        h hVar = this.f6247g;
        if (hVar != null) {
            ((SmartRefreshLayout.k) hVar).c(this, i2);
        }
        return this;
    }

    @Override // f.j.a.a.k.b, f.j.a.a.f.g
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (iArr.length > 0) {
            if (!(getBackground() instanceof BitmapDrawable) && !this.f6251k) {
                p(iArr[0]);
                this.f6251k = false;
            }
            if (this.f6250j) {
                return;
            }
            if (iArr.length > 1) {
                o(iArr[1]);
            } else {
                o(iArr[0] == -1 ? -10066330 : -1);
            }
            this.f6250j = false;
        }
    }
}
