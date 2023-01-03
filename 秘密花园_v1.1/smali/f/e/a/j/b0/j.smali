.class public Lf/e/a/j/b0/j;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ll/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/f<",
        "Li/i0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/main/LauncherActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/main/LauncherActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/b0/j;->a:Lcom/comeback/data/ui/main/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll/d;Ll/g0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/d<",
            "Li/i0;",
            ">;",
            "Ll/g0<",
            "Li/i0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p2, Ll/g0;->a:Li/h0;

    .line 2
    iget p1, p1, Li/h0;->e:I

    const/16 v0, 0x12c

    if-le p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lf/e/a/j/b0/j;->a:Lcom/comeback/data/ui/main/LauncherActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/main/LauncherActivity;->m(Lcom/comeback/data/ui/main/LauncherActivity;)V

    return-void

    .line 4
    :cond_0
    :try_start_0
    sget-object p1, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 5
    iget-object p2, p2, Ll/g0;->b:Ljava/lang/Object;

    .line 6
    check-cast p2, Li/i0;

    invoke-virtual {p2}, Li/i0;->H()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/comeback/data/App;->c(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lf/e/a/j/b0/j;->a:Lcom/comeback/data/ui/main/LauncherActivity;

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p1, Lcom/comeback/data/ui/main/LauncherActivity;->c:Z

    .line 9
    iget-object p1, p0, Lf/e/a/j/b0/j;->a:Lcom/comeback/data/ui/main/LauncherActivity;

    .line 10
    sget-object p2, Lcom/comeback/data/App;->e:Lcom/comeback/data/ui/main/bean/ConfigBean;

    .line 11
    invoke-virtual {p2}, Lcom/comeback/data/ui/main/bean/ConfigBean;->getLaunch()Lcom/comeback/data/ui/main/bean/AD;

    move-result-object p2

    iput-object p2, p1, Lcom/comeback/data/ui/main/LauncherActivity;->j:Lcom/comeback/data/ui/main/bean/AD;

    .line 12
    iget-object p1, p0, Lf/e/a/j/b0/j;->a:Lcom/comeback/data/ui/main/LauncherActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/main/LauncherActivity;->l(Lcom/comeback/data/ui/main/LauncherActivity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b(Ll/d;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/d<",
            "Li/i0;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lf/e/a/j/b0/j;->a:Lcom/comeback/data/ui/main/LauncherActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/main/LauncherActivity;->m(Lcom/comeback/data/ui/main/LauncherActivity;)V

    return-void
.end method
