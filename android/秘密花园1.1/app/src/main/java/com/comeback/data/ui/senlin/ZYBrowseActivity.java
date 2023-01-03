package com.comeback.data.ui.senlin;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import butterknife.OnClick;
import com.comeback.data.base.BaseActivity;
import com.comeback.secret.garden.R;
import f.b.a.a.a;
import f.e.a.e;
import f.e.a.j.i0.d;
import f.e.a.k.j;

/* loaded from: classes.dex */
public class ZYBrowseActivity extends BaseActivity {
    public static void l(Context context) {
        a.u(context, ZYBrowseActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_senlin_browser;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        j b = j.b();
        if (b.a.getBoolean(e.a("RAcNCAIdZkcaFkc="), false)) {
            return;
        }
        j.b().f(e.a("RAcNCAIdZkcaFkc="), true);
        View inflate = View.inflate(this, R.layout.dialog_update, null);
        AlertDialog create = new AlertDialog.Builder(this).setView(inflate).setCancelable(false).create();
        TextView textView = (TextView) inflate.findViewById(R.id.tv_confirm);
        View findViewById = inflate.findViewById(R.id.view_divide);
        textView.setText(e.a("0P3Gjerg3Yn1"));
        textView.setOnClickListener(new d(this, create));
        findViewById.setVisibility(8);
        ((TextView) inflate.findViewById(R.id.tv_cancel)).setVisibility(8);
        ((TextView) inflate.findViewById(R.id.tv_title)).setText(e.a("0drKjc3b37zjgZDd"));
        ((TextView) inflate.findViewById(R.id.tv_message)).setText(e.a("0f7qg//G3I7CSdPZ9o/qzBiF2NiD+oMcmvmdgvHNive3hNLmjOm91OfO0u/Pj+zE09nGgffb0Yzqj7Prnvr/jIPAhPDeloSCkOa2bZ3xw4+P2IX8xJq+tJr9soDT84Txs4rW4I3JqdXBx9Hm4o/r7dDT2IvX/9+92465953OxI6Z1ITww5Wpr5TSloLy9YvoioT8wY36h9v0zNHQyYzg2ND+6IPx996nxoOJ1nKO2+bS8u+D8ffemOqBtt6d+e6OjfaK5PSWg5WX3rmC6OaM17uKzNOO157W3dDc4NKCwufR1+iMxOY="));
        create.show();
    }

    @OnClick
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.rl_ab /* 2131296737 */:
                SenLinActivity.f1817h = e.a("XxYXFBhJFhwQDBoGCAMCCU0bTQcEHg==");
                break;
            case R.id.rl_ikun /* 2131296740 */:
                SenLinActivity.f1817h = e.a("XxYXFBhJFhwaDUEJAhMCG15MAAsG");
                break;
            case R.id.rl_kd /* 2131296741 */:
                SenLinActivity.f1817h = e.a("XxYXFBhJFhwYE1AOGQRSWxkBDAk=");
                break;
            case R.id.rl_ly /* 2131296742 */:
                SenLinActivity.f1817h = e.a("XxYXFBhJFhwSFl1JGRoKB04YGkoIHFQc");
                break;
            case R.id.rl_lz /* 2131296743 */:
                SenLinActivity.f1817h = e.a("XxYXFBhJFhwQDBoLAgMCG15MAAsG");
                break;
            case R.id.rl_senlin /* 2131296746 */:
                SenLinActivity.f1817h = e.a("XxYXFBhJFhwAClUXEQgFRVQNDg==");
                break;
            case R.id.rl_sky /* 2131296747 */:
                SenLinActivity.f1817h = e.a("XxYXFBhJFhwSFl1JDAMCBVwNDQMKA1AdEAlZ");
                break;
            case R.id.rl_tk /* 2131296750 */:
                SenLinActivity.f1817h = e.a("XxYXFBhJFhwHB1oAExAaRVQNDg==");
                break;
            case R.id.rl_tom /* 2131296751 */:
                SenLinActivity.f1817h = e.a("XxYXFBhJFhwSFl1JDAUOCFYLCQ1FEFZe");
                break;
        }
        SenLinActivity.v(this);
    }
}
