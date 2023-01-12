.class public Lcom/comeback/data/ui/avbobo/adapter/RankHotSearchAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "RankHotSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/avbobo/adapter/RankHotSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/avbobo/bean/RankHotSearch$DataBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/avbobo/adapter/RankHotSearchAdapter;

.field public b:Lcom/comeback/data/ui/avbobo/bean/RankHotSearch$DataBean;

.field public tvCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/avbobo/adapter/RankHotSearchAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/avbobo/adapter/RankHotSearchAdapter$Holder;->a:Lcom/comeback/data/ui/avbobo/adapter/RankHotSearchAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/avbobo/bean/RankHotSearch$DataBean;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/adapter/RankHotSearchAdapter$Holder;->b:Lcom/comeback/data/ui/avbobo/bean/RankHotSearch$DataBean;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/adapter/RankHotSearchAdapter$Holder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/avbobo/bean/RankHotSearch$DataBean;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/adapter/RankHotSearchAdapter$Holder;->tvCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/avbobo/bean/RankHotSearch$DataBean;->getCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
