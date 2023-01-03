.class public Lcom/comeback/data/ui/commom/PicBrowseAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "PicBrowseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/commom/PicBrowseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public mIvImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/commom/PicBrowseAdapter$Holder;->a:Ljava/lang/String;

    .line 3
    sget-object p1, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 4
    invoke-static {p1}, Lf/d/a/c;->d(Landroid/content/Context;)Lf/d/a/j;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/commom/PicBrowseAdapter$Holder;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lf/d/a/j;->p(Ljava/lang/String;)Lf/d/a/i;

    move-result-object p1

    const v0, 0x7f0800a1

    .line 5
    invoke-virtual {p1, v0}, Lf/d/a/s/a;->q(I)Lf/d/a/s/a;

    move-result-object p1

    check-cast p1, Lf/d/a/i;

    const/high16 v0, -0x80000000

    .line 6
    invoke-virtual {p1, v0, v0}, Lf/d/a/s/a;->p(II)Lf/d/a/s/a;

    move-result-object p1

    check-cast p1, Lf/d/a/i;

    iget-object v0, p0, Lcom/comeback/data/ui/commom/PicBrowseAdapter$Holder;->mIvImg:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p1, v0}, Lf/d/a/i;->G(Landroid/widget/ImageView;)Lf/d/a/s/h/i;

    return-void
.end method
