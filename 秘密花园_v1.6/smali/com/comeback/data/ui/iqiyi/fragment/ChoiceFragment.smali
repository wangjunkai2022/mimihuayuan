.class public Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "ChoiceFragment.java"


# instance fields
.field public rvList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tabLayout:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public viewPager:Lcom/comeback/data/widget/CustomViewPager;
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

    const v0, 0x7f0c0119

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-static {}, Lf/e/a/j/t/e/d;->a()Lf/e/a/j/t/e/a;

    move-result-object v0

    invoke-static {}, Lf/e/a/j/t/e/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/e/a/j/t/e/a;->e(Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment$a;-><init>(Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment;)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    .line 4
    invoke-static {}, Lf/e/a/j/t/e/d;->a()Lf/e/a/j/t/e/a;

    move-result-object v0

    .line 5
    new-instance v1, Lf/i/b/r;

    invoke-direct {v1}, Lf/i/b/r;-><init>()V

    .line 6
    invoke-virtual {v1}, Lf/i/b/o;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lf/e/a/j/t/e/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Lf/e/a/j/t/e/a;->d(Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment$b;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment$b;-><init>(Lcom/comeback/data/ui/iqiyi/fragment/ChoiceFragment;)V

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method
