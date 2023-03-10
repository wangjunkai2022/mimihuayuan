package f.i.b.c0.a0;

import f.i.b.a0;
import f.i.b.w;
import f.i.b.z;
import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
/* compiled from: TimeTypeAdapter.java */
/* loaded from: classes.dex */
public final class l extends z<Time> {
    public static final a0 b = new a();
    public final DateFormat a = new SimpleDateFormat("hh:mm:ss a");

    /* compiled from: TimeTypeAdapter.java */
    /* loaded from: classes.dex */
    public static class a implements a0 {
        @Override // f.i.b.a0
        public <T> z<T> a(f.i.b.j jVar, f.i.b.d0.a<T> aVar) {
            if (aVar.a == Time.class) {
                return new l();
            }
            return null;
        }
    }

    @Override // f.i.b.z
    public Time a(f.i.b.e0.a aVar) throws IOException {
        synchronized (this) {
            if (aVar.V() == f.i.b.e0.b.NULL) {
                aVar.R();
                return null;
            }
            try {
                return new Time(this.a.parse(aVar.T()).getTime());
            } catch (ParseException e2) {
                throw new w(e2);
            }
        }
    }

    @Override // f.i.b.z
    public void b(f.i.b.e0.c cVar, Time time) throws IOException {
        Time time2 = time;
        synchronized (this) {
            cVar.Q(time2 == null ? null : this.a.format((Date) time2));
        }
    }
}
