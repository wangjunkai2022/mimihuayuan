package com.comeback.data.ui.hm.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import butterknife.Unbinder;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.hm.NovelReadActivity;
import com.comeback.data.ui.hm.bean.ChapterInfo;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.q.f.a;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ChapterAdapter extends BaseAbstractAdapter<ChapterInfo.Chapter> {

    /* loaded from: classes.dex */
    public static class HomeListHolder extends BaseViewHolder<ChapterInfo.Chapter> {
        public ChapterAdapter a;
        public ChapterInfo.Chapter b;
        @BindView
        public TextView tvTag1;
        @BindView
        public TextView tvTag2;
        @BindView
        public TextView tvTag3;
        @BindView
        public TextView tvTag4;
        @BindView
        public TextView tvTitle;

        public HomeListHolder(View view, ChapterAdapter chapterAdapter) {
            super(view);
            this.a = chapterAdapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(ChapterInfo.Chapter chapter) {
            ChapterInfo.Chapter chapter2 = chapter;
            this.b = chapter2;
            this.tvTitle.setText(chapter2.getName());
            ArrayList<ChapterInfo.Chapter.Line> lines = chapter2.getLines();
            this.tvTag4.setVisibility(8);
            this.tvTag3.setVisibility(8);
            this.tvTag2.setVisibility(8);
            this.tvTag1.setVisibility(8);
            switch (lines.size()) {
                case 1:
                    break;
                case 4:
                case 5:
                case 6:
                case 7:
                    this.tvTag4.setText(lines.get(3).getName());
                    this.tvTag4.setVisibility(0);
                case 3:
                    this.tvTag3.setText(lines.get(2).getName());
                    this.tvTag3.setVisibility(0);
                case 2:
                    this.tvTag2.setText(lines.get(1).getName());
                    this.tvTag2.setVisibility(0);
                    break;
                default:
                    return;
            }
            this.tvTag1.setText(lines.get(0).getName());
            this.tvTag1.setVisibility(0);
        }

        @OnClick
        public void onClick(View view) {
            int i2 = 0;
            switch (view.getId()) {
                case R.id.tv_tag2 /* 2131297048 */:
                    i2 = 1;
                    break;
                case R.id.tv_tag3 /* 2131297049 */:
                    i2 = 2;
                    break;
                case R.id.tv_tag4 /* 2131297050 */:
                    i2 = 3;
                    break;
            }
            ChapterInfo.Chapter.Line line = this.b.getLines().get(i2);
            boolean isEmpty = TextUtils.isEmpty(a.b);
            StringBuilder sb = new StringBuilder();
            sb.append(isEmpty ? a.a : a.b);
            sb.append(e.a("GBIPBRJMVVodDX0DRQ==") + line.getLinkId());
            sb.append(e.a("EQAMCwA6XQ4=") + line.getBookId());
            sb.append(e.a("ERICEANO") + line.getPath());
            sb.append(e.a("EQkGHVY=") + line.getKey());
            NovelReadActivity.l(this.a.a, this.b.getName(), sb.toString());
        }
    }

    /* loaded from: classes.dex */
    public class HomeListHolder_ViewBinding implements Unbinder {
        public HomeListHolder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1053c;

        /* renamed from: d  reason: collision with root package name */
        public View f1054d;

        /* renamed from: e  reason: collision with root package name */
        public View f1055e;

        /* renamed from: f  reason: collision with root package name */
        public View f1056f;

        /* compiled from: ChapterAdapter$HomeListHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HomeListHolder f1057c;

            public a(HomeListHolder_ViewBinding homeListHolder_ViewBinding, HomeListHolder homeListHolder) {
                this.f1057c = homeListHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f1057c.onClick(view);
            }
        }

        /* compiled from: ChapterAdapter$HomeListHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class b extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HomeListHolder f1058c;

            public b(HomeListHolder_ViewBinding homeListHolder_ViewBinding, HomeListHolder homeListHolder) {
                this.f1058c = homeListHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f1058c.onClick(view);
            }
        }

        /* compiled from: ChapterAdapter$HomeListHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class c extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HomeListHolder f1059c;

            public c(HomeListHolder_ViewBinding homeListHolder_ViewBinding, HomeListHolder homeListHolder) {
                this.f1059c = homeListHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f1059c.onClick(view);
            }
        }

        /* compiled from: ChapterAdapter$HomeListHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class d extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HomeListHolder f1060c;

            public d(HomeListHolder_ViewBinding homeListHolder_ViewBinding, HomeListHolder homeListHolder) {
                this.f1060c = homeListHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f1060c.onClick(view);
            }
        }

        @UiThread
        public HomeListHolder_ViewBinding(HomeListHolder homeListHolder, View view) {
            this.b = homeListHolder;
            homeListHolder.tvTitle = (TextView) d.c.c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            View b2 = d.c.c.b(view, R.id.tv_tag1, e.a("UQsGCA9THkcFMlUASU1DClkGQwkOB1FcF0YTCBYpDwJUCUQ="));
            homeListHolder.tvTag1 = (TextView) d.c.c.a(b2, R.id.tv_tag1, e.a("UQsGCA9THkcFMlUASU0="), TextView.class);
            this.f1053c = b2;
            b2.setOnClickListener(new a(this, homeListHolder));
            View b3 = d.c.c.b(view, R.id.tv_tag2, e.a("UQsGCA9THkcFMlUASk1DClkGQwkOB1FcF0YTCBYpDwJUCUQ="));
            homeListHolder.tvTag2 = (TextView) d.c.c.a(b3, R.id.tv_tag2, e.a("UQsGCA9THkcFMlUASk0="), TextView.class);
            this.f1054d = b3;
            b3.setOnClickListener(new b(this, homeListHolder));
            View b4 = d.c.c.b(view, R.id.tv_tag3, e.a("UQsGCA9THkcFMlUAS01DClkGQwkOB1FcF0YTCBYpDwJUCUQ="));
            homeListHolder.tvTag3 = (TextView) d.c.c.a(b4, R.id.tv_tag3, e.a("UQsGCA9THkcFMlUAS00="), TextView.class);
            this.f1055e = b4;
            b4.setOnClickListener(new c(this, homeListHolder));
            View b5 = d.c.c.b(view, R.id.tv_tag4, e.a("UQsGCA9THkcFMlUATE1DClkGQwkOB1FcF0YTCBYpDwJUCUQ="));
            homeListHolder.tvTag4 = (TextView) d.c.c.a(b5, R.id.tv_tag4, e.a("UQsGCA9THkcFMlUATE0="), TextView.class);
            this.f1056f = b5;
            b5.setOnClickListener(new d(this, homeListHolder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            HomeListHolder homeListHolder = this.b;
            if (homeListHolder != null) {
                this.b = null;
                homeListHolder.tvTitle = null;
                homeListHolder.tvTag1 = null;
                homeListHolder.tvTag2 = null;
                homeListHolder.tvTag3 = null;
                homeListHolder.tvTag4 = null;
                this.f1053c.setOnClickListener(null);
                this.f1053c = null;
                this.f1054d.setOnClickListener(null);
                this.f1054d = null;
                this.f1055e.setOnClickListener(null);
                this.f1055e = null;
                this.f1056f.setOnClickListener(null);
                this.f1056f = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public ChapterAdapter(Context context) {
        super(context);
    }

    /* JADX WARN: Incorrect args count in method signature: (Landroid/view/ViewGroup;I)Lcom/comeback/data/base/BaseViewHolder<Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter;>; */
    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new HomeListHolder(this.f107c.inflate(R.layout.item_hm_chapter, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
