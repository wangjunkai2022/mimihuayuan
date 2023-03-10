package com.comeback.data.base;

import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.secret.garden.R;
import g.a.g0;
import g.a.j0;
import java.util.ArrayList;
/* loaded from: classes.dex */
public abstract class BaseRealmListActivity<T extends g0> extends BaseActivity {
    @BindView
    public RecyclerView rvList;
    @BindView
    public TextView tvHint;
    @BindView
    public TextView tvTitle;

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_base_realm;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j0<T> o = o();
        this.tvHint.setVisibility(o.size() == 0 ? 0 : 8);
        this.tvTitle.setText(n());
        this.rvList.setLayoutManager(m());
        BaseAbstractAdapter<T> l2 = l();
        this.rvList.setAdapter(l2);
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < o.size(); i2++) {
            arrayList.add(o.get(i2));
        }
        l2.a(arrayList);
    }

    public abstract BaseAbstractAdapter<T> l();

    public RecyclerView.LayoutManager m() {
        return new LinearLayoutManager(this);
    }

    public abstract String n();

    public abstract j0<T> o();
}
