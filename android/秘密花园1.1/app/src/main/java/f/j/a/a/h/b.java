package f.j.a.a.h;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import f.j.a.a.d;
import f.j.a.a.f.e;
import f.j.a.a.f.i;
import f.j.a.a.k.c;

/* compiled from: ClassicsFooter.java */
/* loaded from: classes.dex */
public class b extends c<b> implements e {
    public String q;
    public String r;
    public String s;
    public String t;
    public String u;
    public String v;
    public String w;
    public boolean x;

    public b(Context context) {
        super(context, null, 0);
        this.x = false;
        View.inflate(context, f.j.a.a.b.srl_classics_footer, this);
        ImageView imageView = (ImageView) findViewById(f.j.a.a.a.srl_classics_arrow);
        this.f6170e = imageView;
        ImageView imageView2 = (ImageView) findViewById(f.j.a.a.a.srl_classics_progress);
        this.f6171f = imageView2;
        this.f6169d = (TextView) findViewById(f.j.a.a.a.srl_classics_title);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, d.ClassicsFooter);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) imageView2.getLayoutParams();
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(d.ClassicsFooter_srlDrawableMarginRight, f.j.a.a.m.b.d(20.0f));
        layoutParams2.rightMargin = dimensionPixelSize;
        layoutParams.rightMargin = dimensionPixelSize;
        layoutParams.width = obtainStyledAttributes.getLayoutDimension(d.ClassicsFooter_srlDrawableArrowSize, layoutParams.width);
        layoutParams.height = obtainStyledAttributes.getLayoutDimension(d.ClassicsFooter_srlDrawableArrowSize, layoutParams.height);
        layoutParams2.width = obtainStyledAttributes.getLayoutDimension(d.ClassicsFooter_srlDrawableProgressSize, layoutParams2.width);
        layoutParams2.height = obtainStyledAttributes.getLayoutDimension(d.ClassicsFooter_srlDrawableProgressSize, layoutParams2.height);
        layoutParams.width = obtainStyledAttributes.getLayoutDimension(d.ClassicsFooter_srlDrawableSize, layoutParams.width);
        layoutParams.height = obtainStyledAttributes.getLayoutDimension(d.ClassicsFooter_srlDrawableSize, layoutParams.height);
        layoutParams2.width = obtainStyledAttributes.getLayoutDimension(d.ClassicsFooter_srlDrawableSize, layoutParams2.width);
        layoutParams2.height = obtainStyledAttributes.getLayoutDimension(d.ClassicsFooter_srlDrawableSize, layoutParams2.height);
        this.f6178m = obtainStyledAttributes.getInt(d.ClassicsFooter_srlFinishDuration, this.f6178m);
        this.b = f.j.a.a.g.c.f6137i[obtainStyledAttributes.getInt(d.ClassicsFooter_srlClassicsSpinnerStyle, this.b.a)];
        if (obtainStyledAttributes.hasValue(d.ClassicsFooter_srlDrawableArrow)) {
            this.f6170e.setImageDrawable(obtainStyledAttributes.getDrawable(d.ClassicsFooter_srlDrawableArrow));
        } else if (this.f6170e.getDrawable() == null) {
            f.j.a.a.k.a aVar = new f.j.a.a.k.a();
            this.f6173h = aVar;
            aVar.a.setColor(-10066330);
            this.f6170e.setImageDrawable(this.f6173h);
        }
        if (obtainStyledAttributes.hasValue(d.ClassicsFooter_srlDrawableProgress)) {
            this.f6171f.setImageDrawable(obtainStyledAttributes.getDrawable(d.ClassicsFooter_srlDrawableProgress));
        } else if (this.f6171f.getDrawable() == null) {
            f.j.a.a.k.e eVar = new f.j.a.a.k.e();
            this.f6174i = eVar;
            eVar.a.setColor(-10066330);
            this.f6171f.setImageDrawable(this.f6174i);
        }
        if (obtainStyledAttributes.hasValue(d.ClassicsFooter_srlTextSizeTitle)) {
            this.f6169d.setTextSize(0, obtainStyledAttributes.getDimensionPixelSize(d.ClassicsFooter_srlTextSizeTitle, f.j.a.a.m.b.d(16.0f)));
        }
        if (obtainStyledAttributes.hasValue(d.ClassicsFooter_srlPrimaryColor)) {
            super.p(obtainStyledAttributes.getColor(d.ClassicsFooter_srlPrimaryColor, 0));
        }
        if (obtainStyledAttributes.hasValue(d.ClassicsFooter_srlAccentColor)) {
            super.o(obtainStyledAttributes.getColor(d.ClassicsFooter_srlAccentColor, 0));
        }
        if (obtainStyledAttributes.hasValue(d.ClassicsFooter_srlTextPulling)) {
            this.q = obtainStyledAttributes.getString(d.ClassicsFooter_srlTextPulling);
        } else {
            this.q = context.getString(f.j.a.a.c.srl_footer_pulling);
        }
        if (obtainStyledAttributes.hasValue(d.ClassicsFooter_srlTextRelease)) {
            this.r = obtainStyledAttributes.getString(d.ClassicsFooter_srlTextRelease);
        } else {
            this.r = context.getString(f.j.a.a.c.srl_footer_release);
        }
        if (obtainStyledAttributes.hasValue(d.ClassicsFooter_srlTextLoading)) {
            this.s = obtainStyledAttributes.getString(d.ClassicsFooter_srlTextLoading);
        } else {
            this.s = context.getString(f.j.a.a.c.srl_footer_loading);
        }
        if (obtainStyledAttributes.hasValue(d.ClassicsFooter_srlTextRefreshing)) {
            this.t = obtainStyledAttributes.getString(d.ClassicsFooter_srlTextRefreshing);
        } else {
            this.t = context.getString(f.j.a.a.c.srl_footer_refreshing);
        }
        if (obtainStyledAttributes.hasValue(d.ClassicsFooter_srlTextFinish)) {
            this.u = obtainStyledAttributes.getString(d.ClassicsFooter_srlTextFinish);
        } else {
            this.u = context.getString(f.j.a.a.c.srl_footer_finish);
        }
        if (obtainStyledAttributes.hasValue(d.ClassicsFooter_srlTextFailed)) {
            this.v = obtainStyledAttributes.getString(d.ClassicsFooter_srlTextFailed);
        } else {
            this.v = context.getString(f.j.a.a.c.srl_footer_failed);
        }
        if (obtainStyledAttributes.hasValue(d.ClassicsFooter_srlTextNothing)) {
            this.w = obtainStyledAttributes.getString(d.ClassicsFooter_srlTextNothing);
        } else {
            this.w = context.getString(f.j.a.a.c.srl_footer_nothing);
        }
        obtainStyledAttributes.recycle();
        imageView2.animate().setInterpolator(null);
        this.f6169d.setText(isInEditMode() ? this.s : this.q);
        if (isInEditMode()) {
            imageView.setVisibility(8);
        } else {
            imageView2.setVisibility(8);
        }
    }

    @Override // f.j.a.a.k.b, f.j.a.a.l.e
    public void a(@NonNull i iVar, @NonNull f.j.a.a.g.b bVar, @NonNull f.j.a.a.g.b bVar2) {
        ImageView imageView = this.f6170e;
        if (this.x) {
            return;
        }
        int ordinal = bVar2.ordinal();
        if (ordinal == 0) {
            imageView.setVisibility(0);
        } else if (ordinal != 2) {
            if (ordinal != 6) {
                switch (ordinal) {
                    case 10:
                    case 12:
                        imageView.setVisibility(8);
                        this.f6169d.setText(this.s);
                        return;
                    case 11:
                        this.f6169d.setText(this.t);
                        imageView.setVisibility(8);
                        return;
                    default:
                        return;
                }
            }
            this.f6169d.setText(this.r);
            imageView.animate().rotation(0.0f);
            return;
        }
        this.f6169d.setText(this.q);
        imageView.animate().rotation(180.0f);
    }

    @Override // f.j.a.a.k.c, f.j.a.a.k.b, f.j.a.a.f.g
    public void b(@NonNull i iVar, int i2, int i3) {
        if (this.x) {
            return;
        }
        super.b(iVar, i2, i3);
    }

    @Override // f.j.a.a.k.b, f.j.a.a.f.e
    public boolean d(boolean z) {
        if (this.x != z) {
            this.x = z;
            ImageView imageView = this.f6170e;
            if (z) {
                this.f6169d.setText(this.w);
                imageView.setVisibility(8);
                return true;
            }
            this.f6169d.setText(this.q);
            imageView.setVisibility(0);
            return true;
        }
        return true;
    }

    @Override // f.j.a.a.k.c, f.j.a.a.k.b, f.j.a.a.f.g
    public int i(@NonNull i iVar, boolean z) {
        if (this.x) {
            return 0;
        }
        this.f6169d.setText(z ? this.u : this.v);
        return super.i(iVar, z);
    }

    @Override // f.j.a.a.k.c, f.j.a.a.k.b, f.j.a.a.f.g
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (this.b == f.j.a.a.g.c.f6134f) {
            super.setPrimaryColors(iArr);
        }
    }
}
