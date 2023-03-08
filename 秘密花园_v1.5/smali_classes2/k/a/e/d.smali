.class public Lk/a/e/d;
.super Lk/a/e/k;
.source "Comment.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/a/e/k;-><init>()V

    .line 2
    iput-object p1, p0, Lk/a/e/k;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lk/a/e/l;->h()Lk/a/e/l;

    move-result-object v0

    check-cast v0, Lk/a/e/d;

    return-object v0
.end method

.method public h()Lk/a/e/l;
    .locals 1

    .line 1
    invoke-super {p0}, Lk/a/e/l;->h()Lk/a/e/l;

    move-result-object v0

    check-cast v0, Lk/a/e/d;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    const-string v0, "#comment"

    return-object v0
.end method

.method public s(Ljava/lang/Appendable;ILk/a/e/f$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p3, Lk/a/e/f$a;->e:Z

    if-eqz v0, :cond_2

    .line 2
    iget v0, p0, Lk/a/e/l;->b:I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lk/a/e/l;->a:Lk/a/e/l;

    instance-of v1, v0, Lk/a/e/h;

    if-eqz v1, :cond_0

    check-cast v0, Lk/a/e/h;

    .line 4
    iget-object v0, v0, Lk/a/e/h;->c:Lk/a/f/h;

    .line 5
    iget-boolean v0, v0, Lk/a/f/h;->d:Z

    if-nez v0, :cond_1

    .line 6
    :cond_0
    iget-boolean v0, p3, Lk/a/e/f$a;->f:Z

    if-eqz v0, :cond_2

    .line 7
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lk/a/e/l;->o(Ljava/lang/Appendable;ILk/a/e/f$a;)V

    :cond_2
    const-string p2, "<!--"

    .line 8
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lk/a/e/k;->z()Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const-string p2, "-->"

    .line 11
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public t(Ljava/lang/Appendable;ILk/a/e/f$a;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/e/l;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
