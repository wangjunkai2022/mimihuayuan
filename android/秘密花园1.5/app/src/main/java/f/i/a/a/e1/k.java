package f.i.a.a.e1;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompatJellybean;
import com.umeng.commonsdk.debug.UMRTLog;
import f.i.a.a.m1.h0;
import java.util.ArrayList;
import java.util.List;

/* compiled from: DefaultDownloadIndex.java */
/* loaded from: classes.dex */
public final class k implements d0 {

    /* renamed from: e  reason: collision with root package name */
    public static final String f4704e = f(3, 4);

    /* renamed from: f  reason: collision with root package name */
    public static final String[] f4705f = {"id", NotificationCompatJellybean.KEY_TITLE, "uri", "stream_keys", "custom_cache_key", "data", "state", "start_time_ms", "update_time_ms", "content_length", "stop_reason", "failure_reason", "percent_downloaded", "bytes_downloaded"};
    public final String a = "";
    public final String b = "ExoPlayerDownloads";

    /* renamed from: c  reason: collision with root package name */
    public final f.i.a.a.x0.b f4706c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f4707d;

    /* compiled from: DefaultDownloadIndex.java */
    /* loaded from: classes.dex */
    public static final class b implements o {
        public final Cursor a;

        public b(Cursor cursor, a aVar) {
            this.a = cursor;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.a.close();
        }

        public m d() {
            return k.d(this.a);
        }

        @Override // f.i.a.a.e1.o
        public /* synthetic */ boolean moveToNext() {
            return n.a(this);
        }
    }

    public k(f.i.a.a.x0.b bVar) {
        this.f4706c = bVar;
    }

    public static m d(Cursor cursor) {
        char c2 = 0;
        String string = cursor.getString(0);
        String string2 = cursor.getString(1);
        Uri parse = Uri.parse(cursor.getString(2));
        String string3 = cursor.getString(3);
        ArrayList arrayList = new ArrayList();
        if (!string3.isEmpty()) {
            String[] l0 = h0.l0(string3, ",");
            int length = l0.length;
            int i2 = 0;
            while (i2 < length) {
                String[] l02 = h0.l0(l0[i2], "\\.");
                c.a.a.b.g.h.v(l02.length == 3);
                arrayList.add(new c0(Integer.parseInt(l02[c2]), Integer.parseInt(l02[1]), Integer.parseInt(l02[2])));
                i2++;
                c2 = 0;
            }
        }
        u uVar = new u(string, string2, parse, arrayList, cursor.getString(4), cursor.getBlob(5));
        t tVar = new t();
        tVar.a = cursor.getLong(13);
        tVar.b = cursor.getFloat(12);
        return new m(uVar, cursor.getInt(6), cursor.getLong(7), cursor.getLong(8), cursor.getLong(9), cursor.getInt(10), cursor.getInt(11), tVar);
    }

    public static String f(int... iArr) {
        if (iArr.length == 0) {
            return UMRTLog.RTLOG_ENABLE;
        }
        StringBuilder r = f.b.a.a.a.r("state", " IN (");
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (i2 > 0) {
                r.append(',');
            }
            r.append(iArr[i2]);
        }
        r.append(')');
        return r.toString();
    }

    public final void a() throws f.i.a.a.x0.a {
        if (this.f4707d) {
            return;
        }
        try {
            if (c.a.a.b.g.h.a0(((SQLiteOpenHelper) this.f4706c).getReadableDatabase(), 0, this.a) != 2) {
                SQLiteDatabase writableDatabase = ((SQLiteOpenHelper) this.f4706c).getWritableDatabase();
                writableDatabase.beginTransaction();
                c.a.a.b.g.h.l1(writableDatabase, 0, this.a, 2);
                writableDatabase.execSQL("DROP TABLE IF EXISTS " + this.b);
                writableDatabase.execSQL("CREATE TABLE " + this.b + " (id TEXT PRIMARY KEY NOT NULL,title TEXT NOT NULL,uri TEXT NOT NULL,stream_keys TEXT NOT NULL,custom_cache_key TEXT,data BLOB NOT NULL,state INTEGER NOT NULL,start_time_ms INTEGER NOT NULL,update_time_ms INTEGER NOT NULL,content_length INTEGER NOT NULL,stop_reason INTEGER NOT NULL,failure_reason INTEGER NOT NULL,percent_downloaded REAL NOT NULL,bytes_downloaded INTEGER NOT NULL)");
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
            }
            this.f4707d = true;
        } catch (SQLException e2) {
            throw new f.i.a.a.x0.a(e2);
        }
    }

    public final Cursor b(String str, @Nullable String[] strArr) throws f.i.a.a.x0.a {
        try {
            return ((SQLiteOpenHelper) this.f4706c).getReadableDatabase().query(this.b, f4705f, str, strArr, null, null, "start_time_ms ASC");
        } catch (SQLiteException e2) {
            throw new f.i.a.a.x0.a(e2);
        }
    }

    @Nullable
    public m c(String str) throws f.i.a.a.x0.a {
        a();
        try {
            Cursor b2 = b("id = ?", new String[]{str});
            if (b2.getCount() == 0) {
                b2.close();
                return null;
            }
            b2.moveToNext();
            m d2 = d(b2);
            b2.close();
            return d2;
        } catch (SQLiteException e2) {
            throw new f.i.a.a.x0.a(e2);
        }
    }

    public o e(int... iArr) throws f.i.a.a.x0.a {
        a();
        return new b(b(f(iArr), null), null);
    }

    public void g(m mVar) throws f.i.a.a.x0.a {
        a();
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", mVar.a.a);
        contentValues.put(NotificationCompatJellybean.KEY_TITLE, mVar.a.b);
        contentValues.put("uri", mVar.a.f4763c.toString());
        List<c0> list = mVar.a.f4764d;
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < list.size(); i2++) {
            c0 c0Var = list.get(i2);
            sb.append(c0Var.a);
            sb.append('.');
            sb.append(c0Var.b);
            sb.append('.');
            sb.append(c0Var.f4703c);
            sb.append(',');
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        contentValues.put("stream_keys", sb.toString());
        contentValues.put("custom_cache_key", mVar.a.f4765e);
        contentValues.put("data", mVar.a.f4766f);
        contentValues.put("state", Integer.valueOf(mVar.b));
        contentValues.put("start_time_ms", Long.valueOf(mVar.f4710c));
        contentValues.put("update_time_ms", Long.valueOf(mVar.f4711d));
        contentValues.put("content_length", Long.valueOf(mVar.f4712e));
        contentValues.put("stop_reason", Integer.valueOf(mVar.f4713f));
        contentValues.put("failure_reason", Integer.valueOf(mVar.f4714g));
        contentValues.put("percent_downloaded", Float.valueOf(mVar.f4715h.b));
        contentValues.put("bytes_downloaded", Long.valueOf(mVar.f4715h.a));
        try {
            ((SQLiteOpenHelper) this.f4706c).getWritableDatabase().replaceOrThrow(this.b, null, contentValues);
        } catch (SQLiteException e2) {
            throw new f.i.a.a.x0.a(e2);
        }
    }

    public void h() throws f.i.a.a.x0.a {
        a();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("state", (Integer) 0);
            ((SQLiteOpenHelper) this.f4706c).getWritableDatabase().update(this.b, contentValues, "state = 2", null);
        } catch (SQLException e2) {
            throw new f.i.a.a.x0.a(e2);
        }
    }

    public void i(int i2) throws f.i.a.a.x0.a {
        a();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("stop_reason", Integer.valueOf(i2));
            ((SQLiteOpenHelper) this.f4706c).getWritableDatabase().update(this.b, contentValues, f4704e, null);
        } catch (SQLException e2) {
            throw new f.i.a.a.x0.a(e2);
        }
    }

    public void j(String str, int i2) throws f.i.a.a.x0.a {
        a();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("stop_reason", Integer.valueOf(i2));
            SQLiteDatabase writableDatabase = ((SQLiteOpenHelper) this.f4706c).getWritableDatabase();
            String str2 = this.b;
            writableDatabase.update(str2, contentValues, f4704e + " AND id = ?", new String[]{str});
        } catch (SQLException e2) {
            throw new f.i.a.a.x0.a(e2);
        }
    }
}
