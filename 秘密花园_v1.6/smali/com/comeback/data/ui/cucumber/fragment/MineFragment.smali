.class public Lcom/comeback/data/ui/cucumber/fragment/MineFragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "MineFragment.java"


# instance fields
.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field public radioGroupHead:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public radioGroupHost:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public radioGroupImage:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public radioGroupPlay:Landroid/widget/RadioGroup;
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
    iput v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->h:I

    iput v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->i:I

    iput v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->j:I

    iput v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->k:I

    .line 3
    new-instance v0, Lf/e/a/j/g/g/d;

    invoke-direct {v0, p0}, Lf/e/a/j/g/g/d;-><init>(Lcom/comeback/data/ui/cucumber/fragment/MineFragment;)V

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->l:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c0102

    return v0
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->radioGroupHost:Landroid/widget/RadioGroup;

    new-instance v1, Lf/e/a/j/g/g/c;

    invoke-direct {v1, p0}, Lf/e/a/j/g/g/c;-><init>(Lcom/comeback/data/ui/cucumber/fragment/MineFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RadioGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    const-class v0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->g:Ljava/lang/String;

    .line 2
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lf/e/a/k/j;->c(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3
    :cond_0
    rem-int/lit8 v1, v0, 0xa

    iput v1, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->h:I

    .line 4
    div-int/lit8 v1, v0, 0xa

    rem-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->i:I

    .line 5
    div-int/lit8 v1, v0, 0x64

    rem-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->j:I

    .line 6
    div-int/lit16 v0, v0, 0x3e8

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->k:I

    return-void
.end method

.method public synthetic h(Landroid/widget/RadioGroup;I)V
    .locals 2

    const p1, 0x7f0901b3

    const/4 v0, 0x0

    if-eq p2, p1, :cond_0

    const/4 p1, 0x2

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 1
    :pswitch_0
    iput p1, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->i:I

    goto :goto_0

    .line 2
    :pswitch_1
    iput v1, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->i:I

    goto :goto_0

    .line 3
    :pswitch_2
    iput p1, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->h:I

    .line 4
    :pswitch_3
    iput v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->i:I

    goto :goto_0

    .line 5
    :pswitch_4
    iput v1, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->h:I

    goto :goto_0

    .line 6
    :pswitch_5
    iput v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->h:I

    goto :goto_0

    .line 7
    :pswitch_6
    iput v1, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->k:I

    goto :goto_0

    .line 8
    :pswitch_7
    iput v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->k:I

    goto :goto_0

    .line 9
    :cond_0
    iput v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->j:I

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->j()V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f0901aa
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0901ba
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic i()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->h:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->radioGroupHost:Landroid/widget/RadioGroup;

    const v3, 0x7f0901ae

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->radioGroupHost:Landroid/widget/RadioGroup;

    const v3, 0x7f0901ad

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->radioGroupHost:Landroid/widget/RadioGroup;

    const v3, 0x7f0901ac

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 5
    :goto_0
    iget v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->i:I

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->radioGroupPlay:Landroid/widget/RadioGroup;

    const v1, 0x7f0901bc

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1

    .line 7
    :cond_4
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->radioGroupPlay:Landroid/widget/RadioGroup;

    const v1, 0x7f0901bb

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1

    .line 8
    :cond_5
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->radioGroupPlay:Landroid/widget/RadioGroup;

    const v1, 0x7f0901ba

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 9
    :goto_1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->j:I

    if-eqz v0, :cond_6

    goto :goto_2

    .line 10
    :cond_6
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->radioGroupImage:Landroid/widget/RadioGroup;

    const v1, 0x7f0901b3

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 11
    :goto_2
    iget v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->k:I

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_7

    goto :goto_3

    .line 12
    :cond_7
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->radioGroupHead:Landroid/widget/RadioGroup;

    const v1, 0x7f0901ab

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_3

    .line 13
    :cond_8
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->radioGroupHead:Landroid/widget/RadioGroup;

    const v1, 0x7f0901aa

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 14
    :goto_3
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->radioGroupHost:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->l:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 15
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->radioGroupPlay:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->l:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 16
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->radioGroupImage:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->l:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 17
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->radioGroupHead:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->l:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public final j()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->h:I

    iget v1, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->i:I

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v0

    iget v0, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->j:I

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr v0, v1

    iget v1, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->k:I

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v0

    .line 2
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v0

    iget-object v2, p0, Lcom/comeback/data/ui/cucumber/fragment/MineFragment;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lf/e/a/k/j;->g(Ljava/lang/String;I)V

    .line 3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "CVxd"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "0urkgubR37vjg774l9bvgrDvhfLbm4aoluORBggaQ4yj/YXx4w=="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    return-void
.end method
