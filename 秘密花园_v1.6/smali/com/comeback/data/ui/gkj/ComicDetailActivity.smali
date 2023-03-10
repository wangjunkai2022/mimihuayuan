.class public Lcom/comeback/data/ui/gkj/ComicDetailActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "ComicDetailActivity.java"

# interfaces
.implements Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter$a;


# instance fields
.field public b:Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;

.field public c:Z

.field public d:Z

.field public e:Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter;

.field public f:Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;",
            ">;"
        }
    .end annotation
.end field

.field public ivCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public kmColorAccent:I
    .annotation runtime Lbutterknife/BindColor;
    .end annotation
.end field

.field public llExpend:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public primary_text:I
    .annotation runtime Lbutterknife/BindColor;
    .end annotation
.end field

.field public rvList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rvList2:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvHot:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvIntro:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvOrder:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvReverse:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvStar:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvState:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

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

.field public tvUpdate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->c:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->d:Z

    return-void
.end method

.method public static l(Lcom/comeback/data/ui/gkj/ComicDetailActivity;Lcom/comeback/data/ui/gkj/bean/ComicDetail;)V
    .locals 5

    if-eqz p0, :cond_6

    .line 1
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ComicDetail;->getData()Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->getTags()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$TagsEntity;

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v4, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->tvTag4:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v4, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->tvTag4:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$TagsEntity;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v4, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->tvTag3:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v4, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->tvTag3:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$TagsEntity;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object v4, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->tvTag2:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v4, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->tvTag2:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$TagsEntity;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 10
    :cond_3
    iget-object v4, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->tvTag1:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v4, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->tvTag1:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$TagsEntity;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->tvUpdate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hw=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ComicDetail;->getData()Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->getUpdate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Hg=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->tvState:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ComicDetail;->getData()Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;->isHaveNew()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "3939jNbO3Yve"

    goto :goto_2

    :cond_5
    const-string p1, "0tXRgcX/3ojg"

    :goto_2
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_6
    const/4 p0, 0x0

    .line 14
    throw p0
.end method

.method public static n()V
    .locals 0

    return-void
.end method

.method public static o(Landroid/content/Context;Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/gkj/ComicDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "UwMXBQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static p()V
    .locals 0

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "UwMXBQ=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;

    iput-object p1, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->b:Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c005a

    return v0
.end method

.method public e()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseActivity;->i()V

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/comeback/data/base/BaseActivity;->f(Landroid/app/Activity;Z)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->b:Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;->getNameCn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->tvStar:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->b:Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;->getGrade()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->tvHot:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->b:Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;->getPlayPre()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->b:Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;->getCoverS()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->ivCover:Landroid/widget/ImageView;

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Lc/a/a/b/g/h;->D0(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->tvIntro:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->b:Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-static {}, Lf/e/a/j/n/p/e;->b()Lf/e/a/j/n/p/c;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->b:Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lf/e/a/j/n/p/c;->j(I)Lm/e;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/comeback/data/ui/gkj/ComicDetailActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/gkj/ComicDetailActivity$a;-><init>(Lcom/comeback/data/ui/gkj/ComicDetailActivity;)V

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->tvOrder:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->c:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->kmColorAccent:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->primary_text:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->tvReverse:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->c:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->primary_text:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->kmColorAccent:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->d:Z

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->llExpend:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const-wide/16 v2, 0x258

    invoke-static {v0, v1, v2, v3}, Lc/a/a/b/g/h;->b0(Landroid/view/View;FJ)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const-wide/16 v1, 0x258

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    iget-boolean p1, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->c:Z

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->f:Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter;

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->e:Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter;

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iput-boolean v0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->c:Z

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 6
    iget-object p1, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->f:Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter;

    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->g:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 7
    invoke-virtual {p0}, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->m()V

    goto :goto_0

    .line 8
    :sswitch_1
    iget-boolean p1, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->c:Z

    if-eqz p1, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->f:Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->e:Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter;

    if-nez v0, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 11
    iget-object p1, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->f:Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter;

    iget-object v0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->h:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 12
    iput-boolean v4, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->c:Z

    .line 13
    invoke-virtual {p0}, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->m()V

    goto :goto_0

    .line 14
    :sswitch_2
    iput-boolean v0, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->d:Z

    .line 15
    iget-object p1, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->llExpend:Landroid/widget/LinearLayout;

    invoke-static {p1, v3, v1, v2}, Lc/a/a/b/g/h;->b0(Landroid/view/View;FJ)V

    goto :goto_0

    .line 16
    :sswitch_3
    iput-boolean v4, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->d:Z

    .line 17
    iget-object p1, p0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->llExpend:Landroid/widget/LinearLayout;

    invoke-static {p1, v3, v1, v2}, Lc/a/a/b/g/h;->o1(Landroid/view/View;FJ)V

    :cond_4
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0902bf -> :sswitch_3
        0x7f0902c0 -> :sswitch_2
        0x7f0902f3 -> :sswitch_1
        0x7f090305 -> :sswitch_0
    .end sparse-switch
.end method
