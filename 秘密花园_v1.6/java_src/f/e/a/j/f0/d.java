package f.e.a.j.f0;

import androidx.recyclerview.widget.LinearLayoutManager;
import com.comeback.data.ui.mimei.ComicReadActivity;
import com.comeback.data.ui.mimei.adapter.ChapterAdapter;
import com.comeback.data.ui.mimei.bean.ComicDetailBean;
import m.j;
/* compiled from: ComicReadActivity.java */
/* loaded from: classes.dex */
public class d extends j<ComicDetailBean> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ComicReadActivity f3930e;

    public d(ComicReadActivity comicReadActivity) {
        this.f3930e = comicReadActivity;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
    }

    @Override // m.j
    public void f(ComicDetailBean comicDetailBean) {
        final ComicReadActivity comicReadActivity = this.f3930e;
        comicReadActivity.f1734f = comicDetailBean;
        comicReadActivity.rvChapter.setLayoutManager(new LinearLayoutManager(comicReadActivity));
        ChapterAdapter chapterAdapter = new ChapterAdapter(comicReadActivity);
        comicReadActivity.f1736h = chapterAdapter;
        chapterAdapter.f1764e = comicReadActivity.f1733e;
        chapterAdapter.f1763d = new ChapterAdapter.a() { // from class: f.e.a.j.f0.a
            @Override // com.comeback.data.ui.mimei.adapter.ChapterAdapter.a
            public final void a(int i2) {
                ComicReadActivity.this.p(i2);
            }
        };
        comicReadActivity.rvChapter.setAdapter(comicReadActivity.f1736h);
        comicReadActivity.f1736h.a(comicReadActivity.f1734f.getSuccess().getDirectory());
        this.f3930e.m();
    }
}
