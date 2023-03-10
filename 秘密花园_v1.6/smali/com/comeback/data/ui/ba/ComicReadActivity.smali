.class public Lcom/comeback/data/ui/ba/ComicReadActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "ComicReadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public b:Lcom/comeback/data/ui/ba/bean/BaComicsBean;

.field public c:Z

.field public d:Z

.field public e:I

.field public f:Lcom/comeback/data/ui/ba/bean/ComicDetailBean;

.field public g:Lcom/comeback/data/ui/ba/adapter/PicAdapter;

.field public h:Lcom/comeback/data/ui/ba/adapter/ChapterAdapter;

.field public i:Z

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

.field public tvCollect:Landroid/widget/TextView;
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

.method public static q(Landroid/content/Context;Lcom/comeback/data/ui/ba/bean/BaComicsBean;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/ba/ComicReadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "VA0ODQg6XQ=="

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

    const-string v0, "VA0ODQg6XQ=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/ba/bean/BaComicsBean;

    iput-object p1, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->b:Lcom/comeback/data/ui/ba/bean/BaComicsBean;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c002a

    return v0
.end method

.method public e()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseActivity;->g()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->e:I

    .line 3
    invoke-static {}, Lf/e/a/j/c/g/c;->a()Lf/e/a/j/c/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->b:Lcom/comeback/data/ui/ba/bean/BaComicsBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->getShow_id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/e/a/j/c/g/a;->b(Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 4
    new-instance v1, Lf/e/a/j/c/c;

    invoke-direct {v1, p0}, Lf/e/a/j/c/c;-><init>(Lcom/comeback/data/ui/ba/ComicReadActivity;)V

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/comeback/data/ui/ba/ComicReadActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/ba/ComicReadActivity$a;-><init>(Lcom/comeback/data/ui/ba/ComicReadActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 7
    invoke-static {}, Lg/a/x;->P()Lg/a/x;

    move-result-object v0

    invoke-static {v0}, Lf/e/a/k/g;->d(Lg/a/x;)Lf/e/a/k/g;

    move-result-object v0

    const-class v1, Lcom/comeback/data/ui/ba/bean/BaComicsBean;

    const-string v2, "RAoMEzQaXQ=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->b:Lcom/comeback/data/ui/ba/bean/BaComicsBean;

    invoke-virtual {v3}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->getShow_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lf/e/a/k/g;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->i:Z

    .line 8
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/ComicReadActivity;->l()V

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
    iget-object v2, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->tvCollect:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->i:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->tvCollect:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->i:Z

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
    invoke-static {}, Lf/e/a/j/c/g/c;->a()Lf/e/a/j/c/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->f:Lcom/comeback/data/ui/ba/bean/ComicDetailBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/ba/bean/ComicDetailBean;->getResults()Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean;->getComic_episodes()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->e:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean;->getDetail_id()I

    move-result v1

    invoke-interface {v0, v1}, Lf/e/a/j/c/g/a;->f(I)Lm/e;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/comeback/data/ui/ba/ComicReadActivity$b;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/ba/ComicReadActivity$b;-><init>(Lcom/comeback/data/ui/ba/ComicReadActivity;)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public final n()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->d:Z

    .line 2
    iget-object v1, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->llFolder:Landroid/widget/LinearLayout;

    const-string v2, "QxACChgfWEcaCVo/"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v0

    iget-object v0, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->llFolder:Landroid/widget/LinearLayout;

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
    iput-boolean v0, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->c:Z

    .line 2
    iget-object v1, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->llBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->tvTitle:Landroid/widget/TextView;

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
    iget-object v3, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->llBottom:Landroid/widget/LinearLayout;

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
    iget-boolean p1, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->d:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/ComicReadActivity;->n()V

    .line 3
    :cond_0
    iget-boolean p1, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->c:Z

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/ComicReadActivity;->o()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->c:Z

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->llBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    .line 8
    iget-object v2, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->tvTitle:Landroid/widget/TextView;

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
    iget-object v4, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->llBottom:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->f:Lcom/comeback/data/ui/ba/bean/ComicDetailBean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 3
    :sswitch_0
    iget p1, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->e:I

    if-lez p1, :cond_1

    sub-int/2addr p1, v0

    .line 4
    iput p1, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->e:I

    .line 5
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/ComicReadActivity;->m()V

    goto/16 :goto_1

    :cond_1
    const-string p1, "0t/wgeL+3ITBgY/onvLMjJvOh9zrlJKTl9yy"

    .line 6
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7
    :sswitch_1
    iget p1, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->e:I

    iget-object v1, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->f:Lcom/comeback/data/ui/ba/bean/ComicDetailBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/ba/bean/ComicDetailBean;->getResults()Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean;->getComic_episodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-ge p1, v1, :cond_2

    .line 8
    iget p1, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->e:I

    .line 9
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/ComicReadActivity;->m()V

    goto :goto_1

    :cond_2
    const-string p1, "0t/wgeL+3ITBgY/onvLMjavihvTll4GzlM2Ug8Ls"

    .line 10
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :sswitch_2
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/ComicReadActivity;->o()V

    .line 12
    iput-boolean v0, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->d:Z

    .line 13
    iget-object p1, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->llFolder:Landroid/widget/LinearLayout;

    const-string v1, "QxACChgfWEcaCVo/"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->llFolder:Landroid/widget/LinearLayout;

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

    goto :goto_1

    .line 14
    :sswitch_3
    iget-boolean p1, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->i:Z

    if-eqz p1, :cond_3

    .line 15
    invoke-static {}, Lg/a/x;->P()Lg/a/x;

    move-result-object p1

    new-instance v1, Lf/e/a/j/c/d;

    invoke-direct {v1, p0}, Lf/e/a/j/c/d;-><init>(Lcom/comeback/data/ui/ba/ComicReadActivity;)V

    new-instance v2, Lf/e/a/j/c/e;

    invoke-direct {v2, p0}, Lf/e/a/j/c/e;-><init>(Lcom/comeback/data/ui/ba/ComicReadActivity;)V

    invoke-virtual {p1, v1, v2}, Lg/a/x;->O(Lg/a/x$a;Lg/a/x$a$b;)Lg/a/f1/t/b;

    goto :goto_0

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->b:Lcom/comeback/data/ui/ba/bean/BaComicsBean;

    invoke-virtual {p1}, Lg/a/g0;->getRealm()Lg/a/x;

    move-result-object p1

    invoke-static {p1}, Lf/e/a/k/g;->d(Lg/a/x;)Lf/e/a/k/g;

    move-result-object p1

    iget-object v1, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->b:Lcom/comeback/data/ui/ba/bean/BaComicsBean;

    invoke-virtual {p1, v1}, Lf/e/a/k/g;->a(Lg/a/g0;)V

    const-string p1, "0fbVjPz837vjg774"

    .line 17
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    .line 18
    :goto_0
    iget-boolean p1, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->i:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->i:Z

    .line 19
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/ComicReadActivity;->l()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0902a8 -> :sswitch_3
        0x7f0902c1 -> :sswitch_2
        0x7f0902eb -> :sswitch_1
        0x7f0902fd -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic p(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/ba/ComicReadActivity;->e:I

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/ComicReadActivity;->m()V

    .line 3
    invoke-virtual {p0}, Lcom/comeback/data/ui/ba/ComicReadActivity;->n()V

    return-void
.end method
