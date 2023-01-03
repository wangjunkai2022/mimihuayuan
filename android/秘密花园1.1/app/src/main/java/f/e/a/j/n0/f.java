package f.e.a.j.n0;

import android.app.Activity;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintStream;

/* compiled from: MovieFileUtils.java */
/* loaded from: classes.dex */
public final class f extends Thread {
    public final /* synthetic */ Activity a;
    public final /* synthetic */ String b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ g f3937c;

    public f(Activity activity, String str, g gVar) {
        this.a = activity;
        this.b = str;
        this.f3937c = gVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        super.run();
        StringBuilder sb = new StringBuilder();
        sb.append(this.a.getFilesDir().getPath());
        String n = f.b.a.a.a.n(sb, File.separator, "QxRaVQ==");
        File file = new File(n);
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(f.b.a.a.a.n(f.b.a.a.a.o(n), File.separator, "XgwHARNdVAAGXg=="));
        if (!file2.exists()) {
            try {
                file2.createNewFile();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        } else {
            file2.length();
            file2.canRead();
            file2.canWrite();
            PrintStream printStream = System.out;
        }
        try {
            c.a.a.b.g.h.c(new FileWriter(file2), this.b);
            file2.length();
            file2.canRead();
            file2.canWrite();
            PrintStream printStream2 = System.out;
            if (this.a.isDestroyed()) {
                return;
            }
            this.f3937c.a = file2.getAbsolutePath();
            this.a.runOnUiThread(this.f3937c);
        } catch (IOException e3) {
            e3.printStackTrace();
        }
    }
}
