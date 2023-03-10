.class public Lcom/comeback/data/ui/km2/Km2LaunchActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "Km2LaunchActivity.java"


# static fields
.field public static h:[Ljava/lang/String;


# instance fields
.field public b:Li/b0;

.field public c:Li/f;

.field public d:Z

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Li/f;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:Li/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BlNaSllLFwFBXhpVTVk="

    .line 1
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "BldTSlpDAB1HUhpRTg=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/comeback/data/ui/km2/Km2LaunchActivity;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/ui/km2/Km2LaunchActivity;->e:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lcom/comeback/data/ui/km2/Km2LaunchActivity$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/km2/Km2LaunchActivity$a;-><init>(Lcom/comeback/data/ui/km2/Km2LaunchActivity;)V

    iput-object v0, p0, Lcom/comeback/data/ui/km2/Km2LaunchActivity;->g:Li/g;

    return-void
.end method

.method public static l(Lcom/comeback/data/ui/km2/Km2LaunchActivity;)V
    .locals 7

    if-eqz p0, :cond_2

    .line 1
    sget-object v0, Lcom/comeback/data/ui/km2/Km2LaunchActivity;->h:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 2
    sget-object v4, Lcom/comeback/data/ui/km2/Km2LaunchActivity;->h:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "XxYXFFFcFg=="

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "DVpTXVI="

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v3, p0, Lcom/comeback/data/ui/km2/Km2LaunchActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_1
    if-ge v2, v0, :cond_1

    .line 6
    aget-object v3, v1, v2

    const-string v4, "VhIKOx8cUlYdWxIDGR4CVnZTUiJbQA0CMFEMJD4sIV9xIVVRWzV8BUQndSRILlJbdVAlVig1fwMxJ3dSOV5TXHMhJyVcQQhwMlABITxTWl0EJlRVUzd9AkpfcVI+W1RYdVBVXSg2DXJEV3VQSFImL3RSUFJTNnp3N1UHXj4uUFoFUiBQWkp6C0VRdiU8KFtdEQYGEgIQXA4SCFAVFwMHTVMHFQ0IFmZHChZRWjUfLh4RBgYSAhBcbAUDRhQRBQ1WAUxTSlpVT1YBFV0IFjUABFMHXlI="

    .line 7
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "VhITCAIQWEcaCVpIAEcUHEBPBQsZHhRGAQpRCRsFBw5TWUMHAxJLQBYSCRIMDE5T"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Li/z;->c(Ljava/lang/String;)Li/z;

    move-result-object v5

    invoke-static {v4, v5}, Li/g0;->c(Ljava/lang/String;Li/z;)Li/g0;

    move-result-object v4

    .line 8
    new-instance v5, Li/e0$a;

    invoke-direct {v5}, Li/e0$a;-><init>()V

    invoke-static {v3}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "GAMTDUQQVl0VD1NIEQQHDk8="

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v5, v3}, Li/e0$a;->i(Ljava/lang/String;)Li/e0$a;

    const-string v3, "dA0NCg4QTVocCA=="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "VA4MFw4="

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-virtual {v5, v3, v6}, Li/e0$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    .line 11
    invoke-virtual {v5, v4}, Li/e0$a;->f(Li/g0;)Li/e0$a;

    .line 12
    invoke-virtual {v5}, Li/e0$a;->b()Li/e0;

    move-result-object v3

    .line 13
    iget-object v4, p0, Lcom/comeback/data/ui/km2/Km2LaunchActivity;->b:Li/b0;

    invoke-virtual {v4, v3}, Li/b0;->a(Li/e0;)Li/f;

    move-result-object v3

    .line 14
    iget-object v4, p0, Lcom/comeback/data/ui/km2/Km2LaunchActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v4, p0, Lcom/comeback/data/ui/km2/Km2LaunchActivity;->g:Li/g;

    check-cast v3, Li/d0;

    invoke-virtual {v3, v4}, Li/d0;->W(Li/g;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    const/4 p0, 0x0

    .line 16
    throw p0
.end method

.method public static n(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/km2/Km2LaunchActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public static o(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/km2/Km2LaunchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "XhEuKQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "XhEuKQ=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/comeback/data/ui/km2/Km2LaunchActivity;->d:Z

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c007a

    return v0
.end method

.method public e()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseActivity;->i()V

    .line 2
    new-instance v0, Li/b0$a;

    invoke-direct {v0}, Li/b0$a;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x19

    .line 3
    invoke-virtual {v0, v2, v3, v1}, Li/b0$a;->c(JLjava/util/concurrent/TimeUnit;)Li/b0$a;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-virtual {v0, v2, v3, v1}, Li/b0$a;->d(JLjava/util/concurrent/TimeUnit;)Li/b0$a;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 5
    iput-object v1, v0, Li/b0$a;->m:Ljava/net/Proxy;

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Li/b0$a;->f:Z

    .line 7
    new-instance v1, Li/b0;

    invoke-direct {v1, v0}, Li/b0;-><init>(Li/b0$a;)V

    .line 8
    iput-object v1, p0, Lcom/comeback/data/ui/km2/Km2LaunchActivity;->b:Li/b0;

    .line 9
    invoke-virtual {p0}, Lcom/comeback/data/ui/km2/Km2LaunchActivity;->m()V

    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    new-instance v0, Li/e0$a;

    invoke-direct {v0}, Li/e0$a;-><init>()V

    const-string v1, "XxYXFFFcFgJCXxpVQERRUxlQW0sPTF1dTgdEF1YEBhxcD04FEQZcQRACWkkbBQ4="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Li/e0$a;->i(Ljava/lang/String;)Li/e0$a;

    const-string v1, "dA0NCg4QTVocCA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VA4MFw4="

    invoke-static {v2, v0, v1}, Lf/b/a/a/a;->s(Ljava/lang/String;Li/e0$a;Ljava/lang/String;)Li/e0;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/comeback/data/ui/km2/Km2LaunchActivity;->b:Li/b0;

    invoke-virtual {v1, v0}, Li/b0;->a(Li/e0;)Li/f;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/km2/Km2LaunchActivity;->c:Li/f;

    .line 4
    new-instance v1, Lf/e/a/j/y/g;

    invoke-direct {v1, p0}, Lf/e/a/j/y/g;-><init>(Lcom/comeback/data/ui/km2/Km2LaunchActivity;)V

    check-cast v0, Li/d0;

    invoke-virtual {v0, v1}, Li/d0;->W(Li/g;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/km2/Km2LaunchActivity;->c:Li/f;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Li/f;->cancel()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/km2/Km2LaunchActivity;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/f;

    .line 6
    invoke-interface {v1}, Li/f;->cancel()V

    goto :goto_0

    :cond_1
    return-void
.end method
