package com.comeback.data.ui.jhlf;

import android.content.Context;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.jhlf.adapter.AdAdapter2;
import com.comeback.secret.garden.R;
import f.b.a.a.a;
/* loaded from: classes.dex */
public class DownloadActivity extends BaseActivity {
    @BindView
    public RecyclerView rvList;

    public static void l(Context context) {
        a.u(context, DownloadActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.actiivty_jhlf_down;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        this.rvList.setLayoutManager(new LinearLayoutManager(this));
        AdAdapter2 adAdapter2 = new AdAdapter2(this);
        this.rvList.setAdapter(adAdapter2);
        adAdapter2.a(JHLFActivity.b);
    }
}
