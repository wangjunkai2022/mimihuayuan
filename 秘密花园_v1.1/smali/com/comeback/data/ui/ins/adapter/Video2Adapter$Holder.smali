.class public Lcom/comeback/data/ui/ins/adapter/Video2Adapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "Video2Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/ins/adapter/Video2Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/ins/adapter/Video2Adapter;

.field public b:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;

.field public ivImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/ins/adapter/Video2Adapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/ins/adapter/Video2Adapter$Holder;->a:Lcom/comeback/data/ui/ins/adapter/Video2Adapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/ins/adapter/Video2Adapter$Holder;->b:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->getFileList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity;

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity;->getCoverUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/ins/adapter/Video2Adapter$Holder;->ivImg:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public onClick()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/adapter/Video2Adapter$Holder;->a:Lcom/comeback/data/ui/ins/adapter/Video2Adapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/comeback/data/ui/ins/adapter/Video2Adapter$Holder;->b:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->getFileList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity;->getPostVideoFile()Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->getPostparam()Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->getPlay_url()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/ins/adapter/Video2Adapter$Holder;->b:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;

    invoke-virtual {v2}, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/comeback/data/ui/commom/PlayActivity;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
