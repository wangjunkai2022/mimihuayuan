package com.comeback.data.ui.fulao2.fragment;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.ui.fulao2.adapter.ActorAdapter;
import com.comeback.data.ui.fulao2.adapter.HVideoAdapter;
import com.comeback.data.ui.fulao2.bean.StarList;
import com.comeback.data.ui.fulao2.bean.VideoList;
import com.comeback.secret.garden.R;
import java.util.HashMap;
import m.j;

/* loaded from: classes.dex */
public class Rang2Fragment extends BaseFragment {
    @BindView
    public RecyclerView rvActor;
    @BindView
    public RecyclerView rvCover;
    @BindView
    public RecyclerView rvGuide;
    @BindView
    public RecyclerView rvNew;
    @BindView
    public RecyclerView rvOriginal;
    @BindView
    public RecyclerView rvUncover;

    /* loaded from: classes.dex */
    public class a extends j<VideoList> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(VideoList videoList) {
            Rang2Fragment rang2Fragment = Rang2Fragment.this;
            rang2Fragment.rvGuide.setLayoutManager(new LinearLayoutManager(rang2Fragment.getContext(), 0, false));
            HVideoAdapter hVideoAdapter = new HVideoAdapter(Rang2Fragment.this.getContext());
            Rang2Fragment.this.rvGuide.setAdapter(hVideoAdapter);
            hVideoAdapter.a(videoList.getResponse().getVideos());
        }
    }

    /* loaded from: classes.dex */
    public class b extends j<StarList> {
        public b() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(StarList starList) {
            Rang2Fragment rang2Fragment = Rang2Fragment.this;
            rang2Fragment.rvActor.setLayoutManager(new LinearLayoutManager(rang2Fragment.getContext(), 0, false));
            ActorAdapter actorAdapter = new ActorAdapter(Rang2Fragment.this.getContext());
            Rang2Fragment.this.rvActor.setAdapter(actorAdapter);
            actorAdapter.a(starList.getResponse().getActors());
        }
    }

    /* loaded from: classes.dex */
    public class c extends j<VideoList> {
        public c() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(VideoList videoList) {
            Rang2Fragment rang2Fragment = Rang2Fragment.this;
            rang2Fragment.rvNew.setLayoutManager(new LinearLayoutManager(rang2Fragment.getContext(), 0, false));
            HVideoAdapter hVideoAdapter = new HVideoAdapter(Rang2Fragment.this.getContext());
            Rang2Fragment.this.rvNew.setAdapter(hVideoAdapter);
            hVideoAdapter.a(videoList.getResponse().getVideos());
        }
    }

    /* loaded from: classes.dex */
    public class d extends j<VideoList> {
        public d() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(VideoList videoList) {
            Rang2Fragment rang2Fragment = Rang2Fragment.this;
            rang2Fragment.rvOriginal.setLayoutManager(new LinearLayoutManager(rang2Fragment.getContext(), 0, false));
            HVideoAdapter hVideoAdapter = new HVideoAdapter(Rang2Fragment.this.getContext());
            Rang2Fragment.this.rvOriginal.setAdapter(hVideoAdapter);
            hVideoAdapter.a(videoList.getResponse().getVideos());
        }
    }

    /* loaded from: classes.dex */
    public class e extends j<VideoList> {
        public e() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(VideoList videoList) {
            Rang2Fragment rang2Fragment = Rang2Fragment.this;
            rang2Fragment.rvUncover.setLayoutManager(new LinearLayoutManager(rang2Fragment.getContext(), 0, false));
            HVideoAdapter hVideoAdapter = new HVideoAdapter(Rang2Fragment.this.getContext());
            Rang2Fragment.this.rvUncover.setAdapter(hVideoAdapter);
            hVideoAdapter.a(videoList.getResponse().getVideos());
        }
    }

    /* loaded from: classes.dex */
    public class f extends j<VideoList> {
        public f() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(VideoList videoList) {
            Rang2Fragment rang2Fragment = Rang2Fragment.this;
            rang2Fragment.rvCover.setLayoutManager(new LinearLayoutManager(rang2Fragment.getContext(), 0, false));
            HVideoAdapter hVideoAdapter = new HVideoAdapter(Rang2Fragment.this.getContext());
            Rang2Fragment.this.rvCover.setAdapter(hVideoAdapter);
            hVideoAdapter.a(videoList.getResponse().getVideos());
        }
    }

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_fulao2_rank2;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
        g(f.e.a.j.k.h.f.b().e(h(f.e.a.e.a("VhQ8Ax4aXVY="))), new a());
        g(f.e.a.j.k.h.f.b().c(h(f.e.a.e.a("VgEXCxk="))), new b());
        g(f.e.a.j.k.h.f.b().e(h(f.e.a.e.a("WQcU"))), new c());
        g(f.e.a.j.k.h.f.b().e(h(f.e.a.e.a("WBAKAwIdWF8sEF0DHQUQ"))), new d());
        g(f.e.a.j.k.h.f.b().e(h(f.e.a.e.a("QgwACx0WSw=="))), new e());
        g(f.e.a.j.k.h.f.b().e(h(f.e.a.e.a("VA0VARk="))), new f());
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
    }

    public final HashMap<String, String> h(String str) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.e.a.e.a("QxsTAQ=="), str);
        hashMap.put(f.e.a.e.a("QwsOARgHWF4D"), String.valueOf(System.currentTimeMillis()));
        return hashMap;
    }
}
