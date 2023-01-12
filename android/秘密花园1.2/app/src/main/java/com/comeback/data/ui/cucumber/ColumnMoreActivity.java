package com.comeback.data.ui.cucumber;

import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.cucumber.adapter.ColumnList2Adapter;
import com.comeback.data.ui.cucumber.bean.Column;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ColumnMoreActivity extends BaseActivity {
    public List<Column.DataBean.SubclassBean> b;

    /* renamed from: c  reason: collision with root package name */
    public String f412c;
    @BindView
    public RecyclerView rvList;
    @BindView
    public TextView tvTitle;

    public static void l(Context context, String str, List<Column.DataBean.SubclassBean> list) {
        Intent intent = new Intent(context, ColumnMoreActivity.class);
        intent.putExtra(e.a("WQMOAQ=="), str);
        intent.putParcelableArrayListExtra(e.a("WwsQEA=="), (ArrayList) list);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getParcelableArrayListExtra(e.a("WwsQEA=="));
        this.f412c = intent.getStringExtra(e.a("WQMOAQ=="));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_cucumber_column_more;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        this.tvTitle.setText(this.f412c);
        this.rvList.setPadding(6, 0, 6, 0);
        this.rvList.setLayoutManager(new GridLayoutManager(this, 4));
        ColumnList2Adapter columnList2Adapter = new ColumnList2Adapter(this);
        this.rvList.setAdapter(columnList2Adapter);
        columnList2Adapter.a(this.b);
    }
}
