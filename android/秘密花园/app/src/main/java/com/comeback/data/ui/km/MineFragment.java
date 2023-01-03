package com.comeback.data.ui.km;

import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.ui.km.MineFragment;
import com.comeback.data.ui.km.bean.Video;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.w.b;
import f.e.a.k.j;

/* loaded from: classes.dex */
public class MineFragment extends BaseFragment {

    /* renamed from: i  reason: collision with root package name */
    public static final String f1284i = e.a("XA88DAQATQ==");

    /* renamed from: j  reason: collision with root package name */
    public static final String f1285j = e.a("XA88DRs=");
    @BindView
    public EditText etCurrent;

    /* renamed from: g  reason: collision with root package name */
    public int f1286g;

    /* renamed from: h  reason: collision with root package name */
    public RadioGroup.OnCheckedChangeListener f1287h = b.a;
    @BindView
    public RadioGroup radioGroupHost;
    @BindView
    public TextView tvAll;

    public static /* synthetic */ void h(RadioGroup radioGroup, int i2) {
        switch (i2) {
            case R.id.radio_host1 /* 2131296680 */:
                j.b().g(f1284i, 0);
                break;
            case R.id.radio_host2 /* 2131296681 */:
                j.b().g(f1284i, 1);
                break;
            case R.id.radio_host3 /* 2131296682 */:
                j.b().g(f1284i, 2);
                break;
            case R.id.radio_host4 /* 2131296683 */:
                j.b().g(f1284i, 3);
                break;
            case R.id.radio_host5 /* 2131296684 */:
                j.b().g(f1284i, 4);
                break;
        }
        h.n1(e.a("0urkgubR37vjg774l9bvgrDvhfLbm4aoluORBggaQ4yj/YXx4w=="));
    }

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_km_mine;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
        this.radioGroupHost.postDelayed(new Runnable() { // from class: f.e.a.j.w.c
            @Override // java.lang.Runnable
            public final void run() {
                MineFragment.this.i();
            }
        }, 200);
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
        this.f1286g = j.b().c(f1284i);
        EditText editText = this.etCurrent;
        editText.setHint(e.a("0t/wgeL+36HegKDZkODhjLXbWQ==") + Video.targetUrl);
        TextView textView = this.tvAll;
        textView.setText(Video.targetUrlDetail + e.a("PWiG68SarIyV6r2C3OeG44E+DYHN8d+t74Cmyp7+3Y6T04vQzpyFv5vJg4//wIvKu4fT+YPcrNfMyNLzwYz/5tLowoHy2w=="));
    }

    public /* synthetic */ void i() {
        int i2 = this.f1286g;
        if (i2 == 0) {
            this.radioGroupHost.check(R.id.radio_host1);
        } else if (i2 == 1) {
            this.radioGroupHost.check(R.id.radio_host2);
        } else if (i2 == 2) {
            this.radioGroupHost.check(R.id.radio_host3);
        } else if (i2 == 3) {
            this.radioGroupHost.check(R.id.radio_host4);
        } else if (i2 == 4) {
            this.radioGroupHost.check(R.id.radio_host5);
        }
        this.radioGroupHost.setOnCheckedChangeListener(this.f1287h);
    }

    @OnClick
    public void onViewClicked(View view) {
        int id = view.getId();
        if (id == R.id.ll_collect) {
            CollectListActivity.r(getContext());
        } else if (id == R.id.ll_star) {
            FollowListActivity.r(getContext());
        } else if (id == R.id.tv_change) {
            String trim = this.etCurrent.getText().toString().trim();
            if (TextUtils.isEmpty(trim)) {
                h.n1(e.a("09rujOjO3YvJgZ3d"));
            } else if (!Video.targetUrlDetail.contains(trim)) {
                h.n1(e.a("0u3JjOjO0Z3NgYnJnNLojr/1huPLl4GZlfq5gvLLhvKf"));
            } else {
                j.b().h(f1285j, trim);
                Video.targetUrl = trim;
                this.etCurrent.setText("");
                EditText editText = this.etCurrent;
                editText.setHint(e.a("0t/wgeL+36HegKDZkODhjLXbWQ==") + Video.targetUrl);
                h.n1(e.a("0urkgubR37vjg774"));
            }
        }
    }
}
