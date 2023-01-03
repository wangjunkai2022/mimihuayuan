package com.comeback.data.ui.km2;

import android.view.View;
import android.widget.RadioGroup;
import butterknife.BindView;
import butterknife.OnClick;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.ui.km2.MineFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.k.j;

/* loaded from: classes.dex */
public class MineFragment extends BaseFragment {

    /* renamed from: j  reason: collision with root package name */
    public static final String f1337j = e.a("XA9ROx0aSWwDClUe");

    /* renamed from: k  reason: collision with root package name */
    public static final String f1338k = e.a("XA9ROwMcSkdB");

    /* renamed from: g  reason: collision with root package name */
    public RadioGroup.OnCheckedChangeListener f1339g = f.e.a.j.x.e.a;

    /* renamed from: h  reason: collision with root package name */
    public boolean f1340h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f1341i;
    @BindView
    public RadioGroup radioGroupHost;
    @BindView
    public RadioGroup radioGroupPlay;

    public static /* synthetic */ void h(RadioGroup radioGroup, int i2) {
        switch (i2) {
            case R.id.radio_host1 /* 2131296680 */:
                j.b().f(f1338k, false);
                h.n1(e.a("0urkgubR37vjg774l9bvgrDvhfLbm4aoluORBggaQ4yj/YXx4w=="));
                return;
            case R.id.radio_host2 /* 2131296681 */:
                j.b().f(f1338k, true);
                h.n1(e.a("0urkgubR37vjg774l9bvgrDvhfLbm4aoluORBggaQ4yj/YXx4w=="));
                return;
            case R.id.radio_play1 /* 2131296694 */:
                j.b().f(f1337j, false);
                VideoPlayActivity.f1362f = false;
                h.n1(e.a("0urkgubR37vjg774"));
                return;
            case R.id.radio_play2 /* 2131296695 */:
                j.b().f(f1337j, true);
                VideoPlayActivity.f1362f = true;
                h.n1(e.a("0urkgubR37vjg774"));
                return;
            default:
                return;
        }
    }

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_km2_mine;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
        this.radioGroupPlay.postDelayed(new Runnable() { // from class: f.e.a.j.x.d
            @Override // java.lang.Runnable
            public final void run() {
                MineFragment.this.i();
            }
        }, 200L);
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
        this.f1340h = j.b().a(f1337j);
        this.f1341i = j.b().a(f1338k);
        VideoPlayActivity.f1362f = this.f1340h;
    }

    public /* synthetic */ void i() {
        this.radioGroupPlay.check(this.f1340h ? R.id.radio_play2 : R.id.radio_play1);
        this.radioGroupHost.check(this.f1341i ? R.id.radio_host2 : R.id.radio_host1);
        this.radioGroupPlay.setOnCheckedChangeListener(this.f1339g);
        this.radioGroupHost.setOnCheckedChangeListener(this.f1339g);
    }

    @OnClick
    public void onViewClicked(View view) {
        int id = view.getId();
        if (id == R.id.ll_collect) {
            CollectListActivity.r(getContext());
        } else if (id != R.id.ll_star) {
        } else {
            FollowListActivity.r(getContext());
        }
    }
}
