.class public Lcom/comeback/data/ui/fruitPie/FruitActivity$a;
.super Ljava/lang/Object;
.source "FruitActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/fruitPie/FruitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/fruitPie/FruitActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fruitPie/FruitActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/FruitActivity$a;->a:Lcom/comeback/data/ui/fruitPie/FruitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    const/4 p1, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1
    :pswitch_1
    iget-object p2, p0, Lcom/comeback/data/ui/fruitPie/FruitActivity$a;->a:Lcom/comeback/data/ui/fruitPie/FruitActivity;

    iget-object p2, p2, Lcom/comeback/data/ui/fruitPie/FruitActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {p2, p1, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 2
    :pswitch_2
    iget-object p2, p0, Lcom/comeback/data/ui/fruitPie/FruitActivity$a;->a:Lcom/comeback/data/ui/fruitPie/FruitActivity;

    iget-object p2, p2, Lcom/comeback/data/ui/fruitPie/FruitActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 3
    :pswitch_3
    iget-object p2, p0, Lcom/comeback/data/ui/fruitPie/FruitActivity$a;->a:Lcom/comeback/data/ui/fruitPie/FruitActivity;

    iget-object p2, p2, Lcom/comeback/data/ui/fruitPie/FruitActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090256
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
