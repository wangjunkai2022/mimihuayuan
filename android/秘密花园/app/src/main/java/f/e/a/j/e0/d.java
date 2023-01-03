package f.e.a.j.e0;

import androidx.recyclerview.widget.LinearLayoutManager;
import com.comeback.data.ui.mimei.ComicReadActivity;
import com.comeback.data.ui.mimei.adapter.ChapterAdapter;
import com.comeback.data.ui.mimei.bean.ComicDetailBean;
import m.j;

/* compiled from: ComicReadActivity.java */
/* loaded from: classes.dex */
public class d extends j<ComicDetailBean> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ComicReadActivity f3851e;

    public d(ComicReadActivity comicReadActivity) {
        this.f3851e = comicReadActivity;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // m.j
    public void f(ComicDetailBean comicDetailBean) {
        ComicReadActivity comicReadActivity = this.f3851e;
        comicReadActivity.f1655f = comicDetailBean;
        comicReadActivity.rvChapter.setLayoutManager(new LinearLayoutManager(comicReadActivity));
        ChapterAdapter chapterAdapter = new ChapterAdapter(comicReadActivity);
        comicReadActivity.f1657h = chapterAdapter;
        chapterAdapter.f1685e = comicReadActivity.f1654e;
        chapterAdapter.f1684d = new ChapterAdapter.a() { // from class: f.e.a.j.e0.a
            @Override // com.comeback.data.ui.mimei.adapter.ChapterAdapter.a
            public final void a(int i2) {
                ComicReadActivity.this.p(i2);
            }
        };
        comicReadActivity.rvChapter.setAdapter(comicReadActivity.f1657h);
        comicReadActivity.f1657h.a(comicReadActivity.f1655f.getSuccess().getDirectory());
        this.f3851e.m();
    }
}
