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
    public final /* synthetic */ ComicReadActivity f3926e;

    public d(ComicReadActivity comicReadActivity) {
        this.f3926e = comicReadActivity;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
    }

    @Override // m.j
    public void f(ComicDetailBean comicDetailBean) {
        final ComicReadActivity comicReadActivity = this.f3926e;
        comicReadActivity.f1730f = comicDetailBean;
        comicReadActivity.rvChapter.setLayoutManager(new LinearLayoutManager(comicReadActivity));
        ChapterAdapter chapterAdapter = new ChapterAdapter(comicReadActivity);
        comicReadActivity.f1732h = chapterAdapter;
        chapterAdapter.f1760e = comicReadActivity.f1729e;
        chapterAdapter.f1759d = new ChapterAdapter.a() { // from class: f.e.a.j.f0.a
            @Override // com.comeback.data.ui.mimei.adapter.ChapterAdapter.a
            public final void a(int i2) {
                ComicReadActivity.this.p(i2);
            }
        };
        comicReadActivity.rvChapter.setAdapter(comicReadActivity.f1732h);
        comicReadActivity.f1732h.a(comicReadActivity.f1730f.getSuccess().getDirectory());
        this.f3926e.m();
    }
}
