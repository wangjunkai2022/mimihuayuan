.class public Lf/e/a/j/b/d;
.super Lm/j;
.source "MoviePlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/avbobo/bean/MovieDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/avbobo/MoviePlayActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/avbobo/MoviePlayActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/b/d;->e:Lcom/comeback/data/ui/avbobo/MoviePlayActivity;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "aD08Ow=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->b()V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/avbobo/bean/MovieDetail;

    .line 2
    iget-object v0, p0, Lf/e/a/j/b/d;->e:Lcom/comeback/data/ui/avbobo/MoviePlayActivity;

    .line 3
    iput-object p1, v0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->d:Lcom/comeback/data/ui/avbobo/bean/MovieDetail;

    .line 4
    invoke-virtual {v0}, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->o()V

    return-void
.end method
