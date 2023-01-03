package com.comeback.data.ui.gkj;

import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.gkj.adapter.PicAdapter;
import com.comeback.data.ui.gkj.bean.ComicList;
import com.comeback.data.ui.gkj.bean.ComicRead;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.m.l;
import m.j;

/* loaded from: classes.dex */
public class CgReadActivity extends BaseActivity {
    public ComicList.ListsBean.DataBean b;

    /* renamed from: c  reason: collision with root package name */
    public PicAdapter f844c;
    @BindView
    public RecyclerView rvList;
    @BindView
    public TextView tvTime;
    @BindView
    public TextView tvTitle;

    /* loaded from: classes.dex */
    public class a extends j<ComicRead> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(ComicRead comicRead) {
            CgReadActivity cgReadActivity = CgReadActivity.this;
            PicAdapter picAdapter = cgReadActivity.f844c;
            if (picAdapter == null) {
                cgReadActivity.f844c = new PicAdapter(cgReadActivity);
                CgReadActivity cgReadActivity2 = CgReadActivity.this;
                cgReadActivity2.rvList.setLayoutManager(new LinearLayoutManager(cgReadActivity2));
                CgReadActivity.this.rvList.addItemDecoration(new l(this));
                CgReadActivity cgReadActivity3 = CgReadActivity.this;
                cgReadActivity3.rvList.setAdapter(cgReadActivity3.f844c);
                return;
            }
            picAdapter.c();
        }
    }

    public static void l(Context context, ComicList.ListsBean.DataBean dataBean) {
        Intent intent = new Intent(context, CgReadActivity.class);
        intent.putExtra(e.a("XgwFCw=="), dataBean);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = (ComicList.ListsBean.DataBean) intent.getParcelableExtra(e.a("XgwFCw=="));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_gkj_read2;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        this.tvTitle.setText(this.b.getTitle());
        TextView textView = this.tvTime;
        textView.setText(e.a("0u3ygdPw36TFj6PTl9b5") + this.b.getUpdate());
        k(f.e.a.j.m.p.e.b().l(0, ""), new a());
    }
}
