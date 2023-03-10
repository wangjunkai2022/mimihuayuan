package com.comeback.data.ui.avbobo;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class MoviePlayActivity_ViewBinding implements Unbinder {
    public MoviePlayActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f162c;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ MoviePlayActivity f163c;

        public a(MoviePlayActivity_ViewBinding moviePlayActivity_ViewBinding, MoviePlayActivity moviePlayActivity) {
            this.f163c = moviePlayActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            LinearLayout linearLayout = this.f163c.llLine;
            linearLayout.setVisibility(linearLayout.getVisibility() == 8 ? 0 : 8);
        }
    }

    @UiThread
    public MoviePlayActivity_ViewBinding(MoviePlayActivity moviePlayActivity, View view) {
        this.b = moviePlayActivity;
        moviePlayActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        moviePlayActivity.tvDetail = (TextView) c.c(view, R.id.tv_detail, e.a("UQsGCA9THkcFIlETGQMPTA=="), TextView.class);
        moviePlayActivity.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
        moviePlayActivity.radioType1 = (RadioButton) c.c(view, R.id.radio_type1, e.a("UQsGCA9THkESAl0ILBMTDgZF"), RadioButton.class);
        moviePlayActivity.radioType2 = (RadioButton) c.c(view, R.id.radio_type2, e.a("UQsGCA9THkESAl0ILBMTDgVF"), RadioButton.class);
        moviePlayActivity.radioType3 = (RadioButton) c.c(view, R.id.radio_type3, e.a("UQsGCA9THkESAl0ILBMTDgRF"), RadioButton.class);
        moviePlayActivity.radioType4 = (RadioButton) c.c(view, R.id.radio_type4, e.a("UQsGCA9THkESAl0ILBMTDgNF"), RadioButton.class);
        moviePlayActivity.radioGroupType = (RadioGroup) c.c(view, R.id.radio_group_type, e.a("UQsGCA9THkESAl0IPxgMHkc2GhQOVA=="), RadioGroup.class);
        RadioButton radioButton = (RadioButton) c.c(view, R.id.radio_line1, e.a("UQsGCA9THkESAl0INAMNDgZF"), RadioButton.class);
        RadioButton radioButton2 = (RadioButton) c.c(view, R.id.radio_line2, e.a("UQsGCA9THkESAl0INAMNDgVF"), RadioButton.class);
        moviePlayActivity.radioGroupLine = (RadioGroup) c.c(view, R.id.radio_group_line, e.a("UQsGCA9THkESAl0IPxgMHkcuCgoOVA=="), RadioGroup.class);
        moviePlayActivity.llLine = (LinearLayout) c.c(view, R.id.ll_line, e.a("UQsGCA9THl8fKl0JHU0="), LinearLayout.class);
        View b = c.b(view, R.id.tv_line, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f162c = b;
        b.setOnClickListener(new a(this, moviePlayActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        MoviePlayActivity moviePlayActivity = this.b;
        if (moviePlayActivity != null) {
            this.b = null;
            moviePlayActivity.tvTitle = null;
            moviePlayActivity.tvDetail = null;
            moviePlayActivity.rvList = null;
            moviePlayActivity.radioType1 = null;
            moviePlayActivity.radioType2 = null;
            moviePlayActivity.radioType3 = null;
            moviePlayActivity.radioType4 = null;
            moviePlayActivity.radioGroupType = null;
            moviePlayActivity.radioGroupLine = null;
            moviePlayActivity.llLine = null;
            this.f162c.setOnClickListener(null);
            this.f162c = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
