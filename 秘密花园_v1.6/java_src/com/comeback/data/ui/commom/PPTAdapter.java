package com.comeback.data.ui.commom;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.secret.garden.R;
import com.youth.banner.Banner;
import com.youth.banner.Transformer;
import com.youth.banner.listener.OnBannerListener;
import f.e.a.k.e;
import java.util.List;
/* loaded from: classes.dex */
public class PPTAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public f.a.a.a.a a;
    public c b;

    /* renamed from: c  reason: collision with root package name */
    public b f393c;

    /* renamed from: d  reason: collision with root package name */
    public int f394d;

    /* loaded from: classes.dex */
    public class a implements OnBannerListener {
        public a() {
        }

        @Override // com.youth.banner.listener.OnBannerListener
        public void OnBannerClick(int i2) {
            b bVar = PPTAdapter.this.f393c;
            if (bVar != null) {
                bVar.a(i2);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        void a(int i2);
    }

    /* loaded from: classes.dex */
    public interface c {
        List<String> getImages();

        List<String> getTitles();
    }

    /* loaded from: classes.dex */
    public class d extends RecyclerView.ViewHolder {
        public Banner a;

        public d(PPTAdapter pPTAdapter, View view) {
            super(view);
            Banner banner = (Banner) view.findViewById(R.id.banner);
            this.a = banner;
            banner.setBannerAnimation(Transformer.Accordion);
            this.a.setBannerStyle(5);
            this.a.setDelayTime(4000);
        }
    }

    public PPTAdapter(Context context, f.a.a.a.a aVar, c cVar) {
        this.a = aVar;
        this.b = cVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        d dVar = (d) viewHolder;
        if (this.f394d == 1) {
            dVar.a.setImageLoader(new f.e.a.k.a());
        } else {
            dVar.a.setImageLoader(new e());
        }
        dVar.a.setImages(this.b.getImages());
        if (this.b.getTitles() != null && this.b.getTitles().size() >= this.b.getImages().size()) {
            dVar.a.setBannerTitles(this.b.getTitles());
        }
        dVar.a.start();
        dVar.a.setOnBannerListener(new a());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new d(this, f.b.a.a.a.b(viewGroup, R.layout.item_currenty_ppt, viewGroup, false));
    }

    public PPTAdapter(Context context, f.a.a.a.a aVar, c cVar, int i2) {
        this.a = aVar;
        this.f394d = i2;
        this.b = cVar;
    }
}
