.class public final Lk/a/f/i$h;
.super Lk/a/f/i$i;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/f/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk/a/f/i$i;-><init>()V

    .line 2
    sget-object v0, Lk/a/f/i$j;->b:Lk/a/f/i$j;

    iput-object v0, p0, Lk/a/f/i;->a:Lk/a/f/i$j;

    return-void
.end method


# virtual methods
.method public bridge synthetic g()Lk/a/f/i;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk/a/f/i$h;->s()Lk/a/f/i$i;

    return-object p0
.end method

.method public s()Lk/a/f/i$i;
    .locals 1

    .line 1
    invoke-super {p0}, Lk/a/f/i$i;->s()Lk/a/f/i$i;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lk/a/f/i$i;->j:Lk/a/e/b;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/f/i$i;->j:Lk/a/e/b;

    const-string v1, ">"

    const-string v2, "<"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lk/a/e/b;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-static {v2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lk/a/f/i$i;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lk/a/f/i$i;->j:Lk/a/e/b;

    invoke-virtual {v2}, Lk/a/e/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lk/a/f/i$i;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
