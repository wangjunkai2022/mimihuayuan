.class public Lf/c/a/i/e;
.super Lf/c/a/i/b;
.source "OptionsPickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lf/c/a/i/b;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field public p:Lf/c/a/i/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c/a/i/h<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/c/a/g/a;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lf/c/a/g/a;->t:Landroid/content/Context;

    invoke-direct {p0, v0}, Lf/c/a/i/b;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    .line 3
    iget-object v0, p1, Lf/c/a/g/a;->t:Landroid/content/Context;

    .line 4
    iget-object v1, p0, Lf/c/a/i/b;->l:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 5
    iget-boolean p1, p1, Lf/c/a/g/a;->L:Z

    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    :cond_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/16 v2, 0x50

    const/4 v3, -0x1

    invoke-direct {p1, v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 7
    iget-object v1, p0, Lf/c/a/i/b;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Lf/c/a/i/b;->c()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    .line 9
    sget v4, Lf/c/a/c;->layout_basepickerview:I

    invoke-virtual {v1, v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lf/c/a/i/b;->d:Landroid/view/ViewGroup;

    .line 10
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 11
    iget-object v1, p0, Lf/c/a/i/b;->d:Landroid/view/ViewGroup;

    sget v4, Lf/c/a/b;->content_container:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lf/c/a/i/b;->b:Landroid/view/ViewGroup;

    const/16 v4, 0x1e

    .line 12
    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 13
    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 14
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget-object p1, p0, Lf/c/a/i/b;->d:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    .line 16
    new-instance p1, Landroid/app/Dialog;

    iget-object v1, p0, Lf/c/a/i/b;->a:Landroid/content/Context;

    sget v4, Lf/c/a/e;->custom_dialog2:I

    invoke-direct {p1, v1, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lf/c/a/i/b;->l:Landroid/app/Dialog;

    .line 17
    iget-object v1, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget-boolean v1, v1, Lf/c/a/g/a;->L:Z

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 18
    iget-object p1, p0, Lf/c/a/i/b;->l:Landroid/app/Dialog;

    iget-object v1, p0, Lf/c/a/i/b;->d:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 19
    iget-object p1, p0, Lf/c/a/i/b;->l:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 20
    sget v1, Lf/c/a/e;->picker_view_scale_anim:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    const/16 v1, 0x11

    .line 21
    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    .line 22
    :cond_1
    iget-object p1, p0, Lf/c/a/i/b;->l:Landroid/app/Dialog;

    new-instance v1, Lf/c/a/i/d;

    invoke-direct {v1, p0}, Lf/c/a/i/d;-><init>(Lf/c/a/i/b;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 23
    :cond_2
    iget-object p1, p0, Lf/c/a/i/b;->d:Landroid/view/ViewGroup;

    new-instance v1, Lf/c/a/i/a;

    invoke-direct {v1, p0}, Lf/c/a/i/a;-><init>(Lf/c/a/i/b;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 24
    :cond_3
    iget-object v4, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget-object v7, v4, Lf/c/a/g/a;->s:Landroid/view/ViewGroup;

    if-nez v7, :cond_4

    .line 25
    iget-object v7, p0, Lf/c/a/i/b;->a:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v4, Lf/c/a/g/a;->s:Landroid/view/ViewGroup;

    .line 26
    :cond_4
    sget v4, Lf/c/a/c;->layout_basepickerview:I

    iget-object v7, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget-object v7, v7, Lf/c/a/g/a;->s:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lf/c/a/i/b;->c:Landroid/view/ViewGroup;

    .line 27
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    iget-object v1, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget v1, v1, Lf/c/a/g/a;->I:I

    if-eq v1, v3, :cond_5

    .line 29
    iget-object v4, p0, Lf/c/a/i/b;->c:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 30
    :cond_5
    iget-object v1, p0, Lf/c/a/i/b;->c:Landroid/view/ViewGroup;

    sget v4, Lf/c/a/b;->content_container:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lf/c/a/i/b;->b:Landroid/view/ViewGroup;

    .line 31
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0}, Lf/c/a/i/b;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 33
    iget-object v1, p0, Lf/c/a/i/b;->d:Landroid/view/ViewGroup;

    goto :goto_1

    .line 34
    :cond_6
    iget-object v1, p0, Lf/c/a/i/b;->c:Landroid/view/ViewGroup;

    .line 35
    :goto_1
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 36
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 37
    iget-object p1, p0, Lf/c/a/i/b;->n:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 38
    iget p1, p0, Lf/c/a/i/b;->k:I

    if-eq p1, v2, :cond_7

    const/4 p1, -0x1

    goto :goto_2

    .line 39
    :cond_7
    sget p1, Lf/c/a/a;->pickerview_slide_in_bottom:I

    .line 40
    :goto_2
    iget-object v1, p0, Lf/c/a/i/b;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 41
    iput-object p1, p0, Lf/c/a/i/b;->i:Landroid/view/animation/Animation;

    .line 42
    iget p1, p0, Lf/c/a/i/b;->k:I

    if-eq p1, v2, :cond_8

    goto :goto_3

    .line 43
    :cond_8
    sget v3, Lf/c/a/a;->pickerview_slide_out_bottom:I

    .line 44
    :goto_3
    iget-object p1, p0, Lf/c/a/i/b;->a:Landroid/content/Context;

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 45
    iput-object p1, p0, Lf/c/a/i/b;->h:Landroid/view/animation/Animation;

    .line 46
    iget-object p1, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget-object p1, p1, Lf/c/a/g/a;->d:Lf/c/a/h/a;

    if-nez p1, :cond_c

    .line 47
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v1, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget v1, v1, Lf/c/a/g/a;->r:I

    iget-object v2, p0, Lf/c/a/i/b;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    sget p1, Lf/c/a/b;->tvTitle:I

    invoke-virtual {p0, p1}, Lf/c/a/i/b;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 49
    sget v1, Lf/c/a/b;->rv_topbar:I

    invoke-virtual {p0, v1}, Lf/c/a/i/b;->b(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 50
    sget v2, Lf/c/a/b;->btnSubmit:I

    invoke-virtual {p0, v2}, Lf/c/a/i/b;->b(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 51
    sget v3, Lf/c/a/b;->btnCancel:I

    invoke-virtual {p0, v3}, Lf/c/a/i/b;->b(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const-string v4, "submit"

    .line 52
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const-string v4, "cancel"

    .line 53
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v4, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget-object v4, v4, Lf/c/a/g/a;->u:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lf/c/a/d;->pickerview_submit:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_9
    iget-object v4, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget-object v4, v4, Lf/c/a/g/a;->u:Ljava/lang/String;

    :goto_4
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v4, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget-object v4, v4, Lf/c/a/g/a;->v:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lf/c/a/d;->pickerview_cancel:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget-object v0, v0, Lf/c/a/g/a;->v:Ljava/lang/String;

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget-object v0, v0, Lf/c/a/g/a;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget-object v0, v0, Lf/c/a/g/a;->w:Ljava/lang/String;

    :goto_6
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget v0, v0, Lf/c/a/g/a;->x:I

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 60
    iget-object v0, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget v0, v0, Lf/c/a/g/a;->y:I

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 61
    iget-object v0, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget v0, v0, Lf/c/a/g/a;->z:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    iget-object v0, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget v0, v0, Lf/c/a/g/a;->B:I

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 63
    iget-object v0, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget v0, v0, Lf/c/a/g/a;->C:I

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 64
    iget-object v0, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget v0, v0, Lf/c/a/g/a;->C:I

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 65
    iget-object v0, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget v0, v0, Lf/c/a/g/a;->D:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_7

    .line 66
    :cond_c
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget v1, v1, Lf/c/a/g/a;->r:I

    iget-object v2, p0, Lf/c/a/i/b;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lf/c/a/h/a;->a(Landroid/view/View;)V

    .line 67
    :goto_7
    sget p1, Lf/c/a/b;->optionspicker:I

    invoke-virtual {p0, p1}, Lf/c/a/i/b;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 68
    iget-object v0, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget v0, v0, Lf/c/a/g/a;->A:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 69
    new-instance v0, Lf/c/a/i/h;

    iget-object v1, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget-boolean v1, v1, Lf/c/a/g/a;->q:Z

    invoke-direct {v0, p1, v1}, Lf/c/a/i/h;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lf/c/a/i/e;->p:Lf/c/a/i/h;

    .line 70
    iget-object p1, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget-object p1, p1, Lf/c/a/g/a;->c:Lf/c/a/h/c;

    if-eqz p1, :cond_d

    .line 71
    iput-object p1, v0, Lf/c/a/i/h;->k:Lf/c/a/h/c;

    .line 72
    :cond_d
    iget-object p1, p0, Lf/c/a/i/e;->p:Lf/c/a/i/h;

    iget-object v0, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget v0, v0, Lf/c/a/g/a;->E:I

    .line 73
    iget-object v1, p1, Lf/c/a/i/h;->a:Lcom/contrarywind/view/WheelView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    .line 74
    iget-object v1, p1, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1, v0}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    .line 75
    iget-object p1, p1, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, v0}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    .line 76
    iget-object p1, p0, Lf/c/a/i/e;->p:Lf/c/a/i/h;

    iget-object v0, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget v0, v0, Lf/c/a/g/a;->P:I

    .line 77
    iget-object v1, p1, Lf/c/a/i/h;->a:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1, v0}, Lcom/contrarywind/view/WheelView;->setItemsVisibleCount(I)V

    .line 78
    iget-object v1, p1, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1, v0}, Lcom/contrarywind/view/WheelView;->setItemsVisibleCount(I)V

    .line 79
    iget-object p1, p1, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, v0}, Lcom/contrarywind/view/WheelView;->setItemsVisibleCount(I)V

    .line 80
    iget-object p1, p0, Lf/c/a/i/e;->p:Lf/c/a/i/h;

    iget-object v0, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget-boolean v0, v0, Lf/c/a/g/a;->Q:Z

    .line 81
    iget-object v1, p1, Lf/c/a/i/h;->a:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1, v0}, Lcom/contrarywind/view/WheelView;->setAlphaGradient(Z)V

    .line 82
    iget-object v1, p1, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1, v0}, Lcom/contrarywind/view/WheelView;->setAlphaGradient(Z)V

    .line 83
    iget-object p1, p1, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, v0}, Lcom/contrarywind/view/WheelView;->setAlphaGradient(Z)V

    .line 84
    iget-object p1, p0, Lf/c/a/i/e;->p:Lf/c/a/i/h;

    iget-object v0, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget-object v1, v0, Lf/c/a/g/a;->e:Ljava/lang/String;

    iget-object v2, v0, Lf/c/a/g/a;->f:Ljava/lang/String;

    iget-object v0, v0, Lf/c/a/g/a;->g:Ljava/lang/String;

    if-eqz p1, :cond_13

    if-eqz v1, :cond_e

    .line 85
    iget-object v3, p1, Lf/c/a/i/h;->a:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v3, v1}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    :cond_e
    if-eqz v2, :cond_f

    .line 86
    iget-object v1, p1, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    :cond_f
    if-eqz v0, :cond_10

    .line 87
    iget-object p1, p1, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, v0}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    .line 88
    :cond_10
    iget-object p1, p0, Lf/c/a/i/e;->p:Lf/c/a/i/h;

    iget-object v0, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget v1, v0, Lf/c/a/g/a;->k:I

    iget v2, v0, Lf/c/a/g/a;->l:I

    iget v0, v0, Lf/c/a/g/a;->m:I

    .line 89
    iget-object v3, p1, Lf/c/a/i/h;->a:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v3, v1}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    .line 90
    iget-object v1, p1, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    .line 91
    iget-object p1, p1, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, v0}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    .line 92
    iget-object p1, p0, Lf/c/a/i/e;->p:Lf/c/a/i/h;

    iget-object v0, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget-boolean v1, v0, Lf/c/a/g/a;->n:Z

    iget-boolean v2, v0, Lf/c/a/g/a;->o:Z

    iget-boolean v0, v0, Lf/c/a/g/a;->p:Z

    .line 93
    iget-object v3, p1, Lf/c/a/i/h;->a:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v3, v1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    .line 94
    iget-object v1, p1, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    .line 95
    iget-object p1, p1, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, v0}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    .line 96
    iget-object p1, p0, Lf/c/a/i/e;->p:Lf/c/a/i/h;

    iget-object v0, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget-object v0, v0, Lf/c/a/g/a;->N:Landroid/graphics/Typeface;

    .line 97
    iget-object v1, p1, Lf/c/a/i/h;->a:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1, v0}, Lcom/contrarywind/view/WheelView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 98
    iget-object v1, p1, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1, v0}, Lcom/contrarywind/view/WheelView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 99
    iget-object p1, p1, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, v0}, Lcom/contrarywind/view/WheelView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 100
    iget-object p1, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget-boolean p1, p1, Lf/c/a/g/a;->L:Z

    .line 101
    iget-object v0, p0, Lf/c/a/i/b;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_12

    .line 102
    sget v1, Lf/c/a/b;->outmost_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_11

    .line 103
    iget-object p1, p0, Lf/c/a/i/b;->o:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_8

    .line 104
    :cond_11
    invoke-virtual {v0, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    :cond_12
    :goto_8
    iget-object p1, p0, Lf/c/a/i/e;->p:Lf/c/a/i/h;

    iget-object v0, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget v0, v0, Lf/c/a/g/a;->H:I

    .line 106
    iget-object v1, p1, Lf/c/a/i/h;->a:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1, v0}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    .line 107
    iget-object v1, p1, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1, v0}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    .line 108
    iget-object p1, p1, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, v0}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    .line 109
    iget-object p1, p0, Lf/c/a/i/e;->p:Lf/c/a/i/h;

    iget-object v0, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget-object v0, v0, Lf/c/a/g/a;->O:Lcom/contrarywind/view/WheelView$b;

    .line 110
    iget-object v1, p1, Lf/c/a/i/h;->a:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1, v0}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$b;)V

    .line 111
    iget-object v1, p1, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1, v0}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$b;)V

    .line 112
    iget-object p1, p1, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, v0}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$b;)V

    .line 113
    iget-object p1, p0, Lf/c/a/i/e;->p:Lf/c/a/i/h;

    iget-object v0, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget v0, v0, Lf/c/a/g/a;->J:F

    .line 114
    iget-object v1, p1, Lf/c/a/i/h;->a:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1, v0}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    .line 115
    iget-object v1, p1, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1, v0}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    .line 116
    iget-object p1, p1, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, v0}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    .line 117
    iget-object p1, p0, Lf/c/a/i/e;->p:Lf/c/a/i/h;

    iget-object v0, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget v0, v0, Lf/c/a/g/a;->F:I

    .line 118
    iget-object v1, p1, Lf/c/a/i/h;->a:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1, v0}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    .line 119
    iget-object v1, p1, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1, v0}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    .line 120
    iget-object p1, p1, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, v0}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    .line 121
    iget-object p1, p0, Lf/c/a/i/e;->p:Lf/c/a/i/h;

    iget-object v0, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget v0, v0, Lf/c/a/g/a;->G:I

    .line 122
    iget-object v1, p1, Lf/c/a/i/h;->a:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1, v0}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    .line 123
    iget-object v1, p1, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1, v0}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    .line 124
    iget-object p1, p1, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, v0}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    .line 125
    iget-object p1, p0, Lf/c/a/i/e;->p:Lf/c/a/i/h;

    iget-object v0, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget-boolean v0, v0, Lf/c/a/g/a;->M:Z

    .line 126
    iget-object v1, p1, Lf/c/a/i/h;->a:Lcom/contrarywind/view/WheelView;

    .line 127
    iput-boolean v0, v1, Lcom/contrarywind/view/WheelView;->g:Z

    .line 128
    iget-object v1, p1, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    .line 129
    iput-boolean v0, v1, Lcom/contrarywind/view/WheelView;->g:Z

    .line 130
    iget-object p1, p1, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    .line 131
    iput-boolean v0, p1, Lcom/contrarywind/view/WheelView;->g:Z

    return-void

    .line 132
    :cond_13
    throw v6
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget-boolean v0, v0, Lf/c/a/g/a;->K:Z

    return v0
.end method

.method public f(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lf/c/a/i/e;->p:Lf/c/a/i/h;

    .line 2
    iput-object p1, p3, Lf/c/a/i/h;->d:Ljava/util/List;

    .line 3
    iput-object p2, p3, Lf/c/a/i/h;->e:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p3, Lf/c/a/i/h;->f:Ljava/util/List;

    .line 5
    iget-object v0, p3, Lf/c/a/i/h;->a:Lcom/contrarywind/view/WheelView;

    new-instance v1, Lf/c/a/f/a;

    invoke-direct {v1, p1}, Lf/c/a/f/a;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setAdapter(Lf/f/a/a;)V

    .line 6
    iget-object v0, p3, Lf/c/a/i/h;->a:Lcom/contrarywind/view/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 7
    iget-object v0, p3, Lf/c/a/i/h;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 8
    iget-object v2, p3, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    new-instance v3, Lf/c/a/f/a;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v3, v0}, Lf/c/a/f/a;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/contrarywind/view/WheelView;->setAdapter(Lf/f/a/a;)V

    .line 9
    :cond_0
    iget-object v0, p3, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 10
    iget-object v0, p3, Lf/c/a/i/h;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 11
    iget-object v2, p3, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    new-instance v3, Lf/c/a/f/a;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v3, v0}, Lf/c/a/f/a;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/contrarywind/view/WheelView;->setAdapter(Lf/f/a/a;)V

    .line 12
    :cond_1
    iget-object v0, p3, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 13
    iget-object v0, p3, Lf/c/a/i/h;->a:Lcom/contrarywind/view/WheelView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/contrarywind/view/WheelView;->setIsOptions(Z)V

    .line 14
    iget-object v0, p3, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, v2}, Lcom/contrarywind/view/WheelView;->setIsOptions(Z)V

    .line 15
    iget-object v0, p3, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, v2}, Lcom/contrarywind/view/WheelView;->setIsOptions(Z)V

    .line 16
    iget-object v0, p3, Lf/c/a/i/h;->e:Ljava/util/List;

    const/16 v2, 0x8

    if-nez v0, :cond_2

    .line 17
    iget-object v0, p3, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p3, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    :goto_0
    iget-object v0, p3, Lf/c/a/i/h;->f:Ljava/util/List;

    if-nez v0, :cond_3

    .line 20
    iget-object v0, p3, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 21
    :cond_3
    iget-object v0, p3, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    :goto_1
    new-instance v0, Lf/c/a/i/f;

    invoke-direct {v0, p3}, Lf/c/a/i/f;-><init>(Lf/c/a/i/h;)V

    iput-object v0, p3, Lf/c/a/i/h;->i:Lf/f/c/b;

    .line 23
    new-instance v0, Lf/c/a/i/g;

    invoke-direct {v0, p3}, Lf/c/a/i/g;-><init>(Lf/c/a/i/h;)V

    iput-object v0, p3, Lf/c/a/i/h;->j:Lf/f/c/b;

    if-eqz p1, :cond_4

    .line 24
    iget-boolean p1, p3, Lf/c/a/i/h;->g:Z

    if-eqz p1, :cond_4

    .line 25
    iget-object p1, p3, Lf/c/a/i/h;->a:Lcom/contrarywind/view/WheelView;

    iget-object v0, p3, Lf/c/a/i/h;->i:Lf/f/c/b;

    invoke-virtual {p1, v0}, Lcom/contrarywind/view/WheelView;->setOnItemSelectedListener(Lf/f/c/b;)V

    :cond_4
    if-eqz p2, :cond_5

    .line 26
    iget-boolean p1, p3, Lf/c/a/i/h;->g:Z

    if-eqz p1, :cond_5

    .line 27
    iget-object p1, p3, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    iget-object p2, p3, Lf/c/a/i/h;->j:Lf/f/c/b;

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setOnItemSelectedListener(Lf/f/c/b;)V

    .line 28
    :cond_5
    iget-object p1, p0, Lf/c/a/i/e;->p:Lf/c/a/i/h;

    if-eqz p1, :cond_9

    .line 29
    iget-object p2, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget p3, p2, Lf/c/a/g/a;->h:I

    iget v0, p2, Lf/c/a/g/a;->i:I

    iget p2, p2, Lf/c/a/g/a;->j:I

    .line 30
    iget-boolean v1, p1, Lf/c/a/i/h;->g:Z

    if-eqz v1, :cond_8

    .line 31
    iget-object v1, p1, Lf/c/a/i/h;->d:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 32
    iget-object v1, p1, Lf/c/a/i/h;->a:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1, p3}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 33
    :cond_6
    iget-object v1, p1, Lf/c/a/i/h;->e:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 34
    iget-object v2, p1, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    new-instance v3, Lf/c/a/f/a;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v3, v1}, Lf/c/a/f/a;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/contrarywind/view/WheelView;->setAdapter(Lf/f/a/a;)V

    .line 35
    iget-object v1, p1, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1, v0}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 36
    :cond_7
    iget-object v1, p1, Lf/c/a/i/h;->f:Ljava/util/List;

    if-eqz v1, :cond_9

    .line 37
    iget-object v2, p1, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    new-instance v3, Lf/c/a/f/a;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-direct {v3, p3}, Lf/c/a/f/a;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/contrarywind/view/WheelView;->setAdapter(Lf/f/a/a;)V

    .line 38
    iget-object p1, p1, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    goto :goto_2

    .line 39
    :cond_8
    iget-object v1, p1, Lf/c/a/i/h;->a:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1, p3}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 40
    iget-object p3, p1, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p3, v0}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 41
    iget-object p1, p1, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    :cond_9
    :goto_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "submit"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3
    iget-object p1, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget-object p1, p1, Lf/c/a/g/a;->a:Lf/c/a/h/d;

    if-eqz p1, :cond_5

    .line 4
    iget-object p1, p0, Lf/c/a/i/e;->p:Lf/c/a/i/h;

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 5
    iget-object v1, p1, Lf/c/a/i/h;->a:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 6
    iget-object v1, p1, Lf/c/a/i/h;->e:Ljava/util/List;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 7
    iget-object v1, p1, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget-object v4, p1, Lf/c/a/i/h;->e:Ljava/util/List;

    aget v5, v0, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-le v1, v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    :goto_0
    aput v1, v0, v3

    goto :goto_1

    .line 8
    :cond_1
    iget-object v1, p1, Lf/c/a/i/h;->b:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    aput v1, v0, v3

    .line 9
    :goto_1
    iget-object v1, p1, Lf/c/a/i/h;->f:Ljava/util/List;

    const/4 v4, 0x2

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 10
    iget-object v1, p1, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget-object v5, p1, Lf/c/a/i/h;->f:Ljava/util/List;

    aget v6, v0, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    aget v6, v0, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-le v1, v5, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    iget-object p1, p1, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result p1

    :goto_2
    aput p1, v0, v4

    goto :goto_3

    .line 11
    :cond_3
    iget-object p1, p1, Lf/c/a/i/h;->c:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result p1

    aput p1, v0, v4

    .line 12
    :goto_3
    iget-object p1, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget-object p1, p1, Lf/c/a/g/a;->a:Lf/c/a/h/d;

    aget v1, v0, v2

    aget v2, v0, v3

    aget v0, v0, v4

    const/4 v3, 0x0

    invoke-interface {p1, v1, v2, v0, v3}, Lf/c/a/h/d;->a(IIILandroid/view/View;)V

    goto :goto_4

    :cond_4
    const-string v1, "cancel"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p0, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget-object v0, v0, Lf/c/a/g/a;->b:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_5

    .line 15
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 16
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lf/c/a/i/b;->a()V

    return-void
.end method
