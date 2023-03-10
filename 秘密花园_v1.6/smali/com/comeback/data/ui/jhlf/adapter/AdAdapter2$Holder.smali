.class public Lcom/comeback/data/ui/jhlf/adapter/AdAdapter2$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "AdAdapter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/jhlf/adapter/AdAdapter2;
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
.field public a:Lcom/comeback/data/ui/jhlf/adapter/AdAdapter2;

.field public b:Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;

.field public basic_third_text:I
    .annotation runtime Lbutterknife/BindColor;
    .end annotation
.end field

.field public c:Z

.field public ivCover:Lcom/comeback/data/widget/RatioImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public kmColorAccent:I
    .annotation runtime Lbutterknife/BindColor;
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

.field public tvState:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/jhlf/adapter/AdAdapter2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter2$Holder;->a:Lcom/comeback/data/ui/jhlf/adapter/AdAdapter2;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/g/h;->r(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter2$Holder;->c:Z

    .line 3
    iput-object p1, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter2$Holder;->b:Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter2$Holder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter2$Holder;->b:Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;->getLogo()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter2$Holder;->ivCover:Lcom/comeback/data/widget/RatioImageView;

    invoke-static {p1, v0}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 6
    iget-object p1, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter2$Holder;->tvState:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter2$Holder;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "0tXRgcX60ZD2"

    goto :goto_0

    :cond_0
    const-string v0, "0f7JgcX60ZD2"

    :goto_0
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter2$Holder;->tvState:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter2$Holder;->c:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter2$Holder;->basic_third_text:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter2$Holder;->kmColorAccent:I

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-object p1, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter2$Holder;->tvDown2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter2$Holder;->b:Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;->getUrl2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter2$Holder;->c:Z

    if-eqz v0, :cond_0

    const-string p1, "0tXRgcX60ZD2iYn5"

    .line 2
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "VgwHFgQaXR0aCEACFh5NClQWCgsFXW96NjE="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5
    iget-object p1, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter2$Holder;->a:Lcom/comeback/data/ui/jhlf/adapter/AdAdapter2;

    iget-object p1, p1, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
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
    iget-object p1, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter2$Holder;->b:Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;->getUrl2()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter2$Holder;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :sswitch_1
    iget-object p1, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter2$Holder;->b:Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean$AdEntity;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter2$Holder;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0901ed -> :sswitch_1
        0x7f0902ba -> :sswitch_1
        0x7f0902bb -> :sswitch_0
    .end sparse-switch
.end method
