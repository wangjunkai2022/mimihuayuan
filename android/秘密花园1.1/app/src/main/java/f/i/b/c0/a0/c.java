package f.i.b.c0.a0;

import f.i.b.a0;
import f.i.b.w;
import f.i.b.z;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* compiled from: DateTypeAdapter.java */
/* loaded from: classes.dex */
public final class c extends z<Date> {
    public static final a0 b = new a();
    public final List<DateFormat> a;

    /* compiled from: DateTypeAdapter.java */
    /* loaded from: classes.dex */
    public static class a implements a0 {
        @Override // f.i.b.a0
        public <T> z<T> a(f.i.b.j jVar, f.i.b.d0.a<T> aVar) {
            if (aVar.a == Date.class) {
                return new c();
            }
            return null;
        }
    }

    public c() {
        ArrayList arrayList = new ArrayList();
        this.a = arrayList;
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            this.a.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (f.i.b.c0.p.a >= 9) {
            List<DateFormat> list = this.a;
            list.add(new SimpleDateFormat("MMM d, yyyy h:mm:ss a", Locale.US));
        }
    }

    @Override // f.i.b.z
    public Date a(f.i.b.e0.a aVar) throws IOException {
        if (aVar.V() == f.i.b.e0.b.NULL) {
            aVar.R();
            return null;
        }
        String T = aVar.T();
        synchronized (this) {
            for (DateFormat dateFormat : this.a) {
                try {
                    return dateFormat.parse(T);
                } catch (ParseException unused) {
                }
            }
            try {
                return f.i.b.c0.a0.t.a.b(T, new ParsePosition(0));
            } catch (ParseException e2) {
                throw new w(T, e2);
            }
        }
    }

    @Override // f.i.b.z
    public void b(f.i.b.e0.c cVar, Date date) throws IOException {
        Date date2 = date;
        synchronized (this) {
            if (date2 == null) {
                cVar.I();
                return;
            }
            cVar.Q(this.a.get(0).format(date2));
        }
    }
}
