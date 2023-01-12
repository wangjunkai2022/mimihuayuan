.class public Lcom/comeback/data/ui/xiami/adapter/NovelAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "NovelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/xiami/adapter/NovelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/xiami/bean/NovelList$DataBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/xiami/adapter/NovelAdapter;

.field public b:Lcom/comeback/data/ui/xiami/bean/NovelList$DataBean;

.field public tvTag:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/xiami/adapter/NovelAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/xiami/adapter/NovelAdapter$Holder;->a:Lcom/comeback/data/ui/xiami/adapter/NovelAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/xiami/bean/NovelList$DataBean;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/adapter/NovelAdapter$Holder;->b:Lcom/comeback/data/ui/xiami/bean/NovelList$DataBean;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/adapter/NovelAdapter$Holder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xiami/bean/NovelList$DataBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/adapter/NovelAdapter$Holder;->tvView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xiami/bean/NovelList$DataBean;->getViews()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/adapter/NovelAdapter$Holder;->tvTag:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xiami/bean/NovelList$DataBean;->getCategoryTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
