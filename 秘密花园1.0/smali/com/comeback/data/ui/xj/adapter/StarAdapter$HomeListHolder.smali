.class public Lcom/comeback/data/ui/xj/adapter/StarAdapter$HomeListHolder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "StarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/xj/adapter/StarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomeListHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/xj/adapter/StarAdapter;

.field public b:Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;

.field public ivCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/xj/adapter/StarAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/xj/adapter/StarAdapter$HomeListHolder;->a:Lcom/comeback/data/ui/xj/adapter/StarAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/xj/adapter/StarAdapter$HomeListHolder;->b:Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;->getAvatar()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/xj/adapter/StarAdapter$HomeListHolder;->ivCover:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->A0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/xj/adapter/StarAdapter$HomeListHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;->getSpname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
