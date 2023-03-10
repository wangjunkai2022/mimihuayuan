.class public Lcom/comeback/data/ui/dn/DNActivity$a;
.super Ljava/lang/Object;
.source "DNActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/dn/DNActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/dn/DNActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/dn/DNActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/DNActivity$a;->a:Lcom/comeback/data/ui/dn/DNActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/DNActivity$a;->a:Lcom/comeback/data/ui/dn/DNActivity;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v2, v0, Lcom/comeback/data/ui/dn/DNActivity;->mTvNew:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/comeback/data/ui/dn/DNActivity;->mTvRecommend:Landroid/widget/TextView;

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_3

    const-string v4, "RAECCA4r"

    .line 2
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [F

    fill-array-data v7, :array_0

    invoke-static {v2, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-string v7, "RAECCA4q"

    .line 3
    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [F

    fill-array-data v9, :array_1

    invoke-static {v2, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 4
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 5
    invoke-virtual {v9, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v10, 0x12c

    .line 6
    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 7
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 8
    iget v0, v0, Lcom/comeback/data/ui/dn/DNActivity;->colorWhite:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/dn/DNActivity$a;->a:Lcom/comeback/data/ui/dn/DNActivity;

    if-ne p1, v1, :cond_1

    iget-object p1, v0, Lcom/comeback/data/ui/dn/DNActivity;->mTvRecommend:Landroid/widget/TextView;

    goto :goto_1

    :cond_1
    iget-object p1, v0, Lcom/comeback/data/ui/dn/DNActivity;->mTvNew:Landroid/widget/TextView;

    :goto_1
    if-eqz v0, :cond_2

    .line 10
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [F

    fill-array-data v2, :array_2

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 11
    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [F

    fill-array-data v3, :array_3

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 12
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 13
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 14
    invoke-virtual {v3, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 15
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 16
    iget v0, v0, Lcom/comeback/data/ui/dn/DNActivity;->colorThird:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 17
    :cond_2
    throw v3

    .line 18
    :cond_3
    throw v3

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fcccccd    # 1.6f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3fcccccd    # 1.6f
    .end array-data

    :array_2
    .array-data 4
        0x3fcccccd    # 1.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3fcccccd    # 1.6f
        0x3f800000    # 1.0f
    .end array-data
.end method
