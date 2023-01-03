.class public Lcom/comeback/data/ui/nana/fragment/ShortTypeFragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "ShortTypeFragment.java"


# instance fields
.field public rvList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rvTag:Landroidx/recyclerview/widget/RecyclerView;
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

    const v0, 0x7f0c012f

    return v0
.end method

.method public e()V
    .locals 3

    .line 1
    invoke-static {}, Lf/e/a/j/g0/m/e;->a()Lf/e/a/j/g0/m/b;

    move-result-object v0

    const-string v1, "RAoMFh8="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lf/e/a/j/g0/m/d;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lf/e/a/j/g0/m/b;->j(Ljava/lang/String;Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/comeback/data/ui/nana/fragment/ShortTypeFragment$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/nana/fragment/ShortTypeFragment$a;-><init>(Lcom/comeback/data/ui/nana/fragment/ShortTypeFragment;)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    .line 4
    invoke-static {}, Lf/e/a/j/g0/m/e;->a()Lf/e/a/j/g0/m/b;

    move-result-object v0

    sget-object v1, Lf/e/a/j/g0/m/d;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lf/e/a/j/g0/m/b;->i(Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/comeback/data/ui/nana/fragment/ShortTypeFragment$b;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/nana/fragment/ShortTypeFragment$b;-><init>(Lcom/comeback/data/ui/nana/fragment/ShortTypeFragment;)V

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseFragment;->g(Lm/e;Lm/j;)V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method
