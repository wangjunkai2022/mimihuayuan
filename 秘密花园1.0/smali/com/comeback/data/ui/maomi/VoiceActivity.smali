.class public Lcom/comeback/data/ui/maomi/VoiceActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "VoiceActivity.java"


# instance fields
.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/base/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field public colorPrimary:I
    .annotation runtime Lbutterknife/BindColor;
    .end annotation
.end field

.field public colorSecond:I
    .annotation runtime Lbutterknife/BindColor;
    .end annotation
.end field

.field public mTvType1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mTvType2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mTvType3:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mTvType4:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mTvType5:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mViewpager:Lcom/comeback/data/widget/CustomViewPager;
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

.method public static n(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/maomi/VoiceActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c00a1

    return v0
.end method

.method public e()V
    .locals 5

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/ui/maomi/VoiceActivity;->b:Ljava/util/ArrayList;

    const-string v1, "QhIHBR8W"

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/comeback/data/ui/maomi/fragment/VoiceListFragment;->n(Ljava/lang/String;)Lcom/comeback/data/ui/maomi/fragment/VoiceListFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoiceActivity;->b:Ljava/util/ArrayList;

    const-string v1, "Rw0TEQcSSw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/comeback/data/ui/maomi/fragment/VoiceListFragment;->n(Ljava/lang/String;)Lcom/comeback/data/ui/maomi/fragment/VoiceListFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoiceActivity;->b:Ljava/util/ArrayList;

    const-string v1, "WwcNAx8b"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/comeback/data/ui/maomi/fragment/VoiceListFragment;->n(Ljava/lang/String;)Lcom/comeback/data/ui/maomi/fragment/VoiceListFragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoiceActivity;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "XAca"

    .line 8
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "XhEvCwUU"

    .line 9
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    new-instance v1, Lcom/comeback/data/ui/maomi/fragment/VoiceListFragment;

    invoke-direct {v1}, Lcom/comeback/data/ui/maomi/fragment/VoiceListFragment;-><init>()V

    .line 11
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoiceActivity;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/comeback/data/ui/maomi/fragment/AnchorFragment;

    invoke-direct {v1}, Lcom/comeback/data/ui/maomi/fragment/AnchorFragment;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoiceActivity;->mViewpager:Lcom/comeback/data/widget/CustomViewPager;

    iget-object v1, p0, Lcom/comeback/data/ui/maomi/VoiceActivity;->b:Ljava/util/ArrayList;

    invoke-static {v1, v3, v0}, Lf/b/a/a/a;->E(Ljava/util/ArrayList;ILcom/comeback/data/widget/CustomViewPager;)V

    .line 15
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoiceActivity;->mViewpager:Lcom/comeback/data/widget/CustomViewPager;

    new-instance v1, Lcom/comeback/data/base/BaseViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/comeback/data/ui/maomi/VoiceActivity;->b:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Lcom/comeback/data/base/BaseViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 16
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoiceActivity;->mViewpager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 17
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoiceActivity;->mViewpager:Lcom/comeback/data/widget/CustomViewPager;

    new-instance v1, Lcom/comeback/data/ui/maomi/VoiceActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/maomi/VoiceActivity$a;-><init>(Lcom/comeback/data/ui/maomi/VoiceActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public l(Landroid/widget/TextView;)V
    .locals 3

    const-string v0, "RAECCA4r"

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v2, "RAECCA4q"

    .line 2
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v0, 0xc8

    .line 5
    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 6
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 7
    iget v0, p0, Lcom/comeback/data/ui/maomi/VoiceActivity;->colorPrimary:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data
.end method

.method public m(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/maomi/VoiceActivity;->colorSecond:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleY(F)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return-void

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoiceActivity;->mViewpager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void

    .line 3
    :pswitch_1
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoiceActivity;->mViewpager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void

    .line 4
    :pswitch_2
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoiceActivity;->mViewpager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void

    .line 5
    :pswitch_3
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoiceActivity;->mViewpager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void

    .line 6
    :pswitch_4
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/VoiceActivity;->mViewpager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {p1, v0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090326
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
