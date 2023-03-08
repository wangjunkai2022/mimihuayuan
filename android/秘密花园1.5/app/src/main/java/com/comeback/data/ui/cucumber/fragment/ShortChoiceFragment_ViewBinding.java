package com.comeback.data.ui.cucumber.fragment;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import androidx.core.content.ContextCompat;
import com.comeback.data.base.BaseRefreshFragment_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class ShortChoiceFragment_ViewBinding extends BaseRefreshFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public ShortChoiceFragment f520c;

    /* renamed from: d  reason: collision with root package name */
    public View f521d;

    /* renamed from: e  reason: collision with root package name */
    public View f522e;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ShortChoiceFragment f523c;

        public a(ShortChoiceFragment_ViewBinding shortChoiceFragment_ViewBinding, ShortChoiceFragment shortChoiceFragment) {
            this.f523c = shortChoiceFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f523c.onClick(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ShortChoiceFragment f524c;

        public b(ShortChoiceFragment_ViewBinding shortChoiceFragment_ViewBinding, ShortChoiceFragment shortChoiceFragment) {
            this.f524c = shortChoiceFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f524c.onClick(view);
        }
    }

    @UiThread
    public ShortChoiceFragment_ViewBinding(ShortChoiceFragment shortChoiceFragment, View view) {
        super(shortChoiceFragment, view);
        this.f520c = shortChoiceFragment;
        View b2 = c.b(view, R.id.tv_new, e.a("UQsGCA9THkcFKFEQX0oCBVNCDgEfG1ZXU0FbCTsGCghcRQ=="));
        shortChoiceFragment.tvNew = (TextView) c.a(b2, R.id.tv_new, e.a("UQsGCA9THkcFKFEQXw=="), TextView.class);
        this.f521d = b2;
        b2.setOnClickListener(new a(this, shortChoiceFragment));
        View b3 = c.b(view, R.id.tv_play, e.a("UQsGCA9THkcFNlgGAU1DClkGQwkOB1FcF0YTCBYpDwJUCUQ="));
        shortChoiceFragment.tvPlay = (TextView) c.a(b3, R.id.tv_play, e.a("UQsGCA9THkcFNlgGAU0="), TextView.class);
        this.f522e = b3;
        b3.setOnClickListener(new b(this, shortChoiceFragment));
        Context context = view.getContext();
        shortChoiceFragment.colorThird = ContextCompat.getColor(context, R.color.basic_secondary_text);
        shortChoiceFragment.colorWhite = ContextCompat.getColor(context, R.color.kmColorAccent);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        ShortChoiceFragment shortChoiceFragment = this.f520c;
        if (shortChoiceFragment != null) {
            this.f520c = null;
            shortChoiceFragment.tvNew = null;
            shortChoiceFragment.tvPlay = null;
            this.f521d.setOnClickListener(null);
            this.f521d = null;
            this.f522e.setOnClickListener(null);
            this.f522e = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
