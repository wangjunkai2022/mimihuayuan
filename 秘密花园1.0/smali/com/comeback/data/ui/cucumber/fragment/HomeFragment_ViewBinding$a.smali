.class public Lcom/comeback/data/ui/cucumber/fragment/HomeFragment_ViewBinding$a;
.super Ld/c/b;
.source "HomeFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/cucumber/fragment/HomeFragment_ViewBinding;-><init>(Lcom/comeback/data/ui/cucumber/fragment/HomeFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/cucumber/fragment/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/fragment/HomeFragment_ViewBinding;Lcom/comeback/data/ui/cucumber/fragment/HomeFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/cucumber/fragment/HomeFragment_ViewBinding$a;->c:Lcom/comeback/data/ui/cucumber/fragment/HomeFragment;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/fragment/HomeFragment_ViewBinding$a;->c:Lcom/comeback/data/ui/cucumber/fragment/HomeFragment;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/cucumber/fragment/HomeFragment;->g:Lcom/comeback/data/ui/cucumber/bean/DefaultChannel;

    if-nez v0, :cond_0

    const-string p1, "383Ug8b63I32joHjntDzjr3Ci9nWlpe/le6kgtbmheOnjd76"

    .line 3
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/comeback/data/ui/cucumber/fragment/HomeFragment;->g:Lcom/comeback/data/ui/cucumber/bean/DefaultChannel;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/cucumber/SearchResultActivity;->o(Landroid/content/Context;Lcom/comeback/data/ui/cucumber/bean/DefaultChannel;)V

    :goto_0
    return-void
.end method
