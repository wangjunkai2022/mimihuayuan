.class public Lcom/comeback/data/ui/cucumber/UserDetailActivity$a;
.super Ljava/lang/Object;
.source "UserDetailActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/cucumber/UserDetailActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/cucumber/UserDetailActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/UserDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/UserDetailActivity$a;->a:Lcom/comeback/data/ui/cucumber/UserDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    const/4 p1, 0x0

    const v0, 0x7f08007e

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/UserDetailActivity$a;->a:Lcom/comeback/data/ui/cucumber/UserDetailActivity;

    iget-object p2, p2, Lcom/comeback/data/ui/cucumber/UserDetailActivity;->rb2:Landroid/widget/RadioButton;

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 2
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/UserDetailActivity$a;->a:Lcom/comeback/data/ui/cucumber/UserDetailActivity;

    iget-object p2, p2, Lcom/comeback/data/ui/cucumber/UserDetailActivity;->rb1:Landroid/widget/RadioButton;

    invoke-virtual {p2, p1}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/UserDetailActivity$a;->a:Lcom/comeback/data/ui/cucumber/UserDetailActivity;

    iget-object p1, p1, Lcom/comeback/data/ui/cucumber/UserDetailActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 4
    :pswitch_1
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/UserDetailActivity$a;->a:Lcom/comeback/data/ui/cucumber/UserDetailActivity;

    iget-object p2, p2, Lcom/comeback/data/ui/cucumber/UserDetailActivity;->rb1:Landroid/widget/RadioButton;

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 5
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/UserDetailActivity$a;->a:Lcom/comeback/data/ui/cucumber/UserDetailActivity;

    iget-object p2, p2, Lcom/comeback/data/ui/cucumber/UserDetailActivity;->rb2:Landroid/widget/RadioButton;

    invoke-virtual {p2, p1}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/UserDetailActivity$a;->a:Lcom/comeback/data/ui/cucumber/UserDetailActivity;

    iget-object p1, p1, Lcom/comeback/data/ui/cucumber/UserDetailActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {p1, v1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0901c6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
