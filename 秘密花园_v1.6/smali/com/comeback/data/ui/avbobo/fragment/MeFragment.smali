.class public Lcom/comeback/data/ui/avbobo/fragment/MeFragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "MeFragment.java"


# static fields
.field public static final i:Ljava/lang/String;


# instance fields
.field public g:I

.field public h:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field public radioGroupHost:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "VhQBCwkcZlscFUA="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/comeback/data/ui/avbobo/fragment/MeFragment;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseFragment;-><init>()V

    .line 2
    sget-object v0, Lf/e/a/j/b/f/c;->a:Lf/e/a/j/b/f/c;

    iput-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/MeFragment;->h:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method public static synthetic h(Landroid/widget/RadioGroup;I)V
    .locals 2

    const-string p0, "0urkgubR37vjg774l9bvgrDvhfLbm4aoluORBggaQ4yj/YXx4w=="

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object p1

    sget-object v0, Lcom/comeback/data/ui/avbobo/fragment/MeFragment;->i:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lf/e/a/k/j;->g(Ljava/lang/String;I)V

    .line 2
    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :pswitch_1
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object p1

    sget-object v0, Lcom/comeback/data/ui/avbobo/fragment/MeFragment;->i:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lf/e/a/k/j;->g(Ljava/lang/String;I)V

    .line 4
    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object p1

    sget-object v0, Lcom/comeback/data/ui/avbobo/fragment/MeFragment;->i:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lf/e/a/k/j;->g(Ljava/lang/String;I)V

    .line 6
    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0901ac
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c00f0

    return v0
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/MeFragment;->radioGroupHost:Landroid/widget/RadioGroup;

    new-instance v1, Lf/e/a/j/b/f/b;

    invoke-direct {v1, p0}, Lf/e/a/j/b/f/b;-><init>(Lcom/comeback/data/ui/avbobo/fragment/MeFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RadioGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v0

    sget-object v1, Lcom/comeback/data/ui/avbobo/fragment/MeFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lf/e/a/k/j;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/avbobo/fragment/MeFragment;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/comeback/data/ui/avbobo/fragment/MeFragment;->g:I

    :cond_0
    return-void
.end method

.method public synthetic i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/MeFragment;->radioGroupHost:Landroid/widget/RadioGroup;

    iget v1, p0, Lcom/comeback/data/ui/avbobo/fragment/MeFragment;->g:I

    if-nez v1, :cond_0

    const v1, 0x7f0901ac

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const v1, 0x7f0901ad

    goto :goto_0

    :cond_1
    const v1, 0x7f0901ae

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/fragment/MeFragment;->radioGroupHost:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/comeback/data/ui/avbobo/fragment/MeFragment;->h:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method
