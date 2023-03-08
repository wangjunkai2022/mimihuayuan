.class public Lcom/comeback/data/ui/jhlf/adapter/WebSiteAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "WebSiteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/jhlf/adapter/WebSiteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$WebSiteEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/jhlf/adapter/WebSiteAdapter;

.field public b:Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$WebSiteEntity;

.field public ivCover:Lcom/comeback/data/widget/RatioImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/jhlf/adapter/WebSiteAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/jhlf/adapter/WebSiteAdapter$Holder;->a:Lcom/comeback/data/ui/jhlf/adapter/WebSiteAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$WebSiteEntity;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/jhlf/adapter/WebSiteAdapter$Holder;->b:Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$WebSiteEntity;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/adapter/WebSiteAdapter$Holder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$WebSiteEntity;->getWebsite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$WebSiteEntity;->getLogo()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/adapter/WebSiteAdapter$Holder;->ivCover:Lcom/comeback/data/widget/RatioImageView;

    invoke-static {p1, v0}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method
