package com.comeback.data.ui.xiami;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.Html;
import android.widget.TextView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.xiami.bean.NovelDetail;
import com.comeback.data.ui.xiami.bean.NovelList;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.p0.f.b;
import f.e.a.j.p0.f.d;
import java.util.HashMap;
import m.j;

/* loaded from: classes.dex */
public class NovelReadActivity extends BaseActivity {
    public NovelList.DataBean b;
    @BindView
    public TextView tvCount;
    @BindView
    public TextView tvDetail;
    @BindView
    public TextView tvTime;
    @BindView
    public TextView tvTitle;
    @BindView
    public TextView tvType;

    /* loaded from: classes.dex */
    public class a extends j<NovelDetail> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // m.j
        public void f(NovelDetail novelDetail) {
            NovelDetail novelDetail2 = novelDetail;
            NovelReadActivity novelReadActivity = NovelReadActivity.this;
            if (Build.VERSION.SDK_INT >= 24) {
                novelReadActivity.tvDetail.setText(Html.fromHtml(novelDetail2.getData().getContent(), 0));
            } else {
                novelReadActivity.tvDetail.setText(Html.fromHtml(novelDetail2.getData().getContent()));
            }
        }
    }

    public static void l(Context context, NovelList.DataBean dataBean) {
        Intent intent = new Intent(context, NovelReadActivity.class);
        intent.putExtra(e.a("UwMXBQ=="), dataBean);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = (NovelList.DataBean) intent.getParcelableExtra(e.a("UwMXBQ=="));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_xm_novel;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        b a2 = d.a();
        HashMap hashMap = new HashMap();
        hashMap.put(e.a("UQsAEAIcV3oX"), this.b.getFictionId());
        hashMap.put(e.a("VAoCCgUWVQ=="), e.a("QAcBOwQVX1oQD1UL"));
        k(a2.d(hashMap), new a());
        this.tvTitle.setText(this.b.getTitle());
        TextView textView = this.tvType;
        textView.setText(e.a("09//jOv21o/p") + this.b.getAuthor());
        TextView textView2 = this.tvCount;
        textView2.setText(e.a("0NPYgfX41o/p") + this.b.getCategoryTitle());
        TextView textView3 = this.tvTime;
        textView3.setText(e.a("0fXVjfzH1o/p") + h.O0(this.b.getAddTime()));
    }
}
