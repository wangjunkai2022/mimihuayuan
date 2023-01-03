package chuangyuan.ycj.videolibrary.offline;

import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.widget.Toast;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManager;
import c.a.a.b.g.h;
import chuangyuan.ycj.videolibrary.R;
import f.b.a.a.a;
import f.i.a.a.e1.c;
import f.i.a.a.e1.k;
import f.i.a.a.e1.o;
import f.i.a.a.e1.q;
import f.i.a.a.e1.r;
import f.i.a.a.e1.s;
import f.i.a.a.e1.u;
import f.i.a.a.g1.b;
import f.i.a.a.h1.e0;
import f.i.a.a.h1.p0;
import f.i.a.a.j1.d;
import f.i.a.a.j1.f;
import f.i.a.a.l1.m;
import f.i.a.a.m1.h0;
import f.i.a.a.p;
import f.i.a.a.r0;
import f.i.a.a.v;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes.dex */
public class DownloadTracker {
    public static final String TAG = "DownloadTracker";
    public final Context context;
    public final m.a dataSourceFactory;
    public final r downloadIndex;
    @Nullable
    public StartDownloadDialogHelper startDownloadDialogHelper;
    public final CopyOnWriteArraySet<Listener> listeners = new CopyOnWriteArraySet<>();
    public final HashMap<Uri, f.i.a.a.e1.m> downloads = new HashMap<>();

    /* loaded from: classes.dex */
    public class DownloadManagerListener implements s.d {
        public DownloadManagerListener() {
        }

        @Override // f.i.a.a.e1.s.d
        public void onDownloadChanged(s sVar, f.i.a.a.e1.m mVar) {
            DownloadTracker.this.downloads.put(mVar.a.f4688c, mVar);
            Iterator it = DownloadTracker.this.listeners.iterator();
            while (it.hasNext()) {
                ((Listener) it.next()).onDownloadsChanged();
            }
        }

        @Override // f.i.a.a.e1.s.d
        public void onDownloadRemoved(s sVar, f.i.a.a.e1.m mVar) {
            DownloadTracker.this.downloads.remove(mVar.a.f4688c);
            Iterator it = DownloadTracker.this.listeners.iterator();
            while (it.hasNext()) {
                ((Listener) it.next()).onDownloadsChanged();
            }
        }

        @Override // f.i.a.a.e1.s.d
        public void onIdle(s sVar) {
        }

        @Override // f.i.a.a.e1.s.d
        public void onInitialized(s sVar) {
        }

        @Override // f.i.a.a.e1.s.d
        public void onRequirementsStateChanged(s sVar, b bVar, int i2) {
        }
    }

    /* loaded from: classes.dex */
    public interface Listener {
        void onDownloadsChanged();
    }

    /* loaded from: classes.dex */
    public final class StartDownloadDialogHelper implements q.b, DialogInterface.OnClickListener, DialogInterface.OnDismissListener {
        public final q downloadHelper;
        public final FragmentManager fragmentManager;
        public f.a mappedTrackInfo;
        public final String name;
        public TrackSelectionDialog trackSelectionDialog;

        public StartDownloadDialogHelper(FragmentManager fragmentManager, q qVar, String str) {
            this.fragmentManager = fragmentManager;
            this.downloadHelper = qVar;
            this.name = str;
            h.v(qVar.f4648j == null);
            qVar.f4648j = this;
            e0 e0Var = qVar.f4642d;
            if (e0Var != null) {
                qVar.f4649k = new q.e(e0Var, qVar);
            } else {
                qVar.f4646h.post(new c(qVar, this));
            }
        }

        private u buildDownloadRequest() {
            q qVar = this.downloadHelper;
            byte[] O = h0.O(this.name);
            String uri = qVar.b.toString();
            if (qVar.f4642d == null) {
                return new u(uri, qVar.a, qVar.b, Collections.emptyList(), qVar.f4641c, O);
            }
            h.v(qVar.f4647i);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int length = qVar.n.length;
            for (int i2 = 0; i2 < length; i2++) {
                arrayList2.clear();
                int length2 = qVar.n[i2].length;
                for (int i3 = 0; i3 < length2; i3++) {
                    arrayList2.addAll(qVar.n[i2][i3]);
                }
                arrayList.addAll(qVar.f4649k.f4659j[i2].n(arrayList2));
            }
            return new u(uri, qVar.a, qVar.b, arrayList, qVar.f4641c, O);
        }

        private void startDownload() {
            startDownload(buildDownloadRequest());
        }

        private void startDownload(u uVar) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            int i3;
            int i4 = 0;
            while (true) {
                q qVar = this.downloadHelper;
                if (qVar.f4642d == null) {
                    i3 = 0;
                } else {
                    h.v(qVar.f4647i);
                    i3 = qVar.f4650l.length;
                }
                if (i4 < i3) {
                    q qVar2 = this.downloadHelper;
                    h.v(qVar2.f4647i);
                    for (int i5 = 0; i5 < qVar2.f4644f.length; i5++) {
                        qVar2.n[i4][i5].clear();
                    }
                    int i6 = 0;
                    while (i6 < this.mappedTrackInfo.a) {
                        if (!this.trackSelectionDialog.getIsDisabled(i6)) {
                            q qVar3 = this.downloadHelper;
                            d.c cVar = q.p;
                            List<d.e> overrides = this.trackSelectionDialog.getOverrides(i6);
                            h.v(qVar3.f4647i);
                            if (cVar != null) {
                                d.C0078d dVar = new d.C0078d(cVar);
                                int i7 = 0;
                                while (i7 < qVar3.f4651m[i4].a) {
                                    dVar.b(i7, i7 != i6);
                                    i7++;
                                }
                                if (overrides.isEmpty()) {
                                    d.c a = dVar.a();
                                    h.v(qVar3.f4647i);
                                    qVar3.f4643e.i(a);
                                    qVar3.g(i4);
                                } else {
                                    p0 p0Var = qVar3.f4651m[i4].f5441c[i6];
                                    for (int i8 = 0; i8 < overrides.size(); i8++) {
                                        dVar.c(i6, p0Var, overrides.get(i8));
                                        d.c a2 = dVar.a();
                                        h.v(qVar3.f4647i);
                                        qVar3.f4643e.i(a2);
                                        qVar3.g(i4);
                                    }
                                }
                            } else {
                                throw null;
                            }
                        }
                        i6++;
                    }
                    i4++;
                } else {
                    u buildDownloadRequest = buildDownloadRequest();
                    if (!buildDownloadRequest.f4689d.isEmpty()) {
                        startDownload(buildDownloadRequest);
                        return;
                    }
                    return;
                }
            }
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            this.trackSelectionDialog = null;
            this.downloadHelper.f();
        }

        @Override // f.i.a.a.e1.q.b
        public void onPrepareError(q qVar, IOException iOException) {
            Toast.makeText(DownloadTracker.this.context.getApplicationContext(), R.string.download_start_error, 1).show();
        }

        @Override // f.i.a.a.e1.q.b
        public void onPrepared(q qVar) {
            int i2;
            if (qVar.f4642d == null) {
                i2 = 0;
            } else {
                h.v(qVar.f4647i);
                i2 = qVar.f4650l.length;
            }
            if (i2 == 0) {
                startDownload();
                this.downloadHelper.f();
                return;
            }
            q qVar2 = this.downloadHelper;
            h.v(qVar2.f4647i);
            f.a aVar = qVar2.f4651m[0];
            this.mappedTrackInfo = aVar;
            if (!TrackSelectionDialog.willHaveContent(aVar)) {
                startDownload();
                this.downloadHelper.f();
                return;
            }
            TrackSelectionDialog createForMappedTrackInfoAndParameters = TrackSelectionDialog.createForMappedTrackInfoAndParameters(R.string.exo_download_description, this.mappedTrackInfo, q.p, false, true, this, this);
            this.trackSelectionDialog = createForMappedTrackInfoAndParameters;
            createForMappedTrackInfoAndParameters.show(this.fragmentManager, (String) null);
        }

        public void release() {
            this.downloadHelper.f();
            TrackSelectionDialog trackSelectionDialog = this.trackSelectionDialog;
            if (trackSelectionDialog != null) {
                trackSelectionDialog.dismiss();
            }
        }
    }

    public DownloadTracker(Context context, m.a aVar, s sVar) {
        this.context = context.getApplicationContext();
        this.dataSourceFactory = aVar;
        this.downloadIndex = sVar.a;
        sVar.f4663c.add(new DownloadManagerListener());
        loadDownloads();
    }

    private void loadDownloads() {
        try {
            o e2 = ((k) this.downloadIndex).e(new int[0]);
            while (e2.moveToNext()) {
                f.i.a.a.e1.m d2 = ((k.b) e2).d();
                this.downloads.put(d2.a.f4688c, d2);
            }
            ((k.b) e2).a.close();
        } catch (IOException unused) {
        }
    }

    public void addListener(Listener listener) {
        this.listeners.add(listener);
    }

    public r0 buildRenderersFactory(boolean z) {
        int i2 = useExtensionRenderers() ? z ? 2 : 1 : 0;
        v vVar = new v(this.context);
        vVar.f5807c = i2;
        return vVar;
    }

    public q getDownloadHelper(Uri uri, String str, r0 r0Var) {
        int P = h0.P(uri, str);
        if (P == 0) {
            m.a aVar = this.dataSourceFactory;
            return new q("dash", uri, null, q.f.a(q.q, uri, aVar, null), q.p, h0.J(r0Var, null));
        } else if (P == 1) {
            m.a aVar2 = this.dataSourceFactory;
            return new q("ss", uri, null, q.f.a(q.r, uri, aVar2, null), q.p, h0.J(r0Var, null));
        } else if (P == 2) {
            m.a aVar3 = this.dataSourceFactory;
            return new q("hls", uri, null, q.f.a(q.s, uri, aVar3, null), q.p, h0.J(r0Var, null));
        } else if (P == 3) {
            return new q("progressive", uri, null, null, q.p, new p[0]);
        } else {
            throw new IllegalStateException(a.J("Unsupported type: ", P));
        }
    }

    public u getDownloadRequest(Uri uri) {
        f.i.a.a.e1.m mVar = this.downloads.get(uri);
        if (mVar == null || mVar.b == 4) {
            return null;
        }
        return mVar.a;
    }

    public boolean isDownloaded(Uri uri) {
        f.i.a.a.e1.m mVar = this.downloads.get(uri);
        return (mVar == null || mVar.b == 4) ? false : true;
    }

    public void removeListener(Listener listener) {
        this.listeners.remove(listener);
    }

    public void toggleDownload(FragmentManager fragmentManager, String str, Uri uri, String str2, r0 r0Var) {
        if (this.downloads.get(uri) == null) {
            StartDownloadDialogHelper startDownloadDialogHelper = this.startDownloadDialogHelper;
            if (startDownloadDialogHelper != null) {
                startDownloadDialogHelper.release();
            }
            this.startDownloadDialogHelper = new StartDownloadDialogHelper(fragmentManager, getDownloadHelper(uri, str2, buildRenderersFactory(false)), str);
        }
    }

    public boolean useExtensionRenderers() {
        return false;
    }
}
