.class public Lcom/comeback/data/ui/km2/VideoList2Adapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "VideoList2Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/km2/VideoList2Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/km2/bean/Km2Video;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/km2/VideoList2Adapter;

.field public b:Lcom/comeback/data/ui/km2/bean/Km2Video;

.field public ivImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/km2/VideoList2Adapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/km2/VideoList2Adapter$Holder;->a:Lcom/comeback/data/ui/km2/VideoList2Adapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/km2/bean/Km2Video;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/km2/VideoList2Adapter$Holder;->b:Lcom/comeback/data/ui/km2/bean/Km2Video;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/km2/bean/Km2Video;->getCover()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/km2/VideoList2Adapter$Holder;->ivImg:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lc/a/a/b/g/h;->B0(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method
