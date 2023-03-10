package com.comeback.data.ui.senlin.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindColor;
import butterknife.BindView;
import butterknife.Unbinder;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.commom.PlayActivity;
import com.comeback.data.ui.senlin.VideoDetailActivity;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class ChapterAdapter extends BaseAbstractAdapter<String> {

    /* renamed from: d  reason: collision with root package name */
    public a f1923d;

    /* renamed from: e  reason: collision with root package name */
    public int f1924e;

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<String> {
        public ChapterAdapter a;
        public String b;

        /* renamed from: c  reason: collision with root package name */
        public String f1925c;

        /* renamed from: d  reason: collision with root package name */
        public String f1926d;
        @BindColor
        public int kmColorAccent;
        @BindView
        public TextView tvTitle;
        @BindColor
        public int white;

        public Holder(View view, ChapterAdapter chapterAdapter) {
            super(view);
            this.a = chapterAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(String str) {
            String str2 = str;
            this.b = str2;
            if (str2.contains(e.a("Ew=="))) {
                String[] split = this.b.split(e.a("a0Y="));
                this.f1925c = split[0];
                this.f1926d = split[1];
            }
            this.tvTitle.setTextColor(this.a.f1924e == getAdapterPosition() ? this.kmColorAccent : this.white);
            this.tvTitle.setText(this.f1925c);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1927c;

        /* compiled from: ChapterAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1928c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1928c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1928c;
                ChapterAdapter chapterAdapter = holder.a;
                if (chapterAdapter.f1923d != null) {
                    int i2 = chapterAdapter.f1924e;
                    chapterAdapter.f1924e = holder.getAdapterPosition();
                    holder.a.notifyItemChanged(i2);
                    ChapterAdapter chapterAdapter2 = holder.a;
                    chapterAdapter2.notifyItemChanged(chapterAdapter2.f1924e);
                    a aVar = holder.a.f1923d;
                    String str = holder.f1926d;
                    VideoDetailActivity videoDetailActivity = (VideoDetailActivity) aVar;
                    if (videoDetailActivity == null) {
                        throw null;
                    }
                    PlayActivity.l(videoDetailActivity, str);
                }
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            View b = c.b(view, R.id.tv_name, e.a("UQsGCA9THkcFMl0TFA9ES1YMB0QGFk1bHAIUQA8LFwhfRQ=="));
            holder.tvTitle = (TextView) c.a(b, R.id.tv_name, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            this.f1927c = b;
            b.setOnClickListener(new a(this, holder));
            Context context = view.getContext();
            holder.kmColorAccent = ContextCompat.getColor(context, R.color.kmColorAccent);
            holder.white = ContextCompat.getColor(context, R.color.basic_third_text);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvTitle = null;
                this.f1927c.setOnClickListener(null);
                this.f1927c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    /* loaded from: classes.dex */
    public interface a {
    }

    public ChapterAdapter(Context context, a aVar) {
        super(context);
        this.f1923d = aVar;
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_senlin_chapter, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
