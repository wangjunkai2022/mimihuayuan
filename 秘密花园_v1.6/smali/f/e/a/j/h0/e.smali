.class public Lf/e/a/j/h0/e;
.super Ljava/lang/Object;
.source "NanaLaunchActivity.java"

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
.field public final synthetic a:Lcom/comeback/data/ui/nana/NanaLaunchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/nana/NanaLaunchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/h0/e;->a:Lcom/comeback/data/ui/nana/NanaLaunchActivity;

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
    :try_start_0
    iget-object p1, p2, Ll/g0;->b:Ljava/lang/Object;

    .line 2
    check-cast p1, Li/i0;

    invoke-virtual {p1}, Li/i0;->H()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Lf/i/b/j;

    invoke-direct {p2}, Lf/i/b/j;-><init>()V

    const-class v0, Lcom/comeback/data/ui/nana/bean/AuthBean;

    invoke-virtual {p2, p1, v0}, Lf/i/b/j;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/nana/bean/AuthBean;

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/nana/bean/AuthBean;->getResponse()Lcom/comeback/data/ui/nana/bean/AuthBean$ResponseEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/nana/bean/AuthBean$ResponseEntity;->getToken()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lf/e/a/j/h0/m/d;->a:Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lf/e/a/j/h0/e;->a:Lcom/comeback/data/ui/nana/NanaLaunchActivity;

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p1, Lcom/comeback/data/ui/nana/NanaLaunchActivity;->b:Z

    .line 7
    iget-object p1, p0, Lf/e/a/j/h0/e;->a:Lcom/comeback/data/ui/nana/NanaLaunchActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/nana/NanaLaunchActivity;->n(Lcom/comeback/data/ui/nana/NanaLaunchActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

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

    const-string p1, "0t3Ijevs3qrIj63hnc7Sg4PHjNjnm5aEmuG5j9f/"

    .line 1
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    return-void
.end method
