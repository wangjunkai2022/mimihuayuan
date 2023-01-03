.class public Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "ChapterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/hm/adapter/ChapterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomeListHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/hm/adapter/ChapterAdapter;

.field public b:Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter;

.field public tvTag1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTag2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTag3:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTag4:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/hm/adapter/ChapterAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;->a:Lcom/comeback/data/ui/hm/adapter/ChapterAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;->b:Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter;->getLines()Ljava/util/ArrayList;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;->tvTag4:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;->tvTag3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;->tvTag2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;->tvTag1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 10
    :pswitch_0
    iget-object v0, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;->tvTag4:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter$Line;

    invoke-virtual {v2}, Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter$Line;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;->tvTag4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    :pswitch_1
    iget-object v0, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;->tvTag3:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter$Line;

    invoke-virtual {v2}, Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter$Line;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;->tvTag3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    :pswitch_2
    iget-object v0, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;->tvTag2:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter$Line;

    invoke-virtual {v2}, Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter$Line;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;->tvTag2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    :pswitch_3
    iget-object v0, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;->tvTag1:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter$Line;

    invoke-virtual {p1}, Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter$Line;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p1, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;->tvTag1:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    .line 2
    :goto_0
    :pswitch_3
    iget-object p1, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;->b:Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter;->getLines()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter$Line;

    .line 3
    sget-object v0, Lf/e/a/j/q/f/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lf/e/a/j/q/f/a;->a:Ljava/lang/String;

    goto :goto_1

    :cond_0
    sget-object v0, Lf/e/a/j/q/f/a;->b:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GBIPBRJMVVodDX0DRQ=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter$Line;->getLinkId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EQAMCwA6XQ4="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1}, Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter$Line;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERICEANO"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p1}, Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter$Line;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EQkGHVY="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1}, Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter$Line;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;->a:Lcom/comeback/data/ui/hm/adapter/ChapterAdapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/comeback/data/ui/hm/adapter/ChapterAdapter$HomeListHolder;->b:Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter;

    invoke-virtual {v1}, Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/comeback/data/ui/hm/NovelReadActivity;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090317
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
