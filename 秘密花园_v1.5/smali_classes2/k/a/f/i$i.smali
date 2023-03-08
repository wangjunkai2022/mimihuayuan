.class public abstract Lk/a/f/i$i;
.super Lk/a/f/i;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/f/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "i"
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/StringBuilder;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Lk/a/e/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lk/a/f/i;-><init>(Lk/a/f/i$a;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lk/a/f/i$i;->e:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lk/a/f/i$i;->g:Z

    .line 4
    iput-boolean v0, p0, Lk/a/f/i$i;->h:Z

    .line 5
    iput-boolean v0, p0, Lk/a/f/i$i;->i:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic g()Lk/a/f/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/f/i$i;->s()Lk/a/f/i$i;

    move-result-object v0

    return-object v0
.end method

.method public final i(C)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lk/a/f/i$i;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lk/a/f/i$i;->d:Ljava/lang/String;

    return-void
.end method

.method public final j(C)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/f/i$i;->o()V

    .line 2
    iget-object v0, p0, Lk/a/f/i$i;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/f/i$i;->o()V

    .line 2
    iget-object v0, p0, Lk/a/f/i$i;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lk/a/f/i$i;->f:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lk/a/f/i$i;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public final l([I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lk/a/f/i$i;->o()V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 3
    iget-object v3, p0, Lk/a/f/i$i;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final m(C)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/a/f/i$i;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/f/i$i;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lk/a/f/i$i;->b:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lj/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lk/a/f/i$i;->c:Ljava/lang/String;

    return-void
.end method

.method public final o()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lk/a/f/i$i;->h:Z

    .line 2
    iget-object v0, p0, Lk/a/f/i$i;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lk/a/f/i$i;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lk/a/f/i$i;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/f/i$i;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lj/b;->m(Z)V

    .line 2
    iget-object v0, p0, Lk/a/f/i$i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final q(Ljava/lang/String;)Lk/a/f/i$i;
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/f/i$i;->b:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lj/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lk/a/f/i$i;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final r()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk/a/f/i$i;->j:Lk/a/e/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lk/a/e/b;

    invoke-direct {v0}, Lk/a/e/b;-><init>()V

    iput-object v0, p0, Lk/a/f/i$i;->j:Lk/a/e/b;

    .line 3
    :cond_0
    iget-object v0, p0, Lk/a/f/i$i;->d:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lk/a/f/i$i;->d:Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 6
    iget-boolean v0, p0, Lk/a/f/i$i;->h:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lk/a/f/i$i;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lk/a/f/i$i;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lk/a/f/i$i;->f:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_2
    iget-boolean v0, p0, Lk/a/f/i$i;->g:Z

    if-eqz v0, :cond_3

    const-string v0, ""

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 9
    :goto_0
    iget-object v2, p0, Lk/a/f/i$i;->j:Lk/a/e/b;

    iget-object v3, p0, Lk/a/f/i$i;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lk/a/e/b;->b(Ljava/lang/String;Ljava/lang/String;)Lk/a/e/b;

    .line 10
    :cond_4
    iput-object v1, p0, Lk/a/f/i$i;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lk/a/f/i$i;->g:Z

    .line 12
    iput-boolean v0, p0, Lk/a/f/i$i;->h:Z

    .line 13
    iget-object v0, p0, Lk/a/f/i$i;->e:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lk/a/f/i;->h(Ljava/lang/StringBuilder;)V

    .line 14
    iput-object v1, p0, Lk/a/f/i$i;->f:Ljava/lang/String;

    return-void
.end method

.method public s()Lk/a/f/i$i;
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lk/a/f/i$i;->b:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lk/a/f/i$i;->c:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lk/a/f/i$i;->d:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lk/a/f/i$i;->e:Ljava/lang/StringBuilder;

    invoke-static {v1}, Lk/a/f/i;->h(Ljava/lang/StringBuilder;)V

    .line 5
    iput-object v0, p0, Lk/a/f/i$i;->f:Ljava/lang/String;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lk/a/f/i$i;->g:Z

    .line 7
    iput-boolean v1, p0, Lk/a/f/i$i;->h:Z

    .line 8
    iput-boolean v1, p0, Lk/a/f/i$i;->i:Z

    .line 9
    iput-object v0, p0, Lk/a/f/i$i;->j:Lk/a/e/b;

    return-object p0
.end method
