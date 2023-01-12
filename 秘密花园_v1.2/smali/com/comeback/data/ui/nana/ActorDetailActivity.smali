.class public Lcom/comeback/data/ui/nana/ActorDetailActivity;
.super Lcom/comeback/data/base/BaseRefreshActivity;
.source "ActorDetailActivity.java"


# instance fields
.field public d:Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity$ActorsEntity;

.field public ivHead:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshActivity;-><init>()V

    return-void
.end method

.method public static synthetic r(Lcom/comeback/data/ui/nana/ActorDetailActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic s(Lcom/comeback/data/ui/nana/ActorDetailActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static t(Landroid/content/Context;Landroid/widget/ImageView;Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity$ActorsEntity;)V
    .locals 2

    .line 1
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "fg8CAw47XFIXA0Y="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/nana/ActorDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "UwMXBQ=="

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 5
    invoke-static {p0, v0, p1}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "UwMXBQ=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity$ActorsEntity;

    iput-object p1, p0, Lcom/comeback/data/ui/nana/ActorDetailActivity;->d:Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity$ActorsEntity;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c00aa

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshActivity;->e()V

    const/high16 v0, -0x1000000

    .line 2
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/nana/ActorDetailActivity;->d:Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity$ActorsEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity$ActorsEntity;->getActor_url()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/nana/ActorDetailActivity;->ivHead:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->K0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/nana/ActorDetailActivity;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/nana/ActorDetailActivity;->d:Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity$ActorsEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity$ActorsEntity;->getActor_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public l()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/nana/adapter/VideoAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/nana/adapter/VideoAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public m()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public p(I)V
    .locals 5

    .line 1
    invoke-static {}, Lf/e/a/j/h0/m/e;->a()Lf/e/a/j/h0/m/b;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/nana/ActorDetailActivity;->d:Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity$ActorsEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity$ActorsEntity;->getActor_id()I

    move-result v1

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "RwMEAQ=="

    .line 3
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Qw0IAQU="

    invoke-static {p1, v2, v3, v4}, Lf/b/a/a/a;->G(ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    sget-object v4, Lf/e/a/j/h0/m/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {v0, v1, v2}, Lf/e/a/j/h0/m/b;->g(ILjava/util/HashMap;)Lm/e;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/comeback/data/ui/nana/ActorDetailActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/nana/ActorDetailActivity$a;-><init>(Lcom/comeback/data/ui/nana/ActorDetailActivity;I)V

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method
