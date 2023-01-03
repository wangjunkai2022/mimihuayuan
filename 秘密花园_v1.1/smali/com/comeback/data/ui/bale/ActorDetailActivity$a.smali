.class public Lcom/comeback/data/ui/bale/ActorDetailActivity$a;
.super Lm/j;
.source "ActorDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/bale/ActorDetailActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/bale/bean/StarDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/bale/ActorDetailActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/bale/ActorDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/ActorDetailActivity$a;->e:Lcom/comeback/data/ui/bale/ActorDetailActivity;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/comeback/data/ui/bale/bean/StarDetail;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/bale/ActorDetailActivity$a;->e:Lcom/comeback/data/ui/bale/ActorDetailActivity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/bale/bean/StarDetail;->getResult()Lcom/comeback/data/ui/bale/bean/StarDetail$ResultBean;

    move-result-object p1

    .line 3
    iget-object v1, v0, Lcom/comeback/data/ui/bale/ActorDetailActivity;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/bale/bean/StarDetail$ResultBean;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, v0, Lcom/comeback/data/ui/bale/ActorDetailActivity;->tvCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/comeback/data/ui/bale/bean/StarDetail$ResultBean;->getVideoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "3uHLgdbC3rr0"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, v0, Lcom/comeback/data/ui/bale/ActorDetailActivity;->tvInfo:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/bale/bean/StarDetail$ResultBean;->getInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, v0, Lcom/comeback/data/ui/bale/ActorDetailActivity;->tvIntro:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/bale/bean/StarDetail$ResultBean;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p1}, Lcom/comeback/data/ui/bale/bean/StarDetail$ResultBean;->getImage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/comeback/data/ui/bale/ActorDetailActivity;->ivHead:Lcom/comeback/data/widget/RatioImageView;

    invoke-static {v1, v2}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 8
    iget-object v1, v0, Lcom/comeback/data/ui/bale/ActorDetailActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    new-instance v1, Lcom/comeback/data/ui/bale/adapter/Video2Adapter;

    invoke-direct {v1, v0}, Lcom/comeback/data/ui/bale/adapter/Video2Adapter;-><init>(Landroid/content/Context;)V

    .line 10
    iget-object v0, v0, Lcom/comeback/data/ui/bale/ActorDetailActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    invoke-virtual {p1}, Lcom/comeback/data/ui/bale/bean/StarDetail$ResultBean;->getVideoList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
