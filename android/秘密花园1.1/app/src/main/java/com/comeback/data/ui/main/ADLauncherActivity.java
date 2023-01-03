package com.comeback.data.ui.main;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.main.bean.AD;
import com.comeback.secret.garden.R;
import f.e.a.e;

/* loaded from: classes.dex */
public class ADLauncherActivity extends BaseActivity {
    public AD b;

    /* renamed from: c  reason: collision with root package name */
    public int f1452c = 6;

    /* renamed from: d  reason: collision with root package name */
    public Runnable f1453d = new a();

    /* renamed from: e  reason: collision with root package name */
    public boolean f1454e;
    @BindView
    public ImageView ivCover;
    @BindView
    public TextView tvCount;

    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ADLauncherActivity aDLauncherActivity = ADLauncherActivity.this;
            int i2 = aDLauncherActivity.f1452c;
            int i3 = i2 - 1;
            aDLauncherActivity.f1452c = i3;
            if (i2 > 3) {
                aDLauncherActivity.tvCount.setText(String.valueOf(i3));
                ADLauncherActivity aDLauncherActivity2 = ADLauncherActivity.this;
                aDLauncherActivity2.tvCount.postDelayed(aDLauncherActivity2.f1453d, 1000L);
                return;
            }
            aDLauncherActivity.f1452c = i3 - 1;
            if (i3 >= 0) {
                aDLauncherActivity.tvCount.setText(e.a("39XQjNT0"));
                ADLauncherActivity.this.tvCount.setClickable(true);
                ADLauncherActivity aDLauncherActivity3 = ADLauncherActivity.this;
                aDLauncherActivity3.tvCount.postDelayed(aDLauncherActivity3.f1453d, 1000L);
            } else if (aDLauncherActivity != null) {
                MainActivity.u(aDLauncherActivity);
                aDLauncherActivity.finish();
            } else {
                throw null;
            }
        }
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = (AD) intent.getParcelableExtra(e.a("VgY="));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_main_ad;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        i();
        h.u0(this.b.getImage(), this.ivCover);
        this.tvCount.setClickable(false);
        this.tvCount.postDelayed(this.f1453d, 150L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.tvCount.removeCallbacks(this.f1453d);
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f1454e) {
            MainActivity.u(this);
            finish();
        }
    }

    @OnClick
    public void onViewClicked(View view) {
        int id = view.getId();
        if (id != R.id.iv_cover) {
            if (id != R.id.tv_count) {
                return;
            }
            MainActivity.u(this);
            finish();
            return;
        }
        this.tvCount.removeCallbacks(this.f1453d);
        try {
            startActivity(new Intent(e.a("VgwHFgQaXR0aCEACFh5NClQWCgsFXW96NjE="), Uri.parse(this.b.getTargetUrl())));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.f1454e = true;
    }
}
