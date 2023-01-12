.class public Lcom/comeback/data/ui/dn/DNActivity_ViewBinding$b;
.super Ld/c/b;
.source "DNActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/dn/DNActivity_ViewBinding;-><init>(Lcom/comeback/data/ui/dn/DNActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/dn/DNActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/dn/DNActivity_ViewBinding;Lcom/comeback/data/ui/dn/DNActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/dn/DNActivity_ViewBinding$b;->c:Lcom/comeback/data/ui/dn/DNActivity;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/dn/DNActivity_ViewBinding$b;->c:Lcom/comeback/data/ui/dn/DNActivity;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/dn/DNActivity;->mViewpager:Lcom/comeback/data/widget/CustomViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
