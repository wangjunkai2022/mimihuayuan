package f.e.a.j.k0;

import androidx.recyclerview.widget.LinearLayoutManager;
import com.comeback.data.ui.slf.NovelReadActivity;
import com.comeback.data.ui.slf.adapter.ChapterAdapter;

/* compiled from: lambda */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements ChapterAdapter.a {
    public final /* synthetic */ NovelReadActivity a;
    public final /* synthetic */ LinearLayoutManager b;

    public /* synthetic */ b(NovelReadActivity novelReadActivity, LinearLayoutManager linearLayoutManager) {
        this.a = novelReadActivity;
        this.b = linearLayoutManager;
    }

    @Override // com.comeback.data.ui.slf.adapter.ChapterAdapter.a
    public final void a(int i2) {
        this.a.n(this.b, i2);
    }
}
