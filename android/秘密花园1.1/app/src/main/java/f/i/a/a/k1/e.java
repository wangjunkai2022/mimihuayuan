package f.i.a.a.k1;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import chuangyuan.ycj.videolibrary.R;
import com.google.android.exoplayer2.ui.SubtitleView;
import com.tencent.smtt.sdk.TbsReaderView;
import f.i.a.a.d1.a;
import f.i.a.a.h1.p0;
import f.i.a.a.i1.k;
import f.i.a.a.j1.j;
import f.i.a.a.k0;
import f.i.a.a.k1.d;
import f.i.a.a.l0;
import f.i.a.a.m1.h0;
import f.i.a.a.n1.p;
import f.i.a.a.n1.q;
import f.i.a.a.r;
import f.i.a.a.t0;
import java.util.List;

/* compiled from: PlayerView.java */
/* loaded from: classes.dex */
public class e extends FrameLayout {
    public final FrameLayout a;
    public final View b;

    /* renamed from: c  reason: collision with root package name */
    public final f.i.a.a.f1.a f5465c;

    /* renamed from: d  reason: collision with root package name */
    public final AppCompatImageView f5466d;

    /* renamed from: e  reason: collision with root package name */
    public final SubtitleView f5467e;

    /* renamed from: f  reason: collision with root package name */
    public final d f5468f;

    /* renamed from: g  reason: collision with root package name */
    public final b f5469g;

    /* renamed from: h  reason: collision with root package name */
    public final FrameLayout f5470h;

    /* renamed from: i  reason: collision with root package name */
    public l0 f5471i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f5472j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f5473k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f5474l;

    /* renamed from: m  reason: collision with root package name */
    public int f5475m;
    public boolean n;
    public boolean o;
    public boolean p;
    public FrameLayout q;

    /* compiled from: PlayerView.java */
    /* loaded from: classes.dex */
    public final class b extends l0.a implements k, q {
        public b(a aVar) {
        }

        @Override // f.i.a.a.n1.q
        public void a(int i2, int i3, int i4, float f2) {
            f.i.a.a.f1.a aVar;
            e eVar = e.this;
            if (eVar.a == null || (aVar = eVar.f5465c) == null) {
                return;
            }
            aVar.setPixelWidthHeightRatio(f2);
            e.this.f5465c.a(i2, i3);
            e.this.f5465c.c(0, 0);
        }

        @Override // f.i.a.a.n1.q
        public void b() {
            View view = e.this.b;
            if (view != null) {
                view.setVisibility(4);
            }
        }

        @Override // f.i.a.a.i1.k
        public void e(List<f.i.a.a.i1.b> list) {
            SubtitleView subtitleView = e.this.f5467e;
            if (subtitleView != null) {
                subtitleView.setCues(list);
            }
        }

        @Override // f.i.a.a.l0.b
        public void onPlayerStateChanged(boolean z, int i2) {
            if (e.this.e()) {
                e eVar = e.this;
                if (eVar.o) {
                    eVar.d();
                    return;
                }
            }
            e.this.f(false);
        }

        @Override // f.i.a.a.l0.b
        public void onPositionDiscontinuity(int i2) {
            if (e.this.e()) {
                e eVar = e.this;
                if (eVar.o) {
                    eVar.d();
                }
            }
        }

        @Override // f.i.a.a.l0.a, f.i.a.a.l0.b
        public void onTracksChanged(p0 p0Var, f.i.a.a.j1.k kVar) {
            e.this.j(false);
        }

        @Override // f.i.a.a.n1.q
        public /* synthetic */ void u(int i2, int i3) {
            p.a(this, i2, i3);
        }
    }

    public e(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        boolean z;
        boolean z2;
        boolean z3;
        int i3;
        boolean z4;
        boolean z5;
        int i4;
        boolean z6;
        this.p = false;
        if (isInEditMode()) {
            this.a = null;
            this.b = null;
            this.f5465c = null;
            this.f5466d = null;
            this.f5467e = null;
            this.f5468f = null;
            this.f5469g = null;
            this.f5470h = null;
            ImageView imageView = new ImageView(context);
            if (h0.a >= 23) {
                Resources resources = getResources();
                imageView.setImageDrawable(resources.getDrawable(R.drawable.exo_edit_mode_logo, null));
                imageView.setBackgroundColor(resources.getColor(R.color.exo_edit_mode_background_color, null));
            } else {
                Resources resources2 = getResources();
                imageView.setImageDrawable(resources2.getDrawable(R.drawable.exo_edit_mode_logo));
                imageView.setBackgroundColor(resources2.getColor(R.color.exo_edit_mode_background_color));
            }
            addView(imageView);
            return;
        }
        int i5 = R.layout.simple_exo_view;
        int i6 = 4;
        int i7 = TbsReaderView.ReaderCallback.GET_BAR_ANIMATING;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.PlayerView, 0, 0);
            try {
                z3 = obtainStyledAttributes.hasValue(R.styleable.PlayerView_shutter_background_color);
                i3 = obtainStyledAttributes.getColor(R.styleable.PlayerView_shutter_background_color, 0);
                i5 = obtainStyledAttributes.getResourceId(R.styleable.PlayerView_player_layout_id, i5);
                z4 = obtainStyledAttributes.getBoolean(R.styleable.PlayerView_use_artwork, true);
                z5 = obtainStyledAttributes.getBoolean(R.styleable.PlayerView_use_controller, true);
                i4 = obtainStyledAttributes.getInt(R.styleable.PlayerView_surface_type, 1);
                i6 = obtainStyledAttributes.getInt(R.styleable.PlayerView_resize_mode, 4);
                i7 = obtainStyledAttributes.getInt(R.styleable.PlayerView_show_timeout, TbsReaderView.ReaderCallback.GET_BAR_ANIMATING);
                z6 = obtainStyledAttributes.getBoolean(R.styleable.PlayerView_hide_on_touch, true);
                z = obtainStyledAttributes.getBoolean(R.styleable.PlayerView_auto_show, true);
                this.f5474l = obtainStyledAttributes.getBoolean(R.styleable.PlayerView_keep_content_on_player_reset, this.f5474l);
                boolean z7 = obtainStyledAttributes.getBoolean(R.styleable.PlayerView_hide_during_ads, true);
                obtainStyledAttributes.recycle();
                z2 = z7;
            } catch (Throwable th) {
                obtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            z = true;
            z2 = true;
            z3 = false;
            i3 = 0;
            z4 = true;
            z5 = true;
            i4 = 1;
            z6 = true;
        }
        this.q = (FrameLayout) LayoutInflater.from(context).inflate(i5, this);
        this.f5469g = new b(null);
        setDescendantFocusability(262144);
        this.a = (FrameLayout) findViewById(R.id.exo_content_frame);
        View findViewById = findViewById(R.id.exo_shutter);
        this.b = findViewById;
        if (findViewById != null && z3) {
            findViewById.setBackgroundColor(i3);
        }
        if (this.a != null && i4 != 0) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 17);
            f.i.a.a.f1.a dVar = i4 == 2 ? new f.i.a.a.f1.d(context) : new f.i.a.a.f1.c(context);
            this.f5465c = dVar;
            if (i4 == 2) {
                ((f.i.a.a.f1.d) dVar).setTakeOverSurfaceTexture(true);
            }
            this.f5465c.getRenderView().setLayoutParams(layoutParams);
            this.a.addView(this.f5465c.getRenderView(), 0);
            this.f5465c.b(i6);
        } else {
            this.f5465c = null;
        }
        this.f5470h = (FrameLayout) findViewById(R.id.exo_overlay);
        AppCompatImageView appCompatImageView = (AppCompatImageView) findViewById(R.id.exo_artwork);
        this.f5466d = appCompatImageView;
        this.f5473k = z4 && appCompatImageView != null;
        SubtitleView subtitleView = (SubtitleView) findViewById(R.id.exo_subtitles);
        this.f5467e = subtitleView;
        if (subtitleView != null) {
            subtitleView.b();
            this.f5467e.c();
        }
        d dVar2 = (d) findViewById(R.id.exo_controller);
        View findViewById2 = findViewById(R.id.exo_controller_placeholder);
        if (dVar2 != null) {
            this.f5468f = dVar2;
        } else if (findViewById2 != null) {
            d dVar3 = new d(context, null, 0, attributeSet);
            this.f5468f = dVar3;
            dVar3.setLayoutParams(findViewById2.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById2.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById2);
            viewGroup.removeView(findViewById2);
            viewGroup.addView(this.f5468f, indexOfChild);
        } else {
            this.f5468f = null;
        }
        this.f5475m = this.f5468f == null ? 0 : i7;
        this.p = z6;
        this.n = z;
        this.o = z2;
        this.f5472j = z5 && this.f5468f != null;
        d();
    }

    public final void b() {
        View view = this.b;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    public void c() {
        AppCompatImageView appCompatImageView = this.f5466d;
        if (appCompatImageView != null) {
            appCompatImageView.setImageResource(17170445);
            this.f5466d.setVisibility(4);
        }
    }

    public void d() {
        d dVar = this.f5468f;
        if (dVar != null) {
            dVar.g();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        l0 l0Var = this.f5471i;
        if (l0Var != null && l0Var.h()) {
            this.f5470h.requestFocus();
            return super.dispatchKeyEvent(keyEvent);
        }
        int keyCode = keyEvent.getKeyCode();
        boolean z = (keyCode == 19 || keyCode == 270 || keyCode == 22 || keyCode == 271 || keyCode == 20 || keyCode == 269 || keyCode == 21 || keyCode == 268 || keyCode == 23) && this.f5472j && !this.f5468f.k();
        f(true);
        if (!z) {
            if (!(this.f5472j && this.f5468f.e(keyEvent)) && !super.dispatchKeyEvent(keyEvent)) {
                return false;
            }
        }
        return true;
    }

    public final boolean e() {
        l0 l0Var = this.f5471i;
        return l0Var != null && l0Var.h() && this.f5471i.m();
    }

    public void f(boolean z) {
        if (!(e() && this.o) && this.f5472j) {
            boolean z2 = this.f5468f.k() && this.f5468f.getShowTimeoutMs() <= 0;
            boolean g2 = g();
            if (z || z2 || g2) {
                i(g2);
            }
        }
    }

    public boolean g() {
        l0 l0Var = this.f5471i;
        if (l0Var == null) {
            return true;
        }
        int o = l0Var.o();
        return this.n && (o == 1 || o == 4 || !this.f5471i.m());
    }

    public boolean getControllerAutoShow() {
        return this.n;
    }

    public boolean getControllerHideOnTouch() {
        return this.p;
    }

    public int getControllerShowTimeoutMs() {
        return this.f5475m;
    }

    public l0 getPlayer() {
        return this.f5471i;
    }

    public int getResizeMode() {
        c.a.a.b.g.h.v(this.a != null);
        return this.f5465c.getResizeMode();
    }

    public SubtitleView getSubtitleView() {
        return this.f5467e;
    }

    public boolean getUseController() {
        return this.f5472j;
    }

    public f.i.a.a.f1.a getVideoSurfaceView() {
        return this.f5465c;
    }

    public void h() {
        i(g());
    }

    public final void i(boolean z) {
        if (this.f5472j) {
            this.f5468f.setShowTimeoutMs(z ? 0 : this.f5475m);
            d dVar = this.f5468f;
            if (!dVar.k()) {
                dVar.setVisibility(0);
                d.e eVar = dVar.G;
                if (eVar != null) {
                    eVar.onVisibilityChange(dVar.getVisibility());
                }
                dVar.r();
                dVar.l();
            }
            dVar.h();
        }
    }

    public void j(boolean z) {
        boolean z2;
        l0 l0Var = this.f5471i;
        if (l0Var != null) {
            if (!(l0Var.t().a == 0)) {
                if (z && !this.f5474l) {
                    b();
                }
                f.i.a.a.j1.k A = this.f5471i.A();
                for (int i2 = 0; i2 < A.a; i2++) {
                    if (this.f5471i.B(i2) == 2 && A.b[i2] != null) {
                        c();
                        return;
                    }
                }
                b();
                this.f5473k = true;
                if (1 != 0) {
                    for (int i3 = 0; i3 < A.a; i3++) {
                        j jVar = A.b[i3];
                        if (jVar != null) {
                            for (int i4 = 0; i4 < jVar.length(); i4++) {
                                f.i.a.a.d1.a aVar = jVar.c(i4).f4011g;
                                if (aVar != null) {
                                    int i5 = 0;
                                    while (true) {
                                        a.b[] bVarArr = aVar.a;
                                        if (i5 >= bVarArr.length) {
                                            break;
                                        }
                                        a.b bVar = bVarArr[i5];
                                        if (bVar instanceof f.i.a.a.d1.i.a) {
                                            byte[] bArr = ((f.i.a.a.d1.i.a) bVar).f4556e;
                                            Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
                                            if (decodeByteArray != null) {
                                                int width = decodeByteArray.getWidth();
                                                int height = decodeByteArray.getHeight();
                                                if (width > 0 && height > 0) {
                                                    this.f5466d.setImageBitmap(decodeByteArray);
                                                    this.f5466d.setVisibility(0);
                                                    z2 = true;
                                                }
                                            }
                                        } else {
                                            i5++;
                                        }
                                    }
                                    z2 = false;
                                    if (z2) {
                                        return;
                                    }
                                }
                            }
                            continue;
                        }
                    }
                }
                c();
                return;
            }
        }
        if (this.f5474l) {
            return;
        }
        c();
        b();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f5472j && this.f5471i != null && motionEvent.getActionMasked() == 0) {
            if (!this.f5468f.k()) {
                f(true);
            } else if (this.p) {
                this.f5468f.g();
            }
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!this.f5472j || this.f5471i == null) {
            return false;
        }
        f(true);
        return true;
    }

    public void setControlDispatcher(@Nullable r rVar) {
        c.a.a.b.g.h.v(this.f5468f != null);
        this.f5468f.setControlDispatcher(rVar);
    }

    public void setControllerAutoShow(boolean z) {
        this.n = z;
    }

    public void setControllerHideDuringAds(boolean z) {
        this.o = z;
    }

    public void setControllerHideOnTouch(boolean z) {
        c.a.a.b.g.h.v(this.f5468f != null);
        this.p = z;
    }

    public void setControllerShowTimeoutMs(int i2) {
        c.a.a.b.g.h.v(this.f5468f != null);
        this.f5475m = i2;
        if (this.f5468f.k()) {
            h();
        }
    }

    public void setControllerVisibilityListener(d.e eVar) {
        c.a.a.b.g.h.v(this.f5468f != null);
        this.f5468f.setVisibilityListener(eVar);
    }

    public void setFastForwardIncrementMs(int i2) {
        c.a.a.b.g.h.v(this.f5468f != null);
        this.f5468f.setFastForwardIncrementMs(i2);
    }

    public void setKeepContentOnPlayerReset(boolean z) {
        if (this.f5474l != z) {
            this.f5474l = z;
            j(false);
        }
    }

    public void setPlaybackPreparer(@Nullable k0 k0Var) {
        c.a.a.b.g.h.v(this.f5468f != null);
        this.f5468f.setPlaybackPreparer(k0Var);
    }

    public void setPlayer(l0 l0Var) {
        l0 l0Var2 = this.f5471i;
        if (l0Var2 == l0Var) {
            return;
        }
        if (l0Var2 != null) {
            l0Var2.y(this.f5469g);
            l0.d g2 = this.f5471i.g();
            if (g2 != null) {
                t0 t0Var = (t0) g2;
                t0Var.f5785f.remove(this.f5469g);
                f.i.a.a.f1.a aVar = this.f5465c;
                if (aVar instanceof TextureView) {
                    TextureView textureView = (TextureView) aVar;
                    t0Var.O();
                    if (textureView != null && textureView == t0Var.t) {
                        t0Var.L(null);
                    }
                } else if (aVar instanceof SurfaceView) {
                    SurfaceView surfaceView = (SurfaceView) aVar;
                    SurfaceHolder holder = surfaceView == null ? null : surfaceView.getHolder();
                    t0Var.O();
                    if (holder != null && holder == t0Var.s) {
                        t0Var.J(null);
                    }
                }
            }
            l0.c D = this.f5471i.D();
            if (D != null) {
                ((t0) D).f5787h.remove(this.f5469g);
            }
        }
        this.f5471i = l0Var;
        if (this.f5472j) {
            this.f5468f.setPlayer(l0Var);
        }
        SubtitleView subtitleView = this.f5467e;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        j(true);
        if (l0Var != null) {
            l0.d g3 = l0Var.g();
            if (g3 != null) {
                f.i.a.a.f1.a aVar2 = this.f5465c;
                if (aVar2 instanceof TextureView) {
                    ((t0) g3).L((TextureView) aVar2);
                } else if (aVar2 instanceof SurfaceView) {
                    SurfaceView surfaceView2 = (SurfaceView) aVar2;
                    ((t0) g3).J(surfaceView2 != null ? surfaceView2.getHolder() : null);
                }
                ((t0) g3).f5785f.add(this.f5469g);
            }
            l0.c D2 = l0Var.D();
            if (D2 != null) {
                b bVar = this.f5469g;
                t0 t0Var2 = (t0) D2;
                if (!t0Var2.B.isEmpty()) {
                    bVar.e(t0Var2.B);
                }
                t0Var2.f5787h.add(bVar);
            }
            l0Var.r(this.f5469g);
            f(false);
            j(false);
            return;
        }
        d();
        c();
    }

    public void setRepeatToggleModes(int i2) {
        c.a.a.b.g.h.v(this.f5468f != null);
        this.f5468f.setRepeatToggleModes(i2);
    }

    public void setResizeMode(int i2) {
        c.a.a.b.g.h.v(this.a != null);
        this.f5465c.b(i2);
    }

    public void setRewindIncrementMs(int i2) {
        c.a.a.b.g.h.v(this.f5468f != null);
        this.f5468f.setRewindIncrementMs(i2);
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        c.a.a.b.g.h.v(this.f5468f != null);
        this.f5468f.setShowMultiWindowTimeBar(z);
    }

    public void setShowShuffleButton(boolean z) {
        c.a.a.b.g.h.v(this.f5468f != null);
        this.f5468f.setShowShuffleButton(z);
    }

    public void setShutterBackgroundColor(int i2) {
        View view = this.b;
        if (view != null) {
            view.setBackgroundColor(i2);
        }
    }

    public void setUseController(boolean z) {
        c.a.a.b.g.h.v((z && this.f5468f == null) ? false : true);
        if (this.f5472j == z) {
            return;
        }
        this.f5472j = z;
        if (z) {
            this.f5468f.setPlayer(this.f5471i);
            return;
        }
        d dVar = this.f5468f;
        if (dVar != null) {
            dVar.g();
            this.f5468f.setPlayer(null);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        f.i.a.a.f1.a aVar = this.f5465c;
        if (aVar instanceof SurfaceView) {
            aVar.getRenderView().setVisibility(i2);
        }
    }
}
