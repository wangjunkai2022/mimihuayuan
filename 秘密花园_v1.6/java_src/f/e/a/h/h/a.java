package f.e.a.h.h;

import android.text.TextUtils;
import f.e.a.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: M3U8.java */
/* loaded from: classes.dex */
public class a {
    public String a;
    public List<b> b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public boolean f3884c;

    /* renamed from: d  reason: collision with root package name */
    public String f3885d;

    /* renamed from: e  reason: collision with root package name */
    public String f3886e;

    /* renamed from: f  reason: collision with root package name */
    public byte[] f3887f;

    public void a(b bVar) {
        if (this.f3884c) {
            if (TextUtils.isEmpty(this.f3886e)) {
                bVar.f3888c = Integer.toHexString(this.b.size() + 1);
            } else {
                bVar.f3888c = this.f3886e;
            }
        }
        this.b.add(bVar);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(e.a("VQMQARsSTVtJRg==") + this.a);
        Iterator<b> it = this.b.iterator();
        while (it.hasNext()) {
            sb.append(e.a("PRYQOw0aVVYsCFUKHUpeSw==") + it.next());
        }
        sb.append(e.a("PWgQEAoBTWcaC1FHRUo=") + 0L);
        sb.append(e.a("PWgGCg8nUF4WRglH") + 0L);
        sb.append(e.a("PWgQEAoBTXccEVoLFwsHP14PBkRWUw==") + 0L);
        sb.append(e.a("PWgGCg83VkQdClsGHD4KBlJCXkQ=") + 0L);
        return sb.toString();
    }
}
