package com.comeback.data.ui.gdian;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.ActivityOptionsCompat;
import androidx.core.content.ContextCompat;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.gdian.adapter.ChapterAdapter;
import com.comeback.data.ui.gdian.bean.ChapterList;
import com.comeback.data.ui.gdian.bean.NovelList;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.m.e.b;
import java.util.HashMap;
/* loaded from: classes.dex */
public class NovelActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public NovelList.NovelEntity f879d;
    @BindView
    public RatioImageView ivImg;
    @BindView
    public TextView tvAuthor;
    @BindView
    public TextView tvDesc;
    @BindView
    public TextView tvState;
    @BindView
    public TextView tvTitle;
    @BindView
    public TextView tvUpdate;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<ChapterList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f880f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f880f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ChapterList chapterList = (ChapterList) obj;
            TextView textView = NovelActivity.this.tvState;
            textView.setText(e.a("0ufSi9f7") + chapterList.getData().getPages().getList_count() + e.a("2N7qg8DT"));
            if (this.f880f == 1) {
                NovelActivity.this.f114c.c();
            }
            NovelActivity.this.f114c.a(chapterList.getData().getList());
        }
    }

    public static void r(Context context, ImageView imageView, NovelList.NovelEntity novelEntity) {
        ActivityOptionsCompat makeSceneTransitionAnimation = ActivityOptionsCompat.makeSceneTransitionAnimation((Activity) context, imageView, e.a("fg8CAw47XFIXA0Y="));
        Intent intent = new Intent(context, NovelActivity.class);
        intent.putExtra(e.a("XgwFCw=="), novelEntity);
        ContextCompat.startActivity(context, intent, makeSceneTransitionAnimation.toBundle());
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f879d = (NovelList.NovelEntity) intent.getParcelableExtra(e.a("XgwFCw=="));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_gdian_novel;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        super.e();
        j(-1);
        h.u0(this.f879d.getFiction_cover(), this.ivImg);
        this.tvTitle.setText(this.f879d.getFiction_name());
        TextView textView = this.tvAuthor;
        textView.setText(e.a("09//jOv21o/p") + this.f879d.getFiction_author());
        TextView textView2 = this.tvUpdate;
        textView2.setText(e.a("0fnXgv3D36TFj6PTl9b5") + h.g0(this.f879d.getPush_time()));
        this.tvDesc.setText(this.f879d.getIntroduction());
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new ChapterAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        b a2 = f.e.a.j.m.e.e.a();
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(e.a("UQsAEAIcV2waAg=="), String.valueOf(this.f879d.getFiction_id()));
        hashMap.put(f.b.a.a.a.i("BVI=", hashMap, f.b.a.a.a.G(i2, hashMap, e.a("RwMEAQ=="), "WRcO"), "RA0REDQAWg=="), e.a("UwcQBw=="));
        k(a2.g(hashMap), new a(i2));
    }
}
