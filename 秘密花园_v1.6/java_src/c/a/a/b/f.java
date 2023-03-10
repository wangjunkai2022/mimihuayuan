package c.a.a.b;

import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompat;
import androidx.annotation.NonNull;
import c.a.a.b.e;
import java.util.List;
/* compiled from: MediaBrowserCompatApi26.java */
/* loaded from: classes.dex */
public class f<T extends e> extends d<T> {
    public f(T t) {
        super(t);
    }

    @Override // android.media.browse.MediaBrowser.SubscriptionCallback
    public void onChildrenLoaded(@NonNull String str, List<MediaBrowser.MediaItem> list, @NonNull Bundle bundle) {
        MediaSessionCompat.a(bundle);
        ((e) this.a).a(str, list, bundle);
    }

    @Override // android.media.browse.MediaBrowser.SubscriptionCallback
    public void onError(@NonNull String str, @NonNull Bundle bundle) {
        MediaSessionCompat.a(bundle);
        ((e) this.a).b(str, bundle);
    }
}
