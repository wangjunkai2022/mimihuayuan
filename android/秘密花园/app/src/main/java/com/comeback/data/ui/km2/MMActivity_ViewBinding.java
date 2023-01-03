package com.comeback.data.ui.km2;

import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class MMActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public MMActivity f1330c;

    /* renamed from: d  reason: collision with root package name */
    public View f1331d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ MMActivity f1332c;

        public a(MMActivity_ViewBinding mMActivity_ViewBinding, MMActivity mMActivity) {
            this.f1332c = mMActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            MMActivity mMActivity = this.f1332c;
            if (mMActivity != null) {
                mMActivity.startActivityForResult(new Intent(mMActivity, AreaChooseActivity.class), 100);
                return;
            }
            throw null;
        }
    }

    @UiThread
    public MMActivity_ViewBinding(MMActivity mMActivity, View view) {
        super(mMActivity, view);
        this.f1330c = mMActivity;
        mMActivity.tvArea = (TextView) c.c(view, R.id.tv_area, e.a("UQsGCA9THkcFJ0YCGU0="), TextView.class);
        View b = c.b(view, R.id.ll_area, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f1331d = b;
        b.setOnClickListener(new a(this, mMActivity));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        MMActivity mMActivity = this.f1330c;
        if (mMActivity != null) {
            this.f1330c = null;
            mMActivity.tvArea = null;
            this.f1331d.setOnClickListener(null);
            this.f1331d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
