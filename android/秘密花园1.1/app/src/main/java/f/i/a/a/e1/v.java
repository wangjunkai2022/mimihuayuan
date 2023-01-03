package f.i.a.a.e1;

import androidx.annotation.Nullable;
import java.io.IOException;

/* compiled from: Downloader.java */
/* loaded from: classes.dex */
public interface v {

    /* compiled from: Downloader.java */
    /* loaded from: classes.dex */
    public interface a {
    }

    void a(@Nullable a aVar) throws InterruptedException, IOException;

    void cancel();

    void remove() throws InterruptedException;
}
