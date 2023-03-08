.class public Lk/a/e/e;
.super Lk/a/e/k;
.source "DataNode.java"


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

    check-cast v0, Lk/a/e/e;

    return-object v0
.end method

.method public h()Lk/a/e/l;
    .locals 1

    .line 1
    invoke-super {p0}, Lk/a/e/l;->h()Lk/a/e/l;

    move-result-object v0

    check-cast v0, Lk/a/e/e;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    const-string v0, "#data"

    return-object v0
.end method

.method public s(Ljava/lang/Appendable;ILk/a/e/f$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lk/a/e/k;->z()Ljava/lang/String;

    move-result-object p2

    .line 2
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
