package f.j.a.a.i;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import f.j.a.a.d;
import f.j.a.a.f.f;
import f.j.a.a.f.i;
import f.j.a.a.k.c;
import f.j.a.a.k.e;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* compiled from: ClassicsHeader.java */
/* loaded from: classes.dex */
public class b extends c<b> implements f {
    public String A;
    public String B;
    public String C;
    public String D;
    public String q;
    public Date r;
    public TextView s;
    public SharedPreferences t;
    public DateFormat u;
    public boolean v;
    public String w;
    public String x;
    public String y;
    public String z;

    public b(Context context) {
        super(context, null, 0);
        FragmentManager supportFragmentManager;
        this.q = "LAST_UPDATE_TIME";
        this.v = true;
        View.inflate(context, f.j.a.a.b.srl_classics_header, this);
        ImageView imageView = (ImageView) findViewById(f.j.a.a.a.srl_classics_arrow);
        this.f6245e = imageView;
        TextView textView = (TextView) findViewById(f.j.a.a.a.srl_classics_update);
        this.s = textView;
        ImageView imageView2 = (ImageView) findViewById(f.j.a.a.a.srl_classics_progress);
        this.f6246f = imageView2;
        this.f6244d = (TextView) findViewById(f.j.a.a.a.srl_classics_title);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, d.ClassicsHeader);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) imageView2.getLayoutParams();
        new LinearLayout.LayoutParams(-2, -2).topMargin = obtainStyledAttributes.getDimensionPixelSize(d.ClassicsHeader_srlTextTimeMarginTop, f.j.a.a.m.b.d(0.0f));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(d.ClassicsFooter_srlDrawableMarginRight, f.j.a.a.m.b.d(20.0f));
        layoutParams2.rightMargin = dimensionPixelSize;
        layoutParams.rightMargin = dimensionPixelSize;
        layoutParams.width = obtainStyledAttributes.getLayoutDimension(d.ClassicsHeader_srlDrawableArrowSize, layoutParams.width);
        layoutParams.height = obtainStyledAttributes.getLayoutDimension(d.ClassicsHeader_srlDrawableArrowSize, layoutParams.height);
        layoutParams2.width = obtainStyledAttributes.getLayoutDimension(d.ClassicsHeader_srlDrawableProgressSize, layoutParams2.width);
        layoutParams2.height = obtainStyledAttributes.getLayoutDimension(d.ClassicsHeader_srlDrawableProgressSize, layoutParams2.height);
        layoutParams.width = obtainStyledAttributes.getLayoutDimension(d.ClassicsHeader_srlDrawableSize, layoutParams.width);
        layoutParams.height = obtainStyledAttributes.getLayoutDimension(d.ClassicsHeader_srlDrawableSize, layoutParams.height);
        layoutParams2.width = obtainStyledAttributes.getLayoutDimension(d.ClassicsHeader_srlDrawableSize, layoutParams2.width);
        layoutParams2.height = obtainStyledAttributes.getLayoutDimension(d.ClassicsHeader_srlDrawableSize, layoutParams2.height);
        this.f6253m = obtainStyledAttributes.getInt(d.ClassicsHeader_srlFinishDuration, this.f6253m);
        this.v = obtainStyledAttributes.getBoolean(d.ClassicsHeader_srlEnableLastTime, this.v);
        this.b = f.j.a.a.g.c.f6212i[obtainStyledAttributes.getInt(d.ClassicsHeader_srlClassicsSpinnerStyle, this.b.a)];
        if (obtainStyledAttributes.hasValue(d.ClassicsHeader_srlDrawableArrow)) {
            this.f6245e.setImageDrawable(obtainStyledAttributes.getDrawable(d.ClassicsHeader_srlDrawableArrow));
        } else if (this.f6245e.getDrawable() == null) {
            f.j.a.a.k.a aVar = new f.j.a.a.k.a();
            this.f6248h = aVar;
            aVar.a.setColor(-10066330);
            this.f6245e.setImageDrawable(this.f6248h);
        }
        if (obtainStyledAttributes.hasValue(d.ClassicsHeader_srlDrawableProgress)) {
            this.f6246f.setImageDrawable(obtainStyledAttributes.getDrawable(d.ClassicsHeader_srlDrawableProgress));
        } else if (this.f6246f.getDrawable() == null) {
            e eVar = new e();
            this.f6249i = eVar;
            eVar.a.setColor(-10066330);
            this.f6246f.setImageDrawable(this.f6249i);
        }
        if (obtainStyledAttributes.hasValue(d.ClassicsHeader_srlTextSizeTitle)) {
            this.f6244d.setTextSize(0, obtainStyledAttributes.getDimensionPixelSize(d.ClassicsHeader_srlTextSizeTitle, f.j.a.a.m.b.d(16.0f)));
        }
        if (obtainStyledAttributes.hasValue(d.ClassicsHeader_srlTextSizeTime)) {
            this.s.setTextSize(0, obtainStyledAttributes.getDimensionPixelSize(d.ClassicsHeader_srlTextSizeTime, f.j.a.a.m.b.d(12.0f)));
        }
        if (obtainStyledAttributes.hasValue(d.ClassicsHeader_srlPrimaryColor)) {
            super.p(obtainStyledAttributes.getColor(d.ClassicsHeader_srlPrimaryColor, 0));
        }
        if (obtainStyledAttributes.hasValue(d.ClassicsHeader_srlAccentColor)) {
            int color = obtainStyledAttributes.getColor(d.ClassicsHeader_srlAccentColor, 0);
            this.s.setTextColor((16777215 & color) | (-872415232));
            super.o(color);
        }
        if (obtainStyledAttributes.hasValue(d.ClassicsHeader_srlTextPulling)) {
            this.w = obtainStyledAttributes.getString(d.ClassicsHeader_srlTextPulling);
        } else {
            this.w = context.getString(f.j.a.a.c.srl_header_pulling);
        }
        if (obtainStyledAttributes.hasValue(d.ClassicsHeader_srlTextLoading)) {
            this.y = obtainStyledAttributes.getString(d.ClassicsHeader_srlTextLoading);
        } else {
            this.y = context.getString(f.j.a.a.c.srl_header_loading);
        }
        if (obtainStyledAttributes.hasValue(d.ClassicsHeader_srlTextRelease)) {
            this.z = obtainStyledAttributes.getString(d.ClassicsHeader_srlTextRelease);
        } else {
            this.z = context.getString(f.j.a.a.c.srl_header_release);
        }
        if (obtainStyledAttributes.hasValue(d.ClassicsHeader_srlTextFinish)) {
            this.A = obtainStyledAttributes.getString(d.ClassicsHeader_srlTextFinish);
        } else {
            this.A = context.getString(f.j.a.a.c.srl_header_finish);
        }
        if (obtainStyledAttributes.hasValue(d.ClassicsHeader_srlTextFailed)) {
            this.B = obtainStyledAttributes.getString(d.ClassicsHeader_srlTextFailed);
        } else {
            this.B = context.getString(f.j.a.a.c.srl_header_failed);
        }
        if (obtainStyledAttributes.hasValue(d.ClassicsHeader_srlTextSecondary)) {
            this.D = obtainStyledAttributes.getString(d.ClassicsHeader_srlTextSecondary);
        } else {
            this.D = context.getString(f.j.a.a.c.srl_header_secondary);
        }
        if (obtainStyledAttributes.hasValue(d.ClassicsHeader_srlTextRefreshing)) {
            this.x = obtainStyledAttributes.getString(d.ClassicsHeader_srlTextRefreshing);
        } else {
            this.x = context.getString(f.j.a.a.c.srl_header_refreshing);
        }
        if (obtainStyledAttributes.hasValue(d.ClassicsHeader_srlTextUpdate)) {
            this.C = obtainStyledAttributes.getString(d.ClassicsHeader_srlTextUpdate);
        } else {
            this.C = context.getString(f.j.a.a.c.srl_header_update);
        }
        this.u = new SimpleDateFormat(this.C, Locale.getDefault());
        obtainStyledAttributes.recycle();
        imageView2.animate().setInterpolator(null);
        textView.setVisibility(this.v ? 0 : 8);
        this.f6244d.setText(isInEditMode() ? this.x : this.w);
        if (isInEditMode()) {
            imageView.setVisibility(8);
        } else {
            imageView2.setVisibility(8);
        }
        try {
            if ((context instanceof FragmentActivity) && (supportFragmentManager = ((FragmentActivity) context).getSupportFragmentManager()) != null && supportFragmentManager.getFragments().size() > 0) {
                q(new Date());
                return;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        this.q += context.getClass().getName();
        this.t = context.getSharedPreferences("ClassicsHeader", 0);
        q(new Date(this.t.getLong(this.q, System.currentTimeMillis())));
    }

    @Override // f.j.a.a.k.b, f.j.a.a.l.e
    public void a(@NonNull i iVar, @NonNull f.j.a.a.g.b bVar, @NonNull f.j.a.a.g.b bVar2) {
        ImageView imageView = this.f6245e;
        TextView textView = this.s;
        int ordinal = bVar2.ordinal();
        if (ordinal == 0) {
            textView.setVisibility(this.v ? 0 : 8);
        } else if (ordinal != 1) {
            if (ordinal == 5) {
                this.f6244d.setText(this.z);
                imageView.animate().rotation(180.0f);
                return;
            } else if (ordinal == 7) {
                this.f6244d.setText(this.D);
                imageView.animate().rotation(0.0f);
                return;
            } else if (ordinal == 9 || ordinal == 11) {
                this.f6244d.setText(this.x);
                imageView.setVisibility(8);
                return;
            } else if (ordinal != 12) {
                return;
            } else {
                imageView.setVisibility(8);
                textView.setVisibility(this.v ? 4 : 8);
                this.f6244d.setText(this.y);
                return;
            }
        }
        this.f6244d.setText(this.w);
        imageView.setVisibility(0);
        imageView.animate().rotation(0.0f);
    }

    @Override // f.j.a.a.k.c, f.j.a.a.k.b, f.j.a.a.f.g
    public int i(@NonNull i iVar, boolean z) {
        if (z) {
            this.f6244d.setText(this.A);
            if (this.r != null) {
                q(new Date());
            }
        } else {
            this.f6244d.setText(this.B);
        }
        return super.i(iVar, z);
    }

    @Override // f.j.a.a.k.c
    public b o(@ColorInt int i2) {
        this.s.setTextColor((16777215 & i2) | (-872415232));
        super.o(i2);
        return this;
    }

    public b q(Date date) {
        this.r = date;
        this.s.setText(this.u.format(date));
        if (this.t != null && !isInEditMode()) {
            this.t.edit().putLong(this.q, date.getTime()).apply();
        }
        return this;
    }
}
