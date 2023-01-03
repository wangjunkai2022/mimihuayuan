.class public Lcom/comeback/data/ui/cm/ActorDetailActivity$a;
.super Lcom/comeback/data/base/BaseRefreshActivity$a;
.source "ActorDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/cm/ActorDetailActivity;->p(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshActivity$a<",
        "Lcom/comeback/data/ui/cm/bean/ArtistDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/cm/ActorDetailActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cm/ActorDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/ActorDetailActivity$a;->f:Lcom/comeback/data/ui/cm/ActorDetailActivity;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshActivity$a;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/comeback/data/ui/cm/bean/ArtistDetail;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/cm/ActorDetailActivity$a;->f:Lcom/comeback/data/ui/cm/ActorDetailActivity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cm/bean/ArtistDetail;->getRescont()Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;

    move-result-object p1

    .line 3
    iget-object v1, v0, Lcom/comeback/data/ui/cm/ActorDetailActivity;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, v0, Lcom/comeback/data/ui/cm/ActorDetailActivity;->tvCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->getVideoList()Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity;->getTotal()I

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
    iget-object v1, v0, Lcom/comeback/data/ui/cm/ActorDetailActivity;->tvInfo:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, v0, Lcom/comeback/data/ui/cm/ActorDetailActivity;->tvIntro:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p1}, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->getImage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/comeback/data/ui/cm/ActorDetailActivity;->ivHead:Lcom/comeback/data/widget/RatioImageView;

    invoke-static {v1, v2}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 8
    iget-object v0, v0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity;->getVideoList()Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/cm/bean/ArtistDetail$RescontEntity$VideoListEntity;->getData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
