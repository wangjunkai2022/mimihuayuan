.class public Lcom/comeback/data/ui/fulao2/fragment/UserFragment_ViewBinding;
.super Ljava/lang/Object;
.source "UserFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/fulao2/fragment/UserFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fulao2/fragment/UserFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/fragment/UserFragment_ViewBinding;->b:Lcom/comeback/data/ui/fulao2/fragment/UserFragment;

    const-string v0, "UQsGCA9THkESAl0IPxgMHkdF"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/RadioGroup;

    const v2, 0x7f09019e

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p1, Lcom/comeback/data/ui/fulao2/fragment/UserFragment;->radioGroup:Landroid/widget/RadioGroup;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/fragment/UserFragment_ViewBinding;->b:Lcom/comeback/data/ui/fulao2/fragment/UserFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/fulao2/fragment/UserFragment_ViewBinding;->b:Lcom/comeback/data/ui/fulao2/fragment/UserFragment;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/fulao2/fragment/UserFragment;->radioGroup:Landroid/widget/RadioGroup;

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
