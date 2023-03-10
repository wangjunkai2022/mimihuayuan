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
import f.e.a.j.r.f.a;
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
        public TextView tvTag5;
        @BindView
        public TextView tvTitle;

        public HomeListHolder(View view, ChapterAdapter chapterAdapter) {
            super(view);
            this.a = chapterAdapter;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(ChapterInfo.Chapter chapter) {
            ChapterInfo.Chapter chapter2 = chapter;
            this.b = chapter2;
            this.tvTitle.setText(chapter2.getName());
            ArrayList<ChapterInfo.Chapter.Line> lines = chapter2.getLines();
            this.tvTag5.setVisibility(8);
            this.tvTag4.setVisibility(8);
            this.tvTag3.setVisibility(8);
            this.tvTag2.setVisibility(8);
            this.tvTag1.setVisibility(8);
            switch (lines.size()) {
                case 1:
                    break;
                case 2:
                    this.tvTag2.setText(lines.get(1).getName());
                    this.tvTag2.setVisibility(0);
                    break;
                case 3:
                    this.tvTag3.setText(lines.get(2).getName());
                    this.tvTag3.setVisibility(0);
                    this.tvTag2.setText(lines.get(1).getName());
                    this.tvTag2.setVisibility(0);
                    break;
                case 4:
                    this.tvTag4.setText(lines.get(3).getName());
                    this.tvTag4.setVisibility(0);
                    this.tvTag3.setText(lines.get(2).getName());
                    this.tvTag3.setVisibility(0);
                    this.tvTag2.setText(lines.get(1).getName());
                    this.tvTag2.setVisibility(0);
                    break;
                case 5:
                case 6:
                case 7:
                    this.tvTag5.setText(lines.get(4).getName());
                    this.tvTag5.setVisibility(0);
                    this.tvTag4.setText(lines.get(3).getName());
                    this.tvTag4.setVisibility(0);
                    this.tvTag3.setText(lines.get(2).getName());
                    this.tvTag3.setVisibility(0);
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
                case R.id.tv_tag2 /* 2131297058 */:
                    i2 = 1;
                    break;
                case R.id.tv_tag3 /* 2131297059 */:
                    i2 = 2;
                    break;
                case R.id.tv_tag4 /* 2131297060 */:
                    i2 = 3;
                    break;
                case R.id.tv_tag5 /* 2131297061 */:
                    i2 = 4;
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
        public View f1130c;

        /* renamed from: d  reason: collision with root package name */
        public View f1131d;

        /* renamed from: e  reason: collision with root package name */
        public View f1132e;

        /* renamed from: f  reason: collision with root package name */
        public View f1133f;

        /* renamed from: g  reason: collision with root package name */
        public View f1134g;

        /* compiled from: ChapterAdapter$HomeListHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HomeListHolder f1135c;

            public a(HomeListHolder_ViewBinding homeListHolder_ViewBinding, HomeListHolder homeListHolder) {
                this.f1135c = homeListHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f1135c.onClick(view);
            }
        }

        /* compiled from: ChapterAdapter$HomeListHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class b extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HomeListHolder f1136c;

            public b(HomeListHolder_ViewBinding homeListHolder_ViewBinding, HomeListHolder homeListHolder) {
                this.f1136c = homeListHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f1136c.onClick(view);
            }
        }

        /* compiled from: ChapterAdapter$HomeListHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class c extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HomeListHolder f1137c;

            public c(HomeListHolder_ViewBinding homeListHolder_ViewBinding, HomeListHolder homeListHolder) {
                this.f1137c = homeListHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f1137c.onClick(view);
            }
        }

        /* compiled from: ChapterAdapter$HomeListHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class d extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HomeListHolder f1138c;

            public d(HomeListHolder_ViewBinding homeListHolder_ViewBinding, HomeListHolder homeListHolder) {
                this.f1138c = homeListHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f1138c.onClick(view);
            }
        }

        /* compiled from: ChapterAdapter$HomeListHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class e extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HomeListHolder f1139c;

            public e(HomeListHolder_ViewBinding homeListHolder_ViewBinding, HomeListHolder homeListHolder) {
                this.f1139c = homeListHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f1139c.onClick(view);
            }
        }

        @UiThread
        public HomeListHolder_ViewBinding(HomeListHolder homeListHolder, View view) {
            this.b = homeListHolder;
            homeListHolder.tvTitle = (TextView) d.c.c.c(view, R.id.tv_title, f.e.a.e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            View b2 = d.c.c.b(view, R.id.tv_tag1, f.e.a.e.a("UQsGCA9THkcFMlUASU1DClkGQwkOB1FcF0YTCBYpDwJUCUQ="));
            homeListHolder.tvTag1 = (TextView) d.c.c.a(b2, R.id.tv_tag1, f.e.a.e.a("UQsGCA9THkcFMlUASU0="), TextView.class);
            this.f1130c = b2;
            b2.setOnClickListener(new a(this, homeListHolder));
            View b3 = d.c.c.b(view, R.id.tv_tag2, f.e.a.e.a("UQsGCA9THkcFMlUASk1DClkGQwkOB1FcF0YTCBYpDwJUCUQ="));
            homeListHolder.tvTag2 = (TextView) d.c.c.a(b3, R.id.tv_tag2, f.e.a.e.a("UQsGCA9THkcFMlUASk0="), TextView.class);
            this.f1131d = b3;
            b3.setOnClickListener(new b(this, homeListHolder));
            View b4 = d.c.c.b(view, R.id.tv_tag3, f.e.a.e.a("UQsGCA9THkcFMlUAS01DClkGQwkOB1FcF0YTCBYpDwJUCUQ="));
            homeListHolder.tvTag3 = (TextView) d.c.c.a(b4, R.id.tv_tag3, f.e.a.e.a("UQsGCA9THkcFMlUAS00="), TextView.class);
            this.f1132e = b4;
            b4.setOnClickListener(new c(this, homeListHolder));
            View b5 = d.c.c.b(view, R.id.tv_tag4, f.e.a.e.a("UQsGCA9THkcFMlUATE1DClkGQwkOB1FcF0YTCBYpDwJUCUQ="));
            homeListHolder.tvTag4 = (TextView) d.c.c.a(b5, R.id.tv_tag4, f.e.a.e.a("UQsGCA9THkcFMlUATE0="), TextView.class);
            this.f1133f = b5;
            b5.setOnClickListener(new d(this, homeListHolder));
            View b6 = d.c.c.b(view, R.id.tv_tag5, f.e.a.e.a("UQsGCA9THkcFMlUATU1DClkGQwkOB1FcF0YTCBYpDwJUCUQ="));
            homeListHolder.tvTag5 = (TextView) d.c.c.a(b6, R.id.tv_tag5, f.e.a.e.a("UQsGCA9THkcFMlUATU0="), TextView.class);
            this.f1134g = b6;
            b6.setOnClickListener(new e(this, homeListHolder));
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
                homeListHolder.tvTag5 = null;
                this.f1130c.setOnClickListener(null);
                this.f1130c = null;
                this.f1131d.setOnClickListener(null);
                this.f1131d = null;
                this.f1132e.setOnClickListener(null);
                this.f1132e = null;
                this.f1133f.setOnClickListener(null);
                this.f1133f = null;
                this.f1134g.setOnClickListener(null);
                this.f1134g = null;
                return;
            }
            throw new IllegalStateException(f.e.a.e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public ChapterAdapter(Context context) {
        super(context);
    }

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
