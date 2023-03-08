.class public Lcom/comeback/data/ui/iqiyi/IQYLaunchActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "IQYLaunchActivity.java"


# static fields
.field public static f:[Ljava/lang/String;


# instance fields
.field public b:Li/b0;

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Li/f;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Li/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "XxYXFFFcFlIDDxoGCAMIHlYLEAwEBgodEAlZ"

    .line 1
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "XxYXFFFcFlIDDxoGCAMIHlYLEAwEBgsdEAlZ"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "XxYXFFFcFlIDDxoGCAMIHlYLEAwEBg0dEAlZ"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/comeback/data/ui/iqiyi/IQYLaunchActivity;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/ui/iqiyi/IQYLaunchActivity;->c:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lcom/comeback/data/ui/iqiyi/IQYLaunchActivity$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/iqiyi/IQYLaunchActivity$a;-><init>(Lcom/comeback/data/ui/iqiyi/IQYLaunchActivity;)V

    iput-object v0, p0, Lcom/comeback/data/ui/iqiyi/IQYLaunchActivity;->e:Li/g;

    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/iqiyi/IQYLaunchActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c0072

    return v0
.end method

.method public e()V
    .locals 4

    .line 1
    new-instance v0, Li/b0$a;

    invoke-direct {v0}, Li/b0$a;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x19

    .line 2
    invoke-virtual {v0, v2, v3, v1}, Li/b0$a;->c(JLjava/util/concurrent/TimeUnit;)Li/b0$a;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-virtual {v0, v2, v3, v1}, Li/b0$a;->d(JLjava/util/concurrent/TimeUnit;)Li/b0$a;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 4
    iput-object v1, v0, Li/b0$a;->m:Ljava/net/Proxy;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Li/b0$a;->f:Z

    .line 6
    new-instance v2, Li/b0;

    invoke-direct {v2, v0}, Li/b0;-><init>(Li/b0$a;)V

    .line 7
    iput-object v2, p0, Lcom/comeback/data/ui/iqiyi/IQYLaunchActivity;->b:Li/b0;

    .line 8
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v0

    const-string v2, "YjAvOyAg"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lf/e/a/k/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 10
    invoke-virtual {p0, v1}, Lcom/comeback/data/ui/iqiyi/IQYLaunchActivity;->l([Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lcom/comeback/data/ui/iqiyi/IQYLaunchActivity;->f:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/comeback/data/ui/iqiyi/IQYLaunchActivity;->l([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final varargs l([Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/iqiyi/IQYLaunchActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 3
    new-instance v3, Li/e0$a;

    invoke-direct {v3}, Li/e0$a;-><init>()V

    invoke-static {v2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "GAAKAwoDUBwSFkRICAMNDAg9FQEZAFBcHVsFSUxMPA9SFAoHDk5YXRcUWw4c"

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v3, v2}, Li/e0$a;->i(Ljava/lang/String;)Li/e0$a;

    const-string v2, "dA0NCg4QTVocCA=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "VA4MFw4="

    invoke-static {v4, v3, v2}, Lf/b/a/a/a;->s(Ljava/lang/String;Li/e0$a;Ljava/lang/String;)Li/e0;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/comeback/data/ui/iqiyi/IQYLaunchActivity;->b:Li/b0;

    invoke-virtual {v3, v2}, Li/b0;->a(Li/e0;)Li/f;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/comeback/data/ui/iqiyi/IQYLaunchActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v3, p0, Lcom/comeback/data/ui/iqiyi/IQYLaunchActivity;->e:Li/g;

    check-cast v2, Li/d0;

    invoke-virtual {v2, v3}, Li/d0;->W(Li/g;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
