.class public Lcom/comeback/data/ui/mimei/MimeiActivity$a;
.super Ljava/lang/Object;
.source "MimeiActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/mimei/MimeiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/mimei/MimeiActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/mimei/MimeiActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/MimeiActivity$a;->a:Lcom/comeback/data/ui/mimei/MimeiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    const p1, 0x7f0901c7

    const/4 v0, 0x0

    if-eq p2, p1, :cond_2

    const p1, 0x7f0901c9

    if-eq p2, p1, :cond_1

    const p1, 0x7f0901d3

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/comeback/data/ui/mimei/MimeiActivity$a;->a:Lcom/comeback/data/ui/mimei/MimeiActivity;

    iget-object p1, p1, Lcom/comeback/data/ui/mimei/MimeiActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/comeback/data/ui/mimei/MimeiActivity$a;->a:Lcom/comeback/data/ui/mimei/MimeiActivity;

    iget-object p1, p1, Lcom/comeback/data/ui/mimei/MimeiActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    invoke-virtual {p1, v0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/comeback/data/ui/mimei/MimeiActivity$a;->a:Lcom/comeback/data/ui/mimei/MimeiActivity;

    iget-object p1, p1, Lcom/comeback/data/ui/mimei/MimeiActivity;->viewPager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :goto_0
    return-void
.end method
