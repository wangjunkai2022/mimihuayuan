.class public Lcom/comeback/data/ui/km2/MineFragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "MineFragment.java"


# static fields
.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;


# instance fields
.field public g:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field public h:Z

.field public i:Z

.field public radioGroupHost:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public radioGroupPlay:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "XA9ROx0aSWwDClUe"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/comeback/data/ui/km2/MineFragment;->j:Ljava/lang/String;

    const-string v0, "XA9ROwMcSkdB"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/comeback/data/ui/km2/MineFragment;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseFragment;-><init>()V

    .line 2
    sget-object v0, Lf/e/a/j/y/e;->a:Lf/e/a/j/y/e;

    iput-object v0, p0, Lcom/comeback/data/ui/km2/MineFragment;->g:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method public static synthetic h(Landroid/widget/RadioGroup;I)V
    .locals 3

    const-string p0, "0urkgubR37vjg774"

    const-string v0, "0urkgubR37vjg774l9bvgrDvhfLbm4aoluORBggaQ4yj/YXx4w=="

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1
    :sswitch_0
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object p1

    sget-object v0, Lcom/comeback/data/ui/km2/MineFragment;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lf/e/a/k/j;->f(Ljava/lang/String;Z)V

    .line 2
    sput-boolean v1, Lcom/comeback/data/ui/km2/VideoPlayActivity;->f:Z

    .line 3
    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :sswitch_1
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object p1

    sget-object v0, Lcom/comeback/data/ui/km2/MineFragment;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lf/e/a/k/j;->f(Ljava/lang/String;Z)V

    .line 5
    sput-boolean v2, Lcom/comeback/data/ui/km2/VideoPlayActivity;->f:Z

    .line 6
    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :sswitch_2
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object p0

    sget-object p1, Lcom/comeback/data/ui/km2/MineFragment;->k:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lf/e/a/k/j;->f(Ljava/lang/String;Z)V

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :sswitch_3
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object p0

    sget-object p1, Lcom/comeback/data/ui/km2/MineFragment;->k:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lf/e/a/k/j;->f(Ljava/lang/String;Z)V

    .line 10
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0901ac -> :sswitch_3
        0x7f0901ad -> :sswitch_2
        0x7f0901ba -> :sswitch_1
        0x7f0901bb -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c0122

    return v0
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/MineFragment;->radioGroupPlay:Landroid/widget/RadioGroup;

    new-instance v1, Lf/e/a/j/y/d;

    invoke-direct {v1, p0}, Lf/e/a/j/y/d;-><init>(Lcom/comeback/data/ui/km2/MineFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RadioGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v0

    sget-object v1, Lcom/comeback/data/ui/km2/MineFragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lf/e/a/k/j;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/comeback/data/ui/km2/MineFragment;->h:Z

    .line 2
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v0

    sget-object v1, Lcom/comeback/data/ui/km2/MineFragment;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lf/e/a/k/j;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/comeback/data/ui/km2/MineFragment;->i:Z

    .line 3
    iget-boolean v0, p0, Lcom/comeback/data/ui/km2/MineFragment;->h:Z

    sput-boolean v0, Lcom/comeback/data/ui/km2/VideoPlayActivity;->f:Z

    return-void
.end method

.method public synthetic i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/MineFragment;->radioGroupPlay:Landroid/widget/RadioGroup;

    iget-boolean v1, p0, Lcom/comeback/data/ui/km2/MineFragment;->h:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0901bb

    goto :goto_0

    :cond_0
    const v1, 0x7f0901ba

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/km2/MineFragment;->radioGroupHost:Landroid/widget/RadioGroup;

    iget-boolean v1, p0, Lcom/comeback/data/ui/km2/MineFragment;->i:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0901ad

    goto :goto_1

    :cond_1
    const v1, 0x7f0901ac

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/km2/MineFragment;->radioGroupPlay:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/comeback/data/ui/km2/MineFragment;->g:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/km2/MineFragment;->radioGroupHost:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/comeback/data/ui/km2/MineFragment;->g:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090129

    if-eq p1, v0, :cond_1

    const v0, 0x7f090143

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/comeback/data/ui/km2/FollowListActivity;->r(Landroid/content/Context;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/comeback/data/ui/km2/CollectListActivity;->r(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
