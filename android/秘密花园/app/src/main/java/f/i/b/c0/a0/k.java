package f.i.b.c0.a0;

import f.i.b.a0;
import f.i.b.e0.b;
import f.i.b.e0.c;
import f.i.b.j;
import f.i.b.w;
import f.i.b.z;
import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/* compiled from: SqlDateTypeAdapter.java */
/* loaded from: classes.dex */
public final class k extends z<Date> {
    public static final a0 b = new a();
    public final DateFormat a = new SimpleDateFormat("MMM d, yyyy");

    /* compiled from: SqlDateTypeAdapter.java */
    /* loaded from: classes.dex */
    public static class a implements a0 {
        @Override // f.i.b.a0
        public <T> z<T> a(j jVar, f.i.b.d0.a<T> aVar) {
            if (aVar.a == Date.class) {
                return new k();
            }
            return null;
        }
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // f.i.b.z
    public Date a(f.i.b.e0.a aVar) throws IOException {
        Date date;
        synchronized (this) {
            if (aVar.V() == b.NULL) {
                aVar.R();
                date = null;
            } else {
                try {
                    date = new Date(this.a.parse(aVar.T()).getTime());
                } catch (ParseException e2) {
                    throw new w(e2);
                }
            }
        }
        return date;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [f.i.b.e0.c, java.lang.Object] */
    @Override // f.i.b.z
    public void b(c cVar, Date date) throws IOException {
        String format;
        Date date2 = date;
        synchronized (this) {
            if (date2 == null) {
                format = null;
            } else {
                format = this.a.format((java.util.Date) date2);
            }
            cVar.Q(format);
        }
    }
}
