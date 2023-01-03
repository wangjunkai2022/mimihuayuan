package com.comeback.data.ui.gkj.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.Unbinder;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.gkj.ComicDetailActivity;
import com.comeback.data.ui.gkj.ComicReadActivity;
import com.comeback.data.ui.gkj.bean.ComicDetail;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ComicDetailAdapter extends BaseAbstractAdapter<ComicDetail.DataEntity.ChaptersEntity> {

    /* renamed from: d  reason: collision with root package name */
    public a f935d;

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<ComicDetail.DataEntity.ChaptersEntity> {
        public ComicDetailAdapter a;
        public ComicDetail.DataEntity.ChaptersEntity b;
        @BindView
        public TextView tvTitle;

        public Holder(View view, ComicDetailAdapter comicDetailAdapter) {
            super(view);
            this.a = comicDetailAdapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(ComicDetail.DataEntity.ChaptersEntity chaptersEntity) {
            ComicDetail.DataEntity.ChaptersEntity chaptersEntity2 = chaptersEntity;
            this.b = chaptersEntity2;
            this.tvTitle.setText(chaptersEntity2.getName());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f936c;

        /* compiled from: ComicDetailAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f937c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f937c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f937c;
                a aVar = holder.a.f935d;
                if (aVar != null) {
                    ComicDetailActivity comicDetailActivity = (ComicDetailActivity) aVar;
                    ComicReadActivity.p(comicDetailActivity, comicDetailActivity.b, (ArrayList) comicDetailActivity.f848e.b, holder.b.getId());
                }
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            View b = c.b(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9ES1YMB0QGFk1bHAIUQA8LFwhfRQ=="));
            holder.tvTitle = (TextView) c.a(b, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            this.f936c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvTitle = null;
                this.f936c.setOnClickListener(null);
                this.f936c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    /* loaded from: classes.dex */
    public interface a {
    }

    public ComicDetailAdapter(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_gkj_comic, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
