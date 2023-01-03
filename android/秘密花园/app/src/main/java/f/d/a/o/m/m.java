package f.d.a.o.m;

import android.content.res.AssetManager;
import androidx.annotation.NonNull;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: StreamAssetPathFetcher.java */
/* loaded from: classes.dex */
public class m extends b<InputStream> {
    public m(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    @Override // f.d.a.o.m.d
    @NonNull
    public Class<InputStream> a() {
        return InputStream.class;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // f.d.a.o.m.b
    public void c(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // f.d.a.o.m.b
    public InputStream d(AssetManager assetManager, String str) throws IOException {
        return assetManager.open(str);
    }
}
