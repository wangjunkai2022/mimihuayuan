.class public Lcom/comeback/data/ui/km/MineFragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "MineFragment.java"


# static fields
.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;


# instance fields
.field public etCurrent:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public g:I

.field public h:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field public radioGroupHost:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvAll:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "XA88DAQATQ=="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/comeback/data/ui/km/MineFragment;->i:Ljava/lang/String;

    const-string v0, "XA88DRs="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/comeback/data/ui/km/MineFragment;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseFragment;-><init>()V

    .line 2
    sget-object v0, Lf/e/a/j/w/b;->a:Lf/e/a/j/w/b;

    iput-object v0, p0, Lcom/comeback/data/ui/km/MineFragment;->h:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method public static synthetic h(Landroid/widget/RadioGroup;I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object p0

    sget-object p1, Lcom/comeback/data/ui/km/MineFragment;->i:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lf/e/a/k/j;->g(Ljava/lang/String;I)V

    goto :goto_0

    .line 2
    :pswitch_1
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object p0

    sget-object p1, Lcom/comeback/data/ui/km/MineFragment;->i:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lf/e/a/k/j;->g(Ljava/lang/String;I)V

    goto :goto_0

    .line 3
    :pswitch_2
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object p0

    sget-object p1, Lcom/comeback/data/ui/km/MineFragment;->i:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lf/e/a/k/j;->g(Ljava/lang/String;I)V

    goto :goto_0

    .line 4
    :pswitch_3
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object p0

    sget-object p1, Lcom/comeback/data/ui/km/MineFragment;->i:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lf/e/a/k/j;->g(Ljava/lang/String;I)V

    goto :goto_0

    .line 5
    :pswitch_4
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object p0

    sget-object p1, Lcom/comeback/data/ui/km/MineFragment;->i:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lf/e/a/k/j;->g(Ljava/lang/String;I)V

    :goto_0
    const-string p0, "0urkgubR37vjg774l9bvgrDvhfLbm4aoluORBggaQ4yj/YXx4w=="

    .line 6
    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f0901a8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c011e

    return v0
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km/MineFragment;->radioGroupHost:Landroid/widget/RadioGroup;

    new-instance v1, Lf/e/a/j/w/c;

    invoke-direct {v1, p0}, Lf/e/a/j/w/c;-><init>(Lcom/comeback/data/ui/km/MineFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RadioGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v0

    sget-object v1, Lcom/comeback/data/ui/km/MineFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lf/e/a/k/j;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/km/MineFragment;->g:I

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/km/MineFragment;->etCurrent:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0t/wgeL+36HegKDZkODhjLXbWQ=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/comeback/data/ui/km/bean/Video;->targetUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/km/MineFragment;->tvAll:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/comeback/data/ui/km/bean/Video;->targetUrlDetail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "PWiG68SarIyV6r2C3OeG44E+DYHN8d+t74Cmyp7+3Y6T04vQzpyFv5vJg4//wIvKu4fT+YPcrNfMyNLzwYz/5tLowoHy2w=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic i()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/km/MineFragment;->g:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/km/MineFragment;->radioGroupHost:Landroid/widget/RadioGroup;

    const v1, 0x7f0901ac

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/comeback/data/ui/km/MineFragment;->radioGroupHost:Landroid/widget/RadioGroup;

    const v1, 0x7f0901ab

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/comeback/data/ui/km/MineFragment;->radioGroupHost:Landroid/widget/RadioGroup;

    const v1, 0x7f0901aa

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/comeback/data/ui/km/MineFragment;->radioGroupHost:Landroid/widget/RadioGroup;

    const v1, 0x7f0901a9

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 6
    :cond_4
    iget-object v0, p0, Lcom/comeback/data/ui/km/MineFragment;->radioGroupHost:Landroid/widget/RadioGroup;

    const v1, 0x7f0901a8

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/comeback/data/ui/km/MineFragment;->radioGroupHost:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/comeback/data/ui/km/MineFragment;->h:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090126

    if-eq p1, v0, :cond_4

    const v0, 0x7f09013f

    if-eq p1, v0, :cond_3

    const v0, 0x7f09029c

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/comeback/data/ui/km/MineFragment;->etCurrent:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "09rujOjO3YvJgZ3d"

    .line 4
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/comeback/data/ui/km/bean/Video;->targetUrlDetail:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "0u3JjOjO0Z3NgYnJnNLojr/1huPLl4GZlfq5gvLLhvKf"

    .line 6
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v0

    sget-object v1, Lcom/comeback/data/ui/km/MineFragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lf/e/a/k/j;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sput-object p1, Lcom/comeback/data/ui/km/bean/Video;->targetUrl:Ljava/lang/String;

    .line 9
    iget-object p1, p0, Lcom/comeback/data/ui/km/MineFragment;->etCurrent:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/comeback/data/ui/km/MineFragment;->etCurrent:Landroid/widget/EditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0t/wgeL+36HegKDZkODhjLXbWQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/comeback/data/ui/km/bean/Video;->targetUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const-string p1, "0urkgubR37vjg774"

    .line 11
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/comeback/data/ui/km/FollowListActivity;->r(Landroid/content/Context;)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/comeback/data/ui/km/CollectListActivity;->r(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
