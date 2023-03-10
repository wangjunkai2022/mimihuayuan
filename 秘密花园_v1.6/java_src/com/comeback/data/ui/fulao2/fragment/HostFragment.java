package com.comeback.data.ui.fulao2.fragment;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import butterknife.BindView;
import butterknife.OnClick;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.ui.fulao2.bean.Host;
import com.comeback.data.ui.fulao2.bean.VideoInfo;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.l.g.a;
import f.e.a.j.l.g.c;
import f.e.a.j.l.g.d;
import f.e.a.j.l.h.f;
import f.e.a.k.b;
import f.e.a.k.j;
/* loaded from: classes.dex */
public class HostFragment extends BaseFragment {

    /* renamed from: h  reason: collision with root package name */
    public static String f827h = e.a("UQ5ROwgcV1UaAQ==");

    /* renamed from: i  reason: collision with root package name */
    public static String f828i = e.a("UQ5ROwgcV1UaAWsOFQsEDg==");

    /* renamed from: j  reason: collision with root package name */
    public static String f829j = e.a("UQ5ROwgcV1UaAWsUDBgGClpQ");

    /* renamed from: k  reason: collision with root package name */
    public static String f830k = e.a("UQ5ROwgcV1UaAWsPFxkX");

    /* renamed from: g  reason: collision with root package name */
    public Host f831g;
    @BindView
    public TextView tvHost;
    @BindView
    public TextView tvImage;
    @BindView
    public TextView tvStream;

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_fulao2_host;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
        String d2 = j.b().d(f827h);
        if (TextUtils.isEmpty(d2)) {
            d2 = e.a("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");
        }
        this.f831g = (Host) new f.i.b.j().d(d2, Host.class);
        this.tvHost.setText(j.b().e(f830k, b.y));
        this.tvImage.setText(j.b().e(f828i, b.z));
        this.tvStream.setText(j.b().e(f829j, VideoInfo.StreamHost));
    }

    @OnClick
    public void onViewClicked(View view) {
        m.e<Host> k2;
        switch (view.getId()) {
            case R.id.tv_host_change /* 2131296968 */:
                new AlertDialog.Builder(getContext()).setSingleChoiceItems(this.f831g.getApiString(), -1, new a(this)).show();
                return;
            case R.id.tv_image_change /* 2131296972 */:
                new AlertDialog.Builder(getContext()).setSingleChoiceItems(this.f831g.getImageString(), -1, new f.e.a.j.l.g.b(this)).show();
                return;
            case R.id.tv_refresh /* 2131297028 */:
                long currentTimeMillis = System.currentTimeMillis() % 3;
                if (currentTimeMillis == 0) {
                    k2 = f.b().b();
                } else if (currentTimeMillis == 1) {
                    k2 = f.b().m();
                } else {
                    k2 = f.b().k();
                }
                g(k2, new d(this));
                return;
            case R.id.tv_stream_change /* 2131297054 */:
                new AlertDialog.Builder(getContext()).setSingleChoiceItems(this.f831g.getStreamString(), -1, new c(this)).show();
                return;
            default:
                return;
        }
    }
}
