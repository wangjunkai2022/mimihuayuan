.class public Lcom/comeback/data/ui/lutube/ActorDetailActivity$a;
.super Lcom/comeback/data/base/BaseRefreshActivity$a;
.source "ActorDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/lutube/ActorDetailActivity;->p(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshActivity$a<",
        "Lcom/comeback/data/ui/lutube/bean/VideoList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/comeback/data/ui/lutube/ActorDetailActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/lutube/ActorDetailActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/lutube/ActorDetailActivity$a;->g:Lcom/comeback/data/ui/lutube/ActorDetailActivity;

    iput p2, p0, Lcom/comeback/data/ui/lutube/ActorDetailActivity$a;->f:I

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshActivity$a;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/lutube/bean/VideoList;

    .line 2
    iget v0, p0, Lcom/comeback/data/ui/lutube/ActorDetailActivity$a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/ActorDetailActivity$a;->g:Lcom/comeback/data/ui/lutube/ActorDetailActivity;

    invoke-static {v0}, Lcom/comeback/data/ui/lutube/ActorDetailActivity;->r(Lcom/comeback/data/ui/lutube/ActorDetailActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/ActorDetailActivity$a;->g:Lcom/comeback/data/ui/lutube/ActorDetailActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/lutube/ActorDetailActivity;->tvCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/comeback/data/ui/lutube/bean/VideoList;->getResponse()Lcom/comeback/data/ui/lutube/bean/VideoList$ResponseBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/lutube/bean/VideoList$ResponseBean;->getTotal_results()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "3uHLgNbv3KDyRkhH"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/comeback/data/ui/lutube/bean/VideoList;->getResponse()Lcom/comeback/data/ui/lutube/bean/VideoList$ResponseBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/lutube/bean/VideoList$ResponseBean;->getActor_cup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0N/Kgvbc"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/ActorDetailActivity$a;->g:Lcom/comeback/data/ui/lutube/ActorDetailActivity;

    invoke-static {v0}, Lcom/comeback/data/ui/lutube/ActorDetailActivity;->s(Lcom/comeback/data/ui/lutube/ActorDetailActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/lutube/bean/VideoList;->getResponse()Lcom/comeback/data/ui/lutube/bean/VideoList$ResponseBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/lutube/bean/VideoList$ResponseBean;->getVideos()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
