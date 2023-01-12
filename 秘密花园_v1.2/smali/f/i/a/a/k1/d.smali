.class public Lf/i/a/a/k1/d;
.super Landroid/widget/FrameLayout;
.source "PlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/k1/d$d;,
        Lf/i/a/a/k1/d$e;
    }
.end annotation


# instance fields
.field public final A:Landroid/view/View;

.field public B:Landroid/view/View;

.field public C:Lchuangyuan/ycj/videolibrary/utils/AnimUtils$AnimatorListener;

.field public final D:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lchuangyuan/ycj/videolibrary/utils/AnimUtils$UpdateProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field public E:Lf/i/a/a/l0;

.field public F:Lf/i/a/a/r;

.field public G:Lf/i/a/a/k1/d$e;

.field public H:Lf/i/a/a/k0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:Z

.field public R:J

.field public S:[J

.field public T:[Z

.field public U:[J

.field public V:[Z

.field public final W:Ljava/lang/Runnable;

.field public final a:Lf/i/a/a/k1/d$d;

.field public final a0:Ljava/lang/Runnable;

.field public final b:Landroid/view/View;

.field public final c:Landroid/view/View;

.field public final d:Landroid/view/View;

.field public final e:Landroid/view/View;

.field public final f:Landroid/view/View;

.field public final g:Landroid/view/View;

.field public final h:Landroid/widget/ImageView;

.field public final i:Landroid/view/View;

.field public final j:Landroid/widget/TextView;

.field public final k:Landroid/widget/TextView;

.field public final l:Lf/i/a/a/k1/g;

.field public final m:Ljava/lang/StringBuilder;

.field public final n:Ljava/util/Formatter;

.field public final o:Lf/i/a/a/u0$b;

.field public final p:Lf/i/a/a/u0$c;

.field public final q:Landroid/graphics/drawable/Drawable;

.field public final r:Landroid/graphics/drawable/Drawable;

.field public final s:Landroid/graphics/drawable/Drawable;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field public w:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field public final x:Landroidx/appcompat/widget/AppCompatCheckBox;

.field public final y:Landroid/widget/TextView;

.field public final z:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.ui"

    .line 1
    invoke-static {v0}, Lf/i/a/a/a0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .locals 3

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    sget p3, Lchuangyuan/ycj/videolibrary/R$drawable;->ic_fullscreen_selector:I

    iput p3, p0, Lf/i/a/a/k1/d;->w:I

    .line 3
    new-instance p3, Lf/i/a/a/k1/d$a;

    invoke-direct {p3, p0}, Lf/i/a/a/k1/d$a;-><init>(Lf/i/a/a/k1/d;)V

    iput-object p3, p0, Lf/i/a/a/k1/d;->W:Ljava/lang/Runnable;

    .line 4
    new-instance p3, Lf/i/a/a/k1/d$b;

    invoke-direct {p3, p0}, Lf/i/a/a/k1/d$b;-><init>(Lf/i/a/a/k1/d;)V

    iput-object p3, p0, Lf/i/a/a/k1/d;->a0:Ljava/lang/Runnable;

    .line 5
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p3, p0, Lf/i/a/a/k1/d;->D:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 6
    sget p3, Lchuangyuan/ycj/videolibrary/R$layout;->exo_player_control_view:I

    const/16 v0, 0x1388

    .line 7
    iput v0, p0, Lf/i/a/a/k1/d;->M:I

    const/16 v1, 0x3a98

    .line 8
    iput v1, p0, Lf/i/a/a/k1/d;->N:I

    .line 9
    iput v0, p0, Lf/i/a/a/k1/d;->O:I

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lf/i/a/a/k1/d;->P:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    iput-wide v1, p0, Lf/i/a/a/k1/d;->R:J

    .line 12
    iput-boolean v0, p0, Lf/i/a/a/k1/d;->Q:Z

    if-eqz p4, :cond_0

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lchuangyuan/ycj/videolibrary/R$styleable;->PlayerControlView:[I

    .line 14
    invoke-virtual {v1, p4, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p4

    .line 15
    :try_start_0
    sget v1, Lchuangyuan/ycj/videolibrary/R$styleable;->PlayerControlView_rewind_increment:I

    iget v2, p0, Lf/i/a/a/k1/d;->M:I

    invoke-virtual {p4, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lf/i/a/a/k1/d;->M:I

    .line 16
    sget v1, Lchuangyuan/ycj/videolibrary/R$styleable;->PlayerControlView_fastforward_increment:I

    iget v2, p0, Lf/i/a/a/k1/d;->N:I

    .line 17
    invoke-virtual {p4, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lf/i/a/a/k1/d;->N:I

    .line 18
    sget v1, Lchuangyuan/ycj/videolibrary/R$styleable;->PlayerControlView_show_timeout:I

    iget v2, p0, Lf/i/a/a/k1/d;->O:I

    invoke-virtual {p4, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lf/i/a/a/k1/d;->O:I

    .line 19
    sget v1, Lchuangyuan/ycj/videolibrary/R$styleable;->PlayerControlView_controller_layout_id:I

    .line 20
    invoke-virtual {p4, v1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 21
    iget v1, p0, Lf/i/a/a/k1/d;->P:I

    .line 22
    sget v2, Lchuangyuan/ycj/videolibrary/R$styleable;->PlayerControlView_repeat_toggle_modes:I

    invoke-virtual {p4, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 23
    iput v1, p0, Lf/i/a/a/k1/d;->P:I

    .line 24
    sget v1, Lchuangyuan/ycj/videolibrary/R$styleable;->PlayerControlView_show_shuffle_button:I

    iget-boolean v2, p0, Lf/i/a/a/k1/d;->Q:Z

    .line 25
    invoke-virtual {p4, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lf/i/a/a/k1/d;->Q:Z

    .line 26
    sget v1, Lchuangyuan/ycj/videolibrary/R$styleable;->PlayerControlView_player_fullscreen_image_selector:I

    iget v2, p0, Lf/i/a/a/k1/d;->w:I

    invoke-virtual {p4, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lf/i/a/a/k1/d;->w:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    throw p1

    .line 29
    :cond_0
    :goto_0
    new-instance p4, Lf/i/a/a/u0$b;

    invoke-direct {p4}, Lf/i/a/a/u0$b;-><init>()V

    iput-object p4, p0, Lf/i/a/a/k1/d;->o:Lf/i/a/a/u0$b;

    .line 30
    new-instance p4, Lf/i/a/a/u0$c;

    invoke-direct {p4}, Lf/i/a/a/u0$c;-><init>()V

    iput-object p4, p0, Lf/i/a/a/k1/d;->p:Lf/i/a/a/u0$c;

    .line 31
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p4, p0, Lf/i/a/a/k1/d;->m:Ljava/lang/StringBuilder;

    .line 32
    new-instance p4, Ljava/util/Formatter;

    iget-object v1, p0, Lf/i/a/a/k1/d;->m:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p4, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object p4, p0, Lf/i/a/a/k1/d;->n:Ljava/util/Formatter;

    new-array p4, v0, [J

    .line 33
    iput-object p4, p0, Lf/i/a/a/k1/d;->S:[J

    new-array p4, v0, [Z

    .line 34
    iput-object p4, p0, Lf/i/a/a/k1/d;->T:[Z

    new-array p4, v0, [J

    .line 35
    iput-object p4, p0, Lf/i/a/a/k1/d;->U:[J

    new-array p4, v0, [Z

    .line 36
    iput-object p4, p0, Lf/i/a/a/k1/d;->V:[Z

    .line 37
    new-instance p4, Lf/i/a/a/k1/d$d;

    invoke-direct {p4, p0, p2}, Lf/i/a/a/k1/d$d;-><init>(Lf/i/a/a/k1/d;Lf/i/a/a/k1/d$a;)V

    iput-object p4, p0, Lf/i/a/a/k1/d;->a:Lf/i/a/a/k1/d$d;

    .line 38
    new-instance p2, Lf/i/a/a/s;

    invoke-direct {p2}, Lf/i/a/a/s;-><init>()V

    iput-object p2, p0, Lf/i/a/a/k1/d;->F:Lf/i/a/a/r;

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 p2, 0x40000

    .line 40
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 41
    sget p2, Lchuangyuan/ycj/videolibrary/R$id;->exo_duration:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lf/i/a/a/k1/d;->j:Landroid/widget/TextView;

    .line 42
    sget p2, Lchuangyuan/ycj/videolibrary/R$id;->exo_position:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lf/i/a/a/k1/d;->k:Landroid/widget/TextView;

    .line 43
    sget p2, Lchuangyuan/ycj/videolibrary/R$id;->exo_progress:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lf/i/a/a/k1/g;

    iput-object p2, p0, Lf/i/a/a/k1/d;->l:Lf/i/a/a/k1/g;

    .line 44
    sget p2, Lchuangyuan/ycj/videolibrary/R$id;->exo_video_fullscreen:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object p2, p0, Lf/i/a/a/k1/d;->x:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 45
    sget p2, Lchuangyuan/ycj/videolibrary/R$id;->exo_video_switch:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lf/i/a/a/k1/d;->y:Landroid/widget/TextView;

    .line 46
    sget p2, Lchuangyuan/ycj/videolibrary/R$id;->exo_controls_title:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lf/i/a/a/k1/d;->z:Landroid/widget/TextView;

    .line 47
    sget p2, Lchuangyuan/ycj/videolibrary/R$id;->exo_controller_bottom:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lf/i/a/a/k1/d;->A:Landroid/view/View;

    .line 48
    sget p2, Lchuangyuan/ycj/videolibrary/R$id;->exo_controller_top:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lf/i/a/a/k1/d;->B:Landroid/view/View;

    if-nez p2, :cond_1

    .line 49
    iget-object p2, p0, Lf/i/a/a/k1/d;->z:Landroid/widget/TextView;

    iput-object p2, p0, Lf/i/a/a/k1/d;->B:Landroid/view/View;

    .line 50
    :cond_1
    iget-object p2, p0, Lf/i/a/a/k1/d;->x:Landroidx/appcompat/widget/AppCompatCheckBox;

    if-eqz p2, :cond_2

    .line 51
    iget p3, p0, Lf/i/a/a/k1/d;->w:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;->setButtonDrawable(I)V

    .line 52
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lchuangyuan/ycj/videolibrary/utils/VideoPlayUtils;->isTv(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 53
    iget-object p2, p0, Lf/i/a/a/k1/d;->x:Landroidx/appcompat/widget/AppCompatCheckBox;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 54
    :cond_2
    iget-object p2, p0, Lf/i/a/a/k1/d;->l:Lf/i/a/a/k1/g;

    if-eqz p2, :cond_3

    .line 55
    iget-object p3, p0, Lf/i/a/a/k1/d;->a:Lf/i/a/a/k1/d$d;

    invoke-interface {p2, p3}, Lf/i/a/a/k1/g;->addListener(Lf/i/a/a/k1/g$a;)V

    .line 56
    :cond_3
    sget p2, Lchuangyuan/ycj/videolibrary/R$id;->exo_play:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lf/i/a/a/k1/d;->d:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 57
    iget-object p3, p0, Lf/i/a/a/k1/d;->a:Lf/i/a/a/k1/d$d;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    :cond_4
    sget p2, Lchuangyuan/ycj/videolibrary/R$id;->exo_pause:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lf/i/a/a/k1/d;->e:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 59
    iget-object p3, p0, Lf/i/a/a/k1/d;->a:Lf/i/a/a/k1/d$d;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    :cond_5
    sget p2, Lchuangyuan/ycj/videolibrary/R$id;->exo_prev:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lf/i/a/a/k1/d;->b:Landroid/view/View;

    if-eqz p2, :cond_6

    .line 61
    iget-object p3, p0, Lf/i/a/a/k1/d;->a:Lf/i/a/a/k1/d$d;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    :cond_6
    sget p2, Lchuangyuan/ycj/videolibrary/R$id;->exo_next:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lf/i/a/a/k1/d;->c:Landroid/view/View;

    if-eqz p2, :cond_7

    .line 63
    iget-object p3, p0, Lf/i/a/a/k1/d;->a:Lf/i/a/a/k1/d$d;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    :cond_7
    sget p2, Lchuangyuan/ycj/videolibrary/R$id;->exo_rew:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lf/i/a/a/k1/d;->g:Landroid/view/View;

    if-eqz p2, :cond_8

    .line 65
    iget-object p3, p0, Lf/i/a/a/k1/d;->a:Lf/i/a/a/k1/d$d;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    :cond_8
    sget p2, Lchuangyuan/ycj/videolibrary/R$id;->exo_ffwd:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lf/i/a/a/k1/d;->f:Landroid/view/View;

    if-eqz p2, :cond_9

    .line 67
    iget-object p3, p0, Lf/i/a/a/k1/d;->a:Lf/i/a/a/k1/d$d;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    :cond_9
    sget p2, Lchuangyuan/ycj/videolibrary/R$id;->exo_repeat_toggle:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lf/i/a/a/k1/d;->h:Landroid/widget/ImageView;

    if-eqz p2, :cond_a

    .line 69
    iget-object p3, p0, Lf/i/a/a/k1/d;->a:Lf/i/a/a/k1/d$d;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    :cond_a
    sget p2, Lchuangyuan/ycj/videolibrary/R$id;->exo_shuffle:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lf/i/a/a/k1/d;->i:Landroid/view/View;

    if-eqz p2, :cond_b

    .line 71
    iget-object p3, p0, Lf/i/a/a/k1/d;->a:Lf/i/a/a/k1/d$d;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 73
    sget p2, Lchuangyuan/ycj/videolibrary/R$drawable;->exo_controls_repeat_off:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lf/i/a/a/k1/d;->q:Landroid/graphics/drawable/Drawable;

    .line 74
    sget p2, Lchuangyuan/ycj/videolibrary/R$drawable;->exo_controls_repeat_one:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lf/i/a/a/k1/d;->r:Landroid/graphics/drawable/Drawable;

    .line 75
    sget p2, Lchuangyuan/ycj/videolibrary/R$drawable;->exo_controls_repeat_all:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lf/i/a/a/k1/d;->s:Landroid/graphics/drawable/Drawable;

    .line 76
    sget p2, Lchuangyuan/ycj/videolibrary/R$string;->exo_controls_repeat_off_description:I

    .line 77
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lf/i/a/a/k1/d;->t:Ljava/lang/String;

    .line 78
    sget p2, Lchuangyuan/ycj/videolibrary/R$string;->exo_controls_repeat_one_description:I

    .line 79
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lf/i/a/a/k1/d;->u:Ljava/lang/String;

    .line 80
    sget p2, Lchuangyuan/ycj/videolibrary/R$string;->exo_controls_repeat_all_description:I

    .line 81
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/k1/d;->v:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lf/i/a/a/k1/d;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->u()V

    return-void
.end method

.method public static synthetic b(Lf/i/a/a/k1/d;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->w()V

    return-void
.end method

.method public static synthetic c(Lf/i/a/a/k1/d;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->v()V

    return-void
.end method

.method public static synthetic d(Lf/i/a/a/k1/d;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->s()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lf/i/a/a/k1/d;->e(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public e(Landroid/view/KeyEvent;)Z
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 2
    iget-object v1, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    const/16 v1, 0x58

    const/16 v3, 0x57

    const/16 v4, 0x7f

    const/16 v5, 0x7e

    const/16 v6, 0x55

    const/16 v7, 0x59

    const/16 v8, 0x5a

    const/4 v9, 0x1

    if-eq v0, v8, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v10, 0x1

    :goto_1
    if-nez v10, :cond_2

    goto/16 :goto_3

    .line 3
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_d

    if-ne v0, v8, :cond_3

    .line 4
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->f()V

    goto :goto_2

    :cond_3
    if-ne v0, v7, :cond_4

    .line 5
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->m()V

    goto :goto_2

    .line 6
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_d

    const/4 p1, 0x0

    if-eq v0, v6, :cond_b

    if-eq v0, v3, :cond_a

    if-eq v0, v1, :cond_9

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_5

    goto :goto_2

    .line 7
    :cond_5
    iget-object v0, p0, Lf/i/a/a/k1/d;->F:Lf/i/a/a/r;

    iget-object v1, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    check-cast v0, Lf/i/a/a/s;

    if-eqz v0, :cond_6

    .line 8
    invoke-interface {v1, v2}, Lf/i/a/a/l0;->f(Z)V

    goto :goto_2

    :cond_6
    throw p1

    .line 9
    :cond_7
    iget-object v0, p0, Lf/i/a/a/k1/d;->F:Lf/i/a/a/r;

    iget-object v1, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    check-cast v0, Lf/i/a/a/s;

    if-eqz v0, :cond_8

    .line 10
    invoke-interface {v1, v9}, Lf/i/a/a/l0;->f(Z)V

    goto :goto_2

    :cond_8
    throw p1

    .line 11
    :cond_9
    iget-object p1, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    if-eqz p1, :cond_d

    .line 12
    check-cast p1, Lf/i/a/a/o;

    invoke-virtual {p1}, Lf/i/a/a/o;->d()V

    goto :goto_2

    .line 13
    :cond_a
    iget-object p1, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    if-eqz p1, :cond_d

    .line 14
    check-cast p1, Lf/i/a/a/o;

    invoke-virtual {p1}, Lf/i/a/a/o;->c()V

    goto :goto_2

    .line 15
    :cond_b
    iget-object v0, p0, Lf/i/a/a/k1/d;->F:Lf/i/a/a/r;

    iget-object v1, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    invoke-interface {v1}, Lf/i/a/a/l0;->m()Z

    move-result v2

    xor-int/2addr v2, v9

    check-cast v0, Lf/i/a/a/s;

    if-eqz v0, :cond_c

    .line 16
    invoke-interface {v1, v2}, Lf/i/a/a/l0;->f(Z)V

    goto :goto_2

    :cond_c
    throw p1

    :cond_d
    :goto_2
    return v9

    :cond_e
    :goto_3
    return v2
.end method

.method public final f()V
    .locals 7

    .line 1
    iget v0, p0, Lf/i/a/a/k1/d;->N:I

    if-gtz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    invoke-interface {v0}, Lf/i/a/a/l0;->v()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    invoke-interface {v2}, Lf/i/a/a/l0;->C()J

    move-result-wide v2

    iget v4, p0, Lf/i/a/a/k1/d;->N:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    .line 4
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 5
    :cond_1
    invoke-virtual {p0, v2, v3}, Lf/i/a/a/k1/d;->n(J)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lf/i/a/a/k1/d;->G:Lf/i/a/a/k1/d$e;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    invoke-interface {v0, v1}, Lf/i/a/a/k1/d$e;->onVisibilityChange(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lf/i/a/a/k1/d;->a0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    iput-wide v0, p0, Lf/i/a/a/k1/d;->R:J

    :cond_1
    return-void
.end method

.method public getExoControllerTop()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/d;->B:Landroid/view/View;

    return-object v0
.end method

.method public getExoFullscreen()Landroidx/appcompat/widget/AppCompatCheckBox;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/d;->x:Landroidx/appcompat/widget/AppCompatCheckBox;

    return-object v0
.end method

.method public getIcFullscreenSelector()I
    .locals 1

    .line 1
    iget v0, p0, Lf/i/a/a/k1/d;->w:I

    return v0
.end method

.method public getPlayButton()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/d;->d:Landroid/view/View;

    return-object v0
.end method

.method public getShowShuffleButton()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/k1/d;->Q:Z

    return v0
.end method

.method public getShowTimeoutMs()I
    .locals 1

    .line 1
    iget v0, p0, Lf/i/a/a/k1/d;->O:I

    return v0
.end method

.method public getSwitchText()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/d;->y:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTimeBar()Lf/i/a/a/k1/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/d;->l:Lf/i/a/a/k1/g;

    return-object v0
.end method

.method public final h()V
    .locals 5

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/d;->a0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget v0, p0, Lf/i/a/a/k1/d;->O:I

    if-lez v0, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lf/i/a/a/k1/d;->O:I

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lf/i/a/a/k1/d;->R:J

    .line 4
    iget-boolean v0, p0, Lf/i/a/a/k1/d;->I:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lf/i/a/a/k1/d;->a0:Ljava/lang/Runnable;

    int-to-long v1, v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    iput-wide v0, p0, Lf/i/a/a/k1/d;->R:J

    :cond_1
    :goto_0
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lf/i/a/a/k1/d;->W:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object v0, p0, Lf/i/a/a/k1/d;->a0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide v0, p0, Lf/i/a/a/k1/d;->R:J

    :cond_0
    return-void
.end method

.method public j()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lf/i/a/a/l0;->o()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    .line 3
    invoke-interface {v0}, Lf/i/a/a/l0;->o()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    .line 4
    invoke-interface {v0}, Lf/i/a/a/l0;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public k()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lf/i/a/a/k1/d;->d:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lf/i/a/a/k1/d;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public m()V
    .locals 4

    .line 1
    iget v0, p0, Lf/i/a/a/k1/d;->M:I

    if-gtz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    invoke-interface {v0}, Lf/i/a/a/l0;->C()J

    move-result-wide v0

    iget v2, p0, Lf/i/a/a/k1/d;->M:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lf/i/a/a/k1/d;->n(J)V

    return-void
.end method

.method public final n(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    invoke-interface {v0}, Lf/i/a/a/l0;->z()I

    move-result v0

    .line 2
    iget-object v1, p0, Lf/i/a/a/k1/d;->F:Lf/i/a/a/r;

    iget-object v2, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    check-cast v1, Lf/i/a/a/s;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v2, v0, p1, p2}, Lf/i/a/a/l0;->k(IJ)V

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final o(ZLandroid/view/View;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const p1, 0x3e99999a    # 0.3f

    .line 2
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf/i/a/a/k1/d;->I:Z

    .line 3
    iget-wide v0, p0, Lf/i/a/a/k1/d;->R:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 5
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->g()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lf/i/a/a/k1/d;->a0:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->h()V

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->r()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lf/i/a/a/k1/d;->I:Z

    .line 3
    iget-object v0, p0, Lf/i/a/a/k1/d;->W:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object v0, p0, Lf/i/a/a/k1/d;->a0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    iget-object v0, p0, Lf/i/a/a/k1/d;->B:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lf/i/a/a/k1/d;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 7
    :cond_0
    iget-object v0, p0, Lf/i/a/a/k1/d;->A:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lf/i/a/a/k1/d;->A:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/d;->z:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/i/a/a/k1/d;->A:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lf/i/a/a/k1/d;->C:Lchuangyuan/ycj/videolibrary/utils/AnimUtils$AnimatorListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1}, Lchuangyuan/ycj/videolibrary/utils/AnimUtils$AnimatorListener;->show(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lf/i/a/a/k1/d;->B:Landroid/view/View;

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/utils/AnimUtils;->setInAnim(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 5
    iget-object v0, p0, Lf/i/a/a/k1/d;->A:Landroid/view/View;

    invoke-static {v0}, Lchuangyuan/ycj/videolibrary/utils/AnimUtils;->setInAnim(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :cond_1
    return-void
.end method

.method public q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/d;->z:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/i/a/a/k1/d;->A:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lf/i/a/a/k1/d;->C:Lchuangyuan/ycj/videolibrary/utils/AnimUtils$AnimatorListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lchuangyuan/ycj/videolibrary/utils/AnimUtils$AnimatorListener;->show(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lf/i/a/a/k1/d;->A:Landroid/view/View;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lchuangyuan/ycj/videolibrary/utils/AnimUtils;->setOutAnim(Landroid/view/View;Z)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 5
    iget-object v0, p0, Lf/i/a/a/k1/d;->B:Landroid/view/View;

    invoke-static {v0, v1}, Lchuangyuan/ycj/videolibrary/utils/AnimUtils;->setOutAnim(Landroid/view/View;Z)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lf/i/a/a/k1/d$c;

    invoke-direct {v1, p0}, Lf/i/a/a/k1/d$c;-><init>(Lf/i/a/a/k1/d;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->g()V

    :goto_0
    return-void
.end method

.method public r()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->t()V

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->s()V

    .line 3
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->v()V

    .line 4
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->w()V

    .line 5
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->u()V

    return-void
.end method

.method public final s()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lf/i/a/a/k1/d;->I:Z

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    iget-object v0, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lf/i/a/a/l0;->w()Lf/i/a/a/u0;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lf/i/a/a/u0;->q()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_6

    .line 4
    iget-object v3, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    invoke-interface {v3}, Lf/i/a/a/l0;->h()Z

    move-result v3

    if-nez v3, :cond_6

    .line 5
    iget-object v3, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    invoke-interface {v3}, Lf/i/a/a/l0;->z()I

    move-result v3

    .line 6
    iget-object v4, p0, Lf/i/a/a/k1/d;->p:Lf/i/a/a/u0$c;

    invoke-virtual {v0, v3, v4}, Lf/i/a/a/u0;->n(ILf/i/a/a/u0$c;)Lf/i/a/a/u0$c;

    .line 7
    iget-object v0, p0, Lf/i/a/a/k1/d;->p:Lf/i/a/a/u0$c;

    iget-boolean v3, v0, Lf/i/a/a/u0$c;->d:Z

    const/4 v4, -0x1

    if-nez v3, :cond_4

    .line 8
    iget-boolean v0, v0, Lf/i/a/a/u0$c;->e:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    .line 9
    check-cast v0, Lf/i/a/a/o;

    invoke-virtual {v0}, Lf/i/a/a/o;->b()I

    move-result v0

    if-eq v0, v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x1

    .line 10
    :goto_3
    iget-object v5, p0, Lf/i/a/a/k1/d;->p:Lf/i/a/a/u0$c;

    iget-boolean v5, v5, Lf/i/a/a/u0$c;->e:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    check-cast v5, Lf/i/a/a/o;

    invoke-virtual {v5}, Lf/i/a/a/o;->a()I

    move-result v5

    if-eq v5, v4, :cond_7

    :cond_5
    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    const/4 v3, 0x0

    :cond_7
    const/4 v4, 0x0

    .line 11
    :goto_4
    iget-object v5, p0, Lf/i/a/a/k1/d;->b:Landroid/view/View;

    invoke-virtual {p0, v0, v5}, Lf/i/a/a/k1/d;->o(ZLandroid/view/View;)V

    .line 12
    iget-object v0, p0, Lf/i/a/a/k1/d;->c:Landroid/view/View;

    invoke-virtual {p0, v4, v0}, Lf/i/a/a/k1/d;->o(ZLandroid/view/View;)V

    .line 13
    iget v0, p0, Lf/i/a/a/k1/d;->N:I

    if-lez v0, :cond_8

    if-eqz v3, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :goto_5
    iget-object v4, p0, Lf/i/a/a/k1/d;->f:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Lf/i/a/a/k1/d;->o(ZLandroid/view/View;)V

    .line 14
    iget v0, p0, Lf/i/a/a/k1/d;->M:I

    if-lez v0, :cond_9

    if-eqz v3, :cond_9

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    :goto_6
    iget-object v0, p0, Lf/i/a/a/k1/d;->g:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lf/i/a/a/k1/d;->o(ZLandroid/view/View;)V

    .line 15
    iget-object v0, p0, Lf/i/a/a/k1/d;->l:Lf/i/a/a/k1/g;

    if-eqz v0, :cond_a

    .line 16
    invoke-interface {v0, v3}, Lf/i/a/a/k1/g;->setEnabled(Z)V

    :cond_a
    :goto_7
    return-void
.end method

.method public setAnimatorListener(Lchuangyuan/ycj/videolibrary/utils/AnimUtils$AnimatorListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/k1/d;->C:Lchuangyuan/ycj/videolibrary/utils/AnimUtils$AnimatorListener;

    return-void
.end method

.method public setControlDispatcher(Lf/i/a/a/r;)V
    .locals 0
    .param p1    # Lf/i/a/a/r;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lf/i/a/a/s;

    invoke-direct {p1}, Lf/i/a/a/s;-><init>()V

    :cond_0
    iput-object p1, p0, Lf/i/a/a/k1/d;->F:Lf/i/a/a/r;

    return-void
.end method

.method public setFastForwardIncrementMs(I)V
    .locals 0

    .line 1
    iput p1, p0, Lf/i/a/a/k1/d;->N:I

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->s()V

    return-void
.end method

.method public setFullscreenStyle(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lf/i/a/a/k1/d;->w:I

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->getExoFullscreen()Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->getExoFullscreen()Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setButtonDrawable(I)V

    :cond_0
    return-void
.end method

.method public setPlaybackPreparer(Lf/i/a/a/k0;)V
    .locals 0
    .param p1    # Lf/i/a/a/k0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lf/i/a/a/k1/d;->H:Lf/i/a/a/k0;

    return-void
.end method

.method public setPlayer(Lf/i/a/a/l0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lf/i/a/a/k1/d;->a:Lf/i/a/a/k1/d$d;

    invoke-interface {v0, v1}, Lf/i/a/a/l0;->y(Lf/i/a/a/l0$b;)V

    .line 3
    :cond_1
    iput-object p1, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    if-eqz p1, :cond_2

    .line 4
    iget-object v0, p0, Lf/i/a/a/k1/d;->a:Lf/i/a/a/k1/d$d;

    invoke-interface {p1, v0}, Lf/i/a/a/l0;->r(Lf/i/a/a/l0$b;)V

    .line 5
    :cond_2
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->r()V

    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 4

    .line 1
    iput p1, p0, Lf/i/a/a/k1/d;->P:I

    .line 2
    iget-object v0, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    if-eqz v0, :cond_5

    .line 3
    invoke-interface {v0}, Lf/i/a/a/l0;->u()I

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lf/i/a/a/k1/d;->F:Lf/i/a/a/r;

    iget-object v0, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    const/4 v2, 0x0

    check-cast p1, Lf/i/a/a/s;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {v0, v2}, Lf/i/a/a/l0;->q(I)V

    goto :goto_0

    :cond_0
    throw v1

    :cond_1
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    if-ne v0, v2, :cond_3

    .line 6
    iget-object p1, p0, Lf/i/a/a/k1/d;->F:Lf/i/a/a/r;

    iget-object v0, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    check-cast p1, Lf/i/a/a/s;

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {v0, v3}, Lf/i/a/a/l0;->q(I)V

    goto :goto_0

    :cond_2
    throw v1

    :cond_3
    if-ne p1, v2, :cond_5

    if-ne v0, v3, :cond_5

    .line 8
    iget-object p1, p0, Lf/i/a/a/k1/d;->F:Lf/i/a/a/r;

    iget-object v0, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    check-cast p1, Lf/i/a/a/s;

    if-eqz p1, :cond_4

    .line 9
    invoke-interface {v0, v2}, Lf/i/a/a/l0;->q(I)V

    goto :goto_0

    :cond_4
    throw v1

    :cond_5
    :goto_0
    return-void
.end method

.method public setRewindIncrementMs(I)V
    .locals 0

    .line 1
    iput p1, p0, Lf/i/a/a/k1/d;->M:I

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->s()V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lf/i/a/a/k1/d;->J:Z

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->x()V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lf/i/a/a/k1/d;->Q:Z

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->w()V

    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0

    .line 1
    iput p1, p0, Lf/i/a/a/k1/d;->O:I

    .line 2
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->h()V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/d;->z:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVisibilityListener(Lf/i/a/a/k1/d$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/k1/d;->G:Lf/i/a/a/k1/d$e;

    return-void
.end method

.method public t()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lf/i/a/a/k1/d;->I:Z

    if-nez v0, :cond_0

    goto :goto_5

    .line 2
    :cond_0
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->j()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lf/i/a/a/k1/d;->d:Landroid/view/View;

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v1, v4

    .line 5
    iget-object v5, p0, Lf/i/a/a/k1/d;->d:Landroid/view/View;

    if-eqz v0, :cond_2

    const/16 v6, 0x8

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 6
    :goto_2
    iget-object v5, p0, Lf/i/a/a/k1/d;->e:Landroid/view/View;

    if-eqz v5, :cond_6

    if-nez v0, :cond_4

    .line 7
    invoke-virtual {v5}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    or-int/2addr v1, v3

    .line 8
    iget-object v3, p0, Lf/i/a/a/k1/d;->e:Landroid/view/View;

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    if-eqz v1, :cond_7

    .line 9
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->l()V

    :cond_7
    :goto_5
    return-void
.end method

.method public final u()V
    .locals 24

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lf/i/a/a/k1/d;->I:Z

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_11

    .line 3
    invoke-interface {v1}, Lf/i/a/a/l0;->w()Lf/i/a/a/u0;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lf/i/a/a/u0;->q()Z

    move-result v5

    if-nez v5, :cond_d

    .line 5
    iget-object v5, v0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    invoke-interface {v5}, Lf/i/a/a/l0;->z()I

    move-result v5

    .line 6
    iget-boolean v7, v0, Lf/i/a/a/k1/d;->K:Z

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    move v7, v5

    .line 7
    :goto_0
    iget-boolean v8, v0, Lf/i/a/a/k1/d;->K:Z

    if-eqz v8, :cond_2

    .line 8
    invoke-virtual {v1}, Lf/i/a/a/u0;->p()I

    move-result v8

    sub-int/2addr v8, v4

    goto :goto_1

    :cond_2
    move v8, v5

    :goto_1
    move-wide v9, v2

    move-wide v11, v9

    const/4 v13, 0x0

    :goto_2
    if-gt v7, v8, :cond_c

    if-ne v7, v5, :cond_3

    move-wide v11, v9

    .line 9
    :cond_3
    iget-object v14, v0, Lf/i/a/a/k1/d;->p:Lf/i/a/a/u0$c;

    invoke-virtual {v1, v7, v14}, Lf/i/a/a/u0;->n(ILf/i/a/a/u0$c;)Lf/i/a/a/u0$c;

    .line 10
    iget-object v14, v0, Lf/i/a/a/k1/d;->p:Lf/i/a/a/u0$c;

    move/from16 v16, v7

    iget-wide v6, v14, Lf/i/a/a/u0$c;->i:J

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v19, v6, v17

    if-nez v19, :cond_4

    .line 11
    iget-boolean v1, v0, Lf/i/a/a/k1/d;->K:Z

    xor-int/2addr v1, v4

    invoke-static {v1}, Lc/a/a/b/g/h;->v(Z)V

    goto/16 :goto_8

    .line 12
    :cond_4
    iget v6, v14, Lf/i/a/a/u0$c;->f:I

    :goto_3
    iget-object v7, v0, Lf/i/a/a/k1/d;->p:Lf/i/a/a/u0$c;

    iget v14, v7, Lf/i/a/a/u0$c;->g:I

    if-gt v6, v14, :cond_b

    .line 13
    iget-object v7, v0, Lf/i/a/a/k1/d;->o:Lf/i/a/a/u0$b;

    invoke-virtual {v1, v6, v7}, Lf/i/a/a/u0;->f(ILf/i/a/a/u0$b;)Lf/i/a/a/u0$b;

    .line 14
    iget-object v7, v0, Lf/i/a/a/k1/d;->o:Lf/i/a/a/u0$b;

    .line 15
    iget-object v7, v7, Lf/i/a/a/u0$b;->f:Lf/i/a/a/h1/r0/a;

    iget v7, v7, Lf/i/a/a/h1/r0/a;->a:I

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v7, :cond_a

    .line 16
    iget-object v15, v0, Lf/i/a/a/k1/d;->o:Lf/i/a/a/u0$b;

    invoke-virtual {v15, v14}, Lf/i/a/a/u0$b;->d(I)J

    move-result-wide v20

    const-wide/high16 v22, -0x8000000000000000L

    cmp-long v15, v20, v22

    if-nez v15, :cond_6

    .line 17
    iget-object v15, v0, Lf/i/a/a/k1/d;->o:Lf/i/a/a/u0$b;

    move/from16 v23, v5

    iget-wide v4, v15, Lf/i/a/a/u0$b;->d:J

    cmp-long v15, v4, v17

    if-nez v15, :cond_5

    goto :goto_7

    :cond_5
    move-wide/from16 v20, v4

    goto :goto_5

    :cond_6
    move/from16 v23, v5

    .line 18
    :goto_5
    iget-object v4, v0, Lf/i/a/a/k1/d;->o:Lf/i/a/a/u0$b;

    .line 19
    iget-wide v4, v4, Lf/i/a/a/u0$b;->e:J

    add-long v20, v20, v4

    cmp-long v4, v20, v2

    if-ltz v4, :cond_9

    .line 20
    iget-object v4, v0, Lf/i/a/a/k1/d;->p:Lf/i/a/a/u0$c;

    iget-wide v4, v4, Lf/i/a/a/u0$c;->i:J

    cmp-long v15, v20, v4

    if-gtz v15, :cond_9

    .line 21
    iget-object v4, v0, Lf/i/a/a/k1/d;->S:[J

    array-length v5, v4

    if-ne v13, v5, :cond_8

    .line 22
    array-length v5, v4

    if-nez v5, :cond_7

    const/4 v4, 0x1

    goto :goto_6

    :cond_7
    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    .line 23
    :goto_6
    iget-object v5, v0, Lf/i/a/a/k1/d;->S:[J

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    iput-object v5, v0, Lf/i/a/a/k1/d;->S:[J

    .line 24
    iget-object v5, v0, Lf/i/a/a/k1/d;->T:[Z

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v4

    iput-object v4, v0, Lf/i/a/a/k1/d;->T:[Z

    .line 25
    :cond_8
    iget-object v4, v0, Lf/i/a/a/k1/d;->S:[J

    add-long v20, v9, v20

    invoke-static/range {v20 .. v21}, Lf/i/a/a/q;->b(J)J

    move-result-wide v20

    aput-wide v20, v4, v13

    .line 26
    iget-object v4, v0, Lf/i/a/a/k1/d;->T:[Z

    iget-object v5, v0, Lf/i/a/a/k1/d;->o:Lf/i/a/a/u0$b;

    .line 27
    iget-object v5, v5, Lf/i/a/a/u0$b;->f:Lf/i/a/a/h1/r0/a;

    iget-object v5, v5, Lf/i/a/a/h1/r0/a;->c:[Lf/i/a/a/h1/r0/a$a;

    aget-object v5, v5, v14

    invoke-virtual {v5}, Lf/i/a/a/h1/r0/a$a;->b()Z

    move-result v5

    const/4 v15, 0x1

    xor-int/2addr v5, v15

    .line 28
    aput-boolean v5, v4, v13

    add-int/lit8 v13, v13, 0x1

    :cond_9
    :goto_7
    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v23

    const/4 v4, 0x1

    goto :goto_4

    :cond_a
    move/from16 v23, v5

    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_b
    move/from16 v23, v5

    .line 29
    iget-wide v4, v7, Lf/i/a/a/u0$c;->i:J

    add-long/2addr v9, v4

    add-int/lit8 v7, v16, 0x1

    move/from16 v5, v23

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_c
    :goto_8
    move-wide v2, v9

    goto :goto_9

    :cond_d
    move-wide v11, v2

    const/4 v13, 0x0

    .line 30
    :goto_9
    invoke-static {v2, v3}, Lf/i/a/a/q;->b(J)J

    move-result-wide v2

    .line 31
    invoke-static {v11, v12}, Lf/i/a/a/q;->b(J)J

    move-result-wide v4

    .line 32
    iget-object v1, v0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    invoke-interface {v1}, Lf/i/a/a/l0;->h()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 33
    iget-object v1, v0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    invoke-interface {v1}, Lf/i/a/a/l0;->i()J

    move-result-wide v6

    add-long/2addr v6, v4

    move-wide v11, v6

    move-wide v14, v11

    goto :goto_a

    .line 34
    :cond_e
    iget-object v1, v0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    invoke-interface {v1}, Lf/i/a/a/l0;->C()J

    move-result-wide v6

    add-long/2addr v6, v4

    .line 35
    iget-object v1, v0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    invoke-interface {v1}, Lf/i/a/a/l0;->l()J

    move-result-wide v8

    add-long/2addr v8, v4

    move-wide v11, v6

    move-wide v14, v8

    .line 36
    :goto_a
    iget-object v1, v0, Lf/i/a/a/k1/d;->D:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lchuangyuan/ycj/videolibrary/utils/AnimUtils$UpdateProgressListener;

    move-wide v5, v11

    move-wide v7, v14

    move-wide v9, v2

    .line 37
    invoke-interface/range {v4 .. v10}, Lchuangyuan/ycj/videolibrary/utils/AnimUtils$UpdateProgressListener;->updateProgress(JJJ)V

    goto :goto_b

    .line 38
    :cond_f
    iget-object v1, v0, Lf/i/a/a/k1/d;->l:Lf/i/a/a/k1/g;

    if-eqz v1, :cond_12

    .line 39
    iget-object v1, v0, Lf/i/a/a/k1/d;->U:[J

    array-length v1, v1

    add-int v4, v13, v1

    .line 40
    iget-object v5, v0, Lf/i/a/a/k1/d;->S:[J

    array-length v6, v5

    if-le v4, v6, :cond_10

    .line 41
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    iput-object v5, v0, Lf/i/a/a/k1/d;->S:[J

    .line 42
    iget-object v5, v0, Lf/i/a/a/k1/d;->T:[Z

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v5

    iput-object v5, v0, Lf/i/a/a/k1/d;->T:[Z

    .line 43
    :cond_10
    iget-object v5, v0, Lf/i/a/a/k1/d;->U:[J

    iget-object v6, v0, Lf/i/a/a/k1/d;->S:[J

    const/4 v7, 0x0

    invoke-static {v5, v7, v6, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    iget-object v5, v0, Lf/i/a/a/k1/d;->V:[Z

    iget-object v6, v0, Lf/i/a/a/k1/d;->T:[Z

    invoke-static {v5, v7, v6, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    iget-object v1, v0, Lf/i/a/a/k1/d;->l:Lf/i/a/a/k1/g;

    iget-object v5, v0, Lf/i/a/a/k1/d;->S:[J

    iget-object v6, v0, Lf/i/a/a/k1/d;->T:[Z

    invoke-interface {v1, v5, v6, v4}, Lf/i/a/a/k1/g;->setAdGroupTimesMs([J[ZI)V

    goto :goto_c

    :cond_11
    move-wide v11, v2

    move-wide v14, v11

    .line 46
    :cond_12
    :goto_c
    iget-object v1, v0, Lf/i/a/a/k1/d;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_13

    .line 47
    iget-object v4, v0, Lf/i/a/a/k1/d;->m:Ljava/lang/StringBuilder;

    iget-object v5, v0, Lf/i/a/a/k1/d;->n:Ljava/util/Formatter;

    invoke-static {v4, v5, v2, v3}, Lf/i/a/a/m1/h0;->L(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_13
    iget-object v1, v0, Lf/i/a/a/k1/d;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_14

    iget-boolean v4, v0, Lf/i/a/a/k1/d;->L:Z

    if-nez v4, :cond_14

    .line 49
    iget-object v4, v0, Lf/i/a/a/k1/d;->m:Ljava/lang/StringBuilder;

    iget-object v5, v0, Lf/i/a/a/k1/d;->n:Ljava/util/Formatter;

    invoke-static {v4, v5, v11, v12}, Lf/i/a/a/m1/h0;->L(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_14
    iget-object v1, v0, Lf/i/a/a/k1/d;->l:Lf/i/a/a/k1/g;

    if-eqz v1, :cond_15

    .line 51
    invoke-interface {v1, v11, v12}, Lf/i/a/a/k1/g;->setPosition(J)V

    .line 52
    iget-object v1, v0, Lf/i/a/a/k1/d;->l:Lf/i/a/a/k1/g;

    invoke-interface {v1, v14, v15}, Lf/i/a/a/k1/g;->setBufferedPosition(J)V

    .line 53
    iget-object v1, v0, Lf/i/a/a/k1/d;->l:Lf/i/a/a/k1/g;

    invoke-interface {v1, v2, v3}, Lf/i/a/a/k1/g;->setDuration(J)V

    .line 54
    :cond_15
    iget-object v1, v0, Lf/i/a/a/k1/d;->W:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 55
    iget-object v1, v0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    if-nez v1, :cond_16

    const/4 v1, 0x1

    const/4 v15, 0x1

    goto :goto_d

    :cond_16
    invoke-interface {v1}, Lf/i/a/a/l0;->o()I

    move-result v1

    move v15, v1

    const/4 v1, 0x1

    :goto_d
    if-eq v15, v1, :cond_1c

    const/4 v1, 0x4

    if-eq v15, v1, :cond_1c

    .line 56
    iget-object v1, v0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    invoke-interface {v1}, Lf/i/a/a/l0;->m()Z

    move-result v1

    const-wide/16 v2, 0x3e8

    if-eqz v1, :cond_1b

    const/4 v1, 0x3

    if-ne v15, v1, :cond_1b

    .line 57
    iget-object v1, v0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    invoke-interface {v1}, Lf/i/a/a/l0;->e()Lf/i/a/a/j0;

    move-result-object v1

    iget v1, v1, Lf/i/a/a/j0;->a:F

    const v4, 0x3dcccccd    # 0.1f

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_17

    goto :goto_f

    :cond_17
    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1a

    const/16 v2, 0x3e8

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v4, v3, v1

    .line 58
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int/2addr v2, v4

    int-to-long v4, v2

    .line 59
    rem-long/2addr v11, v4

    sub-long v6, v4, v11

    const-wide/16 v8, 0x5

    .line 60
    div-long v8, v4, v8

    cmp-long v2, v6, v8

    if-gez v2, :cond_18

    add-long/2addr v6, v4

    :cond_18
    cmpl-float v2, v1, v3

    if-nez v2, :cond_19

    goto :goto_e

    :cond_19
    long-to-float v2, v6

    div-float/2addr v2, v1

    float-to-long v6, v2

    :goto_e
    move-wide v2, v6

    goto :goto_f

    :cond_1a
    const-wide/16 v1, 0xc8

    move-wide v2, v1

    .line 61
    :cond_1b
    :goto_f
    iget-object v1, v0, Lf/i/a/a/k1/d;->W:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1c
    return-void
.end method

.method public final v()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lf/i/a/a/k1/d;->I:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lf/i/a/a/k1/d;->h:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget v1, p0, Lf/i/a/a/k1/d;->P:I

    if-nez v1, :cond_1

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p0, v2, v0}, Lf/i/a/a/k1/d;->o(ZLandroid/view/View;)V

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v1, v0}, Lf/i/a/a/k1/d;->o(ZLandroid/view/View;)V

    .line 7
    iget-object v0, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    invoke-interface {v0}, Lf/i/a/a/l0;->u()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Lf/i/a/a/k1/d;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lf/i/a/a/k1/d;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object v0, p0, Lf/i/a/a/k1/d;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lf/i/a/a/k1/d;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_4
    iget-object v0, p0, Lf/i/a/a/k1/d;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lf/i/a/a/k1/d;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object v0, p0, Lf/i/a/a/k1/d;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lf/i/a/a/k1/d;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 12
    :cond_5
    iget-object v0, p0, Lf/i/a/a/k1/d;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lf/i/a/a/k1/d;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object v0, p0, Lf/i/a/a/k1/d;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lf/i/a/a/k1/d;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 14
    :goto_0
    iget-object v0, p0, Lf/i/a/a/k1/d;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final w()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/k1/d;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lf/i/a/a/k1/d;->I:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lf/i/a/a/k1/d;->i:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-boolean v1, p0, Lf/i/a/a/k1/d;->Q:Z

    if-nez v1, :cond_1

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 4
    :cond_1
    iget-object v1, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p0, v2, v0}, Lf/i/a/a/k1/d;->o(ZLandroid/view/View;)V

    goto :goto_1

    .line 6
    :cond_2
    invoke-interface {v1}, Lf/i/a/a/l0;->x()Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const v1, 0x3e99999a    # 0.3f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 7
    iget-object v0, p0, Lf/i/a/a/k1/d;->i:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 8
    iget-object v0, p0, Lf/i/a/a/k1/d;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final x()V
    .locals 11

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/d;->E:Lf/i/a/a/l0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, p0, Lf/i/a/a/k1/d;->J:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 3
    invoke-interface {v0}, Lf/i/a/a/l0;->w()Lf/i/a/a/u0;

    move-result-object v0

    iget-object v1, p0, Lf/i/a/a/k1/d;->p:Lf/i/a/a/u0$c;

    .line 4
    invoke-virtual {v0}, Lf/i/a/a/u0;->p()I

    move-result v4

    const/16 v5, 0x64

    if-le v4, v5, :cond_1

    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {v0}, Lf/i/a/a/u0;->p()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    .line 6
    invoke-virtual {v0, v5, v1}, Lf/i/a/a/u0;->n(ILf/i/a/a/u0$c;)Lf/i/a/a/u0$c;

    move-result-object v6

    iget-wide v6, v6, Lf/i/a/a/u0$c;->i:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v6, v8

    if-nez v10, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    .line 7
    :goto_3
    iput-boolean v2, p0, Lf/i/a/a/k1/d;->K:Z

    return-void
.end method
