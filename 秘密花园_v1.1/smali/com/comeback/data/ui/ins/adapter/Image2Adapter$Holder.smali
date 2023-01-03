.class public Lcom/comeback/data/ui/ins/adapter/Image2Adapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "Image2Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/ins/adapter/Image2Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/ins/adapter/Image2Adapter;

.field public b:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;

.field public ivImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/ins/adapter/Image2Adapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/ins/adapter/Image2Adapter$Holder;->a:Lcom/comeback/data/ui/ins/adapter/Image2Adapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/ins/adapter/Image2Adapter$Holder;->b:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->getFileList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;->getCoverUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/ins/adapter/Image2Adapter$Holder;->ivImg:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public onClick()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/adapter/Image2Adapter$Holder;->a:Lcom/comeback/data/ui/ins/adapter/Image2Adapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/comeback/data/ui/ins/adapter/Image2Adapter$Holder;->b:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->getAllFile()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/comeback/data/ui/commom/PicBrowseActivity;->l(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method
