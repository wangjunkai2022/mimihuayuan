.class public Lcom/comeback/data/ui/cucumber/fragment/HomeFragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "HomeFragment.java"


# instance fields
.field public g:Lcom/comeback/data/ui/cucumber/bean/DefaultChannel;

.field public mViewPager:Lcom/comeback/data/widget/CustomViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c0101

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-static {}, Lf/e/a/j/g/h/c;->a()Lf/e/a/j/g/h/a;

    move-result-object v0

    invoke-interface {v0}, Lf/e/a/j/g/h/a;->l()Lm/e;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/comeback/data/ui/cucumber/fragment/HomeFragment$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/cucumber/fragment/HomeFragment$a;-><init>(Lcom/comeback/data/ui/cucumber/fragment/HomeFragment;)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method
