.class public Lcom/comeback/data/ui/gkj/adapter/ChapterAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "ChapterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/gkj/adapter/ChapterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/gkj/adapter/ChapterAdapter;

.field public kmColorAccent:I
    .annotation runtime Lbutterknife/BindColor;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public white:I
    .annotation runtime Lbutterknife/BindColor;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/gkj/adapter/ChapterAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/gkj/adapter/ChapterAdapter$Holder;->a:Lcom/comeback/data/ui/gkj/adapter/ChapterAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/ChapterAdapter$Holder;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/gkj/adapter/ChapterAdapter$Holder;->a:Lcom/comeback/data/ui/gkj/adapter/ChapterAdapter;

    .line 3
    iget v1, v1, Lcom/comeback/data/ui/gkj/adapter/ChapterAdapter;->e:I

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/comeback/data/ui/gkj/adapter/ChapterAdapter$Holder;->kmColorAccent:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/comeback/data/ui/gkj/adapter/ChapterAdapter$Holder;->white:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/ChapterAdapter$Holder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
