.class public Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "ImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/ins/adapter/ImageAdapter;
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
.field public a:Lcom/comeback/data/ui/ins/adapter/ImageAdapter;

.field public b:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;

.field public ivHead:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public ivImg:Landroid/widget/ImageView;
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

.field public tvViews:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/ins/adapter/ImageAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder;->a:Lcom/comeback/data/ui/ins/adapter/ImageAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder;->b:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;

    .line 3
    iget-object p1, p0, Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder;->ivImg:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 4
    sget v0, Lcom/comeback/data/App;->d:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 5
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 7
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-double v0, v0

    const-wide v2, 0x3febd70a3d70a3d7L    # 0.87

    mul-double v0, v0, v2

    double-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 8
    :cond_0
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder;->ivImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object p1, p0, Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder;->b:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder;->b:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->getFileList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$FileListEntity;->getCoverUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder;->ivImg:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 12
    iget-object p1, p0, Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder;->b:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->getUserInfo()Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->getHeadImgUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder;->ivHead:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lc/a/a/b/g/h;->z0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 13
    iget-object p1, p0, Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder;->tvUser:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder;->b:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->getUserInfo()Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder;->tvViews:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder;->b:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->getReadingCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090138

    if-eq p1, v0, :cond_1

    const v0, 0x7f090142

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder;->a:Lcom/comeback/data/ui/ins/adapter/ImageAdapter;

    iget-object p1, p1, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder;->b:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->getUserInfo()Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->getUsername()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder;->b:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->getUserInfo()Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder;->b:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;

    invoke-virtual {v2}, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->getUserInfo()Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity$UserInfoEntity;->getHeadImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/comeback/data/ui/ins/UserCenterActivity;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder;->a:Lcom/comeback/data/ui/ins/adapter/ImageAdapter;

    iget-object p1, p1, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder;->b:Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/ins/bean/ImageList$DataEntity$ResultListEntity;->getAllFile()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/comeback/data/ui/commom/PicBrowseActivity;->l(Landroid/content/Context;Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method
