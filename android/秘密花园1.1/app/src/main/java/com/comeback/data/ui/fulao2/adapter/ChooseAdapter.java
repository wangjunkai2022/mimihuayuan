package com.comeback.data.ui.fulao2.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindColor;
import butterknife.BindDrawable;
import butterknife.BindView;
import butterknife.Unbinder;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.fulao2.PlayActivity;
import com.comeback.data.ui.fulao2.bean.Host;
import com.comeback.data.ui.fulao2.bean.VideoInfo;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
import java.util.List;

/* loaded from: classes.dex */
public class ChooseAdapter extends BaseAbstractAdapter<Host.StreamBean> {

    /* renamed from: e  reason: collision with root package name */
    public static int f727e;

    /* renamed from: d  reason: collision with root package name */
    public a f728d;

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<Host.StreamBean> {
        public ChooseAdapter a;
        public Host.StreamBean b;
        @BindColor
        public int basic_third_text;
        @BindDrawable
        public Drawable chooseDrawable;
        @BindColor
        public int colorWhite;
        @BindView
        public TextView tvTag;

        public Holder(View view, ChooseAdapter chooseAdapter) {
            super(view);
            this.a = chooseAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(Host.StreamBean streamBean) {
            Host.StreamBean streamBean2 = streamBean;
            this.b = streamBean2;
            this.tvTag.setText(streamBean2.getName());
            boolean z = getAdapterPosition() == ChooseAdapter.f727e;
            this.tvTag.setBackground(z ? this.chooseDrawable : null);
            this.tvTag.setTextColor(z ? this.colorWhite : this.basic_third_text);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f729c;

        /* compiled from: ChooseAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f730c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f730c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f730c;
                if (holder.getAdapterPosition() != ChooseAdapter.f727e) {
                    VideoInfo.StreamHost = holder.b.getUrl();
                    holder.a.notifyItemChanged(ChooseAdapter.f727e);
                    ChooseAdapter.f727e = holder.getAdapterPosition();
                    PlayActivity playActivity = (PlayActivity) holder.a.f728d;
                    playActivity.l(playActivity.b);
                    holder.a.notifyItemChanged(holder.getAdapterPosition());
                }
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            View b = c.b(view, R.id.tv_tag, e.a("UQsGCA9THkcFMlUAX0oCBVNCDgEfG1ZXU0FDBgwJC0w="));
            holder.tvTag = (TextView) c.a(b, R.id.tv_tag, e.a("UQsGCA9THkcFMlUAXw=="), TextView.class);
            this.f729c = b;
            b.setOnClickListener(new a(this, holder));
            Context context = view.getContext();
            holder.colorWhite = ContextCompat.getColor(context, R.color.white);
            holder.basic_third_text = ContextCompat.getColor(context, R.color.basic_third_text);
            holder.chooseDrawable = ContextCompat.getDrawable(context, R.drawable.bg_radiu4_gkj4);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvTag = null;
                this.f729c.setOnClickListener(null);
                this.f729c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    /* loaded from: classes.dex */
    public interface a {
    }

    public ChooseAdapter(Context context, a aVar) {
        super(context);
        this.f728d = aVar;
    }

    @Override // com.comeback.data.base.BaseAbstractAdapter
    public void a(List<Host.StreamBean> list) {
        b(list, this.b.size());
        if (this.b.size() < f727e) {
            f727e = 0;
        }
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_fulao2_tag, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
