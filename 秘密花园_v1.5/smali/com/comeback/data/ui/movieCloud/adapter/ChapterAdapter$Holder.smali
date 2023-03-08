.class public Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "ChapterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/bean/PlayListBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/bean/PlayListBean;

.field public b:Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter;

.field public tvTag:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter$Holder;->b:Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/bean/PlayListBean;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter$Holder;->a:Lcom/comeback/data/bean/PlayListBean;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter$Holder;->tvTag:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/bean/PlayListBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter$Holder;->tvTag:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter$Holder;->b:Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter;

    .line 5
    iget v0, v0, Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter;->e:I

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "FFJTUVxHew=="

    goto :goto_0

    :cond_0
    const-string v0, "FFtaXVJKAA=="

    :goto_0
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
