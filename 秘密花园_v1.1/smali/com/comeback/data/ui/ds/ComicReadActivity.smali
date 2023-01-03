.class public Lcom/comeback/data/ui/ds/ComicReadActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "ComicReadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public b:Lcom/comeback/data/ui/ds/bean/DsItemBean;

.field public c:Z

.field public d:Z

.field public e:I

.field public f:Lcom/comeback/data/ui/ds/bean/ComicDetailBean;

.field public flComic:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public g:Lcom/comeback/data/ui/ds/adapter/PicAdapter;

.field public h:Lcom/comeback/data/ui/ds/adapter/ChapterAdapter;

.field public i:Z

.field public j:Z

.field public llBottom:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public llFolder:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rvChapter:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rvList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public scrollView:Landroidx/core/widget/NestedScrollView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvCollect:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvNovel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvPage:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static q(Landroid/content/Context;Lcom/comeback/data/ui/ds/bean/DsItemBean;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->getContentType()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WQ0VAQc="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 3
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/ds/ComicReadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "VA0ODQg6XQ=="

    .line 4
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "XhEtCx0WVQ=="

    .line 5
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "VA0ODQg6XQ=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    iput-object v0, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->b:Lcom/comeback/data/ui/ds/bean/DsItemBean;

    const-string v0, "XhEtCx0WVQ=="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->j:Z

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c0047

    return v0
.end method

.method public e()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseActivity;->g()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->e:I

    .line 3
    invoke-static {}, Lf/e/a/j/i/j/b;->a()Lf/e/a/j/i/j/a;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->b:Lcom/comeback/data/ui/ds/bean/DsItemBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lf/e/a/j/i/j/a;->b(Ljava/lang/String;)Lm/e;

    move-result-object v1

    .line 4
    new-instance v2, Lf/e/a/j/i/f;

    invoke-direct {v2, p0}, Lf/e/a/j/i/f;-><init>(Lcom/comeback/data/ui/ds/ComicReadActivity;)V

    .line 5
    invoke-virtual {p0, v1, v2}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    .line 6
    iget-object v1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/comeback/data/ui/ds/ComicReadActivity$a;

    invoke-direct {v2, p0}, Lcom/comeback/data/ui/ds/ComicReadActivity$a;-><init>(Lcom/comeback/data/ui/ds/ComicReadActivity;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 7
    invoke-static {}, Lg/a/x;->P()Lg/a/x;

    move-result-object v1

    invoke-static {v1}, Lf/e/a/k/g;->d(Lg/a/x;)Lf/e/a/k/g;

    move-result-object v1

    const-class v2, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    const-string v3, "XgY="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->b:Lcom/comeback/data/ui/ds/bean/DsItemBean;

    invoke-virtual {v4}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lf/e/a/k/g;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->i:Z

    .line 8
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/ComicReadActivity;->l()V

    .line 9
    iget-object v1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->tvNovel:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->scrollView:Landroidx/core/widget/NestedScrollView;

    iget-boolean v2, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->j:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 11
    iget-object v1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->flComic:Landroid/widget/FrameLayout;

    iget-boolean v2, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->j:Z

    if-eqz v2, :cond_1

    const/16 v0, 0x8

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public final l()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5
    iget-object v2, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->tvCollect:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->i:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->tvCollect:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->i:Z

    if-eqz v1, :cond_1

    const-string v1, "0u31gt3736fFjqPo"

    goto :goto_1

    :cond_1
    const-string v1, "0fbVjPz8"

    :goto_1
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->h:Lcom/comeback/data/ui/ds/adapter/ChapterAdapter;

    iget v1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->e:I

    .line 2
    iput v1, v0, Lcom/comeback/data/ui/ds/adapter/ChapterAdapter;->e:I

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->tvNovel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->f:Lcom/comeback/data/ui/ds/bean/ComicDetailBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/ds/bean/ComicDetailBean;->getResult()Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean;->getList()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->e:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->scrollView:Landroidx/core/widget/NestedScrollView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->tvTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "F0KEyMc="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->e:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "0MnD"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->g:Lcom/comeback/data/ui/ds/adapter/PicAdapter;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/comeback/data/ui/ds/adapter/PicAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/ds/adapter/PicAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->g:Lcom/comeback/data/ui/ds/adapter/PicAdapter;

    .line 8
    iput-object p0, v0, Lcom/comeback/data/ui/ds/adapter/PicAdapter;->d:Landroid/view/View$OnClickListener;

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->g:Lcom/comeback/data/ui/ds/adapter/PicAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->g:Lcom/comeback/data/ui/ds/adapter/PicAdapter;

    iget-object v1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->f:Lcom/comeback/data/ui/ds/bean/ComicDetailBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/ds/bean/ComicDetailBean;->getResult()Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean;->getList()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->e:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean$ListBean;->getAllImage()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method

.method public final n()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->d:Z

    .line 2
    iget-object v1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->llFolder:Landroid/widget/LinearLayout;

    const-string v2, "QxACChgfWEcaCVo/"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v0

    iget-object v0, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->llFolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final o()V
    .locals 10

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->c:Z

    .line 2
    iget-object v1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->llBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->tvTitle:Landroid/widget/TextView;

    const-string v4, "QxACChgfWEcaCVo+"

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput v8, v7, v0

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v9, 0x1

    aput v1, v7, v9

    invoke-static {v3, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 5
    iget-object v3, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->llBottom:Landroid/widget/LinearLayout;

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [F

    aput v8, v5, v0

    int-to-float v2, v2

    aput v2, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 6
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v6, [Landroid/animation/Animator;

    aput-object v1, v4, v0

    aput-object v2, v4, v9

    .line 7
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x190

    .line 8
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 9
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-boolean p1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->d:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/ComicReadActivity;->n()V

    .line 3
    :cond_0
    iget-boolean p1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->c:Z

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/ComicReadActivity;->o()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->c:Z

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->llBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    .line 8
    iget-object v2, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->tvTitle:Landroid/widget/TextView;

    const-string v3, "QxACChgfWEcaCVo+"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [F

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v7, 0x0

    aput v0, v6, v7

    const/4 v0, 0x0

    aput v0, v6, p1

    invoke-static {v2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 9
    iget-object v4, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->llBottom:Landroid/widget/LinearLayout;

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v6, v5, [F

    int-to-float v1, v1

    aput v1, v6, v7

    aput v0, v6, p1

    invoke-static {v4, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 10
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v5, [Landroid/animation/Animator;

    aput-object v2, v3, v7

    aput-object v0, v3, p1

    .line 11
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x190

    .line 12
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 13
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->f:Lcom/comeback/data/ui/ds/bean/ComicDetailBean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    .line 3
    :sswitch_0
    iget p1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->e:I

    if-lez p1, :cond_1

    sub-int/2addr p1, v0

    .line 4
    iput p1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->e:I

    .line 5
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/ComicReadActivity;->m()V

    goto/16 :goto_2

    :cond_1
    const-string p1, "0t/wgeL+3ITBgY/onvLMjJvOh9zrlJKTl9yy"

    .line 6
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 7
    :sswitch_1
    iget p1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->e:I

    iget-object v1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->f:Lcom/comeback/data/ui/ds/bean/ComicDetailBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/ds/bean/ComicDetailBean;->getResult()Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/ds/bean/ComicDetailBean$ResultBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-ge p1, v1, :cond_2

    .line 8
    iget p1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->e:I

    .line 9
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/ComicReadActivity;->m()V

    goto/16 :goto_2

    :cond_2
    const-string p1, "0t/wgeL+3ITBgY/onvLMjavihvTll4GzlM2Ug8Ls"

    .line 10
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    goto :goto_2

    .line 11
    :sswitch_2
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/ComicReadActivity;->o()V

    .line 12
    iput-boolean v0, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->d:Z

    .line 13
    iget-object p1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->llFolder:Landroid/widget/LinearLayout;

    const-string v1, "QxACChgfWEcaCVo/"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->llFolder:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_2

    .line 14
    :sswitch_3
    iget-boolean p1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->i:Z

    if-eqz p1, :cond_3

    .line 15
    invoke-static {}, Lg/a/x;->P()Lg/a/x;

    move-result-object p1

    new-instance v1, Lf/e/a/j/i/g;

    invoke-direct {v1, p0}, Lf/e/a/j/i/g;-><init>(Lcom/comeback/data/ui/ds/ComicReadActivity;)V

    new-instance v2, Lf/e/a/j/i/h;

    invoke-direct {v2, p0}, Lf/e/a/j/i/h;-><init>(Lcom/comeback/data/ui/ds/ComicReadActivity;)V

    invoke-virtual {p1, v1, v2}, Lg/a/x;->O(Lg/a/x$a;Lg/a/x$a$b;)Lg/a/f1/t/b;

    goto :goto_1

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->b:Lcom/comeback/data/ui/ds/bean/DsItemBean;

    iget-boolean v1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->j:Z

    if-eqz v1, :cond_4

    const-string v1, "WQ0VAQc="

    goto :goto_0

    :cond_4
    const-string v1, "VA0ODQg="

    :goto_0
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/comeback/data/ui/ds/bean/DsItemBean;->setContentType(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->b:Lcom/comeback/data/ui/ds/bean/DsItemBean;

    invoke-virtual {p1}, Lg/a/g0;->getRealm()Lg/a/x;

    move-result-object p1

    invoke-static {p1}, Lf/e/a/k/g;->d(Lg/a/x;)Lf/e/a/k/g;

    move-result-object p1

    iget-object v1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->b:Lcom/comeback/data/ui/ds/bean/DsItemBean;

    invoke-virtual {p1, v1}, Lf/e/a/k/g;->a(Lg/a/g0;)V

    const-string p1, "0fbVjPz837vjg774"

    .line 18
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    .line 19
    :goto_1
    iget-boolean p1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->i:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->i:Z

    .line 20
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/ComicReadActivity;->l()V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0902a1 -> :sswitch_3
        0x7f0902b9 -> :sswitch_2
        0x7f0902e2 -> :sswitch_1
        0x7f0902f3 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic p(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ds/ComicReadActivity;->e:I

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/ComicReadActivity;->m()V

    .line 3
    invoke-virtual {p0}, Lcom/comeback/data/ui/ds/ComicReadActivity;->n()V

    return-void
.end method
