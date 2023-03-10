.class public Lcom/comeback/data/ui/gkj/adapter/CgAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "CgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/gkj/adapter/CgAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/gkj/adapter/CgAdapter;

.field public b:Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;

.field public ivCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvPraise:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/gkj/adapter/CgAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/gkj/adapter/CgAdapter$Holder;->a:Lcom/comeback/data/ui/gkj/adapter/CgAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/adapter/CgAdapter$Holder;->b:Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/CgAdapter$Holder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/CgAdapter$Holder;->tvPraise:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->getHot()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/CgAdapter$Holder;->ivCover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6
    sget v1, Lcom/comeback/data/App;->d:I

    .line 7
    div-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lc/a/a/b/g/h;->M(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int v1, v1, v2

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->getCover_url()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/comeback/data/ui/gkj/adapter/CgAdapter$Holder;->ivCover:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lc/a/a/b/g/h;->D0(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 10
    iget-object p1, p0, Lcom/comeback/data/ui/gkj/adapter/CgAdapter$Holder;->ivCover:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
