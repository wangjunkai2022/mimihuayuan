.class public Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment_ViewBinding$b;
.super Ld/c/b;
.source "H5Fragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment_ViewBinding;-><init>(Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment_ViewBinding;Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment_ViewBinding$b;->c:Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment_ViewBinding$b;->c:Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;

    .line 2
    iget v0, p1, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->l:I

    iget-boolean v2, p1, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->k:Z

    if-eqz v2, :cond_1

    const-string v2, "Bg=="

    goto :goto_0

    :cond_1
    const-string v2, "BQ=="

    :goto_0
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->m:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/comeback/data/ui/fruitPie/ActorDetailActivity;->t(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
