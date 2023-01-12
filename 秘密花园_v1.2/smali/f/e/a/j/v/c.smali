.class public Lf/e/a/j/v/c;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

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
.field public final synthetic a:Lcom/comeback/data/ui/jav/VideoDetailActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/jav/VideoDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/v/c;->a:Lcom/comeback/data/ui/jav/VideoDetailActivity;

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

    const-string p1, "BFJTRA4BS1wB"

    .line 3
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->a()V

    return-void

    .line 4
    :cond_0
    :try_start_0
    iget-object p1, p2, Ll/g0;->b:Ljava/lang/Object;

    .line 5
    check-cast p1, Li/i0;

    invoke-virtual {p1}, Li/i0;->H()Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lf/e/a/j/v/c;->a:Lcom/comeback/data/ui/jav/VideoDetailActivity;

    invoke-static {p1}, Lf/e/a/j/v/e/a;->c(Ljava/lang/String;)Lcom/comeback/data/ui/jav/bean/VideoDetail;

    move-result-object p1

    .line 7
    iput-object p1, p2, Lcom/comeback/data/ui/jav/VideoDetailActivity;->d:Lcom/comeback/data/ui/jav/bean/VideoDetail;

    .line 8
    iget-object p1, p0, Lf/e/a/j/v/c;->a:Lcom/comeback/data/ui/jav/VideoDetailActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/jav/VideoDetailActivity;->l(Lcom/comeback/data/ui/jav/VideoDetailActivity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
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

    const-string p1, "aD08ARkBVkFJ"

    .line 1
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->b()V

    return-void
.end method
