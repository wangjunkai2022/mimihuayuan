.class public Lcom/comeback/data/ui/jhlf/adapter/MMAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "MMAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/jhlf/adapter/MMAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;

.field public b:Lcom/comeback/data/ui/jhlf/adapter/MMAdapter;

.field public ivCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvAddress:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvIntro:Landroid/widget/TextView;
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
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/jhlf/adapter/MMAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/jhlf/adapter/MMAdapter$Holder;->b:Lcom/comeback/data/ui/jhlf/adapter/MMAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/jhlf/adapter/MMAdapter$Holder;->a:Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;->getCover()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/comeback/data/ui/jhlf/adapter/MMAdapter$Holder;->ivCover:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v1, p0, Lcom/comeback/data/ui/jhlf/adapter/MMAdapter$Holder;->ivCover:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/adapter/MMAdapter$Holder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/adapter/MMAdapter$Holder;->tvState:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;->getPublished_at()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/adapter/MMAdapter$Holder;->tvIntro:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;->getDescd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/adapter/MMAdapter$Holder;->tvAddress:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
