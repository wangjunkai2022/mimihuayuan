package f.e.a.j.p;

import c.a.a.b.g.h;
import com.comeback.data.ui.hgdd.HGDDBrowseActivity;
import com.comeback.data.ui.hgdd.bean.Person;
import f.e.a.e;
import m.j;
/* compiled from: HGDDBrowseActivity.java */
/* loaded from: classes.dex */
public class b extends j<Person> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ HGDDBrowseActivity f4018e;

    public b(HGDDBrowseActivity hGDDBrowseActivity) {
        this.f4018e = hGDDBrowseActivity;
    }

    @Override // m.j
    public void d() {
        this.f4018e.flProgress.setVisibility(8);
    }

    @Override // m.j
    public void e(Throwable th) {
        h.p1(e.a("3+zUgeTl3pPHjpPEnNXCjbbNhsDam42W"));
        this.f4018e.flProgress.setVisibility(8);
    }

    @Override // m.j
    public void f(Person person) {
        Person person2 = person;
        if (person2.check()) {
            HGDDBrowseActivity.l(this.f4018e, person2.getAddress(), person2.getWechat(), person2.getQq());
        } else {
            h.p1(e.a("0f7PgvbS36bDgLnJndr5javIiuPsmqK1nNq4j9fdhMa+h93hje+01vnH0f7QjPjf0fTT"));
        }
    }
}
