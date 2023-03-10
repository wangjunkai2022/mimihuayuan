.class public Lcom/comeback/data/ui/slf/adapter/SpecialAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "SpecialAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/slf/adapter/SpecialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/slf/bean/Special;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/slf/adapter/SpecialAdapter;

.field public b:Lcom/comeback/data/ui/slf/bean/Special;

.field public ivCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvIntro:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/slf/adapter/SpecialAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/slf/adapter/SpecialAdapter$Holder;->a:Lcom/comeback/data/ui/slf/adapter/SpecialAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/slf/bean/Special;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/slf/adapter/SpecialAdapter$Holder;->b:Lcom/comeback/data/ui/slf/bean/Special;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/slf/adapter/SpecialAdapter$Holder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/Special;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/slf/adapter/SpecialAdapter$Holder;->tvIntro:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/Special;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/Special;->getImg()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/slf/adapter/SpecialAdapter$Holder;->ivCover:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lc/a/a/b/g/h;->P0(Ljava/lang/String;Landroid/widget/ImageView;I)V

    return-void
.end method
