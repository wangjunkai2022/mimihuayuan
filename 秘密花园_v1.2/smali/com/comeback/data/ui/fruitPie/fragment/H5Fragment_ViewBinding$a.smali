.class public Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment_ViewBinding$a;
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
    iput-object p2, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment_ViewBinding$a;->c:Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment_ViewBinding$a;->c:Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/comeback/data/ui/fruitPie/fragment/H5Fragment;->i:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/commom/PlayActivity;->l(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
