package c.a.a.b;

import android.media.browse.MediaBrowser;
import androidx.annotation.NonNull;
import c.a.a.b.c;
import java.util.List;

/* compiled from: MediaBrowserCompatApi21.java */
/* loaded from: classes.dex */
public class d<T extends c> extends MediaBrowser.SubscriptionCallback {
    public final T a;

    public d(T t) {
        this.a = t;
    }

    @Override // android.media.browse.MediaBrowser.SubscriptionCallback
    public void onChildrenLoaded(@NonNull String str, List<MediaBrowser.MediaItem> list) {
        this.a.c(str, list);
    }

    @Override // android.media.browse.MediaBrowser.SubscriptionCallback
    public void onError(@NonNull String str) {
        this.a.d(str);
    }
}
