.class public Lcom/comeback/data/ui/km2/MMListAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "MMListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/km2/MMListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/km2/MMListAdapter;

.field public b:Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;

.field public ivImg:Lcom/comeback/data/widget/RatioImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvDesc:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/km2/MMListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/km2/MMListAdapter$Holder;->a:Lcom/comeback/data/ui/km2/MMListAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/km2/MMListAdapter$Holder;->b:Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/km2/MMListAdapter$Holder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/km2/MMListAdapter$Holder;->tvDesc:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->getImage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/km2/MMListAdapter$Holder;->ivImg:Lcom/comeback/data/widget/RatioImageView;

    invoke-static {p1, v0}, Lc/a/a/b/g/h;->x0(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method
