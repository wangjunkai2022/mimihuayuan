package chuangyuan.ycj.videolibrary.offline;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatDialog;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import c.a.a.b.g.h;
import chuangyuan.ycj.videolibrary.R;
import chuangyuan.ycj.videolibrary.offline.TrackSelectionDialog;
import com.google.android.exoplayer2.ui.TrackSelectionView;
import com.google.android.material.tabs.TabLayout;
import f.i.a.a.h1.p0;
import f.i.a.a.j1.d;
import f.i.a.a.j1.f;
import f.i.a.a.m1.h0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class TrackSelectionDialog extends DialogFragment {
    public DialogInterface.OnClickListener onClickListener;
    public DialogInterface.OnDismissListener onDismissListener;
    public final SparseArray<TrackSelectionViewFragment> tabFragments = new SparseArray<>();
    public final ArrayList<Integer> tabTrackTypes = new ArrayList<>();
    public int titleId;

    /* loaded from: classes.dex */
    public final class FragmentAdapter extends FragmentPagerAdapter {
        public FragmentAdapter(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return TrackSelectionDialog.this.tabFragments.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i2) {
            return (Fragment) TrackSelectionDialog.this.tabFragments.valueAt(i2);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        @Nullable
        public CharSequence getPageTitle(int i2) {
            return TrackSelectionDialog.getTrackTypeString(TrackSelectionDialog.this.getResources(), ((Integer) TrackSelectionDialog.this.tabTrackTypes.get(i2)).intValue());
        }
    }

    /* loaded from: classes.dex */
    public static final class TrackSelectionViewFragment extends Fragment implements TrackSelectionView.c {
        public boolean allowAdaptiveSelections;
        public boolean allowMultipleOverrides;
        public boolean isDisabled;
        public f.a mappedTrackInfo;
        public List<d.e> overrides;
        public int rendererIndex;

        public TrackSelectionViewFragment() {
            setRetainInstance(true);
        }

        public void init(f.a aVar, int i2, boolean z, @Nullable d.e eVar, boolean z2, boolean z3) {
            List<d.e> list;
            this.mappedTrackInfo = aVar;
            this.rendererIndex = i2;
            this.isDisabled = z;
            if (eVar == null) {
                list = Collections.emptyList();
            } else {
                list = Collections.singletonList(eVar);
            }
            this.overrides = list;
            this.allowAdaptiveSelections = z2;
            this.allowMultipleOverrides = z3;
        }

        @Override // androidx.fragment.app.Fragment
        @Nullable
        public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
            View inflate = layoutInflater.inflate(R.layout.exo_track_selection_dialog, viewGroup, false);
            TrackSelectionView trackSelectionView = (TrackSelectionView) inflate.findViewById(R.id.exo_track_selection_view);
            trackSelectionView.setShowDisableOption(true);
            trackSelectionView.setAllowMultipleOverrides(this.allowMultipleOverrides);
            trackSelectionView.setAllowAdaptiveSelections(this.allowAdaptiveSelections);
            f.a aVar = this.mappedTrackInfo;
            int i2 = this.rendererIndex;
            boolean z = this.isDisabled;
            List<d.e> list = this.overrides;
            trackSelectionView.f2364k = aVar;
            trackSelectionView.f2365l = i2;
            trackSelectionView.n = z;
            trackSelectionView.o = this;
            int size = trackSelectionView.f2361h ? list.size() : Math.min(list.size(), 1);
            for (int i3 = 0; i3 < size; i3++) {
                d.e eVar = list.get(i3);
                trackSelectionView.f2359f.put(eVar.a, eVar);
            }
            trackSelectionView.c();
            return inflate;
        }

        @Override // com.google.android.exoplayer2.ui.TrackSelectionView.c
        public void onTrackSelectionChanged(boolean z, List<d.e> list) {
            this.isDisabled = z;
            this.overrides = list;
        }
    }

    public TrackSelectionDialog() {
        setRetainInstance(true);
    }

    public static void a(d.c cVar, f.a aVar, TrackSelectionDialog trackSelectionDialog, d dVar, DialogInterface dialogInterface, int i2) {
        Map map;
        f.a aVar2 = aVar;
        if (cVar != null) {
            String str = cVar.a;
            String str2 = cVar.b;
            boolean z = cVar.f5448c;
            int i3 = cVar.f5449d;
            int i4 = cVar.f5418f;
            int i5 = cVar.f5419g;
            int i6 = cVar.f5420h;
            int i7 = cVar.f5421i;
            boolean z2 = cVar.f5422j;
            boolean z3 = cVar.f5423k;
            boolean z4 = cVar.f5424l;
            int i8 = cVar.f5425m;
            int i9 = cVar.n;
            boolean z5 = cVar.o;
            int i10 = cVar.p;
            int i11 = cVar.q;
            boolean z6 = cVar.r;
            boolean z7 = cVar.s;
            boolean z8 = cVar.t;
            boolean z9 = cVar.u;
            boolean z10 = cVar.v;
            boolean z11 = cVar.w;
            int i12 = cVar.x;
            SparseArray sparseArray = new SparseArray();
            int i13 = 0;
            for (SparseArray<Map<p0, d.e>> sparseArray2 = cVar.y; i13 < sparseArray2.size(); sparseArray2 = sparseArray2) {
                sparseArray.put(sparseArray2.keyAt(i13), new HashMap(sparseArray2.valueAt(i13)));
                i13++;
                i9 = i9;
            }
            SparseBooleanArray clone = cVar.z.clone();
            int i14 = 0;
            while (i14 < aVar2.a) {
                Map map2 = (Map) sparseArray.get(i14);
                if (map2 != null && !map2.isEmpty()) {
                    sparseArray.remove(i14);
                }
                boolean isDisabled = trackSelectionDialog.getIsDisabled(i14);
                if (clone.get(i14) != isDisabled) {
                    if (isDisabled) {
                        clone.put(i14, true);
                    } else {
                        clone.delete(i14);
                    }
                }
                List<d.e> overrides = trackSelectionDialog.getOverrides(i14);
                if (!overrides.isEmpty()) {
                    p0 p0Var = aVar2.f5441c[i14];
                    d.e eVar = overrides.get(0);
                    Map map3 = (Map) sparseArray.get(i14);
                    if (map3 == null) {
                        map = new HashMap();
                        sparseArray.put(i14, map);
                    } else {
                        map = map3;
                    }
                    if (!map.containsKey(p0Var) || !h0.b(map.get(p0Var), eVar)) {
                        map.put(p0Var, eVar);
                    }
                }
                i14++;
                aVar2 = aVar;
            }
            if (dVar != null) {
                dVar.i(new d.c(i4, i5, i6, i7, z2, z3, z4, i8, i9, z5, str, i10, i11, z6, z7, z8, str2, z, i3, z9, z10, z11, i12, sparseArray, clone));
                return;
            }
            throw null;
        }
        throw null;
    }

    public static TrackSelectionDialog createForMappedTrackInfoAndParameters(int i2, f.a aVar, d.c cVar, boolean z, boolean z2, DialogInterface.OnClickListener onClickListener, DialogInterface.OnDismissListener onDismissListener) {
        TrackSelectionDialog trackSelectionDialog = new TrackSelectionDialog();
        trackSelectionDialog.init(i2, aVar, cVar, z, z2, onClickListener, onDismissListener);
        return trackSelectionDialog;
    }

    public static TrackSelectionDialog createForTrackSelector(d dVar, DialogInterface.OnDismissListener onDismissListener) {
        f.a aVar = dVar.f5440c;
        h.t(aVar);
        f.a aVar2 = aVar;
        TrackSelectionDialog trackSelectionDialog = new TrackSelectionDialog();
        d.c cVar = dVar.f5408e.get();
        trackSelectionDialog.init(R.string.track_selection_title, aVar2, cVar, true, false, new DialogInterface.OnClickListener(aVar2, trackSelectionDialog, dVar) { // from class: e.a.a.a.c
            public final /* synthetic */ f.a b;

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ TrackSelectionDialog f3305c;

            /* renamed from: d  reason: collision with root package name */
            public final /* synthetic */ d f3306d;

            {
                this.b = r2;
                this.f3305c = r3;
                this.f3306d = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                TrackSelectionDialog.a(d.c.this, this.b, this.f3305c, this.f3306d, dialogInterface, i2);
            }
        }, onDismissListener);
        return trackSelectionDialog;
    }

    public static String getTrackTypeString(Resources resources, int i2) {
        if (i2 == 1) {
            return resources.getString(R.string.exo_track_selection_title_audio);
        }
        if (i2 == 2) {
            return resources.getString(R.string.exo_track_selection_title_video);
        }
        if (i2 == 3) {
            return resources.getString(R.string.exo_track_selection_title_text);
        }
        throw new IllegalArgumentException();
    }

    private void init(int i2, f.a aVar, d.c cVar, boolean z, boolean z2, DialogInterface.OnClickListener onClickListener, DialogInterface.OnDismissListener onDismissListener) {
        this.titleId = i2;
        this.onClickListener = onClickListener;
        this.onDismissListener = onDismissListener;
        for (int i3 = 0; i3 < aVar.a; i3++) {
            if (showTabForRenderer(aVar, i3)) {
                int i4 = aVar.b[i3];
                p0 p0Var = aVar.f5441c[i3];
                TrackSelectionViewFragment trackSelectionViewFragment = new TrackSelectionViewFragment();
                trackSelectionViewFragment.init(aVar, i3, cVar.a(i3), cVar.b(i3, p0Var), z, z2);
                this.tabFragments.put(i3, trackSelectionViewFragment);
                this.tabTrackTypes.add(Integer.valueOf(i4));
            }
        }
    }

    public static boolean isSupportedTrackType(int i2) {
        return i2 == 1 || i2 == 2 || i2 == 3;
    }

    public static boolean showTabForRenderer(f.a aVar, int i2) {
        if (aVar.f5441c[i2].a == 0) {
            return false;
        }
        return isSupportedTrackType(aVar.b[i2]);
    }

    public static boolean willHaveContent(f.a aVar) {
        for (int i2 = 0; i2 < aVar.a; i2++) {
            if (showTabForRenderer(aVar, i2)) {
                return true;
            }
        }
        return false;
    }

    public /* synthetic */ void b(View view) {
        dismiss();
    }

    public /* synthetic */ void c(View view) {
        this.onClickListener.onClick(getDialog(), -1);
        dismiss();
    }

    public boolean getIsDisabled(int i2) {
        TrackSelectionViewFragment trackSelectionViewFragment = this.tabFragments.get(i2);
        return trackSelectionViewFragment != null && trackSelectionViewFragment.isDisabled;
    }

    public List<d.e> getOverrides(int i2) {
        TrackSelectionViewFragment trackSelectionViewFragment = this.tabFragments.get(i2);
        return trackSelectionViewFragment == null ? Collections.emptyList() : trackSelectionViewFragment.overrides;
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        AppCompatDialog appCompatDialog = new AppCompatDialog(getActivity(), R.style.TrackSelectionDialogThemeOverlay);
        appCompatDialog.setTitle(this.titleId);
        return appCompatDialog;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        int i2 = 0;
        View inflate = layoutInflater.inflate(R.layout.track_selection_dialog, viewGroup, false);
        TabLayout tabLayout = (TabLayout) inflate.findViewById(R.id.track_selection_dialog_tab_layout);
        ViewPager viewPager = (ViewPager) inflate.findViewById(R.id.track_selection_dialog_view_pager);
        Button button = (Button) inflate.findViewById(R.id.track_selection_dialog_cancel_button);
        Button button2 = (Button) inflate.findViewById(R.id.track_selection_dialog_ok_button);
        viewPager.setAdapter(new FragmentAdapter(getChildFragmentManager()));
        tabLayout.setupWithViewPager(viewPager);
        if (this.tabFragments.size() <= 1) {
            i2 = 8;
        }
        tabLayout.setVisibility(i2);
        button.setOnClickListener(new View.OnClickListener() { // from class: e.a.a.a.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TrackSelectionDialog.this.b(view);
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: e.a.a.a.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TrackSelectionDialog.this.c(view);
            }
        });
        return inflate;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        this.onDismissListener.onDismiss(dialogInterface);
    }

    public static boolean willHaveContent(d dVar) {
        f.a aVar = dVar.f5440c;
        return aVar != null && willHaveContent(aVar);
    }
}
