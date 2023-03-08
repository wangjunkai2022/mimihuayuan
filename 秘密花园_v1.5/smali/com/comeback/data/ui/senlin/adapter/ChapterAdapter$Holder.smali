.class public Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "ChapterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter;
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
.field public a:Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

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
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$Holder;->a:Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$Holder;->b:Ljava/lang/String;

    const-string v0, "Ew=="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$Holder;->b:Ljava/lang/String;

    const-string v0, "a0Y="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 5
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$Holder;->c:Ljava/lang/String;

    const/4 v0, 0x1

    .line 6
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$Holder;->d:Ljava/lang/String;

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$Holder;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$Holder;->a:Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter;

    .line 8
    iget v0, v0, Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter;->e:I

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$Holder;->kmColorAccent:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$Holder;->white:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    iget-object p1, p0, Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$Holder;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$Holder;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
