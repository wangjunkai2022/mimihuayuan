package f.e.a.j.c;

import androidx.recyclerview.widget.LinearLayoutManager;
import com.comeback.data.ui.ba.ComicReadActivity;
import com.comeback.data.ui.ba.adapter.ChapterAdapter;
import com.comeback.data.ui.ba.bean.ComicDetailBean;
import m.j;

/* compiled from: ComicReadActivity.java */
/* loaded from: classes.dex */
public class c extends j<ComicDetailBean> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ComicReadActivity f3908e;

    public c(ComicReadActivity comicReadActivity) {
        this.f3908e = comicReadActivity;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
    }

    @Override // m.j
    public void f(ComicDetailBean comicDetailBean) {
        this.f3908e.f226f = comicDetailBean.getSelf();
        final ComicReadActivity comicReadActivity = this.f3908e;
        if (comicReadActivity != null) {
            comicReadActivity.rvChapter.setLayoutManager(new LinearLayoutManager(comicReadActivity));
            ChapterAdapter chapterAdapter = new ChapterAdapter(comicReadActivity);
            comicReadActivity.f228h = chapterAdapter;
            chapterAdapter.f240e = comicReadActivity.f225e;
            chapterAdapter.f239d = new ChapterAdapter.a() { // from class: f.e.a.j.c.b
                @Override // com.comeback.data.ui.ba.adapter.ChapterAdapter.a
                public final void a(int i2) {
                    ComicReadActivity.this.p(i2);
                }
            };
            comicReadActivity.rvChapter.setAdapter(comicReadActivity.f228h);
            comicReadActivity.f228h.a(comicReadActivity.f226f.getResults().getComic_episodes());
            this.f3908e.m();
            return;
        }
        throw null;
    }
}
