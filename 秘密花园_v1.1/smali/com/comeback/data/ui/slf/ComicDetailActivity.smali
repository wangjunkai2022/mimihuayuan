.class public Lcom/comeback/data/ui/slf/ComicDetailActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "ComicDetailActivity.java"

# interfaces
.implements Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter$a;


# instance fields
.field public b:Lcom/comeback/data/ui/slf/bean/SLFItemBean;

.field public c:Z

.field public d:Z

.field public e:Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter;

.field public f:Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/slf/bean/ChapterBean;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/slf/bean/ChapterBean;",
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

.field public rvLike:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
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
    iput-boolean v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->c:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->d:Z

    return-void
.end method

.method public static l(Lcom/comeback/data/ui/slf/ComicDetailActivity;Ljava/util/List;)V
    .locals 4

    if-eqz p0, :cond_2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->h:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->g:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ge v1, v2, :cond_0

    if-ge v1, v3, :cond_0

    .line 4
    iget-object v2, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->h:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-ge v0, v3, :cond_1

    .line 6
    iget-object v1, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    const/4 p0, 0x0

    .line 7
    throw p0
.end method

.method public static n(Landroid/content/Context;Lcom/comeback/data/ui/slf/bean/SLFItemBean;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/slf/ComicDetailActivity;

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


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "UwMXBQ=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    iput-object p1, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->b:Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c0058

    return v0
.end method

.method public e()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseActivity;->i()V

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/comeback/data/base/BaseActivity;->f(Landroid/app/Activity;Z)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->b:Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvTag1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->b:Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->getTagStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvTag2:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvTag3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvTag4:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->b:Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvStar:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvHot:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->b:Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->getImg()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->ivCover:Landroid/widget/ImageView;

    const/16 v3, 0x14

    invoke-static {v0, v2, v3}, Lc/a/a/b/g/h;->N0(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvIntro:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->b:Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->getSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvUpdate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvState:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->b:Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    new-instance v0, Lf/i/b/r;

    invoke-direct {v0}, Lf/i/b/r;-><init>()V

    const-string v1, "XgY="

    .line 15
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->b:Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lf/i/b/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lf/e/a/j/k0/h/b;->a()Lf/e/a/j/k0/h/a;

    move-result-object v1

    invoke-virtual {v0}, Lf/i/b/o;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lf/e/a/j/k0/h/d;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v1, v2}, Lf/e/a/j/k0/h/a;->m(Ljava/util/HashMap;)Lm/e;

    move-result-object v1

    .line 17
    new-instance v2, Lcom/comeback/data/ui/slf/ComicDetailActivity$a;

    invoke-direct {v2, p0}, Lcom/comeback/data/ui/slf/ComicDetailActivity$a;-><init>(Lcom/comeback/data/ui/slf/ComicDetailActivity;)V

    .line 18
    invoke-virtual {p0, v1, v2}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    .line 19
    invoke-static {}, Lf/e/a/j/k0/h/b;->a()Lf/e/a/j/k0/h/a;

    move-result-object v1

    invoke-virtual {v0}, Lf/i/b/o;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/e/a/j/k0/h/d;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v1, v0}, Lf/e/a/j/k0/h/a;->b(Ljava/util/HashMap;)Lm/e;

    move-result-object v0

    .line 20
    new-instance v1, Lcom/comeback/data/ui/slf/ComicDetailActivity$b;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/slf/ComicDetailActivity$b;-><init>(Lcom/comeback/data/ui/slf/ComicDetailActivity;)V

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvOrder:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->c:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->kmColorAccent:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->primary_text:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->tvReverse:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->c:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->primary_text:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->kmColorAccent:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->d:Z

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->llExpend:Landroid/widget/LinearLayout;

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
    iget-boolean p1, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->c:Z

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iput-boolean v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->c:Z

    .line 4
    iget-object p1, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->f:Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter;

    invoke-virtual {p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 5
    iget-object p1, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->f:Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter;

    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->g:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 6
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/ComicDetailActivity;->m()V

    goto :goto_0

    .line 7
    :sswitch_1
    iget-boolean p1, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->c:Z

    if-eqz p1, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->f:Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter;

    invoke-virtual {p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 9
    iget-object p1, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->f:Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter;

    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->h:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 10
    iput-boolean v4, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->c:Z

    .line 11
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/ComicDetailActivity;->m()V

    goto :goto_0

    .line 12
    :sswitch_2
    iput-boolean v0, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->d:Z

    .line 13
    iget-object p1, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->llExpend:Landroid/widget/LinearLayout;

    invoke-static {p1, v3, v1, v2}, Lc/a/a/b/g/h;->b0(Landroid/view/View;FJ)V

    goto :goto_0

    .line 14
    :sswitch_3
    iput-boolean v4, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->d:Z

    .line 15
    iget-object p1, p0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->llExpend:Landroid/widget/LinearLayout;

    invoke-static {p1, v3, v1, v2}, Lc/a/a/b/g/h;->m1(Landroid/view/View;FJ)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0902b7 -> :sswitch_3
        0x7f0902b8 -> :sswitch_2
        0x7f0902ea -> :sswitch_1
        0x7f0902fb -> :sswitch_0
    .end sparse-switch
.end method
