.class public Lf/c/a/i/b;
.super Ljava/lang/Object;
.source "BasePickerView.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/ViewGroup;

.field public c:Landroid/view/ViewGroup;

.field public d:Landroid/view/ViewGroup;

.field public e:Lf/c/a/g/a;

.field public f:Lf/c/a/h/b;

.field public g:Z

.field public h:Landroid/view/animation/Animation;

.field public i:Landroid/view/animation/Animation;

.field public j:Z

.field public k:I

.field public l:Landroid/app/Dialog;

.field public m:Z

.field public n:Landroid/view/View$OnKeyListener;

.field public final o:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x50

    .line 2
    iput v0, p0, Lf/c/a/i/b;->k:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lf/c/a/i/b;->m:Z

    .line 4
    new-instance v0, Lf/c/a/i/b$b;

    invoke-direct {v0, p0}, Lf/c/a/i/b$b;-><init>(Lf/c/a/i/b;)V

    iput-object v0, p0, Lf/c/a/i/b;->n:Landroid/view/View$OnKeyListener;

    .line 5
    new-instance v0, Lf/c/a/i/b$c;

    invoke-direct {v0, p0}, Lf/c/a/i/b$c;-><init>(Lf/c/a/i/b;)V

    iput-object v0, p0, Lf/c/a/i/b;->o:Landroid/view/View$OnTouchListener;

    .line 6
    iput-object p1, p0, Lf/c/a/i/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/c/a/i/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/c/a/i/b;->l:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    .line 4
    :cond_0
    iget-boolean v0, p0, Lf/c/a/i/b;->g:Z

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-boolean v0, p0, Lf/c/a/i/b;->m:Z

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lf/c/a/i/b;->h:Landroid/view/animation/Animation;

    new-instance v1, Lf/c/a/i/b$a;

    invoke-direct {v1, p0}, Lf/c/a/i/b$a;-><init>(Lf/c/a/i/b;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 7
    iget-object v0, p0, Lf/c/a/i/b;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lf/c/a/i/b;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget-object v0, v0, Lf/c/a/g/a;->s:Landroid/view/ViewGroup;

    new-instance v1, Lf/c/a/i/c;

    invoke-direct {v1, p0}, Lf/c/a/i/c;-><init>(Lf/c/a/i/b;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lf/c/a/i/b;->g:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public b(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/c/a/i/b;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public abstract c()Z
.end method

.method public d()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/c/a/i/b;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lf/c/a/i/b;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lf/c/a/i/b;->j:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public e()V
    .locals 2

    .line 1
    move-object v0, p0

    check-cast v0, Lf/c/a/i/e;

    .line 2
    iget-object v0, v0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget-boolean v0, v0, Lf/c/a/g/a;->K:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lf/c/a/i/b;->l:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lf/c/a/i/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lf/c/a/i/b;->j:Z

    .line 7
    iget-object v0, p0, Lf/c/a/i/b;->c:Landroid/view/ViewGroup;

    .line 8
    iget-object v1, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget-object v1, v1, Lf/c/a/g/a;->s:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    iget-boolean v0, p0, Lf/c/a/i/b;->m:Z

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lf/c/a/i/b;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lf/c/a/i/b;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 11
    :cond_2
    iget-object v0, p0, Lf/c/a/i/b;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_3
    :goto_0
    return-void
.end method
