.class public Lcom/comeback/data/ui/fulao2/fragment/UserFragment$a;
.super Ljava/lang/Object;
.source "UserFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/fulao2/fragment/UserFragment;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/fulao2/fragment/UserFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fulao2/fragment/UserFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/fragment/UserFragment$a;->a:Lcom/comeback/data/ui/fulao2/fragment/UserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/fulao2/fragment/UserFragment$a;->a:Lcom/comeback/data/ui/fulao2/fragment/UserFragment;

    .line 2
    iget-object v1, v1, Lcom/comeback/data/ui/fulao2/fragment/UserFragment;->g:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lf/e/a/k/j;->c(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/fragment/UserFragment$a;->a:Lcom/comeback/data/ui/fulao2/fragment/UserFragment;

    iget-object v0, v0, Lcom/comeback/data/ui/fulao2/fragment/UserFragment;->radioGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f09019d

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/fragment/UserFragment$a;->a:Lcom/comeback/data/ui/fulao2/fragment/UserFragment;

    iget-object v0, v0, Lcom/comeback/data/ui/fulao2/fragment/UserFragment;->radioGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f09019c

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/fragment/UserFragment$a;->a:Lcom/comeback/data/ui/fulao2/fragment/UserFragment;

    iget-object v0, v0, Lcom/comeback/data/ui/fulao2/fragment/UserFragment;->radioGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f09019b

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    :goto_0
    return-void
.end method
