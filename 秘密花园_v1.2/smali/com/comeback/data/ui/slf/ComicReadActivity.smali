.class public Lcom/comeback/data/ui/slf/ComicReadActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "ComicReadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/slf/bean/ChapterBean;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:Lcom/comeback/data/ui/slf/adapter/PicAdapter;

.field public g:I

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

.field public tvPage:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvState:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle2:Landroid/widget/TextView;
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

.method public static q(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/ui/slf/bean/ChapterBean;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "XgwHARM="

    const/16 v2, 0x14

    if-le v0, v2, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/comeback/data/ui/slf/ComicReadActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "XgY="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 6
    :cond_0
    new-instance p3, Landroid/content/Intent;

    const-class v0, Lcom/comeback/data/ui/slf/ComicReadActivity;

    invoke-direct {p3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "UwMXBQ=="

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lf/i/b/j;

    invoke-direct {v2}, Lf/i/b/j;-><init>()V

    invoke-virtual {v2, p1}, Lf/i/b/j;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "UwMXBQ=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "XgY="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->c:Ljava/lang/String;

    .line 3
    new-instance v1, Lf/i/b/j;

    invoke-direct {v1}, Lf/i/b/j;-><init>()V

    new-instance v2, Lcom/comeback/data/ui/slf/ComicReadActivity$a;

    invoke-direct {v2, p0}, Lcom/comeback/data/ui/slf/ComicReadActivity$a;-><init>(Lcom/comeback/data/ui/slf/ComicReadActivity;)V

    .line 4
    iget-object v2, v2, Lf/i/b/d0/a;->b:Ljava/lang/reflect/Type;

    .line 5
    invoke-virtual {v1, v0, v2}, Lf/i/b/j;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->b:Ljava/util/List;

    const-string v0, "XgwHARM="

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->g:I

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c005d

    return v0
.end method

.method public e()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseActivity;->g()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/ComicReadActivity;->n()V

    goto :goto_0

    :cond_0
    const-string v0, "0ffTgubd0LT8gJvzkNTgjpPFjNjnlZSQlvqcgvLKi9aKjd76"

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    .line 5
    new-instance v0, Lf/i/b/r;

    invoke-direct {v0}, Lf/i/b/r;-><init>()V

    const-string v1, "XgY="

    .line 6
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lf/i/b/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lf/e/a/j/l0/h/b;->a()Lf/e/a/j/l0/h/a;

    move-result-object v1

    invoke-virtual {v0}, Lf/i/b/o;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/e/a/j/l0/h/d;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v1, v0}, Lf/e/a/j/l0/h/a;->m(Ljava/util/HashMap;)Lm/e;

    move-result-object v0

    .line 8
    new-instance v1, Lf/e/a/j/l0/f;

    invoke-direct {v1, p0}, Lf/e/a/j/l0/f;-><init>(Lcom/comeback/data/ui/slf/ComicReadActivity;)V

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    :goto_0
    return-void
.end method

.method public final l()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->e:Z

    .line 2
    iget-object v1, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->llFolder:Landroid/widget/LinearLayout;

    const-string v2, "QxACChgfWEcaCVo/"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v0

    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->llFolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final m()V
    .locals 10

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->d:Z

    .line 2
    iget-object v1, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->llBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->tvTitle:Landroid/widget/TextView;

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
    iget-object v3, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->llBottom:Landroid/widget/LinearLayout;

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

.method public final n()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/ComicReadActivity;->p()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->tvTitle2:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->tvState:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/comeback/data/ui/slf/ComicReadActivity$b;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/slf/ComicReadActivity$b;-><init>(Lcom/comeback/data/ui/slf/ComicReadActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 7
    iget-object v1, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->rvChapter:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    new-instance v1, Lcom/comeback/data/ui/slf/adapter/ChapterAdapter;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/slf/adapter/ChapterAdapter;-><init>(Landroid/content/Context;)V

    .line 9
    iget v2, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->g:I

    .line 10
    iput v2, v1, Lcom/comeback/data/ui/slf/adapter/ChapterAdapter;->e:I

    .line 11
    new-instance v2, Lf/e/a/j/l0/a;

    invoke-direct {v2, p0}, Lf/e/a/j/l0/a;-><init>(Lcom/comeback/data/ui/slf/ComicReadActivity;)V

    .line 12
    iput-object v2, v1, Lcom/comeback/data/ui/slf/adapter/ChapterAdapter;->d:Lcom/comeback/data/ui/slf/adapter/ChapterAdapter$a;

    .line 13
    iget-object v2, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->rvChapter:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    iget-object v2, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 15
    iget v1, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->g:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    return-void
.end method

.method public synthetic o(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->g:I

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/ComicReadActivity;->l()V

    .line 3
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/ComicReadActivity;->p()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-boolean p1, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->e:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/ComicReadActivity;->l()V

    .line 3
    :cond_0
    iget-boolean p1, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->d:Z

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/ComicReadActivity;->m()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->d:Z

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->llBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    .line 8
    iget-object v2, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->tvTitle:Landroid/widget/TextView;

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
    iget-object v4, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->llBottom:Landroid/widget/LinearLayout;

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
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    iget p1, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->g:I

    if-lez p1, :cond_0

    sub-int/2addr p1, v0

    .line 3
    iput p1, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->g:I

    .line 4
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/ComicReadActivity;->p()V

    goto :goto_0

    :cond_0
    const-string p1, "0t/wgeL+3ITBgY/onvLMjJvOh9zrlJKTl9yy"

    .line 5
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :sswitch_1
    iget p1, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->g:I

    iget-object v1, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-ge p1, v1, :cond_1

    .line 7
    iget p1, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->g:I

    .line 8
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/ComicReadActivity;->p()V

    goto :goto_0

    :cond_1
    const-string p1, "0t/wgeL+3ITBgY/onvLMjavihvTll4GzlM2Ug8Ls"

    .line 9
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :sswitch_2
    invoke-virtual {p0}, Lcom/comeback/data/ui/slf/ComicReadActivity;->m()V

    .line 11
    iput-boolean v0, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->e:Z

    .line 12
    iget-object p1, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->llFolder:Landroid/widget/LinearLayout;

    const-string v1, "QxACChgfWEcaCVo/"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->llFolder:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :sswitch_3
    const-string p1, "0fbVjPz837vjg774"

    .line 13
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0902a8 -> :sswitch_3
        0x7f0902c1 -> :sswitch_2
        0x7f0902eb -> :sswitch_1
        0x7f0902fd -> :sswitch_0
    .end sparse-switch
.end method

.method public final p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->f:Lcom/comeback/data/ui/slf/adapter/PicAdapter;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/comeback/data/ui/slf/adapter/PicAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/slf/adapter/PicAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->f:Lcom/comeback/data/ui/slf/adapter/PicAdapter;

    .line 3
    iput-object p0, v0, Lcom/comeback/data/ui/slf/adapter/PicAdapter;->d:Landroid/view/View$OnClickListener;

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->f:Lcom/comeback/data/ui/slf/adapter/PicAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->f:Lcom/comeback/data/ui/slf/adapter/PicAdapter;

    invoke-virtual {v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->f:Lcom/comeback/data/ui/slf/adapter/PicAdapter;

    iget-object v1, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->b:Ljava/util/List;

    iget v2, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->g:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/comeback/data/ui/slf/bean/ChapterBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/slf/bean/ChapterBean;->getImages()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ComicReadActivity;->f:Lcom/comeback/data/ui/slf/adapter/PicAdapter;

    invoke-virtual {v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "3+zUgeTl3JfCjoDCl9f9"

    .line 9
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
