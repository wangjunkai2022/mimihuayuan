package com.tencent.smtt.sdk;

import android.content.Context;
import com.tencent.smtt.export.external.interfaces.IX5DateSorter;

/* loaded from: classes.dex */
public class DateSorter {
    public static int DAY_COUNT;
    public android.webkit.DateSorter a;
    public IX5DateSorter b;

    static {
        a();
        DAY_COUNT = 5;
    }

    public DateSorter(Context context) {
        t a = t.a();
        if (a != null && a.b()) {
            this.b = a.c().h(context);
        } else {
            this.a = new android.webkit.DateSorter(context);
        }
    }

    public static boolean a() {
        t a = t.a();
        return a != null && a.b();
    }

    public long getBoundary(int i2) {
        t a = t.a();
        if (a != null && a.b()) {
            return this.b.getBoundary(i2);
        }
        return this.a.getBoundary(i2);
    }

    public int getIndex(long j2) {
        t a = t.a();
        if (a != null && a.b()) {
            return this.b.getIndex(j2);
        }
        return this.a.getIndex(j2);
    }

    public String getLabel(int i2) {
        t a = t.a();
        if (a != null && a.b()) {
            return this.b.getLabel(i2);
        }
        return this.a.getLabel(i2);
    }
}
