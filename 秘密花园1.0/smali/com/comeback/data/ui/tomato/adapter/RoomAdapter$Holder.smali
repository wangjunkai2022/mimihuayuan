.class public Lcom/comeback/data/ui/tomato/adapter/RoomAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "RoomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/tomato/adapter/RoomAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;

.field public b:Lcom/comeback/data/ui/tomato/adapter/RoomAdapter;

.field public ivHead:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/tomato/adapter/RoomAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/tomato/adapter/RoomAdapter$Holder;->b:Lcom/comeback/data/ui/tomato/adapter/RoomAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/tomato/adapter/RoomAdapter$Holder;->a:Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;->getLive()Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->getLiveCoverUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/tomato/adapter/RoomAdapter$Holder;->ivHead:Landroid/widget/ImageView;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v2, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 6
    invoke-static {v2}, Lf/d/a/c;->d(Landroid/content/Context;)Lf/d/a/j;

    move-result-object v2

    new-instance v3, Lf/e/a/j/m0/c/f/b;

    invoke-direct {v3, v0}, Lf/e/a/j/m0/c/f/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lf/d/a/j;->o(Ljava/lang/Object;)Lf/d/a/i;

    move-result-object v0

    const v2, 0x7f0800a1

    .line 7
    invoke-virtual {v0, v2}, Lf/d/a/s/a;->q(I)Lf/d/a/s/a;

    move-result-object v0

    check-cast v0, Lf/d/a/i;

    .line 8
    invoke-virtual {v0, v1}, Lf/d/a/i;->G(Landroid/widget/ImageView;)Lf/d/a/s/h/i;

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/adapter/RoomAdapter$Holder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;->getLive()Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;->getTopic()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
