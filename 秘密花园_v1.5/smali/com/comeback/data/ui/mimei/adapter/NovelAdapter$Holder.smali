.class public Lcom/comeback/data/ui/mimei/adapter/NovelAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "NovelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/mimei/adapter/NovelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/mimei/adapter/NovelAdapter;

.field public b:Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;

.field public tvIntro:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/mimei/adapter/NovelAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/mimei/adapter/NovelAdapter$Holder;->a:Lcom/comeback/data/ui/mimei/adapter/NovelAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/adapter/NovelAdapter$Holder;->b:Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/adapter/NovelAdapter$Holder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/adapter/NovelAdapter$Holder;->tvIntro:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;->getDesc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
