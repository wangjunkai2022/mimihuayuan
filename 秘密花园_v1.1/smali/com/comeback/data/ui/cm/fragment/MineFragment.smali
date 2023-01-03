.class public Lcom/comeback/data/ui/cm/fragment/MineFragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "MineFragment.java"


# instance fields
.field public g:Ljava/lang/String;

.field public h:I

.field public i:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field public radioGroupHost:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/comeback/data/ui/cm/fragment/MineFragment;->h:I

    .line 3
    new-instance v0, Lf/e/a/j/e/e/a;

    invoke-direct {v0, p0}, Lf/e/a/j/e/e/a;-><init>(Lcom/comeback/data/ui/cm/fragment/MineFragment;)V

    iput-object v0, p0, Lcom/comeback/data/ui/cm/fragment/MineFragment;->i:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c00f9

    return v0
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/fragment/MineFragment;->radioGroupHost:Landroid/widget/RadioGroup;

    new-instance v1, Lf/e/a/j/e/e/b;

    invoke-direct {v1, p0}, Lf/e/a/j/e/e/b;-><init>(Lcom/comeback/data/ui/cm/fragment/MineFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RadioGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    const-class v0, Lcom/comeback/data/ui/cm/fragment/MineFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cm/fragment/MineFragment;->g:Ljava/lang/String;

    .line 2
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/cm/fragment/MineFragment;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lf/e/a/k/j;->c(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3
    :cond_0
    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/comeback/data/ui/cm/fragment/MineFragment;->h:I

    return-void
.end method

.method public synthetic h(Landroid/widget/RadioGroup;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x3

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cm/fragment/MineFragment;->h:I

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lcom/comeback/data/ui/cm/fragment/MineFragment;->h:I

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/comeback/data/ui/cm/fragment/MineFragment;->h:I

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/comeback/data/ui/cm/fragment/MineFragment;->h:I

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/comeback/data/ui/cm/fragment/MineFragment;->j()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0901a8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic i()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cm/fragment/MineFragment;->h:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/cm/fragment/MineFragment;->radioGroupHost:Landroid/widget/RadioGroup;

    const v1, 0x7f0901ab

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/fragment/MineFragment;->radioGroupHost:Landroid/widget/RadioGroup;

    const v1, 0x7f0901aa

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/comeback/data/ui/cm/fragment/MineFragment;->radioGroupHost:Landroid/widget/RadioGroup;

    const v1, 0x7f0901a9

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/comeback/data/ui/cm/fragment/MineFragment;->radioGroupHost:Landroid/widget/RadioGroup;

    const v1, 0x7f0901a8

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/comeback/data/ui/cm/fragment/MineFragment;->radioGroupHost:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/comeback/data/ui/cm/fragment/MineFragment;->i:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public final j()V
    .locals 3

    .line 1
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/cm/fragment/MineFragment;->g:Ljava/lang/String;

    iget v2, p0, Lcom/comeback/data/ui/cm/fragment/MineFragment;->h:I

    invoke-virtual {v0, v1, v2}, Lf/e/a/k/j;->g(Ljava/lang/String;I)V

    .line 2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "CVxd"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "0urkgubR37vjg774l9bvgrDvhfLbm4aoluORBggaQ4yj/YXx4w=="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    return-void
.end method
