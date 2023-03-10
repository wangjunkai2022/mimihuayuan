package com.comeback.data.ui.md.bean;

import android.util.Base64;
import f.b.a.a.a;
import f.e.a.f.k;
import f.e.a.j.e0.d.d;
import f.e.a.k.c;
import f.e.a.k.f;
/* loaded from: classes.dex */
public class MdBean extends k {
    public String data;
    public String suffix;

    public String getData() {
        return this.data;
    }

    public String getDecryptData() {
        String str = this.data;
        String l2 = a.l(new StringBuilder(), d.b, this.suffix);
        byte[] bytes = str.getBytes();
        String str2 = new String(c.a(Base64.decode(bytes, 2), d.a.getBytes(), d.f3923c, l2.getBytes()));
        f.a();
        return str2;
    }

    public String getSuffix() {
        return this.suffix;
    }

    public void setData(String str) {
        this.data = str;
    }

    public void setSuffix(String str) {
        this.suffix = str;
    }
}
