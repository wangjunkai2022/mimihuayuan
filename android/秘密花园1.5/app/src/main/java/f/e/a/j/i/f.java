package f.e.a.j.i;

import androidx.recyclerview.widget.LinearLayoutManager;
import com.comeback.data.ui.ds.ComicReadActivity;
import com.comeback.data.ui.ds.adapter.ChapterAdapter;
import com.comeback.data.ui.ds.bean.ComicDetailBean;
import m.j;

/* compiled from: ComicReadActivity.java */
/* loaded from: classes.dex */
public class f extends j<ComicDetailBean> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ComicReadActivity f3963e;

    public f(ComicReadActivity comicReadActivity) {
        this.f3963e = comicReadActivity;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
        c.a.a.b.g.h.n1(f.e.a.e.a("0MnDjOHx3YzSgLXIkOTUjrj0hsDam42W"));
    }

    @Override // m.j
    public void f(ComicDetailBean comicDetailBean) {
        ComicDetailBean comicDetailBean2 = comicDetailBean;
        this.f3963e.f580f = comicDetailBean2;
        if (!comicDetailBean2.isSucc()) {
            c.a.a.b.g.h.n1(comicDetailBean2.getMsg());
        }
        final ComicReadActivity comicReadActivity = this.f3963e;
        if (comicReadActivity != null) {
            comicReadActivity.rvChapter.setLayoutManager(new LinearLayoutManager(comicReadActivity));
            ChapterAdapter chapterAdapter = new ChapterAdapter(comicReadActivity);
            comicReadActivity.f582h = chapterAdapter;
            chapterAdapter.f608e = comicReadActivity.f579e;
            chapterAdapter.f607d = new ChapterAdapter.a() { // from class: f.e.a.j.i.a
                @Override // com.comeback.data.ui.ds.adapter.ChapterAdapter.a
                public final void a(int i2) {
                    ComicReadActivity.this.p(i2);
                }
            };
            comicReadActivity.rvChapter.setAdapter(comicReadActivity.f582h);
            comicReadActivity.f582h.a(comicReadActivity.f580f.getResult().getList());
            this.f3963e.m();
            return;
        }
        throw null;
    }
}
