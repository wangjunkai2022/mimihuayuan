package com.comeback.data.ui.gdian;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.Html;
import android.widget.TextView;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.gdian.bean.Novel;
import com.comeback.secret.garden.R;
import f.e.a.e;
import m.j;

/* loaded from: classes.dex */
public class NovelReadActivity extends BaseActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public String f806c;
    @BindView
    public TextView tvDetail;
    @BindView
    public TextView tvName;

    /* loaded from: classes.dex */
    public class a extends j<Novel> {
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
        public void f(Novel novel) {
            Novel novel2 = novel;
            if (Build.VERSION.SDK_INT >= 24) {
                NovelReadActivity.this.tvDetail.setText(Html.fromHtml(novel2.getData().getChapter_content(), 0));
            } else {
                NovelReadActivity.this.tvDetail.setText(Html.fromHtml(novel2.getData().getChapter_content()));
            }
        }
    }

    public static void l(Context context, String str, String str2) {
        Intent intent = new Intent(context, NovelReadActivity.class);
        intent.putExtra(e.a("QwsXCA4="), str);
        intent.putExtra(e.a("QhAP"), str2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("QwsXCA4="));
        this.f806c = intent.getStringExtra(e.a("QhAP"));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_gdian_novel_read;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        this.tvName.setText(this.b);
        k(f.e.a.j.l.e.e.a().f(this.f806c), new a());
    }
}
