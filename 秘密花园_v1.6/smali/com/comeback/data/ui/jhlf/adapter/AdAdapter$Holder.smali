.class public Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "AdAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/jhlf/adapter/AdAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/jhlf/adapter/AdAdapter;

.field public b:Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;

.field public ivCover:Lcom/comeback/data/widget/RatioImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvDown2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/jhlf/adapter/AdAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder;->a:Lcom/comeback/data/ui/jhlf/adapter/AdAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder;->b:Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder;->b:Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;->getLogo()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder;->ivCover:Lcom/comeback/data/widget/RatioImageView;

    invoke-static {p1, v0}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 5
    iget-object p1, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder;->tvDown2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder;->b:Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;->getUrl2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "VgwHFgQaXR0aCEACFh5NClQWCgsFXW96NjE="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3
    iget-object p1, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder;->a:Lcom/comeback/data/ui/jhlf/adapter/AdAdapter;

    iget-object p1, p1, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder;->b:Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;->getUrl2()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :sswitch_1
    iget-object p1, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder;->b:Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0901ed -> :sswitch_1
        0x7f0902ba -> :sswitch_1
        0x7f0902bb -> :sswitch_0
    .end sparse-switch
.end method
