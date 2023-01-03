package f.i.a.a.l1.k0;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: CacheFileMetadataIndex.java */
/* loaded from: classes.dex */
public final class i {

    /* renamed from: c  reason: collision with root package name */
    public static final String[] f5564c = {"name", "length", "last_touch_timestamp"};
    public final f.i.a.a.x0.b a;
    public String b;

    public i(f.i.a.a.x0.b bVar) {
        this.a = bVar;
    }

    public Map<String, h> a() throws f.i.a.a.x0.a {
        try {
            c.a.a.b.g.h.t(this.b);
            Cursor query = ((SQLiteOpenHelper) this.a).getReadableDatabase().query(this.b, f5564c, null, null, null, null, null);
            HashMap hashMap = new HashMap(query.getCount());
            while (query.moveToNext()) {
                hashMap.put(query.getString(0), new h(query.getLong(1), query.getLong(2)));
            }
            query.close();
            return hashMap;
        } catch (SQLException e2) {
            throw new f.i.a.a.x0.a(e2);
        }
    }

    public void b(long j2) throws f.i.a.a.x0.a {
        try {
            String hexString = Long.toHexString(j2);
            this.b = "ExoPlayerCacheFileMetadata" + hexString;
            if (c.a.a.b.g.h.a0(((SQLiteOpenHelper) this.a).getReadableDatabase(), 2, hexString) != 1) {
                SQLiteDatabase writableDatabase = ((SQLiteOpenHelper) this.a).getWritableDatabase();
                writableDatabase.beginTransaction();
                c.a.a.b.g.h.l1(writableDatabase, 2, hexString, 1);
                String str = this.b;
                writableDatabase.execSQL("DROP TABLE IF EXISTS " + str);
                writableDatabase.execSQL("CREATE TABLE " + this.b + " (name TEXT PRIMARY KEY NOT NULL,length INTEGER NOT NULL,last_touch_timestamp INTEGER NOT NULL)");
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
            }
        } catch (SQLException e2) {
            throw new f.i.a.a.x0.a(e2);
        }
    }

    public void c(Set<String> set) throws f.i.a.a.x0.a {
        c.a.a.b.g.h.t(this.b);
        try {
            SQLiteDatabase writableDatabase = ((SQLiteOpenHelper) this.a).getWritableDatabase();
            writableDatabase.beginTransaction();
            Iterator<String> it = set.iterator();
            while (it.hasNext()) {
                writableDatabase.delete(this.b, "0 = ?", new String[]{it.next()});
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
        } catch (SQLException e2) {
            throw new f.i.a.a.x0.a(e2);
        }
    }

    public void d(String str, long j2, long j3) throws f.i.a.a.x0.a {
        c.a.a.b.g.h.t(this.b);
        try {
            SQLiteDatabase writableDatabase = ((SQLiteOpenHelper) this.a).getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put("name", str);
            contentValues.put("length", Long.valueOf(j2));
            contentValues.put("last_touch_timestamp", Long.valueOf(j3));
            writableDatabase.replaceOrThrow(this.b, null, contentValues);
        } catch (SQLException e2) {
            throw new f.i.a.a.x0.a(e2);
        }
    }
}
