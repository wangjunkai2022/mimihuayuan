.class public Lcom/comeback/data/ui/ins/adapter/VideoAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "VideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/ins/adapter/VideoAdapter;
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
.field public a:Lcom/comeback/data/ui/ins/adapter/VideoAdapter;

.field public b:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;

.field public ivHead:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public ivImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvDuration:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvUser:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/ins/adapter/VideoAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/ins/adapter/VideoAdapter$Holder;->a:Lcom/comeback/data/ui/ins/adapter/VideoAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/ins/adapter/VideoAdapter$Holder;->b:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/ins/adapter/VideoAdapter$Holder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/comeback/data/ui/ins/adapter/VideoAdapter$Holder;->b:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->getFileList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity;

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/ins/adapter/VideoAdapter$Holder;->ivImg:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->I0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/ins/adapter/VideoAdapter$Holder;->b:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->getUserInfo()Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$UserInfoEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$UserInfoEntity;->getHeadImgUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/ins/adapter/VideoAdapter$Holder;->ivHead:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->J0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/ins/adapter/VideoAdapter$Holder;->tvUser:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/ins/adapter/VideoAdapter$Holder;->b:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->getUserInfo()Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$UserInfoEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$UserInfoEntity;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/ins/adapter/VideoAdapter$Holder;->tvDuration:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity;->getDuration()I

    move-result p1

    invoke-static {p1}, Lc/a/a/b/g/h;->h1(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09013c

    if-eq p1, v0, :cond_1

    const v0, 0x7f090146

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/comeback/data/ui/ins/adapter/VideoAdapter$Holder;->a:Lcom/comeback/data/ui/ins/adapter/VideoAdapter;

    iget-object p1, p1, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/comeback/data/ui/ins/adapter/VideoAdapter$Holder;->b:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->getUserInfo()Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$UserInfoEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$UserInfoEntity;->getUsername()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/ins/adapter/VideoAdapter$Holder;->b:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->getUserInfo()Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$UserInfoEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$UserInfoEntity;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/ins/adapter/VideoAdapter$Holder;->b:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;

    invoke-virtual {v2}, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->getUserInfo()Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$UserInfoEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$UserInfoEntity;->getHeadImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/comeback/data/ui/ins/UserCenterActivity;->u(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/comeback/data/ui/ins/adapter/VideoAdapter$Holder;->a:Lcom/comeback/data/ui/ins/adapter/VideoAdapter;

    iget-object p1, p1, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/comeback/data/ui/ins/adapter/VideoAdapter$Holder;->b:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->getFileList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity;->getPostVideoFile()Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity;->getPostparam()Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity$FileListEntity$PostVideoFileEntity$PostparamEntity;->getPlay_url()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/ins/adapter/VideoAdapter$Holder;->b:Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/ins/bean/VideoList$DataEntity$ResultListEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/comeback/data/ui/commom/PlayActivity;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
